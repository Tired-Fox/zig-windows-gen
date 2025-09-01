pub const AudioEncodingProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.putBitrate(value);
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.getBitrate();
    }
    pub fn putChannelCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.putChannelCount(value);
    }
    pub fn getChannelCount(self: *@This()) core.HResult!u32 {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.getChannelCount();
    }
    pub fn putSampleRate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.putSampleRate(value);
    }
    pub fn getSampleRate(self: *@This()) core.HResult!u32 {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.getSampleRate();
    }
    pub fn putBitsPerSample(self: *@This(), value: u32) core.HResult!void {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.putBitsPerSample(value);
    }
    pub fn getBitsPerSample(self: *@This()) core.HResult!u32 {
        const this: *IAudioEncodingProperties = @ptrCast(self);
        return try this.getBitsPerSample();
    }
    pub fn getProperties(self: *@This()) core.HResult!*MediaPropertySet {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn putSubtype(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSubtype(value);
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubtype();
    }
    pub fn SetFormatUserData(self: *@This(), value: [*]u8) core.HResult!void {
        var this: ?*IAudioEncodingPropertiesWithFormatUserData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEncodingPropertiesWithFormatUserData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFormatUserData(value);
    }
    pub fn GetFormatUserData(self: *@This(), value: u8) core.HResult!void {
        var this: ?*IAudioEncodingPropertiesWithFormatUserData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEncodingPropertiesWithFormatUserData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFormatUserData(value);
    }
    pub fn getIsSpatial(self: *@This()) core.HResult!bool {
        var this: ?*IAudioEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSpatial();
    }
    pub fn Copy(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioEncodingProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEncodingProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAudioEncodingProperties.IID)));
    }
    pub fn CreateAlac(sampleRate: u32, channelCount: u32, bitsPerSample: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStatics2Cache.get();
        return try _f.CreateAlac(sampleRate, channelCount, bitsPerSample);
    }
    pub fn CreateFlac(sampleRate: u32, channelCount: u32, bitsPerSample: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStatics2Cache.get();
        return try _f.CreateFlac(sampleRate, channelCount, bitsPerSample);
    }
    pub fn CreateAac(sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStaticsCache.get();
        return try _f.CreateAac(sampleRate, channelCount, bitrate);
    }
    pub fn CreateAacAdts(sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStaticsCache.get();
        return try _f.CreateAacAdts(sampleRate, channelCount, bitrate);
    }
    pub fn CreateMp3(sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStaticsCache.get();
        return try _f.CreateMp3(sampleRate, channelCount, bitrate);
    }
    pub fn CreatePcm(sampleRate: u32, channelCount: u32, bitsPerSample: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStaticsCache.get();
        return try _f.CreatePcm(sampleRate, channelCount, bitsPerSample);
    }
    pub fn CreateWma(sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        const _f = @This().IAudioEncodingPropertiesStaticsCache.get();
        return try _f.CreateWma(sampleRate, channelCount, bitrate);
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.AudioEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioEncodingProperties.GUID;
    pub const IID: Guid = IAudioEncodingProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioEncodingProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAudioEncodingPropertiesStatics2Cache: FactoryCache(IAudioEncodingPropertiesStatics2, RUNTIME_NAME) = .{};
    var _IAudioEncodingPropertiesStaticsCache: FactoryCache(IAudioEncodingPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const AudioEncodingQuality = enum(i32) {
    Auto = 0,
    High = 1,
    Medium = 2,
    Low = 3,
};
pub const Av1ProfileIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMainChromaSubsampling420BitDepth8() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling420BitDepth8();
    }
    pub fn getMainChromaSubsampling420BitDepth10() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling420BitDepth10();
    }
    pub fn getMainChromaSubsampling400BitDepth8() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling400BitDepth8();
    }
    pub fn getMainChromaSubsampling400BitDepth10() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling400BitDepth10();
    }
    pub fn getHighChromaSubsampling444BitDepth8() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getHighChromaSubsampling444BitDepth8();
    }
    pub fn getHighChromaSubsampling444BitDepth10() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getHighChromaSubsampling444BitDepth10();
    }
    pub fn getProfessionalChromaSubsampling420BitDepth12() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getProfessionalChromaSubsampling420BitDepth12();
    }
    pub fn getProfessionalChromaSubsampling400BitDepth12() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getProfessionalChromaSubsampling400BitDepth12();
    }
    pub fn getProfessionalChromaSubsampling444BitDepth12() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getProfessionalChromaSubsampling444BitDepth12();
    }
    pub fn getProfessionalChromaSubsampling422BitDepth8() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getProfessionalChromaSubsampling422BitDepth8();
    }
    pub fn getProfessionalChromaSubsampling422BitDepth10() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getProfessionalChromaSubsampling422BitDepth10();
    }
    pub fn getProfessionalChromaSubsampling422BitDepth12() core.HResult!i32 {
        const _f = @This().IAv1ProfileIdsStaticsCache.get();
        return try _f.getProfessionalChromaSubsampling422BitDepth12();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.Av1ProfileIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAv1ProfileIdsStaticsCache: FactoryCache(IAv1ProfileIdsStatics, RUNTIME_NAME) = .{};
};
pub const ContainerEncodingProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperties(self: *@This()) core.HResult!*MediaPropertySet {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn putSubtype(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSubtype(value);
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubtype();
    }
    pub fn Copy(self: *@This()) core.HResult!*ContainerEncodingProperties {
        var this: ?*IContainerEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContainerEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContainerEncodingProperties.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.ContainerEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContainerEncodingProperties.GUID;
    pub const IID: Guid = IContainerEncodingProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContainerEncodingProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const H264ProfileIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getConstrainedBaseline() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getConstrainedBaseline();
    }
    pub fn getBaseline() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getBaseline();
    }
    pub fn getExtended() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getExtended();
    }
    pub fn getMain() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getMain();
    }
    pub fn getHigh() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getHigh();
    }
    pub fn getHigh10() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getHigh10();
    }
    pub fn getHigh422() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getHigh422();
    }
    pub fn getHigh444() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getHigh444();
    }
    pub fn getStereoHigh() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getStereoHigh();
    }
    pub fn getMultiviewHigh() core.HResult!i32 {
        const _f = @This().IH264ProfileIdsStaticsCache.get();
        return try _f.getMultiviewHigh();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.H264ProfileIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IH264ProfileIdsStaticsCache: FactoryCache(IH264ProfileIdsStatics, RUNTIME_NAME) = .{};
};
pub const HevcProfileIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMainChromaSubsampling420BitDepth8() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling420BitDepth8();
    }
    pub fn getMainChromaSubsampling420BitDepth10() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling420BitDepth10();
    }
    pub fn getMainChromaSubsampling420BitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling420BitDepth12();
    }
    pub fn getMainChromaSubsampling422BitDepth10() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling422BitDepth10();
    }
    pub fn getMainChromaSubsampling422BitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling422BitDepth12();
    }
    pub fn getMainChromaSubsampling444BitDepth8() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling444BitDepth8();
    }
    pub fn getMainChromaSubsampling444BitDepth10() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling444BitDepth10();
    }
    pub fn getMainChromaSubsampling444BitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainChromaSubsampling444BitDepth12();
    }
    pub fn getMonochromeBitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMonochromeBitDepth12();
    }
    pub fn getMonochromeBitDepth16() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMonochromeBitDepth16();
    }
    pub fn getMainIntraChromaSubsampling420BitDepth8() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling420BitDepth8();
    }
    pub fn getMainIntraChromaSubsampling420BitDepth10() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling420BitDepth10();
    }
    pub fn getMainIntraChromaSubsampling420BitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling420BitDepth12();
    }
    pub fn getMainIntraChromaSubsampling422BitDepth10() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling422BitDepth10();
    }
    pub fn getMainIntraChromaSubsampling422BitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling422BitDepth12();
    }
    pub fn getMainIntraChromaSubsampling444BitDepth8() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling444BitDepth8();
    }
    pub fn getMainIntraChromaSubsampling444BitDepth10() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling444BitDepth10();
    }
    pub fn getMainIntraChromaSubsampling444BitDepth12() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling444BitDepth12();
    }
    pub fn getMainIntraChromaSubsampling444BitDepth16() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainIntraChromaSubsampling444BitDepth16();
    }
    pub fn getMainStillChromaSubsampling420BitDepth8() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainStillChromaSubsampling420BitDepth8();
    }
    pub fn getMainStillChromaSubsampling444BitDepth8() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainStillChromaSubsampling444BitDepth8();
    }
    pub fn getMainStillChromaSubsampling444BitDepth16() core.HResult!i32 {
        const _f = @This().IHevcProfileIdsStaticsCache.get();
        return try _f.getMainStillChromaSubsampling444BitDepth16();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.HevcProfileIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IHevcProfileIdsStaticsCache: FactoryCache(IHevcProfileIdsStatics, RUNTIME_NAME) = .{};
};
pub const IAudioEncodingProperties = extern struct {
    vtable: *const VTable,
    pub fn putBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Bitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Bitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChannelCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ChannelCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChannelCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ChannelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSampleRate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_SampleRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSampleRate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SampleRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitsPerSample(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_BitsPerSample(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitsPerSample(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BitsPerSample(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAudioEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62bc7a16-005c-4b3b-8a0b-0a090e9687f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Bitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Bitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ChannelCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ChannelCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_SampleRate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_SampleRate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_BitsPerSample: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BitsPerSample: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEncodingProperties2 = extern struct {
    vtable: *const VTable,
    pub fn getIsSpatial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSpatial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAudioEncodingProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c45d54da-80bd-4c23-80d5-72d4a181e894";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSpatial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEncodingProperties3 = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAudioEncodingProperties3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87600341-748c-4f8d-b0fd-10caf08ff087";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEncodingPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAac(self: *@This(), sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreateAac(@ptrCast(self), sampleRate, channelCount, bitrate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAacAdts(self: *@This(), sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreateAacAdts(@ptrCast(self), sampleRate, channelCount, bitrate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMp3(self: *@This(), sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreateMp3(@ptrCast(self), sampleRate, channelCount, bitrate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePcm(self: *@This(), sampleRate: u32, channelCount: u32, bitsPerSample: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreatePcm(@ptrCast(self), sampleRate, channelCount, bitsPerSample, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWma(self: *@This(), sampleRate: u32, channelCount: u32, bitrate: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreateWma(@ptrCast(self), sampleRate, channelCount, bitrate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAudioEncodingPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cad332c-ebe9-4527-b36d-e42a13cf38db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAac: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitrate: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        CreateAacAdts: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitrate: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        CreateMp3: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitrate: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        CreatePcm: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitsPerSample: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        CreateWma: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitrate: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEncodingPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateAlac(self: *@This(), sampleRate: u32, channelCount: u32, bitsPerSample: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreateAlac(@ptrCast(self), sampleRate, channelCount, bitsPerSample, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFlac(self: *@This(), sampleRate: u32, channelCount: u32, bitsPerSample: u32) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.CreateFlac(@ptrCast(self), sampleRate, channelCount, bitsPerSample, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAudioEncodingPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7489316f-77a0-433d-8ed5-4040280e8665";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAlac: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitsPerSample: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        CreateFlac: *const fn(self: *anyopaque, sampleRate: u32, channelCount: u32, bitsPerSample: u32, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEncodingPropertiesWithFormatUserData = extern struct {
    vtable: *const VTable,
    pub fn SetFormatUserData(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetFormatUserData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetFormatUserData(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetFormatUserData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAudioEncodingPropertiesWithFormatUserData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98f10d79-13ea-49ff-be70-2673db69702c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetFormatUserData: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        GetFormatUserData: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
    };
};
pub const IAv1ProfileIdsStatics = extern struct {
    vtable: *const VTable,
    pub fn getMainChromaSubsampling420BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling420BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling420BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling420BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling400BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling400BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling400BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling400BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighChromaSubsampling444BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_HighChromaSubsampling444BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighChromaSubsampling444BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_HighChromaSubsampling444BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfessionalChromaSubsampling420BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfessionalChromaSubsampling420BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfessionalChromaSubsampling400BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfessionalChromaSubsampling400BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfessionalChromaSubsampling444BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfessionalChromaSubsampling444BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfessionalChromaSubsampling422BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfessionalChromaSubsampling422BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfessionalChromaSubsampling422BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfessionalChromaSubsampling422BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfessionalChromaSubsampling422BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfessionalChromaSubsampling422BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IAv1ProfileIdsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9105812b-7c09-5882-88a4-678008a5174d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling420BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling420BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling400BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling400BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_HighChromaSubsampling444BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_HighChromaSubsampling444BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProfessionalChromaSubsampling420BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProfessionalChromaSubsampling400BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProfessionalChromaSubsampling444BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProfessionalChromaSubsampling422BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProfessionalChromaSubsampling422BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProfessionalChromaSubsampling422BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IContainerEncodingProperties = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IContainerEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59ac2a57-b32a-479e-8a61-4b7f2e9e7ea0";
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
pub const IContainerEncodingProperties2 = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This()) core.HResult!*ContainerEncodingProperties {
        var _r: *ContainerEncodingProperties = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IContainerEncodingProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b272c029-ae26-4819-baad-ad7a49b0a876";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **ContainerEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IH264ProfileIdsStatics = extern struct {
    vtable: *const VTable,
    pub fn getConstrainedBaseline(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ConstrainedBaseline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBaseline(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Baseline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtended(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Extended(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMain(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Main(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHigh(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_High(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHigh10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_High10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHigh422(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_High422(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHigh444(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_High444(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStereoHigh(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StereoHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMultiviewHigh(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MultiviewHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IH264ProfileIdsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38654ca7-846a-4f97-a2e5-c3a15bbf70fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConstrainedBaseline: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Baseline: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Extended: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Main: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_High: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_High10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_High422: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_High444: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_StereoHigh: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MultiviewHigh: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IHevcProfileIdsStatics = extern struct {
    vtable: *const VTable,
    pub fn getMainChromaSubsampling420BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling420BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling420BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling420BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling420BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling420BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling422BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling422BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling422BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling422BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling444BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling444BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling444BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling444BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainChromaSubsampling444BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainChromaSubsampling444BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMonochromeBitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MonochromeBitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMonochromeBitDepth16(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MonochromeBitDepth16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling420BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling420BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling420BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling420BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling420BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling420BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling422BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling422BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling422BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling422BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling444BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling444BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling444BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling444BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling444BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling444BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainIntraChromaSubsampling444BitDepth16(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainIntraChromaSubsampling444BitDepth16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainStillChromaSubsampling420BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainStillChromaSubsampling420BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainStillChromaSubsampling444BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainStillChromaSubsampling444BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainStillChromaSubsampling444BitDepth16(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MainStillChromaSubsampling444BitDepth16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IHevcProfileIdsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e50d280-2aa7-53c1-973f-2189fa656f53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling420BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling420BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling420BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling422BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling422BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling444BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling444BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainChromaSubsampling444BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MonochromeBitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MonochromeBitDepth16: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling420BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling420BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling420BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling422BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling422BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling444BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling444BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling444BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainIntraChromaSubsampling444BitDepth16: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainStillChromaSubsampling420BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainStillChromaSubsampling444BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MainStillChromaSubsampling444BitDepth16: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IImageEncodingProperties = extern struct {
    vtable: *const VTable,
    pub fn putWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Width(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Height(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IImageEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78625635-f331-4189-b1c3-b48d5ae034f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Width: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Height: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IImageEncodingProperties2 = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This()) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IImageEncodingProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c854a2df-c923-469b-ac8e-6a9f3c1cd9e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IImageEncodingPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateJpeg(self: *@This()) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.CreateJpeg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePng(self: *@This()) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.CreatePng(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateJpegXR(self: *@This()) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.CreateJpegXR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IImageEncodingPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "257c68dc-8b99-439e-aa59-913a36161297";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateJpeg: *const fn(self: *anyopaque, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
        CreatePng: *const fn(self: *anyopaque, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
        CreateJpegXR: *const fn(self: *anyopaque, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IImageEncodingPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateUncompressed(self: *@This(), format: MediaPixelFormat) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.CreateUncompressed(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBmp(self: *@This()) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.CreateBmp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IImageEncodingPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6c25b29-3824-46b0-956e-501329e1be3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateUncompressed: *const fn(self: *anyopaque, format: MediaPixelFormat, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
        CreateBmp: *const fn(self: *anyopaque, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IImageEncodingPropertiesStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateHeif(self: *@This()) core.HResult!*ImageEncodingProperties {
        var _r: *ImageEncodingProperties = undefined;
        const _c = self.vtable.CreateHeif(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IImageEncodingPropertiesStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48f4814d-a2ff-48dc-8ea0-e90680663656";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateHeif: *const fn(self: *anyopaque, _r: **ImageEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfile = extern struct {
    vtable: *const VTable,
    pub fn putAudio(self: *@This(), value: *AudioEncodingProperties) core.HResult!void {
        const _c = self.vtable.put_Audio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudio(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_Audio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideo(self: *@This(), value: *VideoEncodingProperties) core.HResult!void {
        const _c = self.vtable.put_Video(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideo(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.get_Video(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContainer(self: *@This(), value: *ContainerEncodingProperties) core.HResult!void {
        const _c = self.vtable.put_Container(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContainer(self: *@This()) core.HResult!*ContainerEncodingProperties {
        var _r: *ContainerEncodingProperties = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7dbf5a8-1db9-4783-876b-3dfe12acfdb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Audio: *const fn(self: *anyopaque, value: *AudioEncodingProperties) callconv(.winapi) HRESULT,
        get_Audio: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        put_Video: *const fn(self: *anyopaque, value: *VideoEncodingProperties) callconv(.winapi) HRESULT,
        get_Video: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        put_Container: *const fn(self: *anyopaque, value: *ContainerEncodingProperties) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **ContainerEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfile2 = extern struct {
    vtable: *const VTable,
    pub fn SetAudioTracks(self: *@This(), value: *IIterable(AudioStreamDescriptor)) core.HResult!void {
        const _c = self.vtable.SetAudioTracks(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAudioTracks(self: *@This()) core.HResult!*IVector(AudioStreamDescriptor) {
        var _r: *IVector(AudioStreamDescriptor) = undefined;
        const _c = self.vtable.GetAudioTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetVideoTracks(self: *@This(), value: *IIterable(VideoStreamDescriptor)) core.HResult!void {
        const _c = self.vtable.SetVideoTracks(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetVideoTracks(self: *@This()) core.HResult!*IVector(VideoStreamDescriptor) {
        var _r: *IVector(VideoStreamDescriptor) = undefined;
        const _c = self.vtable.GetVideoTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "349b3e0a-4035-488e-9877-85632865ed10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAudioTracks: *const fn(self: *anyopaque, value: *IIterable(AudioStreamDescriptor)) callconv(.winapi) HRESULT,
        GetAudioTracks: *const fn(self: *anyopaque, _r: **IVector(AudioStreamDescriptor)) callconv(.winapi) HRESULT,
        SetVideoTracks: *const fn(self: *anyopaque, value: *IIterable(VideoStreamDescriptor)) callconv(.winapi) HRESULT,
        GetVideoTracks: *const fn(self: *anyopaque, _r: **IVector(VideoStreamDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfile3 = extern struct {
    vtable: *const VTable,
    pub fn SetTimedMetadataTracks(self: *@This(), value: *IIterable(TimedMetadataStreamDescriptor)) core.HResult!void {
        const _c = self.vtable.SetTimedMetadataTracks(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetTimedMetadataTracks(self: *@This()) core.HResult!*IVector(TimedMetadataStreamDescriptor) {
        var _r: *IVector(TimedMetadataStreamDescriptor) = undefined;
        const _c = self.vtable.GetTimedMetadataTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfile3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba6ebe88-7570-4e69-accf-5611ad015f88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetTimedMetadataTracks: *const fn(self: *anyopaque, value: *IIterable(TimedMetadataStreamDescriptor)) callconv(.winapi) HRESULT,
        GetTimedMetadataTracks: *const fn(self: *anyopaque, _r: **IVector(TimedMetadataStreamDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfileStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateM4a(self: *@This(), quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateM4a(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMp3(self: *@This(), quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateMp3(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWma(self: *@This(), quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateWma(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMp4(self: *@This(), quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateMp4(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWmv(self: *@This(), quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateWmv(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(MediaEncodingProfile) {
        var _r: *IAsyncOperation(MediaEncodingProfile) = undefined;
        const _c = self.vtable.CreateFromFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamAsync(self: *@This(), stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(MediaEncodingProfile) {
        var _r: *IAsyncOperation(MediaEncodingProfile) = undefined;
        const _c = self.vtable.CreateFromStreamAsync(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfileStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "197f352c-2ede-4a45-a896-817a4854f8fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateM4a: *const fn(self: *anyopaque, quality: AudioEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateMp3: *const fn(self: *anyopaque, quality: AudioEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateWma: *const fn(self: *anyopaque, quality: AudioEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateMp4: *const fn(self: *anyopaque, quality: VideoEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateWmv: *const fn(self: *anyopaque, quality: VideoEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateFromFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(MediaEncodingProfile)) callconv(.winapi) HRESULT,
        CreateFromStreamAsync: *const fn(self: *anyopaque, stream: *IRandomAccessStream, _r: **IAsyncOperation(MediaEncodingProfile)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfileStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateWav(self: *@This(), quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateWav(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAvi(self: *@This(), quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateAvi(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfileStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce8de74f-6af4-4288-8fe2-79adf1f79a43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWav: *const fn(self: *anyopaque, quality: AudioEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateAvi: *const fn(self: *anyopaque, quality: VideoEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfileStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateAlac(self: *@This(), quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateAlac(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFlac(self: *@This(), quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateFlac(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateHevc(self: *@This(), quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateHevc(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfileStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90dac5aa-cf76-4294-a9ed-1a1420f51f6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAlac: *const fn(self: *anyopaque, quality: AudioEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateFlac: *const fn(self: *anyopaque, quality: AudioEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateHevc: *const fn(self: *anyopaque, quality: VideoEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProfileStatics4 = extern struct {
    vtable: *const VTable,
    pub fn CreateVp9(self: *@This(), quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateVp9(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAv1(self: *@This(), quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateAv1(@ptrCast(self), quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProfileStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fafd7b5-9404-514a-81dd-c9444d648af0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVp9: *const fn(self: *anyopaque, quality: VideoEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        CreateAv1: *const fn(self: *anyopaque, quality: VideoEncodingQuality, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingProperties = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*MediaPropertySet {
        var _r: *MediaPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubtype(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subtype(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtype(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4002af6-acd4-4e5a-a24b-5d7498a8b8c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **MediaPropertySet) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subtype: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Subtype: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getAac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Aac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAacAdts(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AacAdts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAc3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ac3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAmrNb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AmrNb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAmrWb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AmrWb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArgb32(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Argb32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAsf(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Asf(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvi(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Avi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBgra8(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bgra8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBmp(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bmp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEac3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Eac3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFloat(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Float(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGif(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Gif(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getH263(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_H263(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getH264(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_H264(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getH264Es(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_H264Es(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHevc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Hevc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHevcEs(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HevcEs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIyuv(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Iyuv(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJpeg(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Jpeg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJpegXr(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JpegXr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMjpg(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mjpg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMpeg(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mpeg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMpeg1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mpeg1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMpeg2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mpeg2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMp3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mp3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMpeg4(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mpeg4(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNv12(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Nv12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPcm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pcm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPng(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Png(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRgb24(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rgb24(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRgb32(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rgb32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiff(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tiff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWave(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wave(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWma8(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wma8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWma9(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wma9(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWmv3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wmv3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWvc1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wvc1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYuy2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Yuy2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYv12(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Yv12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37b6580e-a171-4464-ba5a-53189e48c1c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Aac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AacAdts: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ac3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AmrNb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AmrWb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Argb32: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Asf: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Avi: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Bgra8: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Bmp: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Eac3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Float: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Gif: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_H263: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_H264: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_H264Es: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Hevc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HevcEs: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Iyuv: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Jpeg: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JpegXr: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mjpg: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mpeg: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mpeg1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mpeg2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mp3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mpeg4: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Nv12: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pcm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Png: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rgb24: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rgb32: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Tiff: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wave: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wma8: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wma9: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wmv3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wvc1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Yuy2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Yv12: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getVp9(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Vp9(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getL8(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_L8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getL16(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_L16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getD16(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_D16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b7cd23d-42ff-4d33-8531-0626bee4b52d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Vp9: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_L8: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_L16: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_D16: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getAlac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Alac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Flac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba2414e4-883d-464e-a44f-097da08ef7ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Alac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Flac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getP010(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_P010(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddece58a-3949-4644-8a2c-59ef02c642fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_P010: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getHeif(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Heif(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ad4a007-ffce-4760-9828-5d0c99637e6a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Heif: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getPgs(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pgs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSrt(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Srt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSsa(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ssa(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVobSub(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VobSub(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1252973-a984-5912-93bb-54e7e569e053";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Pgs: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Srt: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ssa: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VobSub: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEncodingSubtypesStatics7 = extern struct {
    vtable: *const VTable,
    pub fn getAv1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Av1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92f2dca7-9937-52a1-b619-ddfad81cd99c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Av1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaRatio = extern struct {
    vtable: *const VTable,
    pub fn putNumerator(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Numerator(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumerator(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Numerator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDenominator(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Denominator(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDenominator(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Denominator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMediaRatio";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2d0fee5-8929-401d-ac78-7d357e378163";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Numerator: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Numerator: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Denominator: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Denominator: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMpeg2ProfileIdsStatics = extern struct {
    vtable: *const VTable,
    pub fn getSimple(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Simple(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMain(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Main(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignalNoiseRatioScalable(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SignalNoiseRatioScalable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpatiallyScalable(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SpatiallyScalable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHigh(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_High(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IMpeg2ProfileIdsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a461ff85-e57a-4128-9b21-d5331b04235c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Simple: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Main: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SignalNoiseRatioScalable: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SpatiallyScalable: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_High: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataEncodingProperties = extern struct {
    vtable: *const VTable,
    pub fn SetFormatUserData(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetFormatUserData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetFormatUserData(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetFormatUserData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Copy(self: *@This()) core.HResult!*TimedMetadataEncodingProperties {
        var _r: *TimedMetadataEncodingProperties = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.ITimedMetadataEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51cd30d3-d690-4cfa-97f4-4a398e9db420";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetFormatUserData: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        GetFormatUserData: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **TimedMetadataEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataEncodingPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn CreatePgs(self: *@This()) core.HResult!*TimedMetadataEncodingProperties {
        var _r: *TimedMetadataEncodingProperties = undefined;
        const _c = self.vtable.CreatePgs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSrt(self: *@This()) core.HResult!*TimedMetadataEncodingProperties {
        var _r: *TimedMetadataEncodingProperties = undefined;
        const _c = self.vtable.CreateSrt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSsa(self: *@This(), formatUserData: [*]u8) core.HResult!*TimedMetadataEncodingProperties {
        var _r: *TimedMetadataEncodingProperties = undefined;
        const _c = self.vtable.CreateSsa(@ptrCast(self), formatUserData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVobSub(self: *@This(), formatUserData: [*]u8) core.HResult!*TimedMetadataEncodingProperties {
        var _r: *TimedMetadataEncodingProperties = undefined;
        const _c = self.vtable.CreateVobSub(@ptrCast(self), formatUserData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.ITimedMetadataEncodingPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6629bb67-6e55-5643-89a0-7a7e8d85b52c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePgs: *const fn(self: *anyopaque, _r: **TimedMetadataEncodingProperties) callconv(.winapi) HRESULT,
        CreateSrt: *const fn(self: *anyopaque, _r: **TimedMetadataEncodingProperties) callconv(.winapi) HRESULT,
        CreateSsa: *const fn(self: *anyopaque, formatUserData: [*]u8, _r: **TimedMetadataEncodingProperties) callconv(.winapi) HRESULT,
        CreateVobSub: *const fn(self: *anyopaque, formatUserData: [*]u8, _r: **TimedMetadataEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingProperties = extern struct {
    vtable: *const VTable,
    pub fn putBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Bitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Bitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Width(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Height(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.get_FrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelAspectRatio(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.get_PixelAspectRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76ee6c9a-37c2-4f2a-880a-1282bbb4373d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Bitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Bitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Width: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Height: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_FrameRate: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
        get_PixelAspectRatio: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingProperties2 = extern struct {
    vtable: *const VTable,
    pub fn SetFormatUserData(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetFormatUserData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetFormatUserData(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetFormatUserData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putProfileId(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ProfileId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProfileId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProfileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f743a1ef-d465-4290-a94b-ef0f1528f8e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetFormatUserData: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        GetFormatUserData: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        put_ProfileId: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ProfileId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingProperties3 = extern struct {
    vtable: *const VTable,
    pub fn getStereoscopicVideoPackingMode(self: *@This()) core.HResult!StereoscopicVideoPackingMode {
        var _r: StereoscopicVideoPackingMode = undefined;
        const _c = self.vtable.get_StereoscopicVideoPackingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingProperties3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "386bcdc4-873a-479f-b3eb-56c1fcbec6d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StereoscopicVideoPackingMode: *const fn(self: *anyopaque, _r: *StereoscopicVideoPackingMode) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingProperties4 = extern struct {
    vtable: *const VTable,
    pub fn getSphericalVideoFrameFormat(self: *@This()) core.HResult!SphericalVideoFrameFormat {
        var _r: SphericalVideoFrameFormat = undefined;
        const _c = self.vtable.get_SphericalVideoFrameFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingProperties4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "724ef014-c10c-40f2-9d72-3ee13b45fa8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SphericalVideoFrameFormat: *const fn(self: *anyopaque, _r: *SphericalVideoFrameFormat) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingProperties5 = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingProperties5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4959080f-272f-4ece-a4df-c0ccdb33d840";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateH264(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.CreateH264(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMpeg2(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.CreateMpeg2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUncompressed(self: *@This(), subtype: HSTRING, width: u32, height: u32) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.CreateUncompressed(@ptrCast(self), subtype, width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ce14d44-1dc5-43db-9f38-ebebf90152cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateH264: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        CreateMpeg2: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        CreateUncompressed: *const fn(self: *anyopaque, subtype: HSTRING, width: u32, height: u32, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateHevc(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.CreateHevc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf1ebd5d-49fe-4d00-b59a-cfa4dfc51944";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateHevc: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEncodingPropertiesStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateVp9(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.CreateVp9(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAv1(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.CreateAv1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVideoEncodingPropertiesStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65b46685-60da-5e51-91a2-b38c4763b872";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVp9: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        CreateAv1: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IVp9ProfileIdsStatics = extern struct {
    vtable: *const VTable,
    pub fn getProfile0ChromaSubsampling420BitDepth8(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Profile0ChromaSubsampling420BitDepth8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfile2ChromaSubsampling420BitDepth10(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Profile2ChromaSubsampling420BitDepth10(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfile2ChromaSubsampling420BitDepth12(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Profile2ChromaSubsampling420BitDepth12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.IVp9ProfileIdsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20311a55-fe06-5883-92d9-6080c97743e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Profile0ChromaSubsampling420BitDepth8: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Profile2ChromaSubsampling420BitDepth10: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Profile2ChromaSubsampling420BitDepth12: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ImageEncodingProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IImageEncodingProperties = @ptrCast(self);
        return try this.putWidth(value);
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IImageEncodingProperties = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn putHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IImageEncodingProperties = @ptrCast(self);
        return try this.putHeight(value);
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IImageEncodingProperties = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getProperties(self: *@This()) core.HResult!*MediaPropertySet {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn putSubtype(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSubtype(value);
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubtype();
    }
    pub fn Copy(self: *@This()) core.HResult!*ImageEncodingProperties {
        var this: ?*IImageEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IImageEncodingProperties.IID)));
    }
    pub fn CreateHeif() core.HResult!*ImageEncodingProperties {
        const _f = @This().IImageEncodingPropertiesStatics3Cache.get();
        return try _f.CreateHeif();
    }
    pub fn CreateJpeg() core.HResult!*ImageEncodingProperties {
        const _f = @This().IImageEncodingPropertiesStaticsCache.get();
        return try _f.CreateJpeg();
    }
    pub fn CreatePng() core.HResult!*ImageEncodingProperties {
        const _f = @This().IImageEncodingPropertiesStaticsCache.get();
        return try _f.CreatePng();
    }
    pub fn CreateJpegXR() core.HResult!*ImageEncodingProperties {
        const _f = @This().IImageEncodingPropertiesStaticsCache.get();
        return try _f.CreateJpegXR();
    }
    pub fn CreateUncompressed(format: MediaPixelFormat) core.HResult!*ImageEncodingProperties {
        const _f = @This().IImageEncodingPropertiesStatics2Cache.get();
        return try _f.CreateUncompressed(format);
    }
    pub fn CreateBmp() core.HResult!*ImageEncodingProperties {
        const _f = @This().IImageEncodingPropertiesStatics2Cache.get();
        return try _f.CreateBmp();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.ImageEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageEncodingProperties.GUID;
    pub const IID: Guid = IImageEncodingProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageEncodingProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IImageEncodingPropertiesStatics3Cache: FactoryCache(IImageEncodingPropertiesStatics3, RUNTIME_NAME) = .{};
    var _IImageEncodingPropertiesStaticsCache: FactoryCache(IImageEncodingPropertiesStatics, RUNTIME_NAME) = .{};
    var _IImageEncodingPropertiesStatics2Cache: FactoryCache(IImageEncodingPropertiesStatics2, RUNTIME_NAME) = .{};
};
pub const MediaEncodingProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAudio(self: *@This(), value: *AudioEncodingProperties) core.HResult!void {
        const this: *IMediaEncodingProfile = @ptrCast(self);
        return try this.putAudio(value);
    }
    pub fn getAudio(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IMediaEncodingProfile = @ptrCast(self);
        return try this.getAudio();
    }
    pub fn putVideo(self: *@This(), value: *VideoEncodingProperties) core.HResult!void {
        const this: *IMediaEncodingProfile = @ptrCast(self);
        return try this.putVideo(value);
    }
    pub fn getVideo(self: *@This()) core.HResult!*VideoEncodingProperties {
        const this: *IMediaEncodingProfile = @ptrCast(self);
        return try this.getVideo();
    }
    pub fn putContainer(self: *@This(), value: *ContainerEncodingProperties) core.HResult!void {
        const this: *IMediaEncodingProfile = @ptrCast(self);
        return try this.putContainer(value);
    }
    pub fn getContainer(self: *@This()) core.HResult!*ContainerEncodingProperties {
        const this: *IMediaEncodingProfile = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn SetAudioTracks(self: *@This(), value: *IIterable(AudioStreamDescriptor)) core.HResult!void {
        var this: ?*IMediaEncodingProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAudioTracks(value);
    }
    pub fn GetAudioTracks(self: *@This()) core.HResult!*IVector(AudioStreamDescriptor) {
        var this: ?*IMediaEncodingProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAudioTracks();
    }
    pub fn SetVideoTracks(self: *@This(), value: *IIterable(VideoStreamDescriptor)) core.HResult!void {
        var this: ?*IMediaEncodingProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetVideoTracks(value);
    }
    pub fn GetVideoTracks(self: *@This()) core.HResult!*IVector(VideoStreamDescriptor) {
        var this: ?*IMediaEncodingProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetVideoTracks();
    }
    pub fn SetTimedMetadataTracks(self: *@This(), value: *IIterable(TimedMetadataStreamDescriptor)) core.HResult!void {
        var this: ?*IMediaEncodingProfile3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProfile3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetTimedMetadataTracks(value);
    }
    pub fn GetTimedMetadataTracks(self: *@This()) core.HResult!*IVector(TimedMetadataStreamDescriptor) {
        var this: ?*IMediaEncodingProfile3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProfile3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetTimedMetadataTracks();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaEncodingProfile.IID)));
    }
    pub fn CreateAlac(quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics3Cache.get();
        return try _f.CreateAlac(quality);
    }
    pub fn CreateFlac(quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics3Cache.get();
        return try _f.CreateFlac(quality);
    }
    pub fn CreateHevc(quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics3Cache.get();
        return try _f.CreateHevc(quality);
    }
    pub fn CreateVp9(quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics4Cache.get();
        return try _f.CreateVp9(quality);
    }
    pub fn CreateAv1(quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics4Cache.get();
        return try _f.CreateAv1(quality);
    }
    pub fn CreateM4a(quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateM4a(quality);
    }
    pub fn CreateMp3(quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateMp3(quality);
    }
    pub fn CreateWma(quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateWma(quality);
    }
    pub fn CreateMp4(quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateMp4(quality);
    }
    pub fn CreateWmv(quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateWmv(quality);
    }
    pub fn CreateFromFileAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(MediaEncodingProfile) {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateFromFileAsync(file);
    }
    pub fn CreateFromStreamAsync(stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(MediaEncodingProfile) {
        const _f = @This().IMediaEncodingProfileStaticsCache.get();
        return try _f.CreateFromStreamAsync(stream);
    }
    pub fn CreateWav(quality: AudioEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics2Cache.get();
        return try _f.CreateWav(quality);
    }
    pub fn CreateAvi(quality: VideoEncodingQuality) core.HResult!*MediaEncodingProfile {
        const _f = @This().IMediaEncodingProfileStatics2Cache.get();
        return try _f.CreateAvi(quality);
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.MediaEncodingProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaEncodingProfile.GUID;
    pub const IID: Guid = IMediaEncodingProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaEncodingProfile.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMediaEncodingProfileStatics3Cache: FactoryCache(IMediaEncodingProfileStatics3, RUNTIME_NAME) = .{};
    var _IMediaEncodingProfileStatics4Cache: FactoryCache(IMediaEncodingProfileStatics4, RUNTIME_NAME) = .{};
    var _IMediaEncodingProfileStaticsCache: FactoryCache(IMediaEncodingProfileStatics, RUNTIME_NAME) = .{};
    var _IMediaEncodingProfileStatics2Cache: FactoryCache(IMediaEncodingProfileStatics2, RUNTIME_NAME) = .{};
};
pub const MediaEncodingSubtypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getHeif() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics5Cache.get();
        return try _f.getHeif();
    }
    pub fn getAac() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAac();
    }
    pub fn getAacAdts() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAacAdts();
    }
    pub fn getAc3() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAc3();
    }
    pub fn getAmrNb() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAmrNb();
    }
    pub fn getAmrWb() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAmrWb();
    }
    pub fn getArgb32() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getArgb32();
    }
    pub fn getAsf() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAsf();
    }
    pub fn getAvi() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getAvi();
    }
    pub fn getBgra8() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getBgra8();
    }
    pub fn getBmp() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getBmp();
    }
    pub fn getEac3() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getEac3();
    }
    pub fn getFloat() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getFloat();
    }
    pub fn getGif() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getGif();
    }
    pub fn getH263() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getH263();
    }
    pub fn getH264() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getH264();
    }
    pub fn getH264Es() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getH264Es();
    }
    pub fn getHevc() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getHevc();
    }
    pub fn getHevcEs() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getHevcEs();
    }
    pub fn getIyuv() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getIyuv();
    }
    pub fn getJpeg() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getJpeg();
    }
    pub fn getJpegXr() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getJpegXr();
    }
    pub fn getMjpg() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getMjpg();
    }
    pub fn getMpeg() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getMpeg();
    }
    pub fn getMpeg1() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getMpeg1();
    }
    pub fn getMpeg2() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getMpeg2();
    }
    pub fn getMp3() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getMp3();
    }
    pub fn getMpeg4() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getMpeg4();
    }
    pub fn getNv12() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getNv12();
    }
    pub fn getPcm() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getPcm();
    }
    pub fn getPng() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getPng();
    }
    pub fn getRgb24() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getRgb24();
    }
    pub fn getRgb32() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getRgb32();
    }
    pub fn getTiff() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getTiff();
    }
    pub fn getWave() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getWave();
    }
    pub fn getWma8() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getWma8();
    }
    pub fn getWma9() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getWma9();
    }
    pub fn getWmv3() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getWmv3();
    }
    pub fn getWvc1() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getWvc1();
    }
    pub fn getYuy2() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getYuy2();
    }
    pub fn getYv12() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStaticsCache.get();
        return try _f.getYv12();
    }
    pub fn getAlac() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics3Cache.get();
        return try _f.getAlac();
    }
    pub fn getFlac() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics3Cache.get();
        return try _f.getFlac();
    }
    pub fn getAv1() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics7Cache.get();
        return try _f.getAv1();
    }
    pub fn getPgs() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics6Cache.get();
        return try _f.getPgs();
    }
    pub fn getSrt() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics6Cache.get();
        return try _f.getSrt();
    }
    pub fn getSsa() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics6Cache.get();
        return try _f.getSsa();
    }
    pub fn getVobSub() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics6Cache.get();
        return try _f.getVobSub();
    }
    pub fn getP010() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics4Cache.get();
        return try _f.getP010();
    }
    pub fn getVp9() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics2Cache.get();
        return try _f.getVp9();
    }
    pub fn getL8() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics2Cache.get();
        return try _f.getL8();
    }
    pub fn getL16() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics2Cache.get();
        return try _f.getL16();
    }
    pub fn getD16() core.HResult!HSTRING {
        const _f = @This().IMediaEncodingSubtypesStatics2Cache.get();
        return try _f.getD16();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.MediaEncodingSubtypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMediaEncodingSubtypesStatics5Cache: FactoryCache(IMediaEncodingSubtypesStatics5, RUNTIME_NAME) = .{};
    var _IMediaEncodingSubtypesStaticsCache: FactoryCache(IMediaEncodingSubtypesStatics, RUNTIME_NAME) = .{};
    var _IMediaEncodingSubtypesStatics3Cache: FactoryCache(IMediaEncodingSubtypesStatics3, RUNTIME_NAME) = .{};
    var _IMediaEncodingSubtypesStatics7Cache: FactoryCache(IMediaEncodingSubtypesStatics7, RUNTIME_NAME) = .{};
    var _IMediaEncodingSubtypesStatics6Cache: FactoryCache(IMediaEncodingSubtypesStatics6, RUNTIME_NAME) = .{};
    var _IMediaEncodingSubtypesStatics4Cache: FactoryCache(IMediaEncodingSubtypesStatics4, RUNTIME_NAME) = .{};
    var _IMediaEncodingSubtypesStatics2Cache: FactoryCache(IMediaEncodingSubtypesStatics2, RUNTIME_NAME) = .{};
};
pub const MediaMirroringOptions = enum(i32) {
    None = 0,
    Horizontal = 1,
    Vertical = 2,
};
pub const MediaPixelFormat = enum(i32) {
    Nv12 = 0,
    Bgra8 = 1,
    P010 = 2,
};
pub const MediaPropertySet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMap(Guid,IInspectable) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IMap(Guid,IInspectable) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IMap(Guid,IInspectable) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(Guid,IInspectable)) {
        var this: ?*IIterable(IKeyValuePair(Guid,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMap.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.MediaPropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMap.GUID;
    pub const IID: Guid = IMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMap.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaRatio = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putNumerator(self: *@This(), value: u32) core.HResult!void {
        const this: *IMediaRatio = @ptrCast(self);
        return try this.putNumerator(value);
    }
    pub fn getNumerator(self: *@This()) core.HResult!u32 {
        const this: *IMediaRatio = @ptrCast(self);
        return try this.getNumerator();
    }
    pub fn putDenominator(self: *@This(), value: u32) core.HResult!void {
        const this: *IMediaRatio = @ptrCast(self);
        return try this.putDenominator(value);
    }
    pub fn getDenominator(self: *@This()) core.HResult!u32 {
        const this: *IMediaRatio = @ptrCast(self);
        return try this.getDenominator();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.MediaRatio";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaRatio.GUID;
    pub const IID: Guid = IMediaRatio.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaRatio.SIGNATURE);
};
pub const MediaRotation = enum(i32) {
    None = 0,
    Clockwise90Degrees = 1,
    Clockwise180Degrees = 2,
    Clockwise270Degrees = 3,
};
pub const MediaThumbnailFormat = enum(i32) {
    Bmp = 0,
    Bgra8 = 1,
};
pub const Mpeg2ProfileIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getSimple() core.HResult!i32 {
        const _f = @This().IMpeg2ProfileIdsStaticsCache.get();
        return try _f.getSimple();
    }
    pub fn getMain() core.HResult!i32 {
        const _f = @This().IMpeg2ProfileIdsStaticsCache.get();
        return try _f.getMain();
    }
    pub fn getSignalNoiseRatioScalable() core.HResult!i32 {
        const _f = @This().IMpeg2ProfileIdsStaticsCache.get();
        return try _f.getSignalNoiseRatioScalable();
    }
    pub fn getSpatiallyScalable() core.HResult!i32 {
        const _f = @This().IMpeg2ProfileIdsStaticsCache.get();
        return try _f.getSpatiallyScalable();
    }
    pub fn getHigh() core.HResult!i32 {
        const _f = @This().IMpeg2ProfileIdsStaticsCache.get();
        return try _f.getHigh();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.Mpeg2ProfileIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMpeg2ProfileIdsStaticsCache: FactoryCache(IMpeg2ProfileIdsStatics, RUNTIME_NAME) = .{};
};
pub const SphericalVideoFrameFormat = enum(i32) {
    None = 0,
    Unsupported = 1,
    Equirectangular = 2,
};
pub const StereoscopicVideoPackingMode = enum(i32) {
    None = 0,
    SideBySide = 1,
    TopBottom = 2,
};
pub const TimedMetadataEncodingProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetFormatUserData(self: *@This(), value: [*]u8) core.HResult!void {
        var this: ?*ITimedMetadataEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFormatUserData(value);
    }
    pub fn GetFormatUserData(self: *@This(), value: u8) core.HResult!void {
        var this: ?*ITimedMetadataEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFormatUserData(value);
    }
    pub fn Copy(self: *@This()) core.HResult!*TimedMetadataEncodingProperties {
        var this: ?*ITimedMetadataEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn getProperties(self: *@This()) core.HResult!*MediaPropertySet {
        const this: *IMediaEncodingProperties = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaEncodingProperties = @ptrCast(self);
        return try this.getType();
    }
    pub fn putSubtype(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaEncodingProperties = @ptrCast(self);
        return try this.putSubtype(value);
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaEncodingProperties = @ptrCast(self);
        return try this.getSubtype();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaEncodingProperties.IID)));
    }
    pub fn CreatePgs() core.HResult!*TimedMetadataEncodingProperties {
        const _f = @This().ITimedMetadataEncodingPropertiesStaticsCache.get();
        return try _f.CreatePgs();
    }
    pub fn CreateSrt() core.HResult!*TimedMetadataEncodingProperties {
        const _f = @This().ITimedMetadataEncodingPropertiesStaticsCache.get();
        return try _f.CreateSrt();
    }
    pub fn CreateSsa(formatUserData: [*]u8) core.HResult!*TimedMetadataEncodingProperties {
        const _f = @This().ITimedMetadataEncodingPropertiesStaticsCache.get();
        return try _f.CreateSsa(formatUserData);
    }
    pub fn CreateVobSub(formatUserData: [*]u8) core.HResult!*TimedMetadataEncodingProperties {
        const _f = @This().ITimedMetadataEncodingPropertiesStaticsCache.get();
        return try _f.CreateVobSub(formatUserData);
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.TimedMetadataEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaEncodingProperties.GUID;
    pub const IID: Guid = IMediaEncodingProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaEncodingProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ITimedMetadataEncodingPropertiesStaticsCache: FactoryCache(ITimedMetadataEncodingPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const VideoEncodingProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.putBitrate(value);
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.getBitrate();
    }
    pub fn putWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.putWidth(value);
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn putHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.putHeight(value);
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getFrameRate(self: *@This()) core.HResult!*MediaRatio {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.getFrameRate();
    }
    pub fn getPixelAspectRatio(self: *@This()) core.HResult!*MediaRatio {
        const this: *IVideoEncodingProperties = @ptrCast(self);
        return try this.getPixelAspectRatio();
    }
    pub fn getProperties(self: *@This()) core.HResult!*MediaPropertySet {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn putSubtype(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSubtype(value);
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaEncodingProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaEncodingProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubtype();
    }
    pub fn SetFormatUserData(self: *@This(), value: [*]u8) core.HResult!void {
        var this: ?*IVideoEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFormatUserData(value);
    }
    pub fn GetFormatUserData(self: *@This(), value: u8) core.HResult!void {
        var this: ?*IVideoEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFormatUserData(value);
    }
    pub fn putProfileId(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IVideoEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProfileId(value);
    }
    pub fn getProfileId(self: *@This()) core.HResult!i32 {
        var this: ?*IVideoEncodingProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProfileId();
    }
    pub fn getStereoscopicVideoPackingMode(self: *@This()) core.HResult!StereoscopicVideoPackingMode {
        var this: ?*IVideoEncodingProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStereoscopicVideoPackingMode();
    }
    pub fn getSphericalVideoFrameFormat(self: *@This()) core.HResult!SphericalVideoFrameFormat {
        var this: ?*IVideoEncodingProperties4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSphericalVideoFrameFormat();
    }
    pub fn Copy(self: *@This()) core.HResult!*VideoEncodingProperties {
        var this: ?*IVideoEncodingProperties5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoEncodingProperties5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVideoEncodingProperties.IID)));
    }
    pub fn CreateVp9() core.HResult!*VideoEncodingProperties {
        const _f = @This().IVideoEncodingPropertiesStatics3Cache.get();
        return try _f.CreateVp9();
    }
    pub fn CreateAv1() core.HResult!*VideoEncodingProperties {
        const _f = @This().IVideoEncodingPropertiesStatics3Cache.get();
        return try _f.CreateAv1();
    }
    pub fn CreateH264() core.HResult!*VideoEncodingProperties {
        const _f = @This().IVideoEncodingPropertiesStaticsCache.get();
        return try _f.CreateH264();
    }
    pub fn CreateMpeg2() core.HResult!*VideoEncodingProperties {
        const _f = @This().IVideoEncodingPropertiesStaticsCache.get();
        return try _f.CreateMpeg2();
    }
    pub fn CreateUncompressed(subtype: HSTRING, width: u32, height: u32) core.HResult!*VideoEncodingProperties {
        const _f = @This().IVideoEncodingPropertiesStaticsCache.get();
        return try _f.CreateUncompressed(subtype, width, height);
    }
    pub fn CreateHevc() core.HResult!*VideoEncodingProperties {
        const _f = @This().IVideoEncodingPropertiesStatics2Cache.get();
        return try _f.CreateHevc();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.VideoEncodingProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoEncodingProperties.GUID;
    pub const IID: Guid = IVideoEncodingProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoEncodingProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IVideoEncodingPropertiesStatics3Cache: FactoryCache(IVideoEncodingPropertiesStatics3, RUNTIME_NAME) = .{};
    var _IVideoEncodingPropertiesStaticsCache: FactoryCache(IVideoEncodingPropertiesStatics, RUNTIME_NAME) = .{};
    var _IVideoEncodingPropertiesStatics2Cache: FactoryCache(IVideoEncodingPropertiesStatics2, RUNTIME_NAME) = .{};
};
pub const VideoEncodingQuality = enum(i32) {
    Auto = 0,
    HD1080p = 1,
    HD720p = 2,
    Wvga = 3,
    Ntsc = 4,
    Pal = 5,
    Vga = 6,
    Qvga = 7,
    Uhd2160p = 8,
    Uhd4320p = 9,
};
pub const Vp9ProfileIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getProfile0ChromaSubsampling420BitDepth8() core.HResult!i32 {
        const _f = @This().IVp9ProfileIdsStaticsCache.get();
        return try _f.getProfile0ChromaSubsampling420BitDepth8();
    }
    pub fn getProfile2ChromaSubsampling420BitDepth10() core.HResult!i32 {
        const _f = @This().IVp9ProfileIdsStaticsCache.get();
        return try _f.getProfile2ChromaSubsampling420BitDepth10();
    }
    pub fn getProfile2ChromaSubsampling420BitDepth12() core.HResult!i32 {
        const _f = @This().IVp9ProfileIdsStaticsCache.get();
        return try _f.getProfile2ChromaSubsampling420BitDepth12();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProperties.Vp9ProfileIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IVp9ProfileIdsStaticsCache: FactoryCache(IVp9ProfileIdsStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const VideoStreamDescriptor = @import("./Core.zig").VideoStreamDescriptor;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const TimedMetadataStreamDescriptor = @import("./Core.zig").TimedMetadataStreamDescriptor;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const AudioStreamDescriptor = @import("./Core.zig").AudioStreamDescriptor;
