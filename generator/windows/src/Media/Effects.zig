pub const AcousticEchoCancellationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetEchoCancellationRenderEndpoint(self: *@This(), deviceId: HSTRING) core.HResult!void {
        const this: *IAcousticEchoCancellationConfiguration = @ptrCast(self);
        return try this.SetEchoCancellationRenderEndpoint(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.AcousticEchoCancellationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAcousticEchoCancellationConfiguration.GUID;
    pub const IID: Guid = IAcousticEchoCancellationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAcousticEchoCancellationConfiguration.SIGNATURE);
};
pub const AudioCaptureEffectsManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAudioCaptureEffectsChanged(self: *@This(), handler: *TypedEventHandler(AudioCaptureEffectsManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioCaptureEffectsManager = @ptrCast(self);
        return try this.addAudioCaptureEffectsChanged(handler);
    }
    pub fn removeAudioCaptureEffectsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioCaptureEffectsManager = @ptrCast(self);
        return try this.removeAudioCaptureEffectsChanged(token);
    }
    pub fn GetAudioCaptureEffects(self: *@This()) core.HResult!*IVectorView(AudioEffect) {
        const this: *IAudioCaptureEffectsManager = @ptrCast(self);
        return try this.GetAudioCaptureEffects();
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.AudioCaptureEffectsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioCaptureEffectsManager.GUID;
    pub const IID: Guid = IAudioCaptureEffectsManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioCaptureEffectsManager.SIGNATURE);
};
pub const AudioEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAudioEffectType(self: *@This()) core.HResult!AudioEffectType {
        const this: *IAudioEffect = @ptrCast(self);
        return try this.getAudioEffectType();
    }
    pub fn getAcousticEchoCancellationConfiguration(self: *@This()) core.HResult!*AcousticEchoCancellationConfiguration {
        var this: ?*IAudioEffect2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffect2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAcousticEchoCancellationConfiguration();
    }
    pub fn getCanSetState(self: *@This()) core.HResult!bool {
        var this: ?*IAudioEffect2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffect2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanSetState();
    }
    pub fn getState(self: *@This()) core.HResult!AudioEffectState {
        var this: ?*IAudioEffect2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffect2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getState();
    }
    pub fn SetState(self: *@This(), newState: AudioEffectState) core.HResult!void {
        var this: ?*IAudioEffect2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffect2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetState(newState);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.AudioEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioEffect.GUID;
    pub const IID: Guid = IAudioEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioEffect.SIGNATURE);
};
pub const AudioEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IAudioEffectDefinition = @ptrCast(self);
        return try this.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IAudioEffectDefinition = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(activatableClassId: HSTRING) core.HResult!*AudioEffectDefinition {
        const factory = @This().IAudioEffectDefinitionFactoryCache.get();
        return try factory.Create(activatableClassId);
    }
    pub fn CreateWithProperties(activatableClassId: HSTRING, props: *IPropertySet) core.HResult!*AudioEffectDefinition {
        const factory = @This().IAudioEffectDefinitionFactoryCache.get();
        return try factory.CreateWithProperties(activatableClassId, props);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.AudioEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioEffectDefinition.GUID;
    pub const IID: Guid = IAudioEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioEffectDefinition.SIGNATURE);
    var _IAudioEffectDefinitionFactoryCache: FactoryCache(IAudioEffectDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const AudioEffectState = enum(i32) {
    Off = 0,
    On = 1,
};
pub const AudioEffectType = enum(i32) {
    Other = 0,
    AcousticEchoCancellation = 1,
    NoiseSuppression = 2,
    AutomaticGainControl = 3,
    BeamForming = 4,
    ConstantToneRemoval = 5,
    Equalizer = 6,
    LoudnessEqualizer = 7,
    BassBoost = 8,
    VirtualSurround = 9,
    VirtualHeadphones = 10,
    SpeakerFill = 11,
    RoomCorrection = 12,
    BassManagement = 13,
    EnvironmentalEffects = 14,
    SpeakerProtection = 15,
    SpeakerCompensation = 16,
    DynamicRangeCompression = 17,
    FarFieldBeamForming = 18,
    DeepNoiseSuppression = 19,
};
pub const AudioEffectsManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAudioRenderEffectsManager(deviceId: HSTRING, category: AudioRenderCategory) core.HResult!*AudioRenderEffectsManager {
        const factory = @This().IAudioEffectsManagerStaticsCache.get();
        return try factory.CreateAudioRenderEffectsManager(deviceId, category);
    }
    pub fn CreateAudioRenderEffectsManager(deviceId: HSTRING, category: AudioRenderCategory, mode: AudioProcessing) core.HResult!*AudioRenderEffectsManager {
        const factory = @This().IAudioEffectsManagerStaticsCache.get();
        return try factory.CreateAudioRenderEffectsManager(deviceId, category, mode);
    }
    pub fn CreateAudioCaptureEffectsManager(deviceId: HSTRING, category: MediaCategory) core.HResult!*AudioCaptureEffectsManager {
        const factory = @This().IAudioEffectsManagerStaticsCache.get();
        return try factory.CreateAudioCaptureEffectsManager(deviceId, category);
    }
    pub fn CreateAudioCaptureEffectsManager(deviceId: HSTRING, category: MediaCategory, mode: AudioProcessing) core.HResult!*AudioCaptureEffectsManager {
        const factory = @This().IAudioEffectsManagerStaticsCache.get();
        return try factory.CreateAudioCaptureEffectsManager(deviceId, category, mode);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.AudioEffectsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAudioEffectsManagerStaticsCache: FactoryCache(IAudioEffectsManagerStatics, RUNTIME_NAME) = .{};
};
pub const AudioRenderEffectsManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAudioRenderEffectsChanged(self: *@This(), handler: *TypedEventHandler(AudioRenderEffectsManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioRenderEffectsManager = @ptrCast(self);
        return try this.addAudioRenderEffectsChanged(handler);
    }
    pub fn removeAudioRenderEffectsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioRenderEffectsManager = @ptrCast(self);
        return try this.removeAudioRenderEffectsChanged(token);
    }
    pub fn GetAudioRenderEffects(self: *@This()) core.HResult!*IVectorView(AudioEffect) {
        const this: *IAudioRenderEffectsManager = @ptrCast(self);
        return try this.GetAudioRenderEffects();
    }
    pub fn getEffectsProviderThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var this: ?*IAudioRenderEffectsManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioRenderEffectsManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectsProviderThumbnail();
    }
    pub fn getEffectsProviderSettingsLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAudioRenderEffectsManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioRenderEffectsManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectsProviderSettingsLabel();
    }
    pub fn ShowSettingsUI(self: *@This()) core.HResult!void {
        var this: ?*IAudioRenderEffectsManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioRenderEffectsManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowSettingsUI();
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.AudioRenderEffectsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioRenderEffectsManager.GUID;
    pub const IID: Guid = IAudioRenderEffectsManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioRenderEffectsManager.SIGNATURE);
};
pub const CompositeVideoFrameContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSurfacesToOverlay(self: *@This()) core.HResult!*IVectorView(IDirect3DSurface) {
        const this: *ICompositeVideoFrameContext = @ptrCast(self);
        return try this.getSurfacesToOverlay();
    }
    pub fn getBackgroundFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *ICompositeVideoFrameContext = @ptrCast(self);
        return try this.getBackgroundFrame();
    }
    pub fn getOutputFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *ICompositeVideoFrameContext = @ptrCast(self);
        return try this.getOutputFrame();
    }
    pub fn GetOverlayForSurface(self: *@This(), surfaceToOverlay: *IDirect3DSurface) core.HResult!*MediaOverlay {
        const this: *ICompositeVideoFrameContext = @ptrCast(self);
        return try this.GetOverlayForSurface(surfaceToOverlay);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.CompositeVideoFrameContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositeVideoFrameContext.GUID;
    pub const IID: Guid = ICompositeVideoFrameContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositeVideoFrameContext.SIGNATURE);
};
pub const IAcousticEchoCancellationConfiguration = extern struct {
    vtable: *const VTable,
    pub fn SetEchoCancellationRenderEndpoint(self: *@This(), deviceId: HSTRING) core.HResult!void {
        const _c = self.vtable.SetEchoCancellationRenderEndpoint(@ptrCast(self), deviceId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAcousticEchoCancellationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "587e735b-175b-5177-a407-2e33bafe33a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetEchoCancellationRenderEndpoint: *const fn(self: *anyopaque, deviceId: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAudioCaptureEffectsManager = extern struct {
    vtable: *const VTable,
    pub fn addAudioCaptureEffectsChanged(self: *@This(), handler: *TypedEventHandler(AudioCaptureEffectsManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioCaptureEffectsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioCaptureEffectsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioCaptureEffectsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAudioCaptureEffects(self: *@This()) core.HResult!*IVectorView(AudioEffect) {
        var _r: *IVectorView(AudioEffect) = undefined;
        const _c = self.vtable.GetAudioCaptureEffects(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioCaptureEffectsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f85c271-038d-4393-8298-540110608eef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AudioCaptureEffectsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioCaptureEffectsManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioCaptureEffectsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetAudioCaptureEffects: *const fn(self: *anyopaque, _r: **IVectorView(AudioEffect)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffect = extern struct {
    vtable: *const VTable,
    pub fn getAudioEffectType(self: *@This()) core.HResult!AudioEffectType {
        var _r: AudioEffectType = undefined;
        const _c = self.vtable.get_AudioEffectType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34aafa51-9207-4055-be93-6e5734a86ae4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioEffectType: *const fn(self: *anyopaque, _r: *AudioEffectType) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffect2 = extern struct {
    vtable: *const VTable,
    pub fn getAcousticEchoCancellationConfiguration(self: *@This()) core.HResult!*AcousticEchoCancellationConfiguration {
        var _r: *AcousticEchoCancellationConfiguration = undefined;
        const _c = self.vtable.get_AcousticEchoCancellationConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanSetState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSetState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!AudioEffectState {
        var _r: AudioEffectState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetState(self: *@This(), newState: AudioEffectState) core.HResult!void {
        const _c = self.vtable.SetState(@ptrCast(self), newState);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioEffect2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06703cb0-757e-5757-8af0-6ba58a8b2990";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AcousticEchoCancellationConfiguration: *const fn(self: *anyopaque, _r: **AcousticEchoCancellationConfiguration) callconv(.winapi) HRESULT,
        get_CanSetState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AudioEffectState) callconv(.winapi) HRESULT,
        SetState: *const fn(self: *anyopaque, newState: AudioEffectState) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActivatableClassId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4d7f974-7d80-4f73-9089-e31c9db9c294";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivatableClassId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffectDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), activatableClassId: HSTRING) core.HResult!*AudioEffectDefinition {
        var _r: *AudioEffectDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), activatableClassId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithProperties(self: *@This(), activatableClassId: HSTRING, props: *IPropertySet) core.HResult!*AudioEffectDefinition {
        var _r: *AudioEffectDefinition = undefined;
        const _c = self.vtable.CreateWithProperties(@ptrCast(self), activatableClassId, props, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioEffectDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e1da646-e705-45ed-8a2b-fc4e4f405a97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, activatableClassId: HSTRING, _r: **AudioEffectDefinition) callconv(.winapi) HRESULT,
        CreateWithProperties: *const fn(self: *anyopaque, activatableClassId: HSTRING, props: *IPropertySet, _r: **AudioEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffectsManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAudioRenderEffectsManager(self: *@This(), deviceId: HSTRING, category: AudioRenderCategory) core.HResult!*AudioRenderEffectsManager {
        var _r: *AudioRenderEffectsManager = undefined;
        const _c = self.vtable.CreateAudioRenderEffectsManager(@ptrCast(self), deviceId, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAudioRenderEffectsManager(self: *@This(), deviceId: HSTRING, category: AudioRenderCategory, mode: AudioProcessing) core.HResult!*AudioRenderEffectsManager {
        var _r: *AudioRenderEffectsManager = undefined;
        const _c = self.vtable.CreateAudioRenderEffectsManager(@ptrCast(self), deviceId, category, mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAudioCaptureEffectsManager(self: *@This(), deviceId: HSTRING, category: MediaCategory) core.HResult!*AudioCaptureEffectsManager {
        var _r: *AudioCaptureEffectsManager = undefined;
        const _c = self.vtable.CreateAudioCaptureEffectsManager(@ptrCast(self), deviceId, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAudioCaptureEffectsManager(self: *@This(), deviceId: HSTRING, category: MediaCategory, mode: AudioProcessing) core.HResult!*AudioCaptureEffectsManager {
        var _r: *AudioCaptureEffectsManager = undefined;
        const _c = self.vtable.CreateAudioCaptureEffectsManager(@ptrCast(self), deviceId, category, mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioEffectsManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66406c04-86fa-47cc-a315-f489d8c3fe10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAudioRenderEffectsManager: *const fn(self: *anyopaque, deviceId: HSTRING, category: AudioRenderCategory, _r: **AudioRenderEffectsManager) callconv(.winapi) HRESULT,
        CreateAudioRenderEffectsManager: *const fn(self: *anyopaque, deviceId: HSTRING, category: AudioRenderCategory, mode: AudioProcessing, _r: **AudioRenderEffectsManager) callconv(.winapi) HRESULT,
        CreateAudioCaptureEffectsManager: *const fn(self: *anyopaque, deviceId: HSTRING, category: MediaCategory, _r: **AudioCaptureEffectsManager) callconv(.winapi) HRESULT,
        CreateAudioCaptureEffectsManager: *const fn(self: *anyopaque, deviceId: HSTRING, category: MediaCategory, mode: AudioProcessing, _r: **AudioCaptureEffectsManager) callconv(.winapi) HRESULT,
    };
};
pub const IAudioRenderEffectsManager = extern struct {
    vtable: *const VTable,
    pub fn addAudioRenderEffectsChanged(self: *@This(), handler: *TypedEventHandler(AudioRenderEffectsManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioRenderEffectsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioRenderEffectsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioRenderEffectsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAudioRenderEffects(self: *@This()) core.HResult!*IVectorView(AudioEffect) {
        var _r: *IVectorView(AudioEffect) = undefined;
        const _c = self.vtable.GetAudioRenderEffects(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioRenderEffectsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4dc98966-8751-42b2-bfcb-39ca7864bd47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AudioRenderEffectsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioRenderEffectsManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioRenderEffectsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetAudioRenderEffects: *const fn(self: *anyopaque, _r: **IVectorView(AudioEffect)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioRenderEffectsManager2 = extern struct {
    vtable: *const VTable,
    pub fn getEffectsProviderThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_EffectsProviderThumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEffectsProviderSettingsLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EffectsProviderSettingsLabel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowSettingsUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowSettingsUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IAudioRenderEffectsManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a844cd09-5ecc-44b3-bb4e-1db07287139c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EffectsProviderThumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        get_EffectsProviderSettingsLabel: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ShowSettingsUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBasicAudioEffect = extern struct {
    vtable: *const VTable,
    pub fn getUseInputFrameForOutput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseInputFrameForOutput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedEncodingProperties(self: *@This()) core.HResult!*IVectorView(AudioEncodingProperties) {
        var _r: *IVectorView(AudioEncodingProperties) = undefined;
        const _c = self.vtable.get_SupportedEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEncodingProperties(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!void {
        const _c = self.vtable.SetEncodingProperties(@ptrCast(self), encodingProperties);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessFrame(self: *@This(), context: *ProcessAudioFrameContext) core.HResult!void {
        const _c = self.vtable.ProcessFrame(@ptrCast(self), context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This(), reason: MediaEffectClosedReason) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DiscardQueuedFrames(self: *@This()) core.HResult!void {
        const _c = self.vtable.DiscardQueuedFrames(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IBasicAudioEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c062c53-6bc0-48b8-a99a-4b41550f1359";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UseInputFrameForOutput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedEncodingProperties: *const fn(self: *anyopaque, _r: **IVectorView(AudioEncodingProperties)) callconv(.winapi) HRESULT,
        SetEncodingProperties: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties) callconv(.winapi) HRESULT,
        ProcessFrame: *const fn(self: *anyopaque, context: *ProcessAudioFrameContext) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque, reason: MediaEffectClosedReason) callconv(.winapi) HRESULT,
        DiscardQueuedFrames: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBasicVideoEffect = extern struct {
    vtable: *const VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedMemoryTypes(self: *@This()) core.HResult!MediaMemoryTypes {
        var _r: MediaMemoryTypes = undefined;
        const _c = self.vtable.get_SupportedMemoryTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeIndependent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TimeIndependent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedEncodingProperties(self: *@This()) core.HResult!*IVectorView(VideoEncodingProperties) {
        var _r: *IVectorView(VideoEncodingProperties) = undefined;
        const _c = self.vtable.get_SupportedEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEncodingProperties(self: *@This(), encodingProperties: *VideoEncodingProperties, device: *IDirect3DDevice) core.HResult!void {
        const _c = self.vtable.SetEncodingProperties(@ptrCast(self), encodingProperties, device);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessFrame(self: *@This(), context: *ProcessVideoFrameContext) core.HResult!void {
        const _c = self.vtable.ProcessFrame(@ptrCast(self), context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This(), reason: MediaEffectClosedReason) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DiscardQueuedFrames(self: *@This()) core.HResult!void {
        const _c = self.vtable.DiscardQueuedFrames(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IBasicVideoEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8262c7ef-b360-40be-949b-2ff42ff35693";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedMemoryTypes: *const fn(self: *anyopaque, _r: *MediaMemoryTypes) callconv(.winapi) HRESULT,
        get_TimeIndependent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedEncodingProperties: *const fn(self: *anyopaque, _r: **IVectorView(VideoEncodingProperties)) callconv(.winapi) HRESULT,
        SetEncodingProperties: *const fn(self: *anyopaque, encodingProperties: *VideoEncodingProperties, device: *IDirect3DDevice) callconv(.winapi) HRESULT,
        ProcessFrame: *const fn(self: *anyopaque, context: *ProcessVideoFrameContext) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque, reason: MediaEffectClosedReason) callconv(.winapi) HRESULT,
        DiscardQueuedFrames: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICompositeVideoFrameContext = extern struct {
    vtable: *const VTable,
    pub fn getSurfacesToOverlay(self: *@This()) core.HResult!*IVectorView(IDirect3DSurface) {
        var _r: *IVectorView(IDirect3DSurface) = undefined;
        const _c = self.vtable.get_SurfacesToOverlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_BackgroundFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_OutputFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOverlayForSurface(self: *@This(), surfaceToOverlay: *IDirect3DSurface) core.HResult!*MediaOverlay {
        var _r: *MediaOverlay = undefined;
        const _c = self.vtable.GetOverlayForSurface(@ptrCast(self), surfaceToOverlay, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.ICompositeVideoFrameContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c30024b-f514-4278-a5f7-b9188049d110";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SurfacesToOverlay: *const fn(self: *anyopaque, _r: **IVectorView(IDirect3DSurface)) callconv(.winapi) HRESULT,
        get_BackgroundFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
        get_OutputFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
        GetOverlayForSurface: *const fn(self: *anyopaque, surfaceToOverlay: *IDirect3DSurface, _r: **MediaOverlay) callconv(.winapi) HRESULT,
    };
};
pub const IProcessAudioFrameContext = extern struct {
    vtable: *const VTable,
    pub fn getInputFrame(self: *@This()) core.HResult!*AudioFrame {
        var _r: *AudioFrame = undefined;
        const _c = self.vtable.get_InputFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputFrame(self: *@This()) core.HResult!*AudioFrame {
        var _r: *AudioFrame = undefined;
        const _c = self.vtable.get_OutputFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IProcessAudioFrameContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4cd92946-1222-4a27-a586-fb3e20273255";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputFrame: *const fn(self: *anyopaque, _r: **AudioFrame) callconv(.winapi) HRESULT,
        get_OutputFrame: *const fn(self: *anyopaque, _r: **AudioFrame) callconv(.winapi) HRESULT,
    };
};
pub const IProcessVideoFrameContext = extern struct {
    vtable: *const VTable,
    pub fn getInputFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_InputFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_OutputFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IProcessVideoFrameContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "276f0e2b-6461-401e-ba78-0fdad6114eec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
        get_OutputFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const IVideoCompositor = extern struct {
    vtable: *const VTable,
    pub fn getTimeIndependent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TimeIndependent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEncodingProperties(self: *@This(), backgroundProperties: *VideoEncodingProperties, device: *IDirect3DDevice) core.HResult!void {
        const _c = self.vtable.SetEncodingProperties(@ptrCast(self), backgroundProperties, device);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CompositeFrame(self: *@This(), context: *CompositeVideoFrameContext) core.HResult!void {
        const _c = self.vtable.CompositeFrame(@ptrCast(self), context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This(), reason: MediaEffectClosedReason) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DiscardQueuedFrames(self: *@This()) core.HResult!void {
        const _c = self.vtable.DiscardQueuedFrames(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoCompositor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8510b43e-420c-420f-96c7-7c98bba1fc55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TimeIndependent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetEncodingProperties: *const fn(self: *anyopaque, backgroundProperties: *VideoEncodingProperties, device: *IDirect3DDevice) callconv(.winapi) HRESULT,
        CompositeFrame: *const fn(self: *anyopaque, context: *CompositeVideoFrameContext) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque, reason: MediaEffectClosedReason) callconv(.winapi) HRESULT,
        DiscardQueuedFrames: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IVideoCompositorDefinition = extern struct {
    vtable: *const VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActivatableClassId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoCompositorDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7946b8d0-2010-4ae3-9ab2-2cef42edd4d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivatableClassId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IVideoCompositorDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), activatableClassId: HSTRING) core.HResult!*VideoCompositorDefinition {
        var _r: *VideoCompositorDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), activatableClassId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithProperties(self: *@This(), activatableClassId: HSTRING, props: *IPropertySet) core.HResult!*VideoCompositorDefinition {
        var _r: *VideoCompositorDefinition = undefined;
        const _c = self.vtable.CreateWithProperties(@ptrCast(self), activatableClassId, props, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoCompositorDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4366fd10-68b8-4d52-89b6-02a968cca899";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, activatableClassId: HSTRING, _r: **VideoCompositorDefinition) callconv(.winapi) HRESULT,
        CreateWithProperties: *const fn(self: *anyopaque, activatableClassId: HSTRING, props: *IPropertySet, _r: **VideoCompositorDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActivatableClassId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39f38cf0-8d0f-4f3e-84fc-2d46a5297943";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivatableClassId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEffectDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), activatableClassId: HSTRING) core.HResult!*VideoEffectDefinition {
        var _r: *VideoEffectDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), activatableClassId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithProperties(self: *@This(), activatableClassId: HSTRING, props: *IPropertySet) core.HResult!*VideoEffectDefinition {
        var _r: *VideoEffectDefinition = undefined;
        const _c = self.vtable.CreateWithProperties(@ptrCast(self), activatableClassId, props, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoEffectDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81439b4e-6e33-428f-9d21-b5aafef7617c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, activatableClassId: HSTRING, _r: **VideoEffectDefinition) callconv(.winapi) HRESULT,
        CreateWithProperties: *const fn(self: *anyopaque, activatableClassId: HSTRING, props: *IPropertySet, _r: **VideoEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IVideoTransformEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn getPaddingColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PaddingColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPaddingColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_PaddingColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutputSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_OutputSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutputSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_OutputSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCropRectangle(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_CropRectangle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCropRectangle(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_CropRectangle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotation(self: *@This()) core.HResult!MediaRotation {
        var _r: MediaRotation = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotation(self: *@This(), value: MediaRotation) core.HResult!void {
        const _c = self.vtable.put_Rotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMirror(self: *@This()) core.HResult!MediaMirroringOptions {
        var _r: MediaMirroringOptions = undefined;
        const _c = self.vtable.get_Mirror(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMirror(self: *@This(), value: MediaMirroringOptions) core.HResult!void {
        const _c = self.vtable.put_Mirror(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putProcessingAlgorithm(self: *@This(), value: MediaVideoProcessingAlgorithm) core.HResult!void {
        const _c = self.vtable.put_ProcessingAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProcessingAlgorithm(self: *@This()) core.HResult!MediaVideoProcessingAlgorithm {
        var _r: MediaVideoProcessingAlgorithm = undefined;
        const _c = self.vtable.get_ProcessingAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoTransformEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9664bb6a-1ea6-4aa6-8074-abe8851ecae2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PaddingColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_PaddingColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_OutputSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_OutputSize: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_CropRectangle: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_CropRectangle: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *MediaRotation) callconv(.winapi) HRESULT,
        put_Rotation: *const fn(self: *anyopaque, value: MediaRotation) callconv(.winapi) HRESULT,
        get_Mirror: *const fn(self: *anyopaque, _r: *MediaMirroringOptions) callconv(.winapi) HRESULT,
        put_Mirror: *const fn(self: *anyopaque, value: MediaMirroringOptions) callconv(.winapi) HRESULT,
        put_ProcessingAlgorithm: *const fn(self: *anyopaque, value: MediaVideoProcessingAlgorithm) callconv(.winapi) HRESULT,
        get_ProcessingAlgorithm: *const fn(self: *anyopaque, _r: *MediaVideoProcessingAlgorithm) callconv(.winapi) HRESULT,
    };
};
pub const IVideoTransformEffectDefinition2 = extern struct {
    vtable: *const VTable,
    pub fn getSphericalProjection(self: *@This()) core.HResult!*VideoTransformSphericalProjection {
        var _r: *VideoTransformSphericalProjection = undefined;
        const _c = self.vtable.get_SphericalProjection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoTransformEffectDefinition2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0a8089f-66c8-4694-9fd9-1136abf7444a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SphericalProjection: *const fn(self: *anyopaque, _r: **VideoTransformSphericalProjection) callconv(.winapi) HRESULT,
    };
};
pub const IVideoTransformSphericalProjection = extern struct {
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
    pub const NAME: []const u8 = "Windows.Media.Effects.IVideoTransformSphericalProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf4401f0-9bf2-4c39-9f41-e022514a8468";
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
        get_ProjectionMode: *const fn(self: *anyopaque, _r: *SphericalVideoProjectionMode) callconv(.winapi) HRESULT,
        put_ProjectionMode: *const fn(self: *anyopaque, value: SphericalVideoProjectionMode) callconv(.winapi) HRESULT,
        get_HorizontalFieldOfViewInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalFieldOfViewInDegrees: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ViewOrientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        put_ViewOrientation: *const fn(self: *anyopaque, value: Quaternion) callconv(.winapi) HRESULT,
    };
};
pub const MediaEffectClosedReason = enum(i32) {
    Done = 0,
    UnknownError = 1,
    UnsupportedEncodingFormat = 2,
    EffectCurrentlyUnloaded = 3,
};
pub const MediaMemoryTypes = enum(i32) {
    Gpu = 0,
    Cpu = 1,
    GpuAndCpu = 2,
};
pub const ProcessAudioFrameContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputFrame(self: *@This()) core.HResult!*AudioFrame {
        const this: *IProcessAudioFrameContext = @ptrCast(self);
        return try this.getInputFrame();
    }
    pub fn getOutputFrame(self: *@This()) core.HResult!*AudioFrame {
        const this: *IProcessAudioFrameContext = @ptrCast(self);
        return try this.getOutputFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.ProcessAudioFrameContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessAudioFrameContext.GUID;
    pub const IID: Guid = IProcessAudioFrameContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessAudioFrameContext.SIGNATURE);
};
pub const ProcessVideoFrameContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IProcessVideoFrameContext = @ptrCast(self);
        return try this.getInputFrame();
    }
    pub fn getOutputFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IProcessVideoFrameContext = @ptrCast(self);
        return try this.getOutputFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.ProcessVideoFrameContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessVideoFrameContext.GUID;
    pub const IID: Guid = IProcessVideoFrameContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessVideoFrameContext.SIGNATURE);
};
pub const VideoCompositorDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoCompositorDefinition = @ptrCast(self);
        return try this.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IVideoCompositorDefinition = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(activatableClassId: HSTRING) core.HResult!*VideoCompositorDefinition {
        const factory = @This().IVideoCompositorDefinitionFactoryCache.get();
        return try factory.Create(activatableClassId);
    }
    pub fn CreateWithProperties(activatableClassId: HSTRING, props: *IPropertySet) core.HResult!*VideoCompositorDefinition {
        const factory = @This().IVideoCompositorDefinitionFactoryCache.get();
        return try factory.CreateWithProperties(activatableClassId, props);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.VideoCompositorDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoCompositorDefinition.GUID;
    pub const IID: Guid = IVideoCompositorDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoCompositorDefinition.SIGNATURE);
    var _IVideoCompositorDefinitionFactoryCache: FactoryCache(IVideoCompositorDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const VideoEffectDefinition = extern struct {
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
    pub fn Create(activatableClassId: HSTRING) core.HResult!*VideoEffectDefinition {
        const factory = @This().IVideoEffectDefinitionFactoryCache.get();
        return try factory.Create(activatableClassId);
    }
    pub fn CreateWithProperties(activatableClassId: HSTRING, props: *IPropertySet) core.HResult!*VideoEffectDefinition {
        const factory = @This().IVideoEffectDefinitionFactoryCache.get();
        return try factory.CreateWithProperties(activatableClassId, props);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.VideoEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoEffectDefinition.GUID;
    pub const IID: Guid = IVideoEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoEffectDefinition.SIGNATURE);
    var _IVideoEffectDefinitionFactoryCache: FactoryCache(IVideoEffectDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const VideoTransformEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getPaddingColor(self: *@This()) core.HResult!Color {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPaddingColor();
    }
    pub fn putPaddingColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPaddingColor(value);
    }
    pub fn getOutputSize(self: *@This()) core.HResult!Size {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutputSize();
    }
    pub fn putOutputSize(self: *@This(), value: Size) core.HResult!void {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutputSize(value);
    }
    pub fn getCropRectangle(self: *@This()) core.HResult!Rect {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCropRectangle();
    }
    pub fn putCropRectangle(self: *@This(), value: Rect) core.HResult!void {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCropRectangle(value);
    }
    pub fn getRotation(self: *@This()) core.HResult!MediaRotation {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotation();
    }
    pub fn putRotation(self: *@This(), value: MediaRotation) core.HResult!void {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotation(value);
    }
    pub fn getMirror(self: *@This()) core.HResult!MediaMirroringOptions {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMirror();
    }
    pub fn putMirror(self: *@This(), value: MediaMirroringOptions) core.HResult!void {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMirror(value);
    }
    pub fn putProcessingAlgorithm(self: *@This(), value: MediaVideoProcessingAlgorithm) core.HResult!void {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProcessingAlgorithm(value);
    }
    pub fn getProcessingAlgorithm(self: *@This()) core.HResult!MediaVideoProcessingAlgorithm {
        var this: ?*IVideoTransformEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProcessingAlgorithm();
    }
    pub fn getSphericalProjection(self: *@This()) core.HResult!*VideoTransformSphericalProjection {
        var this: ?*IVideoTransformEffectDefinition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTransformEffectDefinition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSphericalProjection();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVideoEffectDefinition.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.VideoTransformEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoEffectDefinition.GUID;
    pub const IID: Guid = IVideoEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoEffectDefinition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VideoTransformSphericalProjection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getFrameFormat(self: *@This()) core.HResult!SphericalVideoFrameFormat {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.getFrameFormat();
    }
    pub fn putFrameFormat(self: *@This(), value: SphericalVideoFrameFormat) core.HResult!void {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.putFrameFormat(value);
    }
    pub fn getProjectionMode(self: *@This()) core.HResult!SphericalVideoProjectionMode {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.getProjectionMode();
    }
    pub fn putProjectionMode(self: *@This(), value: SphericalVideoProjectionMode) core.HResult!void {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.putProjectionMode(value);
    }
    pub fn getHorizontalFieldOfViewInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.getHorizontalFieldOfViewInDegrees();
    }
    pub fn putHorizontalFieldOfViewInDegrees(self: *@This(), value: f64) core.HResult!void {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.putHorizontalFieldOfViewInDegrees(value);
    }
    pub fn getViewOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.getViewOrientation();
    }
    pub fn putViewOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const this: *IVideoTransformSphericalProjection = @ptrCast(self);
        return try this.putViewOrientation(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Effects.VideoTransformSphericalProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoTransformSphericalProjection.GUID;
    pub const IID: Guid = IVideoTransformSphericalProjection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoTransformSphericalProjection.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const MediaCategory = @import("./Capture.zig").MediaCategory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const AudioRenderCategory = @import("./Render.zig").AudioRenderCategory;
const VideoFrame = @import("../Media.zig").VideoFrame;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Size = @import("../Foundation.zig").Size;
const IDirect3DSurface = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DSurface;
const VideoEncodingProperties = @import("./MediaProperties.zig").VideoEncodingProperties;
const AudioFrame = @import("../Media.zig").AudioFrame;
const MediaRotation = @import("./MediaProperties.zig").MediaRotation;
const SphericalVideoFrameFormat = @import("./MediaProperties.zig").SphericalVideoFrameFormat;
const FactoryCache = @import("../core.zig").FactoryCache;
const MediaMirroringOptions = @import("./MediaProperties.zig").MediaMirroringOptions;
const IDirect3DDevice = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DDevice;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const AudioProcessing = @import("../Media.zig").AudioProcessing;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AudioEncodingProperties = @import("./MediaProperties.zig").AudioEncodingProperties;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const SphericalVideoProjectionMode = @import("./Playback.zig").SphericalVideoProjectionMode;
const MediaVideoProcessingAlgorithm = @import("./Transcoding.zig").MediaVideoProcessingAlgorithm;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const MediaOverlay = @import("./Editing.zig").MediaOverlay;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
