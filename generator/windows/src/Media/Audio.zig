pub const AudioDeviceInputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IAudioDeviceInputNode = @ptrCast(self);
        return try this.getDevice();
    }
    pub fn getOutgoingConnections(self: *@This()) core.HResult!*IVectorView(AudioGraphConnection) {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingConnections();
    }
    pub fn AddOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnection(destination);
    }
    pub fn AddOutgoingConnectionWithGain(self: *@This(), destination: *IAudioNode, gain: f64) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnectionWithGain(destination, gain);
    }
    pub fn RemoveOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveOutgoingConnection(destination);
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getEmitter(self: *@This()) core.HResult!*AudioNodeEmitter {
        var this: ?*IAudioInputNode2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmitter();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioDeviceInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioDeviceInputNode.GUID;
    pub const IID: Guid = IAudioDeviceInputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioDeviceInputNode.SIGNATURE);
};
pub const AudioDeviceNodeCreationStatus = enum(i32) {
    Success = 0,
    DeviceNotAvailable = 1,
    FormatNotSupported = 2,
    UnknownFailure = 3,
    AccessDenied = 4,
};
pub const AudioDeviceOutputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IAudioDeviceOutputNode = @ptrCast(self);
        return try this.getDevice();
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn putListener(self: *@This(), value: *AudioNodeListener) core.HResult!void {
        var this: ?*IAudioNodeWithListener = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNodeWithListener.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putListener(value);
    }
    pub fn getListener(self: *@This()) core.HResult!*AudioNodeListener {
        var this: ?*IAudioNodeWithListener = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNodeWithListener.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getListener();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioDeviceOutputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioDeviceOutputNode.GUID;
    pub const IID: Guid = IAudioDeviceOutputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioDeviceOutputNode.SIGNATURE);
};
pub const AudioEffectsPackConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IAudioEffectsPackConfiguration = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getEffectsPackId(self: *@This()) core.HResult!HSTRING {
        const this: *IAudioEffectsPackConfiguration = @ptrCast(self);
        return try this.getEffectsPackId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AudioEffectsPackStatus {
        const this: *IAudioEffectsPackConfiguration = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(AudioEffectsPackConfiguration,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioEffectsPackConfiguration = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioEffectsPackConfiguration = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForDeviceId(effectsPackId: HSTRING, deviceId: HSTRING) core.HResult!*AudioEffectsPackConfiguration {
        const factory = @This().IAudioEffectsPackConfigurationStaticsCache.get();
        return try factory.GetForDeviceId(effectsPackId, deviceId);
    }
    pub fn IsDeviceIdSupported(effectsPackId: HSTRING, deviceId: HSTRING) core.HResult!bool {
        const factory = @This().IAudioEffectsPackConfigurationStaticsCache.get();
        return try factory.IsDeviceIdSupported(effectsPackId, deviceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioEffectsPackConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioEffectsPackConfiguration.GUID;
    pub const IID: Guid = IAudioEffectsPackConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioEffectsPackConfiguration.SIGNATURE);
    var _IAudioEffectsPackConfigurationStaticsCache: FactoryCache(IAudioEffectsPackConfigurationStatics, RUNTIME_NAME) = .{};
};
pub const AudioEffectsPackStatus = enum(i32) {
    NotEnabled = 0,
    Enabled = 1,
    NotSupported = 2,
};
pub const AudioFileInputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.putPlaybackSpeedFactor(value);
    }
    pub fn getPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getPlaybackSpeedFactor();
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn Seek(self: *@This(), position: TimeSpan) core.HResult!void {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.Seek(position);
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getEndTime();
    }
    pub fn putEndTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.putEndTime(value);
    }
    pub fn getLoopCount(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getLoopCount();
    }
    pub fn putLoopCount(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.putLoopCount(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getSourceFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.getSourceFile();
    }
    pub fn addFileCompleted(self: *@This(), handler: *TypedEventHandler(AudioFileInputNode,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.addFileCompleted(handler);
    }
    pub fn removeFileCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioFileInputNode = @ptrCast(self);
        return try this.removeFileCompleted(token);
    }
    pub fn getOutgoingConnections(self: *@This()) core.HResult!*IVectorView(AudioGraphConnection) {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingConnections();
    }
    pub fn AddOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnection(destination);
    }
    pub fn AddOutgoingConnectionWithGain(self: *@This(), destination: *IAudioNode, gain: f64) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnectionWithGain(destination, gain);
    }
    pub fn RemoveOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveOutgoingConnection(destination);
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getEmitter(self: *@This()) core.HResult!*AudioNodeEmitter {
        var this: ?*IAudioInputNode2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmitter();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioFileInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioFileInputNode.GUID;
    pub const IID: Guid = IAudioFileInputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioFileInputNode.SIGNATURE);
};
pub const AudioFileNodeCreationStatus = enum(i32) {
    Success = 0,
    FileNotFound = 1,
    InvalidFileType = 2,
    FormatNotSupported = 3,
    UnknownFailure = 4,
};
pub const AudioFileOutputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFile(self: *@This()) core.HResult!*IStorageFile {
        const this: *IAudioFileOutputNode = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getFileEncodingProfile(self: *@This()) core.HResult!*MediaEncodingProfile {
        const this: *IAudioFileOutputNode = @ptrCast(self);
        return try this.getFileEncodingProfile();
    }
    pub fn FinalizeAsync(self: *@This()) core.HResult!*IAsyncOperation(TranscodeFailureReason) {
        const this: *IAudioFileOutputNode = @ptrCast(self);
        return try this.FinalizeAsync();
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioFileOutputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioFileOutputNode.GUID;
    pub const IID: Guid = IAudioFileOutputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioFileOutputNode.SIGNATURE);
};
pub const AudioFrameCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*AudioFrame {
        const this: *IAudioFrameCompletedEventArgs = @ptrCast(self);
        return try this.getFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioFrameCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioFrameCompletedEventArgs.GUID;
    pub const IID: Guid = IAudioFrameCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioFrameCompletedEventArgs.SIGNATURE);
};
pub const AudioFrameInputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.putPlaybackSpeedFactor(value);
    }
    pub fn getPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.getPlaybackSpeedFactor();
    }
    pub fn AddFrame(self: *@This(), frame: *AudioFrame) core.HResult!void {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.AddFrame(frame);
    }
    pub fn DiscardQueuedFrames(self: *@This()) core.HResult!void {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.DiscardQueuedFrames();
    }
    pub fn getQueuedSampleCount(self: *@This()) core.HResult!u64 {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.getQueuedSampleCount();
    }
    pub fn addAudioFrameCompleted(self: *@This(), handler: *TypedEventHandler(AudioFrameInputNode,AudioFrameCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.addAudioFrameCompleted(handler);
    }
    pub fn removeAudioFrameCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.removeAudioFrameCompleted(token);
    }
    pub fn addQuantumStarted(self: *@This(), handler: *TypedEventHandler(AudioFrameInputNode,FrameInputNodeQuantumStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.addQuantumStarted(handler);
    }
    pub fn removeQuantumStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioFrameInputNode = @ptrCast(self);
        return try this.removeQuantumStarted(token);
    }
    pub fn getOutgoingConnections(self: *@This()) core.HResult!*IVectorView(AudioGraphConnection) {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingConnections();
    }
    pub fn AddOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnection(destination);
    }
    pub fn AddOutgoingConnectionWithGain(self: *@This(), destination: *IAudioNode, gain: f64) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnectionWithGain(destination, gain);
    }
    pub fn RemoveOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveOutgoingConnection(destination);
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getEmitter(self: *@This()) core.HResult!*AudioNodeEmitter {
        var this: ?*IAudioInputNode2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmitter();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioFrameInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioFrameInputNode.GUID;
    pub const IID: Guid = IAudioFrameInputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioFrameInputNode.SIGNATURE);
};
pub const AudioFrameOutputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetFrame(self: *@This()) core.HResult!*AudioFrame {
        const this: *IAudioFrameOutputNode = @ptrCast(self);
        return try this.GetFrame();
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioFrameOutputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioFrameOutputNode.GUID;
    pub const IID: Guid = IAudioFrameOutputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioFrameOutputNode.SIGNATURE);
};
pub const AudioGraph = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateFrameInputNode(self: *@This()) core.HResult!*AudioFrameInputNode {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameInputNode();
    }
    pub fn CreateFrameInputNode(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioFrameInputNode {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameInputNode(encodingProperties);
    }
    pub fn CreateDeviceInputNodeAsync(self: *@This(), category: MediaCategory) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDeviceInputNodeAsync(category);
    }
    pub fn CreateDeviceInputNodeAsyncWithEncodingProperties(self: *@This(), category: MediaCategory, encodingProperties: *AudioEncodingProperties) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDeviceInputNodeAsyncWithEncodingProperties(category, encodingProperties);
    }
    pub fn CreateDeviceInputNodeAsyncWithDevice(self: *@This(), category: MediaCategory, encodingProperties: *AudioEncodingProperties, device: *DeviceInformation) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDeviceInputNodeAsyncWithDevice(category, encodingProperties, device);
    }
    pub fn CreateFrameOutputNode(self: *@This()) core.HResult!*AudioFrameOutputNode {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.CreateFrameOutputNode();
    }
    pub fn CreateFrameOutputNode(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioFrameOutputNode {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.CreateFrameOutputNode(encodingProperties);
    }
    pub fn CreateDeviceOutputNodeAsync(self: *@This()) core.HResult!*IAsyncOperation(CreateAudioDeviceOutputNodeResult) {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.CreateDeviceOutputNodeAsync();
    }
    pub fn CreateFileInputNodeAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(CreateAudioFileInputNodeResult) {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileInputNodeAsync(file);
    }
    pub fn CreateFileOutputNodeAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(CreateAudioFileOutputNodeResult) {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.CreateFileOutputNodeAsync(file);
    }
    pub fn CreateFileOutputNodeAsyncWithFileEncodingProfile(self: *@This(), file: *IStorageFile, fileEncodingProfile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(CreateAudioFileOutputNodeResult) {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.CreateFileOutputNodeAsyncWithFileEncodingProfile(file, fileEncodingProfile);
    }
    pub fn CreateSubmixNode(self: *@This()) core.HResult!*AudioSubmixNode {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSubmixNode();
    }
    pub fn CreateSubmixNode(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioSubmixNode {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSubmixNode(encodingProperties);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.Stop();
    }
    pub fn ResetAllNodes(self: *@This()) core.HResult!void {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.ResetAllNodes();
    }
    pub fn addQuantumStarted(self: *@This(), handler: *TypedEventHandler(AudioGraph,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.addQuantumStarted(handler);
    }
    pub fn removeQuantumStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.removeQuantumStarted(token);
    }
    pub fn addQuantumProcessed(self: *@This(), handler: *TypedEventHandler(AudioGraph,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.addQuantumProcessed(handler);
    }
    pub fn removeQuantumProcessed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.removeQuantumProcessed(token);
    }
    pub fn addUnrecoverableErrorOccurred(self: *@This(), handler: *TypedEventHandler(AudioGraph,AudioGraphUnrecoverableErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.addUnrecoverableErrorOccurred(handler);
    }
    pub fn removeUnrecoverableErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.removeUnrecoverableErrorOccurred(token);
    }
    pub fn getCompletedQuantumCount(self: *@This()) core.HResult!u64 {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.getCompletedQuantumCount();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.getEncodingProperties();
    }
    pub fn getLatencyInSamples(self: *@This()) core.HResult!i32 {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.getLatencyInSamples();
    }
    pub fn getPrimaryRenderDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.getPrimaryRenderDevice();
    }
    pub fn getRenderDeviceAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.getRenderDeviceAudioProcessing();
    }
    pub fn getSamplesPerQuantum(self: *@This()) core.HResult!i32 {
        const this: *IAudioGraph = @ptrCast(self);
        return try this.getSamplesPerQuantum();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn CreateFrameInputNode(self: *@This(), encodingProperties: *AudioEncodingProperties, emitter: *AudioNodeEmitter) core.HResult!*AudioFrameInputNode {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameInputNode(encodingProperties, emitter);
    }
    pub fn CreateDeviceInputNodeAsyncWithEmitter(self: *@This(), category: MediaCategory, encodingProperties: *AudioEncodingProperties, device: *DeviceInformation, emitter: *AudioNodeEmitter) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDeviceInputNodeAsyncWithEmitter(category, encodingProperties, device, emitter);
    }
    pub fn CreateFileInputNodeAsyncWithEmitter(self: *@This(), file: *IStorageFile, emitter: *AudioNodeEmitter) core.HResult!*IAsyncOperation(CreateAudioFileInputNodeResult) {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileInputNodeAsyncWithEmitter(file, emitter);
    }
    pub fn CreateSubmixNode(self: *@This(), encodingProperties: *AudioEncodingProperties, emitter: *AudioNodeEmitter) core.HResult!*AudioSubmixNode {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSubmixNode(encodingProperties, emitter);
    }
    pub fn CreateBatchUpdater(self: *@This()) core.HResult!*AudioGraphBatchUpdater {
        var this: ?*IAudioGraph2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateBatchUpdater();
    }
    pub fn CreateMediaSourceAudioInputNodeAsync(self: *@This(), mediaSource: *MediaSource) core.HResult!*IAsyncOperation(CreateMediaSourceAudioInputNodeResult) {
        var this: ?*IAudioGraph3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateMediaSourceAudioInputNodeAsync(mediaSource);
    }
    pub fn CreateMediaSourceAudioInputNodeAsyncWithEmitter(self: *@This(), mediaSource: *MediaSource, emitter: *AudioNodeEmitter) core.HResult!*IAsyncOperation(CreateMediaSourceAudioInputNodeResult) {
        var this: ?*IAudioGraph3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraph3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateMediaSourceAudioInputNodeAsyncWithEmitter(mediaSource, emitter);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync(settings: *AudioGraphSettings) core.HResult!*IAsyncOperation(CreateAudioGraphResult) {
        const factory = @This().IAudioGraphStaticsCache.get();
        return try factory.CreateAsync(settings);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioGraph";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioGraph.GUID;
    pub const IID: Guid = IAudioGraph.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioGraph.SIGNATURE);
    var _IAudioGraphStaticsCache: FactoryCache(IAudioGraphStatics, RUNTIME_NAME) = .{};
};
pub const AudioGraphBatchUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *IClosable = @ptrCast(self);
        return try this.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioGraphBatchUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClosable.GUID;
    pub const IID: Guid = IClosable.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClosable.SIGNATURE);
};
pub const AudioGraphConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDestination(self: *@This()) core.HResult!*IAudioNode {
        const this: *IAudioGraphConnection = @ptrCast(self);
        return try this.getDestination();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioGraphConnection = @ptrCast(self);
        return try this.putGain(value);
    }
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IAudioGraphConnection = @ptrCast(self);
        return try this.getGain();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioGraphConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioGraphConnection.GUID;
    pub const IID: Guid = IAudioGraphConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioGraphConnection.SIGNATURE);
};
pub const AudioGraphCreationStatus = enum(i32) {
    Success = 0,
    DeviceNotAvailable = 1,
    FormatNotSupported = 2,
    UnknownFailure = 3,
};
pub const AudioGraphSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.getEncodingProperties();
    }
    pub fn putEncodingProperties(self: *@This(), value: *AudioEncodingProperties) core.HResult!void {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.putEncodingProperties(value);
    }
    pub fn getPrimaryRenderDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.getPrimaryRenderDevice();
    }
    pub fn putPrimaryRenderDevice(self: *@This(), value: *DeviceInformation) core.HResult!void {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.putPrimaryRenderDevice(value);
    }
    pub fn getQuantumSizeSelectionMode(self: *@This()) core.HResult!QuantumSizeSelectionMode {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.getQuantumSizeSelectionMode();
    }
    pub fn putQuantumSizeSelectionMode(self: *@This(), value: QuantumSizeSelectionMode) core.HResult!void {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.putQuantumSizeSelectionMode(value);
    }
    pub fn getDesiredSamplesPerQuantum(self: *@This()) core.HResult!i32 {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.getDesiredSamplesPerQuantum();
    }
    pub fn putDesiredSamplesPerQuantum(self: *@This(), value: i32) core.HResult!void {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.putDesiredSamplesPerQuantum(value);
    }
    pub fn getAudioRenderCategory(self: *@This()) core.HResult!AudioRenderCategory {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.getAudioRenderCategory();
    }
    pub fn putAudioRenderCategory(self: *@This(), value: AudioRenderCategory) core.HResult!void {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.putAudioRenderCategory(value);
    }
    pub fn getDesiredRenderDeviceAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.getDesiredRenderDeviceAudioProcessing();
    }
    pub fn putDesiredRenderDeviceAudioProcessing(self: *@This(), value: AudioProcessing) core.HResult!void {
        const this: *IAudioGraphSettings = @ptrCast(self);
        return try this.putDesiredRenderDeviceAudioProcessing(value);
    }
    pub fn putMaxPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioGraphSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraphSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxPlaybackSpeedFactor(value);
    }
    pub fn getMaxPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioGraphSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioGraphSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxPlaybackSpeedFactor();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(audioRenderCategory: AudioRenderCategory) core.HResult!*AudioGraphSettings {
        const factory = @This().IAudioGraphSettingsFactoryCache.get();
        return try factory.Create(audioRenderCategory);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioGraphSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioGraphSettings.GUID;
    pub const IID: Guid = IAudioGraphSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioGraphSettings.SIGNATURE);
    var _IAudioGraphSettingsFactoryCache: FactoryCache(IAudioGraphSettingsFactory, RUNTIME_NAME) = .{};
};
pub const AudioGraphUnrecoverableError = enum(i32) {
    None = 0,
    AudioDeviceLost = 1,
    AudioSessionDisconnected = 2,
    UnknownFailure = 3,
};
pub const AudioGraphUnrecoverableErrorOccurredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!AudioGraphUnrecoverableError {
        const this: *IAudioGraphUnrecoverableErrorOccurredEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioGraphUnrecoverableErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioGraphUnrecoverableErrorOccurredEventArgs.GUID;
    pub const IID: Guid = IAudioGraphUnrecoverableErrorOccurredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioGraphUnrecoverableErrorOccurredEventArgs.SIGNATURE);
};
pub const AudioNodeEmitter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getDirection(self: *@This()) core.HResult!Vector3 {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn putDirection(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.putDirection(value);
    }
    pub fn getShape(self: *@This()) core.HResult!*AudioNodeEmitterShape {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getShape();
    }
    pub fn getDecayModel(self: *@This()) core.HResult!*AudioNodeEmitterDecayModel {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getDecayModel();
    }
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getGain();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.putGain(value);
    }
    pub fn getDistanceScale(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getDistanceScale();
    }
    pub fn putDistanceScale(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.putDistanceScale(value);
    }
    pub fn getDopplerScale(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getDopplerScale();
    }
    pub fn putDopplerScale(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.putDopplerScale(value);
    }
    pub fn getDopplerVelocity(self: *@This()) core.HResult!Vector3 {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getDopplerVelocity();
    }
    pub fn putDopplerVelocity(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.putDopplerVelocity(value);
    }
    pub fn getIsDopplerDisabled(self: *@This()) core.HResult!bool {
        const this: *IAudioNodeEmitter = @ptrCast(self);
        return try this.getIsDopplerDisabled();
    }
    pub fn getSpatialAudioModel(self: *@This()) core.HResult!SpatialAudioModel {
        var this: ?*IAudioNodeEmitter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNodeEmitter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSpatialAudioModel();
    }
    pub fn putSpatialAudioModel(self: *@This(), value: SpatialAudioModel) core.HResult!void {
        var this: ?*IAudioNodeEmitter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNodeEmitter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSpatialAudioModel(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAudioNodeEmitter.IID)));
    }
    pub fn CreateAudioNodeEmitter(shape: *AudioNodeEmitterShape, decayModel: *AudioNodeEmitterDecayModel, settings: AudioNodeEmitterSettings) core.HResult!*AudioNodeEmitter {
        const factory = @This().IAudioNodeEmitterFactoryCache.get();
        return try factory.CreateAudioNodeEmitter(shape, decayModel, settings);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioNodeEmitter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioNodeEmitter.GUID;
    pub const IID: Guid = IAudioNodeEmitter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioNodeEmitter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAudioNodeEmitterFactoryCache: FactoryCache(IAudioNodeEmitterFactory, RUNTIME_NAME) = .{};
};
pub const AudioNodeEmitterConeProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInnerAngle(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterConeProperties = @ptrCast(self);
        return try this.getInnerAngle();
    }
    pub fn getOuterAngle(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterConeProperties = @ptrCast(self);
        return try this.getOuterAngle();
    }
    pub fn getOuterAngleGain(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterConeProperties = @ptrCast(self);
        return try this.getOuterAngleGain();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioNodeEmitterConeProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioNodeEmitterConeProperties.GUID;
    pub const IID: Guid = IAudioNodeEmitterConeProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioNodeEmitterConeProperties.SIGNATURE);
};
pub const AudioNodeEmitterDecayKind = enum(i32) {
    Natural = 0,
    Custom = 1,
};
pub const AudioNodeEmitterDecayModel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!AudioNodeEmitterDecayKind {
        const this: *IAudioNodeEmitterDecayModel = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getMinGain(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterDecayModel = @ptrCast(self);
        return try this.getMinGain();
    }
    pub fn getMaxGain(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterDecayModel = @ptrCast(self);
        return try this.getMaxGain();
    }
    pub fn getNaturalProperties(self: *@This()) core.HResult!*AudioNodeEmitterNaturalDecayModelProperties {
        const this: *IAudioNodeEmitterDecayModel = @ptrCast(self);
        return try this.getNaturalProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateNatural(minGain: f64, maxGain: f64, unityGainDistance: f64, cutoffDistance: f64) core.HResult!*AudioNodeEmitterDecayModel {
        const factory = @This().IAudioNodeEmitterDecayModelStaticsCache.get();
        return try factory.CreateNatural(minGain, maxGain, unityGainDistance, cutoffDistance);
    }
    pub fn CreateCustom(minGain: f64, maxGain: f64) core.HResult!*AudioNodeEmitterDecayModel {
        const factory = @This().IAudioNodeEmitterDecayModelStaticsCache.get();
        return try factory.CreateCustom(minGain, maxGain);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioNodeEmitterDecayModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioNodeEmitterDecayModel.GUID;
    pub const IID: Guid = IAudioNodeEmitterDecayModel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioNodeEmitterDecayModel.SIGNATURE);
    var _IAudioNodeEmitterDecayModelStaticsCache: FactoryCache(IAudioNodeEmitterDecayModelStatics, RUNTIME_NAME) = .{};
};
pub const AudioNodeEmitterNaturalDecayModelProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnityGainDistance(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterNaturalDecayModelProperties = @ptrCast(self);
        return try this.getUnityGainDistance();
    }
    pub fn getCutoffDistance(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeEmitterNaturalDecayModelProperties = @ptrCast(self);
        return try this.getCutoffDistance();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioNodeEmitterNaturalDecayModelProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioNodeEmitterNaturalDecayModelProperties.GUID;
    pub const IID: Guid = IAudioNodeEmitterNaturalDecayModelProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioNodeEmitterNaturalDecayModelProperties.SIGNATURE);
};
pub const AudioNodeEmitterSettings = enum(i32) {
    None = 0,
    DisableDoppler = 1,
};
pub const AudioNodeEmitterShape = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!AudioNodeEmitterShapeKind {
        const this: *IAudioNodeEmitterShape = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getConeProperties(self: *@This()) core.HResult!*AudioNodeEmitterConeProperties {
        const this: *IAudioNodeEmitterShape = @ptrCast(self);
        return try this.getConeProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCone(innerAngle: f64, outerAngle: f64, outerAngleGain: f64) core.HResult!*AudioNodeEmitterShape {
        const factory = @This().IAudioNodeEmitterShapeStaticsCache.get();
        return try factory.CreateCone(innerAngle, outerAngle, outerAngleGain);
    }
    pub fn CreateOmnidirectional() core.HResult!*AudioNodeEmitterShape {
        const factory = @This().IAudioNodeEmitterShapeStaticsCache.get();
        return try factory.CreateOmnidirectional();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioNodeEmitterShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioNodeEmitterShape.GUID;
    pub const IID: Guid = IAudioNodeEmitterShape.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioNodeEmitterShape.SIGNATURE);
    var _IAudioNodeEmitterShapeStaticsCache: FactoryCache(IAudioNodeEmitterShapeStatics, RUNTIME_NAME) = .{};
};
pub const AudioNodeEmitterShapeKind = enum(i32) {
    Omnidirectional = 0,
    Cone = 1,
};
pub const AudioNodeListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn putOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.putOrientation(value);
    }
    pub fn getSpeedOfSound(self: *@This()) core.HResult!f64 {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.getSpeedOfSound();
    }
    pub fn putSpeedOfSound(self: *@This(), value: f64) core.HResult!void {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.putSpeedOfSound(value);
    }
    pub fn getDopplerVelocity(self: *@This()) core.HResult!Vector3 {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.getDopplerVelocity();
    }
    pub fn putDopplerVelocity(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IAudioNodeListener = @ptrCast(self);
        return try this.putDopplerVelocity(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAudioNodeListener.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioNodeListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioNodeListener.GUID;
    pub const IID: Guid = IAudioNodeListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioNodeListener.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AudioPlaybackConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.Start();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getState(self: *@This()) core.HResult!AudioPlaybackConnectionState {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.getState();
    }
    pub fn Open(self: *@This()) core.HResult!*AudioPlaybackConnectionOpenResult {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.Open();
    }
    pub fn OpenAsync(self: *@This()) core.HResult!*IAsyncOperation(AudioPlaybackConnectionOpenResult) {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.OpenAsync();
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(AudioPlaybackConnection,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioPlaybackConnection = @ptrCast(self);
        return try this.removeStateChanged(token);
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
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IAudioPlaybackConnectionStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn TryCreateFromId(id: HSTRING) core.HResult!*AudioPlaybackConnection {
        const factory = @This().IAudioPlaybackConnectionStaticsCache.get();
        return try factory.TryCreateFromId(id);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioPlaybackConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioPlaybackConnection.GUID;
    pub const IID: Guid = IAudioPlaybackConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioPlaybackConnection.SIGNATURE);
    var _IAudioPlaybackConnectionStaticsCache: FactoryCache(IAudioPlaybackConnectionStatics, RUNTIME_NAME) = .{};
};
pub const AudioPlaybackConnectionOpenResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioPlaybackConnectionOpenResultStatus {
        const this: *IAudioPlaybackConnectionOpenResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAudioPlaybackConnectionOpenResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioPlaybackConnectionOpenResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioPlaybackConnectionOpenResult.GUID;
    pub const IID: Guid = IAudioPlaybackConnectionOpenResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioPlaybackConnectionOpenResult.SIGNATURE);
};
pub const AudioPlaybackConnectionOpenResultStatus = enum(i32) {
    Success = 0,
    RequestTimedOut = 1,
    DeniedBySystem = 2,
    UnknownFailure = 3,
};
pub const AudioPlaybackConnectionState = enum(i32) {
    Closed = 0,
    Opened = 1,
};
pub const AudioStateMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSoundLevelChanged(self: *@This(), handler: *TypedEventHandler(AudioStateMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAudioStateMonitor = @ptrCast(self);
        return try this.addSoundLevelChanged(handler);
    }
    pub fn removeSoundLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioStateMonitor = @ptrCast(self);
        return try this.removeSoundLevelChanged(token);
    }
    pub fn getSoundLevel(self: *@This()) core.HResult!SoundLevel {
        const this: *IAudioStateMonitor = @ptrCast(self);
        return try this.getSoundLevel();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForRenderMonitoring() core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForRenderMonitoring();
    }
    pub fn CreateForRenderMonitoringWithCategory(category: AudioRenderCategory) core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForRenderMonitoringWithCategory(category);
    }
    pub fn CreateForRenderMonitoringWithCategoryWithRole(category: AudioRenderCategory, role: AudioDeviceRole) core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForRenderMonitoringWithCategoryWithRole(category, role);
    }
    pub fn CreateForRenderMonitoringWithCategoryAndDeviceId(category: AudioRenderCategory, deviceId: HSTRING) core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForRenderMonitoringWithCategoryAndDeviceId(category, deviceId);
    }
    pub fn CreateForCaptureMonitoring() core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForCaptureMonitoring();
    }
    pub fn CreateForCaptureMonitoringWithCategory(category: MediaCategory) core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForCaptureMonitoringWithCategory(category);
    }
    pub fn CreateForCaptureMonitoringWithCategoryWithRole(category: MediaCategory, role: AudioDeviceRole) core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForCaptureMonitoringWithCategoryWithRole(category, role);
    }
    pub fn CreateForCaptureMonitoringWithCategoryAndDeviceId(category: MediaCategory, deviceId: HSTRING) core.HResult!*AudioStateMonitor {
        const factory = @This().IAudioStateMonitorStaticsCache.get();
        return try factory.CreateForCaptureMonitoringWithCategoryAndDeviceId(category, deviceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioStateMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioStateMonitor.GUID;
    pub const IID: Guid = IAudioStateMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioStateMonitor.SIGNATURE);
    var _IAudioStateMonitorStaticsCache: FactoryCache(IAudioStateMonitorStatics, RUNTIME_NAME) = .{};
};
pub const AudioSubmixNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOutgoingConnections(self: *@This()) core.HResult!*IVectorView(AudioGraphConnection) {
        const this: *IAudioInputNode = @ptrCast(self);
        return try this.getOutgoingConnections();
    }
    pub fn AddOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        const this: *IAudioInputNode = @ptrCast(self);
        return try this.AddOutgoingConnection(destination);
    }
    pub fn AddOutgoingConnectionWithGain(self: *@This(), destination: *IAudioNode, gain: f64) core.HResult!void {
        const this: *IAudioInputNode = @ptrCast(self);
        return try this.AddOutgoingConnectionWithGain(destination, gain);
    }
    pub fn RemoveOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        const this: *IAudioInputNode = @ptrCast(self);
        return try this.RemoveOutgoingConnection(destination);
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getEmitter(self: *@This()) core.HResult!*AudioNodeEmitter {
        var this: ?*IAudioInputNode2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmitter();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.AudioSubmixNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioInputNode.GUID;
    pub const IID: Guid = IAudioInputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioInputNode.SIGNATURE);
};
pub const CreateAudioDeviceInputNodeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioDeviceNodeCreationStatus {
        const this: *ICreateAudioDeviceInputNodeResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getDeviceInputNode(self: *@This()) core.HResult!*AudioDeviceInputNode {
        const this: *ICreateAudioDeviceInputNodeResult = @ptrCast(self);
        return try this.getDeviceInputNode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*ICreateAudioDeviceInputNodeResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICreateAudioDeviceInputNodeResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.CreateAudioDeviceInputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateAudioDeviceInputNodeResult.GUID;
    pub const IID: Guid = ICreateAudioDeviceInputNodeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateAudioDeviceInputNodeResult.SIGNATURE);
};
pub const CreateAudioDeviceOutputNodeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioDeviceNodeCreationStatus {
        const this: *ICreateAudioDeviceOutputNodeResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getDeviceOutputNode(self: *@This()) core.HResult!*AudioDeviceOutputNode {
        const this: *ICreateAudioDeviceOutputNodeResult = @ptrCast(self);
        return try this.getDeviceOutputNode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*ICreateAudioDeviceOutputNodeResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICreateAudioDeviceOutputNodeResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.CreateAudioDeviceOutputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateAudioDeviceOutputNodeResult.GUID;
    pub const IID: Guid = ICreateAudioDeviceOutputNodeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateAudioDeviceOutputNodeResult.SIGNATURE);
};
pub const CreateAudioFileInputNodeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioFileNodeCreationStatus {
        const this: *ICreateAudioFileInputNodeResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getFileInputNode(self: *@This()) core.HResult!*AudioFileInputNode {
        const this: *ICreateAudioFileInputNodeResult = @ptrCast(self);
        return try this.getFileInputNode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*ICreateAudioFileInputNodeResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICreateAudioFileInputNodeResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.CreateAudioFileInputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateAudioFileInputNodeResult.GUID;
    pub const IID: Guid = ICreateAudioFileInputNodeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateAudioFileInputNodeResult.SIGNATURE);
};
pub const CreateAudioFileOutputNodeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioFileNodeCreationStatus {
        const this: *ICreateAudioFileOutputNodeResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getFileOutputNode(self: *@This()) core.HResult!*AudioFileOutputNode {
        const this: *ICreateAudioFileOutputNodeResult = @ptrCast(self);
        return try this.getFileOutputNode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*ICreateAudioFileOutputNodeResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICreateAudioFileOutputNodeResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.CreateAudioFileOutputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateAudioFileOutputNodeResult.GUID;
    pub const IID: Guid = ICreateAudioFileOutputNodeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateAudioFileOutputNodeResult.SIGNATURE);
};
pub const CreateAudioGraphResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioGraphCreationStatus {
        const this: *ICreateAudioGraphResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getGraph(self: *@This()) core.HResult!*AudioGraph {
        const this: *ICreateAudioGraphResult = @ptrCast(self);
        return try this.getGraph();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*ICreateAudioGraphResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICreateAudioGraphResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.CreateAudioGraphResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateAudioGraphResult.GUID;
    pub const IID: Guid = ICreateAudioGraphResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateAudioGraphResult.SIGNATURE);
};
pub const CreateMediaSourceAudioInputNodeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MediaSourceAudioInputNodeCreationStatus {
        const this: *ICreateMediaSourceAudioInputNodeResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getNode(self: *@This()) core.HResult!*MediaSourceAudioInputNode {
        const this: *ICreateMediaSourceAudioInputNodeResult = @ptrCast(self);
        return try this.getNode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*ICreateMediaSourceAudioInputNodeResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICreateMediaSourceAudioInputNodeResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.CreateMediaSourceAudioInputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateMediaSourceAudioInputNodeResult.GUID;
    pub const IID: Guid = ICreateMediaSourceAudioInputNodeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateMediaSourceAudioInputNodeResult.SIGNATURE);
};
pub const EchoEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putWetDryMix(self: *@This(), value: f64) core.HResult!void {
        const this: *IEchoEffectDefinition = @ptrCast(self);
        return try this.putWetDryMix(value);
    }
    pub fn getWetDryMix(self: *@This()) core.HResult!f64 {
        const this: *IEchoEffectDefinition = @ptrCast(self);
        return try this.getWetDryMix();
    }
    pub fn putFeedback(self: *@This(), value: f64) core.HResult!void {
        const this: *IEchoEffectDefinition = @ptrCast(self);
        return try this.putFeedback(value);
    }
    pub fn getFeedback(self: *@This()) core.HResult!f64 {
        const this: *IEchoEffectDefinition = @ptrCast(self);
        return try this.getFeedback();
    }
    pub fn putDelay(self: *@This(), value: f64) core.HResult!void {
        const this: *IEchoEffectDefinition = @ptrCast(self);
        return try this.putDelay(value);
    }
    pub fn getDelay(self: *@This()) core.HResult!f64 {
        const this: *IEchoEffectDefinition = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(audioGraph: *AudioGraph) core.HResult!*EchoEffectDefinition {
        const factory = @This().IEchoEffectDefinitionFactoryCache.get();
        return try factory.Create(audioGraph);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.EchoEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEchoEffectDefinition.GUID;
    pub const IID: Guid = IEchoEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEchoEffectDefinition.SIGNATURE);
    var _IEchoEffectDefinitionFactoryCache: FactoryCache(IEchoEffectDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const EqualizerBand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBandwidth(self: *@This()) core.HResult!f64 {
        const this: *IEqualizerBand = @ptrCast(self);
        return try this.getBandwidth();
    }
    pub fn putBandwidth(self: *@This(), value: f64) core.HResult!void {
        const this: *IEqualizerBand = @ptrCast(self);
        return try this.putBandwidth(value);
    }
    pub fn getFrequencyCenter(self: *@This()) core.HResult!f64 {
        const this: *IEqualizerBand = @ptrCast(self);
        return try this.getFrequencyCenter();
    }
    pub fn putFrequencyCenter(self: *@This(), value: f64) core.HResult!void {
        const this: *IEqualizerBand = @ptrCast(self);
        return try this.putFrequencyCenter(value);
    }
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IEqualizerBand = @ptrCast(self);
        return try this.getGain();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IEqualizerBand = @ptrCast(self);
        return try this.putGain(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.EqualizerBand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEqualizerBand.GUID;
    pub const IID: Guid = IEqualizerBand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEqualizerBand.SIGNATURE);
};
pub const EqualizerEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBands(self: *@This()) core.HResult!*IVectorView(EqualizerBand) {
        const this: *IEqualizerEffectDefinition = @ptrCast(self);
        return try this.getBands();
    }
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(audioGraph: *AudioGraph) core.HResult!*EqualizerEffectDefinition {
        const factory = @This().IEqualizerEffectDefinitionFactoryCache.get();
        return try factory.Create(audioGraph);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.EqualizerEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEqualizerEffectDefinition.GUID;
    pub const IID: Guid = IEqualizerEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEqualizerEffectDefinition.SIGNATURE);
    var _IEqualizerEffectDefinitionFactoryCache: FactoryCache(IEqualizerEffectDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const FrameInputNodeQuantumStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequiredSamples(self: *@This()) core.HResult!i32 {
        const this: *IFrameInputNodeQuantumStartedEventArgs = @ptrCast(self);
        return try this.getRequiredSamples();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameInputNodeQuantumStartedEventArgs.GUID;
    pub const IID: Guid = IFrameInputNodeQuantumStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameInputNodeQuantumStartedEventArgs.SIGNATURE);
};
pub const IAudioDeviceInputNode = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioDeviceInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b01b6be1-6f4e-49e2-ac01-559d62beb3a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceOutputNode = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioDeviceOutputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "362edbff-ff1c-4434-9e0f-bd2ef522ac82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffectsPackConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEffectsPackId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EffectsPackId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!AudioEffectsPackStatus {
        var _r: AudioEffectsPackStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(AudioEffectsPackConfiguration,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioEffectsPackConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71d7627d-70c1-536c-a8f8-6f98015a7f06";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EffectsPackId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioEffectsPackStatus) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioEffectsPackConfiguration,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAudioEffectsPackConfigurationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForDeviceId(self: *@This(), effectsPackId: HSTRING, deviceId: HSTRING) core.HResult!*AudioEffectsPackConfiguration {
        var _r: *AudioEffectsPackConfiguration = undefined;
        const _c = self.vtable.GetForDeviceId(@ptrCast(self), effectsPackId, deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsDeviceIdSupported(self: *@This(), effectsPackId: HSTRING, deviceId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDeviceIdSupported(@ptrCast(self), effectsPackId, deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioEffectsPackConfigurationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61c20413-530c-55ff-ba2b-8e68a9b56a04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForDeviceId: *const fn(self: *anyopaque, effectsPackId: HSTRING, deviceId: HSTRING, _r: **AudioEffectsPackConfiguration) callconv(.winapi) HRESULT,
        IsDeviceIdSupported: *const fn(self: *anyopaque, effectsPackId: HSTRING, deviceId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFileInputNode = extern struct {
    vtable: *const VTable,
    pub fn putPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_PlaybackSpeedFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PlaybackSpeedFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Seek(self: *@This(), position: TimeSpan) core.HResult!void {
        const _c = self.vtable.Seek(@ptrCast(self), position);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_EndTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLoopCount(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_LoopCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLoopCount(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_LoopCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_SourceFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFileCompleted(self: *@This(), handler: *TypedEventHandler(AudioFileInputNode,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FileCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFileCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FileCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioFileInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905b67c8-6f65-4cd4-8890-4694843c276d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PlaybackSpeedFactor: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_PlaybackSpeedFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        Seek: *const fn(self: *anyopaque, position: TimeSpan) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_EndTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_EndTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_LoopCount: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_LoopCount: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_SourceFile: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
        add_FileCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioFileInputNode,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FileCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFileOutputNode = extern struct {
    vtable: *const VTable,
    pub fn getFile(self: *@This()) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileEncodingProfile(self: *@This()) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.get_FileEncodingProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FinalizeAsync(self: *@This()) core.HResult!*IAsyncOperation(TranscodeFailureReason) {
        var _r: *IAsyncOperation(TranscodeFailureReason) = undefined;
        const _c = self.vtable.FinalizeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioFileOutputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50e01980-5166-4093-80f8-ada00089e9cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **IStorageFile) callconv(.winapi) HRESULT,
        get_FileEncodingProfile: *const fn(self: *anyopaque, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        FinalizeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(TranscodeFailureReason)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFrameCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*AudioFrame {
        var _r: *AudioFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioFrameCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc7c829e-0208-4504-a5a8-f0f268920a65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **AudioFrame) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFrameInputNode = extern struct {
    vtable: *const VTable,
    pub fn putPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_PlaybackSpeedFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PlaybackSpeedFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddFrame(self: *@This(), frame: *AudioFrame) core.HResult!void {
        const _c = self.vtable.AddFrame(@ptrCast(self), frame);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DiscardQueuedFrames(self: *@This()) core.HResult!void {
        const _c = self.vtable.DiscardQueuedFrames(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQueuedSampleCount(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_QueuedSampleCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAudioFrameCompleted(self: *@This(), handler: *TypedEventHandler(AudioFrameInputNode,AudioFrameCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioFrameCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioFrameCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioFrameCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addQuantumStarted(self: *@This(), handler: *TypedEventHandler(AudioFrameInputNode,FrameInputNodeQuantumStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_QuantumStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeQuantumStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_QuantumStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioFrameInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01b266c7-fd96-4ff5-a3c5-d27a9bf44237";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PlaybackSpeedFactor: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_PlaybackSpeedFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        AddFrame: *const fn(self: *anyopaque, frame: *AudioFrame) callconv(.winapi) HRESULT,
        DiscardQueuedFrames: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_QueuedSampleCount: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        add_AudioFrameCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioFrameInputNode,AudioFrameCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioFrameCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_QuantumStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioFrameInputNode,FrameInputNodeQuantumStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_QuantumStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFrameOutputNode = extern struct {
    vtable: *const VTable,
    pub fn GetFrame(self: *@This()) core.HResult!*AudioFrame {
        var _r: *AudioFrame = undefined;
        const _c = self.vtable.GetFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioFrameOutputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b847371b-3299-45f5-88b3-c9d12a3f1cc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFrame: *const fn(self: *anyopaque, _r: **AudioFrame) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraph = extern struct {
    vtable: *const VTable,
    pub fn CreateFrameInputNode(self: *@This()) core.HResult!*AudioFrameInputNode {
        var _r: *AudioFrameInputNode = undefined;
        const _c = self.vtable.CreateFrameInputNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameInputNode(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioFrameInputNode {
        var _r: *AudioFrameInputNode = undefined;
        const _c = self.vtable.CreateFrameInputNode(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDeviceInputNodeAsync(self: *@This(), category: MediaCategory) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioDeviceInputNodeResult) = undefined;
        const _c = self.vtable.CreateDeviceInputNodeAsync(@ptrCast(self), category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDeviceInputNodeAsyncWithEncodingProperties(self: *@This(), category: MediaCategory, encodingProperties: *AudioEncodingProperties) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioDeviceInputNodeResult) = undefined;
        const _c = self.vtable.CreateDeviceInputNodeAsyncWithEncodingProperties(@ptrCast(self), category, encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDeviceInputNodeAsyncWithDevice(self: *@This(), category: MediaCategory, encodingProperties: *AudioEncodingProperties, device: *DeviceInformation) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioDeviceInputNodeResult) = undefined;
        const _c = self.vtable.CreateDeviceInputNodeAsyncWithDevice(@ptrCast(self), category, encodingProperties, device, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameOutputNode(self: *@This()) core.HResult!*AudioFrameOutputNode {
        var _r: *AudioFrameOutputNode = undefined;
        const _c = self.vtable.CreateFrameOutputNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameOutputNode(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioFrameOutputNode {
        var _r: *AudioFrameOutputNode = undefined;
        const _c = self.vtable.CreateFrameOutputNode(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDeviceOutputNodeAsync(self: *@This()) core.HResult!*IAsyncOperation(CreateAudioDeviceOutputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioDeviceOutputNodeResult) = undefined;
        const _c = self.vtable.CreateDeviceOutputNodeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileInputNodeAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(CreateAudioFileInputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioFileInputNodeResult) = undefined;
        const _c = self.vtable.CreateFileInputNodeAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileOutputNodeAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(CreateAudioFileOutputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioFileOutputNodeResult) = undefined;
        const _c = self.vtable.CreateFileOutputNodeAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileOutputNodeAsyncWithFileEncodingProfile(self: *@This(), file: *IStorageFile, fileEncodingProfile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(CreateAudioFileOutputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioFileOutputNodeResult) = undefined;
        const _c = self.vtable.CreateFileOutputNodeAsyncWithFileEncodingProfile(@ptrCast(self), file, fileEncodingProfile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSubmixNode(self: *@This()) core.HResult!*AudioSubmixNode {
        var _r: *AudioSubmixNode = undefined;
        const _c = self.vtable.CreateSubmixNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSubmixNode(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioSubmixNode {
        var _r: *AudioSubmixNode = undefined;
        const _c = self.vtable.CreateSubmixNode(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResetAllNodes(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetAllNodes(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addQuantumStarted(self: *@This(), handler: *TypedEventHandler(AudioGraph,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_QuantumStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeQuantumStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_QuantumStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addQuantumProcessed(self: *@This(), handler: *TypedEventHandler(AudioGraph,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_QuantumProcessed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeQuantumProcessed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_QuantumProcessed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnrecoverableErrorOccurred(self: *@This(), handler: *TypedEventHandler(AudioGraph,AudioGraphUnrecoverableErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UnrecoverableErrorOccurred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnrecoverableErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UnrecoverableErrorOccurred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompletedQuantumCount(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_CompletedQuantumCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_EncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLatencyInSamples(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LatencyInSamples(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimaryRenderDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_PrimaryRenderDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRenderDeviceAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        var _r: AudioProcessing = undefined;
        const _c = self.vtable.get_RenderDeviceAudioProcessing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSamplesPerQuantum(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SamplesPerQuantum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraph";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ad46eed-e48c-4e14-9660-2c4f83e9cdd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFrameInputNode: *const fn(self: *anyopaque, _r: **AudioFrameInputNode) callconv(.winapi) HRESULT,
        CreateFrameInputNode: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties, _r: **AudioFrameInputNode) callconv(.winapi) HRESULT,
        CreateDeviceInputNodeAsync: *const fn(self: *anyopaque, category: MediaCategory, _r: **IAsyncOperation(CreateAudioDeviceInputNodeResult)) callconv(.winapi) HRESULT,
        CreateDeviceInputNodeAsyncWithEncodingProperties: *const fn(self: *anyopaque, category: MediaCategory, encodingProperties: *AudioEncodingProperties, _r: **IAsyncOperation(CreateAudioDeviceInputNodeResult)) callconv(.winapi) HRESULT,
        CreateDeviceInputNodeAsyncWithDevice: *const fn(self: *anyopaque, category: MediaCategory, encodingProperties: *AudioEncodingProperties, device: *DeviceInformation, _r: **IAsyncOperation(CreateAudioDeviceInputNodeResult)) callconv(.winapi) HRESULT,
        CreateFrameOutputNode: *const fn(self: *anyopaque, _r: **AudioFrameOutputNode) callconv(.winapi) HRESULT,
        CreateFrameOutputNode: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties, _r: **AudioFrameOutputNode) callconv(.winapi) HRESULT,
        CreateDeviceOutputNodeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(CreateAudioDeviceOutputNodeResult)) callconv(.winapi) HRESULT,
        CreateFileInputNodeAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(CreateAudioFileInputNodeResult)) callconv(.winapi) HRESULT,
        CreateFileOutputNodeAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(CreateAudioFileOutputNodeResult)) callconv(.winapi) HRESULT,
        CreateFileOutputNodeAsyncWithFileEncodingProfile: *const fn(self: *anyopaque, file: *IStorageFile, fileEncodingProfile: *MediaEncodingProfile, _r: **IAsyncOperation(CreateAudioFileOutputNodeResult)) callconv(.winapi) HRESULT,
        CreateSubmixNode: *const fn(self: *anyopaque, _r: **AudioSubmixNode) callconv(.winapi) HRESULT,
        CreateSubmixNode: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties, _r: **AudioSubmixNode) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ResetAllNodes: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_QuantumStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioGraph,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_QuantumStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_QuantumProcessed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioGraph,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_QuantumProcessed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UnrecoverableErrorOccurred: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioGraph,AudioGraphUnrecoverableErrorOccurredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UnrecoverableErrorOccurred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CompletedQuantumCount: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_EncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        get_LatencyInSamples: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PrimaryRenderDevice: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        get_RenderDeviceAudioProcessing: *const fn(self: *anyopaque, _r: *AudioProcessing) callconv(.winapi) HRESULT,
        get_SamplesPerQuantum: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraph2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFrameInputNode(self: *@This(), encodingProperties: *AudioEncodingProperties, emitter: *AudioNodeEmitter) core.HResult!*AudioFrameInputNode {
        var _r: *AudioFrameInputNode = undefined;
        const _c = self.vtable.CreateFrameInputNode(@ptrCast(self), encodingProperties, emitter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDeviceInputNodeAsync(self: *@This(), category: MediaCategory, encodingProperties: *AudioEncodingProperties, device: *DeviceInformation, emitter: *AudioNodeEmitter) core.HResult!*IAsyncOperation(CreateAudioDeviceInputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioDeviceInputNodeResult) = undefined;
        const _c = self.vtable.CreateDeviceInputNodeAsync(@ptrCast(self), category, encodingProperties, device, emitter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileInputNodeAsync(self: *@This(), file: *IStorageFile, emitter: *AudioNodeEmitter) core.HResult!*IAsyncOperation(CreateAudioFileInputNodeResult) {
        var _r: *IAsyncOperation(CreateAudioFileInputNodeResult) = undefined;
        const _c = self.vtable.CreateFileInputNodeAsync(@ptrCast(self), file, emitter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSubmixNode(self: *@This(), encodingProperties: *AudioEncodingProperties, emitter: *AudioNodeEmitter) core.HResult!*AudioSubmixNode {
        var _r: *AudioSubmixNode = undefined;
        const _c = self.vtable.CreateSubmixNode(@ptrCast(self), encodingProperties, emitter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBatchUpdater(self: *@This()) core.HResult!*AudioGraphBatchUpdater {
        var _r: *AudioGraphBatchUpdater = undefined;
        const _c = self.vtable.CreateBatchUpdater(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraph2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e4c3bd5-4fc1-45f6-a947-3cd38f4fd839";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFrameInputNode: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties, emitter: *AudioNodeEmitter, _r: **AudioFrameInputNode) callconv(.winapi) HRESULT,
        CreateDeviceInputNodeAsync: *const fn(self: *anyopaque, category: MediaCategory, encodingProperties: *AudioEncodingProperties, device: *DeviceInformation, emitter: *AudioNodeEmitter, _r: **IAsyncOperation(CreateAudioDeviceInputNodeResult)) callconv(.winapi) HRESULT,
        CreateFileInputNodeAsync: *const fn(self: *anyopaque, file: *IStorageFile, emitter: *AudioNodeEmitter, _r: **IAsyncOperation(CreateAudioFileInputNodeResult)) callconv(.winapi) HRESULT,
        CreateSubmixNode: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties, emitter: *AudioNodeEmitter, _r: **AudioSubmixNode) callconv(.winapi) HRESULT,
        CreateBatchUpdater: *const fn(self: *anyopaque, _r: **AudioGraphBatchUpdater) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraph3 = extern struct {
    vtable: *const VTable,
    pub fn CreateMediaSourceAudioInputNodeAsync(self: *@This(), mediaSource: *MediaSource) core.HResult!*IAsyncOperation(CreateMediaSourceAudioInputNodeResult) {
        var _r: *IAsyncOperation(CreateMediaSourceAudioInputNodeResult) = undefined;
        const _c = self.vtable.CreateMediaSourceAudioInputNodeAsync(@ptrCast(self), mediaSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMediaSourceAudioInputNodeAsyncWithEmitter(self: *@This(), mediaSource: *MediaSource, emitter: *AudioNodeEmitter) core.HResult!*IAsyncOperation(CreateMediaSourceAudioInputNodeResult) {
        var _r: *IAsyncOperation(CreateMediaSourceAudioInputNodeResult) = undefined;
        const _c = self.vtable.CreateMediaSourceAudioInputNodeAsyncWithEmitter(@ptrCast(self), mediaSource, emitter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraph3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddcd25ae-1185-42a7-831d-6a9b0fc86820";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMediaSourceAudioInputNodeAsync: *const fn(self: *anyopaque, mediaSource: *MediaSource, _r: **IAsyncOperation(CreateMediaSourceAudioInputNodeResult)) callconv(.winapi) HRESULT,
        CreateMediaSourceAudioInputNodeAsyncWithEmitter: *const fn(self: *anyopaque, mediaSource: *MediaSource, emitter: *AudioNodeEmitter, _r: **IAsyncOperation(CreateMediaSourceAudioInputNodeResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraphConnection = extern struct {
    vtable: *const VTable,
    pub fn getDestination(self: *@This()) core.HResult!*IAudioNode {
        var _r: *IAudioNode = undefined;
        const _c = self.vtable.get_Destination(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Gain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Gain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraphConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "763070ed-d04e-4fac-b233-600b42edd469";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Destination: *const fn(self: *anyopaque, _r: **IAudioNode) callconv(.winapi) HRESULT,
        put_Gain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Gain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraphSettings = extern struct {
    vtable: *const VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_EncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEncodingProperties(self: *@This(), value: *AudioEncodingProperties) core.HResult!void {
        const _c = self.vtable.put_EncodingProperties(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrimaryRenderDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_PrimaryRenderDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrimaryRenderDevice(self: *@This(), value: *DeviceInformation) core.HResult!void {
        const _c = self.vtable.put_PrimaryRenderDevice(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuantumSizeSelectionMode(self: *@This()) core.HResult!QuantumSizeSelectionMode {
        var _r: QuantumSizeSelectionMode = undefined;
        const _c = self.vtable.get_QuantumSizeSelectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuantumSizeSelectionMode(self: *@This(), value: QuantumSizeSelectionMode) core.HResult!void {
        const _c = self.vtable.put_QuantumSizeSelectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredSamplesPerQuantum(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DesiredSamplesPerQuantum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredSamplesPerQuantum(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_DesiredSamplesPerQuantum(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioRenderCategory(self: *@This()) core.HResult!AudioRenderCategory {
        var _r: AudioRenderCategory = undefined;
        const _c = self.vtable.get_AudioRenderCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioRenderCategory(self: *@This(), value: AudioRenderCategory) core.HResult!void {
        const _c = self.vtable.put_AudioRenderCategory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredRenderDeviceAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        var _r: AudioProcessing = undefined;
        const _c = self.vtable.get_DesiredRenderDeviceAudioProcessing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredRenderDeviceAudioProcessing(self: *@This(), value: AudioProcessing) core.HResult!void {
        const _c = self.vtable.put_DesiredRenderDeviceAudioProcessing(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraphSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d59647f-e6fe-4628-84f8-9d8bdba25785";
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
        put_EncodingProperties: *const fn(self: *anyopaque, value: *AudioEncodingProperties) callconv(.winapi) HRESULT,
        get_PrimaryRenderDevice: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        put_PrimaryRenderDevice: *const fn(self: *anyopaque, value: *DeviceInformation) callconv(.winapi) HRESULT,
        get_QuantumSizeSelectionMode: *const fn(self: *anyopaque, _r: *QuantumSizeSelectionMode) callconv(.winapi) HRESULT,
        put_QuantumSizeSelectionMode: *const fn(self: *anyopaque, value: QuantumSizeSelectionMode) callconv(.winapi) HRESULT,
        get_DesiredSamplesPerQuantum: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DesiredSamplesPerQuantum: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_AudioRenderCategory: *const fn(self: *anyopaque, _r: *AudioRenderCategory) callconv(.winapi) HRESULT,
        put_AudioRenderCategory: *const fn(self: *anyopaque, value: AudioRenderCategory) callconv(.winapi) HRESULT,
        get_DesiredRenderDeviceAudioProcessing: *const fn(self: *anyopaque, _r: *AudioProcessing) callconv(.winapi) HRESULT,
        put_DesiredRenderDeviceAudioProcessing: *const fn(self: *anyopaque, value: AudioProcessing) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraphSettings2 = extern struct {
    vtable: *const VTable,
    pub fn putMaxPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MaxPlaybackSpeedFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxPlaybackSpeedFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraphSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72919787-4dab-46e3-b4c9-d8e1a2636062";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_MaxPlaybackSpeedFactor: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MaxPlaybackSpeedFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraphSettingsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), audioRenderCategory: AudioRenderCategory) core.HResult!*AudioGraphSettings {
        var _r: *AudioGraphSettings = undefined;
        const _c = self.vtable.Create(@ptrCast(self), audioRenderCategory, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraphSettingsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5d91cc6-c2eb-4a61-a214-1d66d75f83da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, audioRenderCategory: AudioRenderCategory, _r: **AudioGraphSettings) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraphStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This(), settings: *AudioGraphSettings) core.HResult!*IAsyncOperation(CreateAudioGraphResult) {
        var _r: *IAsyncOperation(CreateAudioGraphResult) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraphStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76ec3132-e159-4ab7-a82a-17beb4b31e94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, settings: *AudioGraphSettings, _r: **IAsyncOperation(CreateAudioGraphResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioGraphUnrecoverableErrorOccurredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!AudioGraphUnrecoverableError {
        var _r: AudioGraphUnrecoverableError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioGraphUnrecoverableErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3d9cbe0-3ff6-4fb3-b262-50d435c55423";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *AudioGraphUnrecoverableError) callconv(.winapi) HRESULT,
    };
};
pub const IAudioInputNode = extern struct {
    vtable: *const VTable,
    pub fn getOutgoingConnections(self: *@This()) core.HResult!*IVectorView(AudioGraphConnection) {
        var _r: *IVectorView(AudioGraphConnection) = undefined;
        const _c = self.vtable.get_OutgoingConnections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        const _c = self.vtable.AddOutgoingConnection(@ptrCast(self), destination);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddOutgoingConnectionWithGain(self: *@This(), destination: *IAudioNode, gain: f64) core.HResult!void {
        const _c = self.vtable.AddOutgoingConnectionWithGain(@ptrCast(self), destination, gain);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        const _c = self.vtable.RemoveOutgoingConnection(@ptrCast(self), destination);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d148005c-8428-4784-b7fd-a99d468c5d20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OutgoingConnections: *const fn(self: *anyopaque, _r: **IVectorView(AudioGraphConnection)) callconv(.winapi) HRESULT,
        AddOutgoingConnection: *const fn(self: *anyopaque, destination: *IAudioNode) callconv(.winapi) HRESULT,
        AddOutgoingConnectionWithGain: *const fn(self: *anyopaque, destination: *IAudioNode, gain: f64) callconv(.winapi) HRESULT,
        RemoveOutgoingConnection: *const fn(self: *anyopaque, destination: *IAudioNode) callconv(.winapi) HRESULT,
    };
};
pub const IAudioInputNode2 = extern struct {
    vtable: *const VTable,
    pub fn getEmitter(self: *@This()) core.HResult!*AudioNodeEmitter {
        var _r: *AudioNodeEmitter = undefined;
        const _c = self.vtable.get_Emitter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioInputNode2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905156b7-ca68-4c6d-a8bc-e3ee17fe3fd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Emitter: *const fn(self: *anyopaque, _r: **AudioNodeEmitter) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNode = extern struct {
    vtable: *const VTable,
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var _r: *IVector(IAudioEffectDefinition) = undefined;
        const _c = self.vtable.get_EffectDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OutgoingGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OutgoingGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_EncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ConsumeInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ConsumeInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        const _c = self.vtable.DisableEffectsByDefinition(@ptrCast(self), definition);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        const _c = self.vtable.EnableEffectsByDefinition(@ptrCast(self), definition);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15389d7f-dbd8-4819-bf03-668e9357cd6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EffectDefinitions: *const fn(self: *anyopaque, _r: **IVector(IAudioEffectDefinition)) callconv(.winapi) HRESULT,
        put_OutgoingGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OutgoingGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        get_ConsumeInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ConsumeInput: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        DisableEffectsByDefinition: *const fn(self: *anyopaque, definition: *IAudioEffectDefinition) callconv(.winapi) HRESULT,
        EnableEffectsByDefinition: *const fn(self: *anyopaque, definition: *IAudioEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitter = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDirection(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Direction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShape(self: *@This()) core.HResult!*AudioNodeEmitterShape {
        var _r: *AudioNodeEmitterShape = undefined;
        const _c = self.vtable.get_Shape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecayModel(self: *@This()) core.HResult!*AudioNodeEmitterDecayModel {
        var _r: *AudioNodeEmitterDecayModel = undefined;
        const _c = self.vtable.get_DecayModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Gain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Gain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDistanceScale(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DistanceScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDistanceScale(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DistanceScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDopplerScale(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DopplerScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDopplerScale(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DopplerScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDopplerVelocity(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_DopplerVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDopplerVelocity(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_DopplerVelocity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDopplerDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDopplerDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3676971d-880a-47b8-adf7-1323a9d965be";
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
        put_Position: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Direction: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Shape: *const fn(self: *anyopaque, _r: **AudioNodeEmitterShape) callconv(.winapi) HRESULT,
        get_DecayModel: *const fn(self: *anyopaque, _r: **AudioNodeEmitterDecayModel) callconv(.winapi) HRESULT,
        get_Gain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Gain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DistanceScale: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DistanceScale: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DopplerScale: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DopplerScale: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DopplerVelocity: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_DopplerVelocity: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_IsDopplerDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitter2 = extern struct {
    vtable: *const VTable,
    pub fn getSpatialAudioModel(self: *@This()) core.HResult!SpatialAudioModel {
        var _r: SpatialAudioModel = undefined;
        const _c = self.vtable.get_SpatialAudioModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpatialAudioModel(self: *@This(), value: SpatialAudioModel) core.HResult!void {
        const _c = self.vtable.put_SpatialAudioModel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ab6eecb-ec29-47f8-818c-b6b660a5aeb1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SpatialAudioModel: *const fn(self: *anyopaque, _r: *SpatialAudioModel) callconv(.winapi) HRESULT,
        put_SpatialAudioModel: *const fn(self: *anyopaque, value: SpatialAudioModel) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterConeProperties = extern struct {
    vtable: *const VTable,
    pub fn getInnerAngle(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_InnerAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOuterAngle(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OuterAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOuterAngleGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OuterAngleGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterConeProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e99b2cee-02ca-4375-9326-0c6ae4bcdfb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InnerAngle: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OuterAngle: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OuterAngleGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterDecayModel = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!AudioNodeEmitterDecayKind {
        var _r: AudioNodeEmitterDecayKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalProperties(self: *@This()) core.HResult!*AudioNodeEmitterNaturalDecayModelProperties {
        var _r: *AudioNodeEmitterNaturalDecayModelProperties = undefined;
        const _c = self.vtable.get_NaturalProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterDecayModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d1d5af7-0d53-4fa9-bd84-d5816a86f3ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *AudioNodeEmitterDecayKind) callconv(.winapi) HRESULT,
        get_MinGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MaxGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NaturalProperties: *const fn(self: *anyopaque, _r: **AudioNodeEmitterNaturalDecayModelProperties) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterDecayModelStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateNatural(self: *@This(), minGain: f64, maxGain: f64, unityGainDistance: f64, cutoffDistance: f64) core.HResult!*AudioNodeEmitterDecayModel {
        var _r: *AudioNodeEmitterDecayModel = undefined;
        const _c = self.vtable.CreateNatural(@ptrCast(self), minGain, maxGain, unityGainDistance, cutoffDistance, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCustom(self: *@This(), minGain: f64, maxGain: f64) core.HResult!*AudioNodeEmitterDecayModel {
        var _r: *AudioNodeEmitterDecayModel = undefined;
        const _c = self.vtable.CreateCustom(@ptrCast(self), minGain, maxGain, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterDecayModelStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7787ca8-f178-462f-bc81-8dd5cbe5dae8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateNatural: *const fn(self: *anyopaque, minGain: f64, maxGain: f64, unityGainDistance: f64, cutoffDistance: f64, _r: **AudioNodeEmitterDecayModel) callconv(.winapi) HRESULT,
        CreateCustom: *const fn(self: *anyopaque, minGain: f64, maxGain: f64, _r: **AudioNodeEmitterDecayModel) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateAudioNodeEmitter(self: *@This(), shape: *AudioNodeEmitterShape, decayModel: *AudioNodeEmitterDecayModel, settings: AudioNodeEmitterSettings) core.HResult!*AudioNodeEmitter {
        var _r: *AudioNodeEmitter = undefined;
        const _c = self.vtable.CreateAudioNodeEmitter(@ptrCast(self), shape, decayModel, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdc8489a-6ad6-4ce4-b7f7-a99370df7ee9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAudioNodeEmitter: *const fn(self: *anyopaque, shape: *AudioNodeEmitterShape, decayModel: *AudioNodeEmitterDecayModel, settings: AudioNodeEmitterSettings, _r: **AudioNodeEmitter) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterNaturalDecayModelProperties = extern struct {
    vtable: *const VTable,
    pub fn getUnityGainDistance(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_UnityGainDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCutoffDistance(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CutoffDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterNaturalDecayModelProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48934bcf-cf2c-4efc-9331-75bd22df1f0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnityGainDistance: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CutoffDistance: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterShape = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!AudioNodeEmitterShapeKind {
        var _r: AudioNodeEmitterShapeKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConeProperties(self: *@This()) core.HResult!*AudioNodeEmitterConeProperties {
        var _r: *AudioNodeEmitterConeProperties = undefined;
        const _c = self.vtable.get_ConeProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea0311c5-e73d-44bc-859c-45553bbc4828";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *AudioNodeEmitterShapeKind) callconv(.winapi) HRESULT,
        get_ConeProperties: *const fn(self: *anyopaque, _r: **AudioNodeEmitterConeProperties) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeEmitterShapeStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateCone(self: *@This(), innerAngle: f64, outerAngle: f64, outerAngleGain: f64) core.HResult!*AudioNodeEmitterShape {
        var _r: *AudioNodeEmitterShape = undefined;
        const _c = self.vtable.CreateCone(@ptrCast(self), innerAngle, outerAngle, outerAngleGain, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateOmnidirectional(self: *@This()) core.HResult!*AudioNodeEmitterShape {
        var _r: *AudioNodeEmitterShape = undefined;
        const _c = self.vtable.CreateOmnidirectional(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeEmitterShapeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57bb2771-ffa5-4b86-a779-e264aeb9145f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCone: *const fn(self: *anyopaque, innerAngle: f64, outerAngle: f64, outerAngleGain: f64, _r: **AudioNodeEmitterShape) callconv(.winapi) HRESULT,
        CreateOmnidirectional: *const fn(self: *anyopaque, _r: **AudioNodeEmitterShape) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeListener = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpeedOfSound(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SpeedOfSound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpeedOfSound(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SpeedOfSound(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDopplerVelocity(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_DopplerVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDopplerVelocity(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_DopplerVelocity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9722e16-0c0a-41da-b755-6c77835fb1eb";
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
        put_Position: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: Quaternion) callconv(.winapi) HRESULT,
        get_SpeedOfSound: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SpeedOfSound: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DopplerVelocity: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_DopplerVelocity: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
    };
};
pub const IAudioNodeWithListener = extern struct {
    vtable: *const VTable,
    pub fn putListener(self: *@This(), value: *AudioNodeListener) core.HResult!void {
        const _c = self.vtable.put_Listener(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListener(self: *@This()) core.HResult!*AudioNodeListener {
        var _r: *AudioNodeListener = undefined;
        const _c = self.vtable.get_Listener(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioNodeWithListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e0f907c-79ff-4544-9eeb-01257b15105a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Listener: *const fn(self: *anyopaque, value: *AudioNodeListener) callconv(.winapi) HRESULT,
        get_Listener: *const fn(self: *anyopaque, _r: **AudioNodeListener) callconv(.winapi) HRESULT,
    };
};
pub const IAudioPlaybackConnection = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!AudioPlaybackConnectionState {
        var _r: AudioPlaybackConnectionState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Open(self: *@This()) core.HResult!*AudioPlaybackConnectionOpenResult {
        var _r: *AudioPlaybackConnectionOpenResult = undefined;
        const _c = self.vtable.Open(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenAsync(self: *@This()) core.HResult!*IAsyncOperation(AudioPlaybackConnectionOpenResult) {
        var _r: *IAsyncOperation(AudioPlaybackConnectionOpenResult) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(AudioPlaybackConnection,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioPlaybackConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a4c1dea-cafc-50e7-8718-ea3f81cbfa51";
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
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AudioPlaybackConnectionState) callconv(.winapi) HRESULT,
        Open: *const fn(self: *anyopaque, _r: **AudioPlaybackConnectionOpenResult) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AudioPlaybackConnectionOpenResult)) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioPlaybackConnection,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAudioPlaybackConnectionOpenResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioPlaybackConnectionOpenResultStatus {
        var _r: AudioPlaybackConnectionOpenResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioPlaybackConnectionOpenResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e656aef-39f9-5fc9-a519-a5bbfd9fe921";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioPlaybackConnectionOpenResultStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IAudioPlaybackConnectionStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFromId(self: *@This(), id: HSTRING) core.HResult!*AudioPlaybackConnection {
        var _r: *AudioPlaybackConnection = undefined;
        const _c = self.vtable.TryCreateFromId(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioPlaybackConnectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e60963a2-69e6-5ffc-9e13-824a85213daf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TryCreateFromId: *const fn(self: *anyopaque, id: HSTRING, _r: **AudioPlaybackConnection) callconv(.winapi) HRESULT,
    };
};
pub const IAudioStateMonitor = extern struct {
    vtable: *const VTable,
    pub fn addSoundLevelChanged(self: *@This(), handler: *TypedEventHandler(AudioStateMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SoundLevelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSoundLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SoundLevelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSoundLevel(self: *@This()) core.HResult!SoundLevel {
        var _r: SoundLevel = undefined;
        const _c = self.vtable.get_SoundLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioStateMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d13d136-0199-4cdc-b84e-e72c2b581ece";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SoundLevelChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioStateMonitor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SoundLevelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_SoundLevel: *const fn(self: *anyopaque, _r: *SoundLevel) callconv(.winapi) HRESULT,
    };
};
pub const IAudioStateMonitorStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForRenderMonitoring(self: *@This()) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForRenderMonitoring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForRenderMonitoring(self: *@This(), category: AudioRenderCategory) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForRenderMonitoring(@ptrCast(self), category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForRenderMonitoring(self: *@This(), category: AudioRenderCategory, role: AudioDeviceRole) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForRenderMonitoring(@ptrCast(self), category, role, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForRenderMonitoringWithCategoryAndDeviceId(self: *@This(), category: AudioRenderCategory, deviceId: HSTRING) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForRenderMonitoringWithCategoryAndDeviceId(@ptrCast(self), category, deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForCaptureMonitoring(self: *@This()) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForCaptureMonitoring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForCaptureMonitoring(self: *@This(), category: MediaCategory) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForCaptureMonitoring(@ptrCast(self), category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForCaptureMonitoring(self: *@This(), category: MediaCategory, role: AudioDeviceRole) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForCaptureMonitoring(@ptrCast(self), category, role, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForCaptureMonitoringWithCategoryAndDeviceId(self: *@This(), category: MediaCategory, deviceId: HSTRING) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.CreateForCaptureMonitoringWithCategoryAndDeviceId(@ptrCast(self), category, deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IAudioStateMonitorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6374ea4c-1b3b-4001-94d9-dd225330fa40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForRenderMonitoring: *const fn(self: *anyopaque, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForRenderMonitoring: *const fn(self: *anyopaque, category: AudioRenderCategory, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForRenderMonitoring: *const fn(self: *anyopaque, category: AudioRenderCategory, role: AudioDeviceRole, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForRenderMonitoringWithCategoryAndDeviceId: *const fn(self: *anyopaque, category: AudioRenderCategory, deviceId: HSTRING, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForCaptureMonitoring: *const fn(self: *anyopaque, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForCaptureMonitoring: *const fn(self: *anyopaque, category: MediaCategory, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForCaptureMonitoring: *const fn(self: *anyopaque, category: MediaCategory, role: AudioDeviceRole, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
        CreateForCaptureMonitoringWithCategoryAndDeviceId: *const fn(self: *anyopaque, category: MediaCategory, deviceId: HSTRING, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
    };
};
pub const ICreateAudioDeviceInputNodeResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioDeviceNodeCreationStatus {
        var _r: AudioDeviceNodeCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInputNode(self: *@This()) core.HResult!*AudioDeviceInputNode {
        var _r: *AudioDeviceInputNode = undefined;
        const _c = self.vtable.get_DeviceInputNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioDeviceInputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16eec7a8-1ca7-40ef-91a4-d346e0aa1bba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioDeviceNodeCreationStatus) callconv(.winapi) HRESULT,
        get_DeviceInputNode: *const fn(self: *anyopaque, _r: **AudioDeviceInputNode) callconv(.winapi) HRESULT,
    };
};
pub const ICreateAudioDeviceInputNodeResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioDeviceInputNodeResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "921c69ce-3f35-41c7-9622-79f608baedc2";
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
pub const ICreateAudioDeviceOutputNodeResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioDeviceNodeCreationStatus {
        var _r: AudioDeviceNodeCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceOutputNode(self: *@This()) core.HResult!*AudioDeviceOutputNode {
        var _r: *AudioDeviceOutputNode = undefined;
        const _c = self.vtable.get_DeviceOutputNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioDeviceOutputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7776d27-1d9a-47f7-9cd4-2859cc1b7bff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioDeviceNodeCreationStatus) callconv(.winapi) HRESULT,
        get_DeviceOutputNode: *const fn(self: *anyopaque, _r: **AudioDeviceOutputNode) callconv(.winapi) HRESULT,
    };
};
pub const ICreateAudioDeviceOutputNodeResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioDeviceOutputNodeResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4864269f-bdce-4ab1-bd38-fbae93aedaca";
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
pub const ICreateAudioFileInputNodeResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioFileNodeCreationStatus {
        var _r: AudioFileNodeCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileInputNode(self: *@This()) core.HResult!*AudioFileInputNode {
        var _r: *AudioFileInputNode = undefined;
        const _c = self.vtable.get_FileInputNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioFileInputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce83d61c-e297-4c50-9ce7-1c7a69d6bd09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioFileNodeCreationStatus) callconv(.winapi) HRESULT,
        get_FileInputNode: *const fn(self: *anyopaque, _r: **AudioFileInputNode) callconv(.winapi) HRESULT,
    };
};
pub const ICreateAudioFileInputNodeResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioFileInputNodeResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9082020-3d80-4fe0-81c1-768fea7ca7e0";
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
pub const ICreateAudioFileOutputNodeResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioFileNodeCreationStatus {
        var _r: AudioFileNodeCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileOutputNode(self: *@This()) core.HResult!*AudioFileOutputNode {
        var _r: *AudioFileOutputNode = undefined;
        const _c = self.vtable.get_FileOutputNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioFileOutputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47d6ba7b-e909-453f-866e-5540cda734ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioFileNodeCreationStatus) callconv(.winapi) HRESULT,
        get_FileOutputNode: *const fn(self: *anyopaque, _r: **AudioFileOutputNode) callconv(.winapi) HRESULT,
    };
};
pub const ICreateAudioFileOutputNodeResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioFileOutputNodeResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f01b50d-3318-47b3-a60a-1b492be7fc0d";
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
pub const ICreateAudioGraphResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AudioGraphCreationStatus {
        var _r: AudioGraphCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGraph(self: *@This()) core.HResult!*AudioGraph {
        var _r: *AudioGraph = undefined;
        const _c = self.vtable.get_Graph(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioGraphResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5453ef7e-7bde-4b76-bb5d-48f79cfc8c0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AudioGraphCreationStatus) callconv(.winapi) HRESULT,
        get_Graph: *const fn(self: *anyopaque, _r: **AudioGraph) callconv(.winapi) HRESULT,
    };
};
pub const ICreateAudioGraphResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateAudioGraphResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d738dfc-88c6-4fcb-a534-85cedd4050a1";
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
pub const ICreateMediaSourceAudioInputNodeResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MediaSourceAudioInputNodeCreationStatus {
        var _r: MediaSourceAudioInputNodeCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNode(self: *@This()) core.HResult!*MediaSourceAudioInputNode {
        var _r: *MediaSourceAudioInputNode = undefined;
        const _c = self.vtable.get_Node(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateMediaSourceAudioInputNodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46a658a3-53c0-4d59-9e51-cc1d1044a4c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MediaSourceAudioInputNodeCreationStatus) callconv(.winapi) HRESULT,
        get_Node: *const fn(self: *anyopaque, _r: **MediaSourceAudioInputNode) callconv(.winapi) HRESULT,
    };
};
pub const ICreateMediaSourceAudioInputNodeResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ICreateMediaSourceAudioInputNodeResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63514ce8-6a1a-49e3-97ec-28fd5be114e5";
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
pub const IEchoEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn putWetDryMix(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_WetDryMix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWetDryMix(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WetDryMix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFeedback(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Feedback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFeedback(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Feedback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelay(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Delay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDelay(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Delay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IEchoEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e4d3faa-36b8-4c91-b9da-11f44a8a6610";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WetDryMix: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_WetDryMix: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Feedback: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Feedback: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Delay: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Delay: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IEchoEffectDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), audioGraph: *AudioGraph) core.HResult!*EchoEffectDefinition {
        var _r: *EchoEffectDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), audioGraph, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IEchoEffectDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d4e2257-aaf2-4e86-a54c-fb79db8f6c12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, audioGraph: *AudioGraph, _r: **EchoEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IEqualizerBand = extern struct {
    vtable: *const VTable,
    pub fn getBandwidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Bandwidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBandwidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Bandwidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFrequencyCenter(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FrequencyCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrequencyCenter(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FrequencyCenter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Gain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Gain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IEqualizerBand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c00a5a6a-262d-4b85-9bb7-43280b62ed0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bandwidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Bandwidth: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FrequencyCenter: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FrequencyCenter: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Gain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Gain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IEqualizerEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn getBands(self: *@This()) core.HResult!*IVectorView(EqualizerBand) {
        var _r: *IVectorView(EqualizerBand) = undefined;
        const _c = self.vtable.get_Bands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IEqualizerEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "023f6f1f-83fe-449a-a822-c696442d16b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bands: *const fn(self: *anyopaque, _r: **IVectorView(EqualizerBand)) callconv(.winapi) HRESULT,
    };
};
pub const IEqualizerEffectDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), audioGraph: *AudioGraph) core.HResult!*EqualizerEffectDefinition {
        var _r: *EqualizerEffectDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), audioGraph, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IEqualizerEffectDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2876fc4-d410-4eb5-9e69-c9aa1277eaf0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, audioGraph: *AudioGraph, _r: **EqualizerEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IFrameInputNodeQuantumStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequiredSamples(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequiredSamples(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IFrameInputNodeQuantumStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d9bd498-a306-4f06-bd9f-e9efc8226304";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequiredSamples: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ILimiterEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn putRelease(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Release(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelease(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Release(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLoudness(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Loudness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLoudness(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Loudness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ILimiterEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b755d19-2603-47ba-bdeb-39055e3486dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Release: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Release: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Loudness: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Loudness: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ILimiterEffectDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), audioGraph: *AudioGraph) core.HResult!*LimiterEffectDefinition {
        var _r: *LimiterEffectDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), audioGraph, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ILimiterEffectDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecbae6f1-61ff-45ef-b8f5-48659a57c72d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, audioGraph: *AudioGraph, _r: **LimiterEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceAudioInputNode = extern struct {
    vtable: *const VTable,
    pub fn putPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_PlaybackSpeedFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PlaybackSpeedFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Seek(self: *@This(), position: TimeSpan) core.HResult!void {
        const _c = self.vtable.Seek(@ptrCast(self), position);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_EndTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLoopCount(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_LoopCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLoopCount(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_LoopCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaSource(self: *@This()) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.get_MediaSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMediaSourceCompleted(self: *@This(), handler: *TypedEventHandler(MediaSourceAudioInputNode,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaSourceCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaSourceCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaSourceCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IMediaSourceAudioInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99d8983b-a88a-4041-8e4f-ddbac0c91fd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PlaybackSpeedFactor: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_PlaybackSpeedFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        Seek: *const fn(self: *anyopaque, position: TimeSpan) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_EndTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_EndTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_LoopCount: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_LoopCount: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MediaSource: *const fn(self: *anyopaque, _r: **MediaSource) callconv(.winapi) HRESULT,
        add_MediaSourceCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaSourceAudioInputNode,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaSourceCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IReverbEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn putWetDryMix(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_WetDryMix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWetDryMix(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WetDryMix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReflectionsDelay(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReflectionsDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReflectionsDelay(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReflectionsDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReverbDelay(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_ReverbDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReverbDelay(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ReverbDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRearDelay(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_RearDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRearDelay(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_RearDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionLeft(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_PositionLeft(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionLeft(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PositionLeft(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionRight(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_PositionRight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionRight(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PositionRight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionMatrixLeft(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_PositionMatrixLeft(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionMatrixLeft(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PositionMatrixLeft(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionMatrixRight(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_PositionMatrixRight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionMatrixRight(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PositionMatrixRight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEarlyDiffusion(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_EarlyDiffusion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEarlyDiffusion(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EarlyDiffusion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLateDiffusion(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_LateDiffusion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLateDiffusion(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_LateDiffusion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLowEQGain(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_LowEQGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLowEQGain(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_LowEQGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLowEQCutoff(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_LowEQCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLowEQCutoff(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_LowEQCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHighEQGain(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_HighEQGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHighEQGain(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_HighEQGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHighEQCutoff(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_HighEQCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHighEQCutoff(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_HighEQCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoomFilterFreq(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RoomFilterFreq(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoomFilterFreq(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RoomFilterFreq(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoomFilterMain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RoomFilterMain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoomFilterMain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RoomFilterMain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoomFilterHF(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RoomFilterHF(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoomFilterHF(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RoomFilterHF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReflectionsGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ReflectionsGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReflectionsGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ReflectionsGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReverbGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ReverbGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReverbGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ReverbGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecayTime(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DecayTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecayTime(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DecayTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDensity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Density(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDensity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Density(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoomSize(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RoomSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoomSize(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RoomSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisableLateField(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DisableLateField(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisableLateField(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisableLateField(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IReverbEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4606aa89-f563-4d0a-8f6e-f0cddff35d84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WetDryMix: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_WetDryMix: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ReflectionsDelay: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReflectionsDelay: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReverbDelay: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_ReverbDelay: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_RearDelay: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_RearDelay: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_PositionLeft: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_PositionLeft: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_PositionRight: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_PositionRight: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_PositionMatrixLeft: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_PositionMatrixLeft: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_PositionMatrixRight: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_PositionMatrixRight: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_EarlyDiffusion: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_EarlyDiffusion: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_LateDiffusion: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_LateDiffusion: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_LowEQGain: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_LowEQGain: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_LowEQCutoff: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_LowEQCutoff: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_HighEQGain: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_HighEQGain: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_HighEQCutoff: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_HighEQCutoff: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_RoomFilterFreq: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RoomFilterFreq: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RoomFilterMain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RoomFilterMain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RoomFilterHF: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RoomFilterHF: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ReflectionsGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ReflectionsGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ReverbGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ReverbGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DecayTime: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DecayTime: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Density: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Density: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RoomSize: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RoomSize: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DisableLateField: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisableLateField: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IReverbEffectDefinitionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), audioGraph: *AudioGraph) core.HResult!*ReverbEffectDefinition {
        var _r: *ReverbEffectDefinition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), audioGraph, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.IReverbEffectDefinitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7d5cbfe-100b-4ff0-9da6-dc4e05a759f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, audioGraph: *AudioGraph, _r: **ReverbEffectDefinition) callconv(.winapi) HRESULT,
    };
};
pub const ISetDefaultSpatialAudioFormatResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SetDefaultSpatialAudioFormatStatus {
        var _r: SetDefaultSpatialAudioFormatStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISetDefaultSpatialAudioFormatResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c2aa511-1400-5e70-9ea9-ae151241e8ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SetDefaultSpatialAudioFormatStatus) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAudioDeviceConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSpatialAudioSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSpatialAudioSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSpatialAudioFormatSupported(self: *@This(), subtype: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSpatialAudioFormatSupported(@ptrCast(self), subtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActiveSpatialAudioFormat(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActiveSpatialAudioFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultSpatialAudioFormat(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DefaultSpatialAudioFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDefaultSpatialAudioFormatAsync(self: *@This(), subtype: HSTRING) core.HResult!*IAsyncOperation(SetDefaultSpatialAudioFormatResult) {
        var _r: *IAsyncOperation(SetDefaultSpatialAudioFormatResult) = undefined;
        const _c = self.vtable.SetDefaultSpatialAudioFormatAsync(@ptrCast(self), subtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addConfigurationChanged(self: *@This(), handler: *TypedEventHandler(SpatialAudioDeviceConfiguration,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConfigurationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConfigurationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConfigurationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISpatialAudioDeviceConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee830034-61cf-5749-9da4-10f0fe028199";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsSpatialAudioSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsSpatialAudioFormatSupported: *const fn(self: *anyopaque, subtype: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        get_ActiveSpatialAudioFormat: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DefaultSpatialAudioFormat: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetDefaultSpatialAudioFormatAsync: *const fn(self: *anyopaque, subtype: HSTRING, _r: **IAsyncOperation(SetDefaultSpatialAudioFormatResult)) callconv(.winapi) HRESULT,
        add_ConfigurationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialAudioDeviceConfiguration,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConfigurationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAudioDeviceConfigurationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForDeviceId(self: *@This(), deviceId: HSTRING) core.HResult!*SpatialAudioDeviceConfiguration {
        var _r: *SpatialAudioDeviceConfiguration = undefined;
        const _c = self.vtable.GetForDeviceId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISpatialAudioDeviceConfigurationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ec37f7b-936d-4e04-9728-2827d9f758c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForDeviceId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **SpatialAudioDeviceConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAudioFormatConfiguration = extern struct {
    vtable: *const VTable,
    pub fn ReportLicenseChangedAsync(self: *@This(), subtype: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportLicenseChangedAsync(@ptrCast(self), subtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportConfigurationChangedAsync(self: *@This(), subtype: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportConfigurationChangedAsync(@ptrCast(self), subtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMixedRealityExclusiveModePolicy(self: *@This()) core.HResult!MixedRealitySpatialAudioFormatPolicy {
        var _r: MixedRealitySpatialAudioFormatPolicy = undefined;
        const _c = self.vtable.get_MixedRealityExclusiveModePolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMixedRealityExclusiveModePolicy(self: *@This(), value: MixedRealitySpatialAudioFormatPolicy) core.HResult!void {
        const _c = self.vtable.put_MixedRealityExclusiveModePolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISpatialAudioFormatConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32df09a8-50f0-5395-9923-7d44ca71ed6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportLicenseChangedAsync: *const fn(self: *anyopaque, subtype: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportConfigurationChangedAsync: *const fn(self: *anyopaque, subtype: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_MixedRealityExclusiveModePolicy: *const fn(self: *anyopaque, _r: *MixedRealitySpatialAudioFormatPolicy) callconv(.winapi) HRESULT,
        put_MixedRealityExclusiveModePolicy: *const fn(self: *anyopaque, value: MixedRealitySpatialAudioFormatPolicy) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAudioFormatConfigurationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*SpatialAudioFormatConfiguration {
        var _r: *SpatialAudioFormatConfiguration = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISpatialAudioFormatConfigurationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b5fef71-67c9-4e5f-a35b-41680711f8c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SpatialAudioFormatConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAudioFormatSubtypeStatics = extern struct {
    vtable: *const VTable,
    pub fn getWindowsSonic(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WindowsSonic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDolbyAtmosForHeadphones(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DolbyAtmosForHeadphones(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDolbyAtmosForHomeTheater(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DolbyAtmosForHomeTheater(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDolbyAtmosForSpeakers(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DolbyAtmosForSpeakers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDTSHeadphoneX(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DTSHeadphoneX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDTSXUltra(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DTSXUltra(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISpatialAudioFormatSubtypeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3de8a47-83ee-4266-a945-bedf507afeed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WindowsSonic: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DolbyAtmosForHeadphones: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DolbyAtmosForHomeTheater: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DolbyAtmosForSpeakers: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DTSHeadphoneX: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DTSXUltra: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAudioFormatSubtypeStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getDTSXForHomeTheater(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DTSXForHomeTheater(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ISpatialAudioFormatSubtypeStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4565e6cb-d95b-5621-b6af-0e8849c57c80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DTSXForHomeTheater: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const LimiterEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putRelease(self: *@This(), value: u32) core.HResult!void {
        const this: *ILimiterEffectDefinition = @ptrCast(self);
        return try this.putRelease(value);
    }
    pub fn getRelease(self: *@This()) core.HResult!u32 {
        const this: *ILimiterEffectDefinition = @ptrCast(self);
        return try this.getRelease();
    }
    pub fn putLoudness(self: *@This(), value: u32) core.HResult!void {
        const this: *ILimiterEffectDefinition = @ptrCast(self);
        return try this.putLoudness(value);
    }
    pub fn getLoudness(self: *@This()) core.HResult!u32 {
        const this: *ILimiterEffectDefinition = @ptrCast(self);
        return try this.getLoudness();
    }
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(audioGraph: *AudioGraph) core.HResult!*LimiterEffectDefinition {
        const factory = @This().ILimiterEffectDefinitionFactoryCache.get();
        return try factory.Create(audioGraph);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.LimiterEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILimiterEffectDefinition.GUID;
    pub const IID: Guid = ILimiterEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILimiterEffectDefinition.SIGNATURE);
    var _ILimiterEffectDefinitionFactoryCache: FactoryCache(ILimiterEffectDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const MediaSourceAudioInputNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putPlaybackSpeedFactor(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.putPlaybackSpeedFactor(value);
    }
    pub fn getPlaybackSpeedFactor(self: *@This()) core.HResult!f64 {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getPlaybackSpeedFactor();
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn Seek(self: *@This(), position: TimeSpan) core.HResult!void {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.Seek(position);
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getEndTime();
    }
    pub fn putEndTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.putEndTime(value);
    }
    pub fn getLoopCount(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getLoopCount();
    }
    pub fn putLoopCount(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.putLoopCount(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getMediaSource(self: *@This()) core.HResult!*MediaSource {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.getMediaSource();
    }
    pub fn addMediaSourceCompleted(self: *@This(), handler: *TypedEventHandler(MediaSourceAudioInputNode,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.addMediaSourceCompleted(handler);
    }
    pub fn removeMediaSourceCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaSourceAudioInputNode = @ptrCast(self);
        return try this.removeMediaSourceCompleted(token);
    }
    pub fn getOutgoingConnections(self: *@This()) core.HResult!*IVectorView(AudioGraphConnection) {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingConnections();
    }
    pub fn AddOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnection(destination);
    }
    pub fn AddOutgoingConnectionWithGain(self: *@This(), destination: *IAudioNode, gain: f64) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOutgoingConnectionWithGain(destination, gain);
    }
    pub fn RemoveOutgoingConnection(self: *@This(), destination: *IAudioNode) core.HResult!void {
        var this: ?*IAudioInputNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveOutgoingConnection(destination);
    }
    pub fn getEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectDefinitions();
    }
    pub fn putOutgoingGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingGain(value);
    }
    pub fn getOutgoingGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingGain();
    }
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn getConsumeInput(self: *@This()) core.HResult!bool {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConsumeInput();
    }
    pub fn putConsumeInput(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConsumeInput(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn DisableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableEffectsByDefinition(definition);
    }
    pub fn EnableEffectsByDefinition(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!void {
        var this: ?*IAudioNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableEffectsByDefinition(definition);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getEmitter(self: *@This()) core.HResult!*AudioNodeEmitter {
        var this: ?*IAudioInputNode2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioInputNode2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmitter();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.MediaSourceAudioInputNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaSourceAudioInputNode.GUID;
    pub const IID: Guid = IMediaSourceAudioInputNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaSourceAudioInputNode.SIGNATURE);
};
pub const MediaSourceAudioInputNodeCreationStatus = enum(i32) {
    Success = 0,
    FormatNotSupported = 1,
    NetworkError = 2,
    UnknownFailure = 3,
};
pub const MixedRealitySpatialAudioFormatPolicy = enum(i32) {
    UseMixedRealityDefaultSpatialAudioFormat = 0,
    UseDeviceConfigurationDefaultSpatialAudioFormat = 1,
};
pub const QuantumSizeSelectionMode = enum(i32) {
    SystemDefault = 0,
    LowestLatency = 1,
    ClosestToDesired = 2,
};
pub const ReverbEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putWetDryMix(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putWetDryMix(value);
    }
    pub fn getWetDryMix(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getWetDryMix();
    }
    pub fn putReflectionsDelay(self: *@This(), value: u32) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putReflectionsDelay(value);
    }
    pub fn getReflectionsDelay(self: *@This()) core.HResult!u32 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getReflectionsDelay();
    }
    pub fn putReverbDelay(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putReverbDelay(value);
    }
    pub fn getReverbDelay(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getReverbDelay();
    }
    pub fn putRearDelay(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putRearDelay(value);
    }
    pub fn getRearDelay(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getRearDelay();
    }
    pub fn putPositionLeft(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putPositionLeft(value);
    }
    pub fn getPositionLeft(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getPositionLeft();
    }
    pub fn putPositionRight(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putPositionRight(value);
    }
    pub fn getPositionRight(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getPositionRight();
    }
    pub fn putPositionMatrixLeft(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putPositionMatrixLeft(value);
    }
    pub fn getPositionMatrixLeft(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getPositionMatrixLeft();
    }
    pub fn putPositionMatrixRight(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putPositionMatrixRight(value);
    }
    pub fn getPositionMatrixRight(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getPositionMatrixRight();
    }
    pub fn putEarlyDiffusion(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putEarlyDiffusion(value);
    }
    pub fn getEarlyDiffusion(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getEarlyDiffusion();
    }
    pub fn putLateDiffusion(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putLateDiffusion(value);
    }
    pub fn getLateDiffusion(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getLateDiffusion();
    }
    pub fn putLowEQGain(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putLowEQGain(value);
    }
    pub fn getLowEQGain(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getLowEQGain();
    }
    pub fn putLowEQCutoff(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putLowEQCutoff(value);
    }
    pub fn getLowEQCutoff(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getLowEQCutoff();
    }
    pub fn putHighEQGain(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putHighEQGain(value);
    }
    pub fn getHighEQGain(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getHighEQGain();
    }
    pub fn putHighEQCutoff(self: *@This(), value: u8) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putHighEQCutoff(value);
    }
    pub fn getHighEQCutoff(self: *@This()) core.HResult!u8 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getHighEQCutoff();
    }
    pub fn putRoomFilterFreq(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putRoomFilterFreq(value);
    }
    pub fn getRoomFilterFreq(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getRoomFilterFreq();
    }
    pub fn putRoomFilterMain(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putRoomFilterMain(value);
    }
    pub fn getRoomFilterMain(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getRoomFilterMain();
    }
    pub fn putRoomFilterHF(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putRoomFilterHF(value);
    }
    pub fn getRoomFilterHF(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getRoomFilterHF();
    }
    pub fn putReflectionsGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putReflectionsGain(value);
    }
    pub fn getReflectionsGain(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getReflectionsGain();
    }
    pub fn putReverbGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putReverbGain(value);
    }
    pub fn getReverbGain(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getReverbGain();
    }
    pub fn putDecayTime(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putDecayTime(value);
    }
    pub fn getDecayTime(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getDecayTime();
    }
    pub fn putDensity(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putDensity(value);
    }
    pub fn getDensity(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getDensity();
    }
    pub fn putRoomSize(self: *@This(), value: f64) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putRoomSize(value);
    }
    pub fn getRoomSize(self: *@This()) core.HResult!f64 {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getRoomSize();
    }
    pub fn putDisableLateField(self: *@This(), value: bool) core.HResult!void {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.putDisableLateField(value);
    }
    pub fn getDisableLateField(self: *@This()) core.HResult!bool {
        const this: *IReverbEffectDefinition = @ptrCast(self);
        return try this.getDisableLateField();
    }
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IAudioEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(audioGraph: *AudioGraph) core.HResult!*ReverbEffectDefinition {
        const factory = @This().IReverbEffectDefinitionFactoryCache.get();
        return try factory.Create(audioGraph);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.ReverbEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReverbEffectDefinition.GUID;
    pub const IID: Guid = IReverbEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReverbEffectDefinition.SIGNATURE);
    var _IReverbEffectDefinitionFactoryCache: FactoryCache(IReverbEffectDefinitionFactory, RUNTIME_NAME) = .{};
};
pub const SetDefaultSpatialAudioFormatResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SetDefaultSpatialAudioFormatStatus {
        const this: *ISetDefaultSpatialAudioFormatResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.SetDefaultSpatialAudioFormatResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISetDefaultSpatialAudioFormatResult.GUID;
    pub const IID: Guid = ISetDefaultSpatialAudioFormatResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISetDefaultSpatialAudioFormatResult.SIGNATURE);
};
pub const SetDefaultSpatialAudioFormatStatus = enum(i32) {
    Succeeded = 0,
    AccessDenied = 1,
    LicenseExpired = 2,
    LicenseNotValidForAudioEndpoint = 3,
    NotSupportedOnAudioEndpoint = 4,
    UnknownError = 5,
};
pub const SpatialAudioDeviceConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getIsSpatialAudioSupported(self: *@This()) core.HResult!bool {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.getIsSpatialAudioSupported();
    }
    pub fn IsSpatialAudioFormatSupported(self: *@This(), subtype: HSTRING) core.HResult!bool {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.IsSpatialAudioFormatSupported(subtype);
    }
    pub fn getActiveSpatialAudioFormat(self: *@This()) core.HResult!HSTRING {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.getActiveSpatialAudioFormat();
    }
    pub fn getDefaultSpatialAudioFormat(self: *@This()) core.HResult!HSTRING {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.getDefaultSpatialAudioFormat();
    }
    pub fn SetDefaultSpatialAudioFormatAsync(self: *@This(), subtype: HSTRING) core.HResult!*IAsyncOperation(SetDefaultSpatialAudioFormatResult) {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.SetDefaultSpatialAudioFormatAsync(subtype);
    }
    pub fn addConfigurationChanged(self: *@This(), handler: *TypedEventHandler(SpatialAudioDeviceConfiguration,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.addConfigurationChanged(handler);
    }
    pub fn removeConfigurationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialAudioDeviceConfiguration = @ptrCast(self);
        return try this.removeConfigurationChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForDeviceId(deviceId: HSTRING) core.HResult!*SpatialAudioDeviceConfiguration {
        const factory = @This().ISpatialAudioDeviceConfigurationStaticsCache.get();
        return try factory.GetForDeviceId(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.SpatialAudioDeviceConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAudioDeviceConfiguration.GUID;
    pub const IID: Guid = ISpatialAudioDeviceConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAudioDeviceConfiguration.SIGNATURE);
    var _ISpatialAudioDeviceConfigurationStaticsCache: FactoryCache(ISpatialAudioDeviceConfigurationStatics, RUNTIME_NAME) = .{};
};
pub const SpatialAudioFormatConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportLicenseChangedAsync(self: *@This(), subtype: HSTRING) core.HResult!*IAsyncAction {
        const this: *ISpatialAudioFormatConfiguration = @ptrCast(self);
        return try this.ReportLicenseChangedAsync(subtype);
    }
    pub fn ReportConfigurationChangedAsync(self: *@This(), subtype: HSTRING) core.HResult!*IAsyncAction {
        const this: *ISpatialAudioFormatConfiguration = @ptrCast(self);
        return try this.ReportConfigurationChangedAsync(subtype);
    }
    pub fn getMixedRealityExclusiveModePolicy(self: *@This()) core.HResult!MixedRealitySpatialAudioFormatPolicy {
        const this: *ISpatialAudioFormatConfiguration = @ptrCast(self);
        return try this.getMixedRealityExclusiveModePolicy();
    }
    pub fn putMixedRealityExclusiveModePolicy(self: *@This(), value: MixedRealitySpatialAudioFormatPolicy) core.HResult!void {
        const this: *ISpatialAudioFormatConfiguration = @ptrCast(self);
        return try this.putMixedRealityExclusiveModePolicy(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*SpatialAudioFormatConfiguration {
        const factory = @This().ISpatialAudioFormatConfigurationStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.SpatialAudioFormatConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAudioFormatConfiguration.GUID;
    pub const IID: Guid = ISpatialAudioFormatConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAudioFormatConfiguration.SIGNATURE);
    var _ISpatialAudioFormatConfigurationStaticsCache: FactoryCache(ISpatialAudioFormatConfigurationStatics, RUNTIME_NAME) = .{};
};
pub const SpatialAudioFormatSubtype = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DTSXForHomeTheater() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStatics2Cache.get();
        return try factory.getDTSXForHomeTheater();
    }
    pub fn get_WindowsSonic() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStaticsCache.get();
        return try factory.getWindowsSonic();
    }
    pub fn get_DolbyAtmosForHeadphones() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStaticsCache.get();
        return try factory.getDolbyAtmosForHeadphones();
    }
    pub fn get_DolbyAtmosForHomeTheater() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStaticsCache.get();
        return try factory.getDolbyAtmosForHomeTheater();
    }
    pub fn get_DolbyAtmosForSpeakers() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStaticsCache.get();
        return try factory.getDolbyAtmosForSpeakers();
    }
    pub fn get_DTSHeadphoneX() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStaticsCache.get();
        return try factory.getDTSHeadphoneX();
    }
    pub fn get_DTSXUltra() core.HResult!HSTRING {
        const factory = @This().ISpatialAudioFormatSubtypeStaticsCache.get();
        return try factory.getDTSXUltra();
    }
    pub const NAME: []const u8 = "Windows.Media.Audio.SpatialAudioFormatSubtype";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISpatialAudioFormatSubtypeStatics2Cache: FactoryCache(ISpatialAudioFormatSubtypeStatics2, RUNTIME_NAME) = .{};
    var _ISpatialAudioFormatSubtypeStaticsCache: FactoryCache(ISpatialAudioFormatSubtypeStatics, RUNTIME_NAME) = .{};
};
pub const SpatialAudioModel = enum(i32) {
    ObjectBased = 0,
    FoldDown = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const MediaCategory = @import("./Capture.zig").MediaCategory;
const Guid = @import("../root.zig").Guid;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IVector = @import("../Foundation/Collections.zig").IVector;
const MediaEncodingProfile = @import("./MediaProperties.zig").MediaEncodingProfile;
const AudioFrame = @import("../Media.zig").AudioFrame;
const IClosable = @import("../Foundation.zig").IClosable;
const MediaSource = @import("./Core.zig").MediaSource;
const AudioProcessing = @import("../Media.zig").AudioProcessing;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AudioDeviceRole = @import("./Devices.zig").AudioDeviceRole;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const AudioRenderCategory = @import("./Render.zig").AudioRenderCategory;
const IReference = @import("../Foundation.zig").IReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const AudioEncodingProperties = @import("./MediaProperties.zig").AudioEncodingProperties;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const TranscodeFailureReason = @import("./Transcoding.zig").TranscodeFailureReason;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const SoundLevel = @import("../Media.zig").SoundLevel;
const HResult = @import("../Foundation.zig").HResult;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAudioEffectDefinition = @import("./Effects.zig").IAudioEffectDefinition;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
