pub const ActivationSignalDetectionConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSignalId(self: *@This()) core.HResult!HSTRING {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getSignalId();
    }
    pub fn getModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getModelId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn SetEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.SetEnabled(value);
    }
    pub fn SetEnabledAsync(self: *@This(), value: bool) core.HResult!*IAsyncAction {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.SetEnabledAsync(value);
    }
    pub fn getAvailabilityInfo(self: *@This()) core.HResult!*DetectionConfigurationAvailabilityInfo {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getAvailabilityInfo();
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(ActivationSignalDetectionConfiguration,DetectionConfigurationAvailabilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.addAvailabilityChanged(handler);
    }
    pub fn removeAvailabilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.removeAvailabilityChanged(token);
    }
    pub fn SetModelData(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!void {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.SetModelData(dataType, data);
    }
    pub fn SetModelDataAsync(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!*IAsyncAction {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.SetModelDataAsync(dataType, data);
    }
    pub fn GetModelDataType(self: *@This()) core.HResult!HSTRING {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.GetModelDataType();
    }
    pub fn GetModelDataTypeAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.GetModelDataTypeAsync();
    }
    pub fn GetModelData(self: *@This()) core.HResult!*IInputStream {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.GetModelData();
    }
    pub fn GetModelDataAsync(self: *@This()) core.HResult!*IAsyncOperation(IInputStream) {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.GetModelDataAsync();
    }
    pub fn ClearModelData(self: *@This()) core.HResult!void {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.ClearModelData();
    }
    pub fn ClearModelDataAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.ClearModelDataAsync();
    }
    pub fn getTrainingStepsCompleted(self: *@This()) core.HResult!u32 {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getTrainingStepsCompleted();
    }
    pub fn getTrainingStepsRemaining(self: *@This()) core.HResult!u32 {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getTrainingStepsRemaining();
    }
    pub fn getTrainingDataFormat(self: *@This()) core.HResult!ActivationSignalDetectionTrainingDataFormat {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.getTrainingDataFormat();
    }
    pub fn ApplyTrainingData(self: *@This(), trainingDataFormat: ActivationSignalDetectionTrainingDataFormat, trainingData: *IInputStream) core.HResult!DetectionConfigurationTrainingStatus {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.ApplyTrainingData(trainingDataFormat, trainingData);
    }
    pub fn ApplyTrainingDataAsync(self: *@This(), trainingDataFormat: ActivationSignalDetectionTrainingDataFormat, trainingData: *IInputStream) core.HResult!*IAsyncOperation(DetectionConfigurationTrainingStatus) {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.ApplyTrainingDataAsync(trainingDataFormat, trainingData);
    }
    pub fn ClearTrainingData(self: *@This()) core.HResult!void {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.ClearTrainingData();
    }
    pub fn ClearTrainingDataAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IActivationSignalDetectionConfiguration = @ptrCast(self);
        return try this.ClearTrainingDataAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn SetModelDataWithResult(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!ActivationSignalDetectionConfigurationSetModelDataResult {
        var this: ?*IActivationSignalDetectionConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetectionConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetModelDataWithResult(dataType, data);
    }
    pub fn SetModelDataWithResultAsync(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationSetModelDataResult) {
        var this: ?*IActivationSignalDetectionConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetectionConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetModelDataWithResultAsync(dataType, data);
    }
    pub fn SetEnabledWithResultAsync(self: *@This(), value: bool) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationStateChangeResult) {
        var this: ?*IActivationSignalDetectionConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetectionConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetEnabledWithResultAsync(value);
    }
    pub fn SetEnabledWithResult(self: *@This(), value: bool) core.HResult!ActivationSignalDetectionConfigurationStateChangeResult {
        var this: ?*IActivationSignalDetectionConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetectionConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetEnabledWithResult(value);
    }
    pub fn getTrainingStepCompletionMaxAllowedTime(self: *@This()) core.HResult!u32 {
        var this: ?*IActivationSignalDetectionConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetectionConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrainingStepCompletionMaxAllowedTime();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ActivationSignalDetectionConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivationSignalDetectionConfiguration.GUID;
    pub const IID: Guid = IActivationSignalDetectionConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivationSignalDetectionConfiguration.SIGNATURE);
};
pub const ActivationSignalDetectionConfigurationCreationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ActivationSignalDetectionConfigurationCreationStatus {
        const this: *IActivationSignalDetectionConfigurationCreationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*ActivationSignalDetectionConfiguration {
        const this: *IActivationSignalDetectionConfigurationCreationResult = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ActivationSignalDetectionConfigurationCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivationSignalDetectionConfigurationCreationResult.GUID;
    pub const IID: Guid = IActivationSignalDetectionConfigurationCreationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivationSignalDetectionConfigurationCreationResult.SIGNATURE);
};
pub const ActivationSignalDetectionConfigurationCreationStatus = enum(i32) {
    Success = 0,
    SignalIdNotAvailable = 1,
    ModelIdNotSupported = 2,
    InvalidSignalId = 3,
    InvalidModelId = 4,
    InvalidDisplayName = 5,
    ConfigurationAlreadyExists = 6,
    CreationNotSupported = 7,
};
pub const ActivationSignalDetectionConfigurationRemovalResult = enum(i32) {
    Success = 0,
    NotFound = 1,
    CurrentlyEnabled = 2,
    RemovalNotSupported = 3,
};
pub const ActivationSignalDetectionConfigurationSetModelDataResult = enum(i32) {
    Success = 0,
    EmptyModelData = 1,
    UnsupportedFormat = 2,
    ConfigurationCurrentlyEnabled = 3,
    InvalidData = 4,
    SetModelDataNotSupported = 5,
    ConfigurationNotFound = 6,
    UnknownError = 7,
};
pub const ActivationSignalDetectionConfigurationStateChangeResult = enum(i32) {
    Success = 0,
    NoModelData = 1,
    ConfigurationNotFound = 2,
};
pub const ActivationSignalDetectionTrainingDataFormat = enum(i32) {
    Voice8kHz8BitMono = 0,
    Voice8kHz16BitMono = 1,
    Voice16kHz8BitMono = 2,
    Voice16kHz16BitMono = 3,
    VoiceOEMDefined = 4,
    Audio44kHz8BitMono = 5,
    Audio44kHz16BitMono = 6,
    Audio48kHz8BitMono = 7,
    Audio48kHz16BitMono = 8,
    AudioOEMDefined = 9,
    OtherOEMDefined = 10,
};
pub const ActivationSignalDetector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationSignalDetectorKind {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getCanCreateConfigurations(self: *@This()) core.HResult!bool {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.getCanCreateConfigurations();
    }
    pub fn getSupportedModelDataTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.getSupportedModelDataTypes();
    }
    pub fn getSupportedTrainingDataFormats(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetectionTrainingDataFormat) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.getSupportedTrainingDataFormats();
    }
    pub fn getSupportedPowerStates(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetectorPowerState) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.getSupportedPowerStates();
    }
    pub fn GetSupportedModelIdsForSignalId(self: *@This(), signalId: HSTRING) core.HResult!*IVectorView(HSTRING) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.GetSupportedModelIdsForSignalId(signalId);
    }
    pub fn GetSupportedModelIdsForSignalIdAsync(self: *@This(), signalId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.GetSupportedModelIdsForSignalIdAsync(signalId);
    }
    pub fn CreateConfiguration(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!void {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.CreateConfiguration(signalId, modelId, displayName);
    }
    pub fn CreateConfigurationAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!*IAsyncAction {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.CreateConfigurationAsync(signalId, modelId, displayName);
    }
    pub fn GetConfigurations(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetectionConfiguration) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.GetConfigurations();
    }
    pub fn GetConfigurationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ActivationSignalDetectionConfiguration)) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.GetConfigurationsAsync();
    }
    pub fn GetConfiguration(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*ActivationSignalDetectionConfiguration {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.GetConfiguration(signalId, modelId);
    }
    pub fn GetConfigurationAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfiguration) {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.GetConfigurationAsync(signalId, modelId);
    }
    pub fn RemoveConfiguration(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!void {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.RemoveConfiguration(signalId, modelId);
    }
    pub fn RemoveConfigurationAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IActivationSignalDetector = @ptrCast(self);
        return try this.RemoveConfigurationAsync(signalId, modelId);
    }
    pub fn GetAvailableModelIdsForSignalIdAsync(self: *@This(), signalId: HSTRING) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAvailableModelIdsForSignalIdAsync(signalId);
    }
    pub fn GetAvailableModelIdsForSignalId(self: *@This(), signalId: HSTRING) core.HResult!*IVector(HSTRING) {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAvailableModelIdsForSignalId(signalId);
    }
    pub fn CreateConfigurationWithResultAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationCreationResult) {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateConfigurationWithResultAsync(signalId, modelId, displayName);
    }
    pub fn CreateConfigurationWithResult(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!*ActivationSignalDetectionConfigurationCreationResult {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateConfigurationWithResult(signalId, modelId, displayName);
    }
    pub fn RemoveConfigurationWithResultAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationRemovalResult) {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveConfigurationWithResultAsync(signalId, modelId);
    }
    pub fn RemoveConfigurationWithResult(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!ActivationSignalDetectionConfigurationRemovalResult {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveConfigurationWithResult(signalId, modelId);
    }
    pub fn getDetectorId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IActivationSignalDetector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivationSignalDetector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDetectorId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ActivationSignalDetector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivationSignalDetector.GUID;
    pub const IID: Guid = IActivationSignalDetector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivationSignalDetector.SIGNATURE);
};
pub const ActivationSignalDetectorKind = enum(i32) {
    AudioPattern = 0,
    AudioImpulse = 1,
    HardwareEvent = 2,
};
pub const ActivationSignalDetectorPowerState = enum(i32) {
    HighPower = 0,
    ConnectedLowPower = 1,
    DisconnectedLowPower = 2,
};
pub const ConversationalAgentActivationKind = enum(i32) {
    VoiceActivationPreview = 0,
    Foreground = 1,
};
pub const ConversationalAgentActivationResult = enum(i32) {
    Success = 0,
    AgentInactive = 1,
    ScreenNotAvailable = 2,
    AgentInterrupted = 3,
};
pub const ConversationalAgentDetectorManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAllActivationSignalDetectors(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetector) {
        const this: *IConversationalAgentDetectorManager = @ptrCast(self);
        return try this.GetAllActivationSignalDetectors();
    }
    pub fn GetAllActivationSignalDetectorsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ActivationSignalDetector)) {
        const this: *IConversationalAgentDetectorManager = @ptrCast(self);
        return try this.GetAllActivationSignalDetectorsAsync();
    }
    pub fn GetActivationSignalDetectors(self: *@This(), kind: ActivationSignalDetectorKind) core.HResult!*IVectorView(ActivationSignalDetector) {
        const this: *IConversationalAgentDetectorManager = @ptrCast(self);
        return try this.GetActivationSignalDetectors(kind);
    }
    pub fn GetActivationSignalDetectorsAsync(self: *@This(), kind: ActivationSignalDetectorKind) core.HResult!*IAsyncOperation(IVectorView(ActivationSignalDetector)) {
        const this: *IConversationalAgentDetectorManager = @ptrCast(self);
        return try this.GetActivationSignalDetectorsAsync(kind);
    }
    pub fn GetActivationSignalDetectorFromId(self: *@This(), detectorId: HSTRING) core.HResult!*ActivationSignalDetector {
        var this: ?*IConversationalAgentDetectorManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentDetectorManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActivationSignalDetectorFromId(detectorId);
    }
    pub fn GetActivationSignalDetectorFromIdAsync(self: *@This(), detectorId: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetector) {
        var this: ?*IConversationalAgentDetectorManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentDetectorManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActivationSignalDetectorFromIdAsync(detectorId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Default() core.HResult!*ConversationalAgentDetectorManager {
        const factory = @This().IConversationalAgentDetectorManagerStaticsCache.get();
        return try factory.getDefault();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ConversationalAgentDetectorManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversationalAgentDetectorManager.GUID;
    pub const IID: Guid = IConversationalAgentDetectorManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversationalAgentDetectorManager.SIGNATURE);
    var _IConversationalAgentDetectorManagerStaticsCache: FactoryCache(IConversationalAgentDetectorManagerStatics, RUNTIME_NAME) = .{};
};
pub const ConversationalAgentSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSessionInterrupted(self: *@This(), handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSessionInterruptedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.addSessionInterrupted(handler);
    }
    pub fn removeSessionInterrupted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.removeSessionInterrupted(token);
    }
    pub fn addSignalDetected(self: *@This(), handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSignalDetectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.addSignalDetected(handler);
    }
    pub fn removeSignalDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.removeSignalDetected(token);
    }
    pub fn addSystemStateChanged(self: *@This(), handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSystemStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.addSystemStateChanged(handler);
    }
    pub fn removeSystemStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.removeSystemStateChanged(token);
    }
    pub fn getAgentState(self: *@This()) core.HResult!ConversationalAgentState {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getAgentState();
    }
    pub fn getSignal(self: *@This()) core.HResult!*ConversationalAgentSignal {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getSignal();
    }
    pub fn getIsIndicatorLightAvailable(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getIsIndicatorLightAvailable();
    }
    pub fn getIsScreenAvailable(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getIsScreenAvailable();
    }
    pub fn getIsUserAuthenticated(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getIsUserAuthenticated();
    }
    pub fn getIsVoiceActivationAvailable(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getIsVoiceActivationAvailable();
    }
    pub fn getIsInterruptible(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getIsInterruptible();
    }
    pub fn getIsInterrupted(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.getIsInterrupted();
    }
    pub fn RequestInterruptibleAsync(self: *@This(), interruptible: bool) core.HResult!*IAsyncOperation(ConversationalAgentSessionUpdateResponse) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.RequestInterruptibleAsync(interruptible);
    }
    pub fn RequestInterruptible(self: *@This(), interruptible: bool) core.HResult!ConversationalAgentSessionUpdateResponse {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.RequestInterruptible(interruptible);
    }
    pub fn RequestAgentStateChangeAsync(self: *@This(), state: ConversationalAgentState) core.HResult!*IAsyncOperation(ConversationalAgentSessionUpdateResponse) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.RequestAgentStateChangeAsync(state);
    }
    pub fn RequestAgentStateChange(self: *@This(), state: ConversationalAgentState) core.HResult!ConversationalAgentSessionUpdateResponse {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.RequestAgentStateChange(state);
    }
    pub fn RequestForegroundActivationAsync(self: *@This()) core.HResult!*IAsyncOperation(ConversationalAgentSessionUpdateResponse) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.RequestForegroundActivationAsync();
    }
    pub fn RequestForegroundActivation(self: *@This()) core.HResult!ConversationalAgentSessionUpdateResponse {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.RequestForegroundActivation();
    }
    pub fn GetAudioClientAsync(self: *@This()) core.HResult!*IAsyncOperation(IInspectable) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetAudioClientAsync();
    }
    pub fn GetAudioClient(self: *@This()) core.HResult!*IInspectable {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetAudioClient();
    }
    pub fn CreateAudioDeviceInputNodeAsync(self: *@This(), graph: *AudioGraph) core.HResult!*IAsyncOperation(AudioDeviceInputNode) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.CreateAudioDeviceInputNodeAsync(graph);
    }
    pub fn CreateAudioDeviceInputNode(self: *@This(), graph: *AudioGraph) core.HResult!*AudioDeviceInputNode {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.CreateAudioDeviceInputNode(graph);
    }
    pub fn GetAudioCaptureDeviceIdAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetAudioCaptureDeviceIdAsync();
    }
    pub fn GetAudioCaptureDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetAudioCaptureDeviceId();
    }
    pub fn GetAudioRenderDeviceIdAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetAudioRenderDeviceIdAsync();
    }
    pub fn GetAudioRenderDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetAudioRenderDeviceId();
    }
    pub fn GetSignalModelIdAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetSignalModelIdAsync();
    }
    pub fn GetSignalModelId(self: *@This()) core.HResult!u32 {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetSignalModelId();
    }
    pub fn SetSignalModelIdAsync(self: *@This(), signalModelId: u32) core.HResult!*IAsyncOperation(bool) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.SetSignalModelIdAsync(signalModelId);
    }
    pub fn SetSignalModelId(self: *@This(), signalModelId: u32) core.HResult!bool {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.SetSignalModelId(signalModelId);
    }
    pub fn GetSupportedSignalModelIdsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(u32)) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetSupportedSignalModelIdsAsync();
    }
    pub fn GetSupportedSignalModelIds(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IConversationalAgentSession = @ptrCast(self);
        return try this.GetSupportedSignalModelIds();
    }
    pub fn RequestActivationAsync(self: *@This(), activationKind: ConversationalAgentActivationKind) core.HResult!*IAsyncOperation(ConversationalAgentActivationResult) {
        var this: ?*IConversationalAgentSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestActivationAsync(activationKind);
    }
    pub fn RequestActivation(self: *@This(), activationKind: ConversationalAgentActivationKind) core.HResult!ConversationalAgentActivationResult {
        var this: ?*IConversationalAgentSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestActivation(activationKind);
    }
    pub fn SetSupportLockScreenActivationAsync(self: *@This(), lockScreenActivationSupported: bool) core.HResult!*IAsyncAction {
        var this: ?*IConversationalAgentSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSupportLockScreenActivationAsync(lockScreenActivationSupported);
    }
    pub fn SetSupportLockScreenActivation(self: *@This(), lockScreenActivationSupported: bool) core.HResult!void {
        var this: ?*IConversationalAgentSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSupportLockScreenActivation(lockScreenActivationSupported);
    }
    pub fn GetMissingPrerequisites(self: *@This()) core.HResult!*IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind) {
        var this: ?*IConversationalAgentSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMissingPrerequisites();
    }
    pub fn GetMissingPrerequisitesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind)) {
        var this: ?*IConversationalAgentSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMissingPrerequisitesAsync();
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
    pub fn GetCurrentSessionAsync() core.HResult!*IAsyncOperation(ConversationalAgentSession) {
        const factory = @This().IConversationalAgentSessionStaticsCache.get();
        return try factory.GetCurrentSessionAsync();
    }
    pub fn GetCurrentSessionSync() core.HResult!*ConversationalAgentSession {
        const factory = @This().IConversationalAgentSessionStaticsCache.get();
        return try factory.GetCurrentSessionSync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ConversationalAgentSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversationalAgentSession.GUID;
    pub const IID: Guid = IConversationalAgentSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversationalAgentSession.SIGNATURE);
    var _IConversationalAgentSessionStaticsCache: FactoryCache(IConversationalAgentSessionStatics, RUNTIME_NAME) = .{};
};
pub const ConversationalAgentSessionInterruptedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ConversationalAgentSessionInterruptedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversationalAgentSessionInterruptedEventArgs.GUID;
    pub const IID: Guid = IConversationalAgentSessionInterruptedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversationalAgentSessionInterruptedEventArgs.SIGNATURE);
};
pub const ConversationalAgentSessionUpdateResponse = enum(i32) {
    Success = 0,
    Failed = 1,
};
pub const ConversationalAgentSignal = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSignalVerificationRequired(self: *@This()) core.HResult!bool {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.getIsSignalVerificationRequired();
    }
    pub fn putIsSignalVerificationRequired(self: *@This(), value: bool) core.HResult!void {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.putIsSignalVerificationRequired(value);
    }
    pub fn getSignalId(self: *@This()) core.HResult!HSTRING {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.getSignalId();
    }
    pub fn putSignalId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.putSignalId(value);
    }
    pub fn getSignalName(self: *@This()) core.HResult!HSTRING {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.getSignalName();
    }
    pub fn putSignalName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.putSignalName(value);
    }
    pub fn getSignalContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.getSignalContext();
    }
    pub fn putSignalContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.putSignalContext(value);
    }
    pub fn getSignalStart(self: *@This()) core.HResult!TimeSpan {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.getSignalStart();
    }
    pub fn putSignalStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.putSignalStart(value);
    }
    pub fn getSignalEnd(self: *@This()) core.HResult!TimeSpan {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.getSignalEnd();
    }
    pub fn putSignalEnd(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IConversationalAgentSignal = @ptrCast(self);
        return try this.putSignalEnd(value);
    }
    pub fn getDetectorId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IConversationalAgentSignal2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSignal2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDetectorId();
    }
    pub fn getDetectorKind(self: *@This()) core.HResult!ActivationSignalDetectorKind {
        var this: ?*IConversationalAgentSignal2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConversationalAgentSignal2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDetectorKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ConversationalAgentSignal";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversationalAgentSignal.GUID;
    pub const IID: Guid = IConversationalAgentSignal.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversationalAgentSignal.SIGNATURE);
};
pub const ConversationalAgentSignalDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ConversationalAgentSignalDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversationalAgentSignalDetectedEventArgs.GUID;
    pub const IID: Guid = IConversationalAgentSignalDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversationalAgentSignalDetectedEventArgs.SIGNATURE);
};
pub const ConversationalAgentState = enum(i32) {
    Inactive = 0,
    Detecting = 1,
    Listening = 2,
    Working = 3,
    Speaking = 4,
    ListeningAndSpeaking = 5,
};
pub const ConversationalAgentSystemStateChangeType = enum(i32) {
    UserAuthentication = 0,
    ScreenAvailability = 1,
    IndicatorLightAvailability = 2,
    VoiceActivationAvailability = 3,
};
pub const ConversationalAgentSystemStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSystemStateChangeType(self: *@This()) core.HResult!ConversationalAgentSystemStateChangeType {
        const this: *IConversationalAgentSystemStateChangedEventArgs = @ptrCast(self);
        return try this.getSystemStateChangeType();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.ConversationalAgentSystemStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversationalAgentSystemStateChangedEventArgs.GUID;
    pub const IID: Guid = IConversationalAgentSystemStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversationalAgentSystemStateChangedEventArgs.SIGNATURE);
};
pub const ConversationalAgentVoiceActivationPrerequisiteKind = enum(i32) {
    MicrophonePermission = 0,
    KnownAgents = 1,
    AgentAllowed = 2,
    AppCapability = 3,
    BackgroundTaskRegistration = 4,
    PolicyPermission = 5,
};
pub const DetectionConfigurationAvailabilityChangeKind = enum(i32) {
    SystemResourceAccess = 0,
    Permission = 1,
    LockScreenPermission = 2,
};
pub const DetectionConfigurationAvailabilityChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!DetectionConfigurationAvailabilityChangeKind {
        const this: *IDetectionConfigurationAvailabilityChangedEventArgs = @ptrCast(self);
        return try this.getKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.DetectionConfigurationAvailabilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDetectionConfigurationAvailabilityChangedEventArgs.GUID;
    pub const IID: Guid = IDetectionConfigurationAvailabilityChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDetectionConfigurationAvailabilityChangedEventArgs.SIGNATURE);
};
pub const DetectionConfigurationAvailabilityInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IDetectionConfigurationAvailabilityInfo = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getHasSystemResourceAccess(self: *@This()) core.HResult!bool {
        const this: *IDetectionConfigurationAvailabilityInfo = @ptrCast(self);
        return try this.getHasSystemResourceAccess();
    }
    pub fn getHasPermission(self: *@This()) core.HResult!bool {
        const this: *IDetectionConfigurationAvailabilityInfo = @ptrCast(self);
        return try this.getHasPermission();
    }
    pub fn getHasLockScreenPermission(self: *@This()) core.HResult!bool {
        const this: *IDetectionConfigurationAvailabilityInfo = @ptrCast(self);
        return try this.getHasLockScreenPermission();
    }
    pub fn getUnavailableSystemResources(self: *@This()) core.HResult!*IVectorView(SignalDetectorResourceKind) {
        var this: ?*IDetectionConfigurationAvailabilityInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDetectionConfigurationAvailabilityInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUnavailableSystemResources();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.DetectionConfigurationAvailabilityInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDetectionConfigurationAvailabilityInfo.GUID;
    pub const IID: Guid = IDetectionConfigurationAvailabilityInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDetectionConfigurationAvailabilityInfo.SIGNATURE);
};
pub const DetectionConfigurationTrainingStatus = enum(i32) {
    Success = 0,
    FormatNotSupported = 1,
    VoiceTooQuiet = 2,
    VoiceTooLoud = 3,
    VoiceTooFast = 4,
    VoiceTooSlow = 5,
    VoiceQualityProblem = 6,
    TrainingSystemInternalError = 7,
    TrainingTimedOut = 8,
    ConfigurationNotFound = 9,
};
pub const IActivationSignalDetectionConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getSignalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SignalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.SetEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetEnabledAsync(self: *@This(), value: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetEnabledAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailabilityInfo(self: *@This()) core.HResult!*DetectionConfigurationAvailabilityInfo {
        var _r: *DetectionConfigurationAvailabilityInfo = undefined;
        const _c = self.vtable.get_AvailabilityInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(ActivationSignalDetectionConfiguration,DetectionConfigurationAvailabilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailabilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailabilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailabilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetModelData(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!void {
        const _c = self.vtable.SetModelData(@ptrCast(self), dataType, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetModelDataAsync(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetModelDataAsync(@ptrCast(self), dataType, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetModelDataType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetModelDataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetModelDataTypeAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetModelDataTypeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetModelData(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetModelData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetModelDataAsync(self: *@This()) core.HResult!*IAsyncOperation(IInputStream) {
        var _r: *IAsyncOperation(IInputStream) = undefined;
        const _c = self.vtable.GetModelDataAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearModelData(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearModelData(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearModelDataAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearModelDataAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrainingStepsCompleted(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TrainingStepsCompleted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrainingStepsRemaining(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TrainingStepsRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrainingDataFormat(self: *@This()) core.HResult!ActivationSignalDetectionTrainingDataFormat {
        var _r: ActivationSignalDetectionTrainingDataFormat = undefined;
        const _c = self.vtable.get_TrainingDataFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyTrainingData(self: *@This(), trainingDataFormat: ActivationSignalDetectionTrainingDataFormat, trainingData: *IInputStream) core.HResult!DetectionConfigurationTrainingStatus {
        var _r: DetectionConfigurationTrainingStatus = undefined;
        const _c = self.vtable.ApplyTrainingData(@ptrCast(self), trainingDataFormat, trainingData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyTrainingDataAsync(self: *@This(), trainingDataFormat: ActivationSignalDetectionTrainingDataFormat, trainingData: *IInputStream) core.HResult!*IAsyncOperation(DetectionConfigurationTrainingStatus) {
        var _r: *IAsyncOperation(DetectionConfigurationTrainingStatus) = undefined;
        const _c = self.vtable.ApplyTrainingDataAsync(@ptrCast(self), trainingDataFormat, trainingData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearTrainingData(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearTrainingData(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearTrainingDataAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearTrainingDataAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IActivationSignalDetectionConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40d8be16-5217-581c-9ab2-ce9b2f2e8e00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SignalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetEnabledAsync: *const fn(self: *anyopaque, value: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_AvailabilityInfo: *const fn(self: *anyopaque, _r: **DetectionConfigurationAvailabilityInfo) callconv(.winapi) HRESULT,
        add_AvailabilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ActivationSignalDetectionConfiguration,DetectionConfigurationAvailabilityChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailabilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetModelData: *const fn(self: *anyopaque, dataType: HSTRING, data: *IInputStream) callconv(.winapi) HRESULT,
        SetModelDataAsync: *const fn(self: *anyopaque, dataType: HSTRING, data: *IInputStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetModelDataType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetModelDataTypeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetModelData: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        GetModelDataAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IInputStream)) callconv(.winapi) HRESULT,
        ClearModelData: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ClearModelDataAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_TrainingStepsCompleted: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TrainingStepsRemaining: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TrainingDataFormat: *const fn(self: *anyopaque, _r: *ActivationSignalDetectionTrainingDataFormat) callconv(.winapi) HRESULT,
        ApplyTrainingData: *const fn(self: *anyopaque, trainingDataFormat: ActivationSignalDetectionTrainingDataFormat, trainingData: *IInputStream, _r: *DetectionConfigurationTrainingStatus) callconv(.winapi) HRESULT,
        ApplyTrainingDataAsync: *const fn(self: *anyopaque, trainingDataFormat: ActivationSignalDetectionTrainingDataFormat, trainingData: *IInputStream, _r: **IAsyncOperation(DetectionConfigurationTrainingStatus)) callconv(.winapi) HRESULT,
        ClearTrainingData: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ClearTrainingDataAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IActivationSignalDetectionConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn SetModelDataWithResult(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!ActivationSignalDetectionConfigurationSetModelDataResult {
        var _r: ActivationSignalDetectionConfigurationSetModelDataResult = undefined;
        const _c = self.vtable.SetModelDataWithResult(@ptrCast(self), dataType, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetModelDataWithResultAsync(self: *@This(), dataType: HSTRING, data: *IInputStream) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationSetModelDataResult) {
        var _r: *IAsyncOperation(ActivationSignalDetectionConfigurationSetModelDataResult) = undefined;
        const _c = self.vtable.SetModelDataWithResultAsync(@ptrCast(self), dataType, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEnabledWithResultAsync(self: *@This(), value: bool) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationStateChangeResult) {
        var _r: *IAsyncOperation(ActivationSignalDetectionConfigurationStateChangeResult) = undefined;
        const _c = self.vtable.SetEnabledWithResultAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEnabledWithResult(self: *@This(), value: bool) core.HResult!ActivationSignalDetectionConfigurationStateChangeResult {
        var _r: ActivationSignalDetectionConfigurationStateChangeResult = undefined;
        const _c = self.vtable.SetEnabledWithResult(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrainingStepCompletionMaxAllowedTime(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TrainingStepCompletionMaxAllowedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IActivationSignalDetectionConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71d9b022-562c-57ce-a78b-8b4ff0145bab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetModelDataWithResult: *const fn(self: *anyopaque, dataType: HSTRING, data: *IInputStream, _r: *ActivationSignalDetectionConfigurationSetModelDataResult) callconv(.winapi) HRESULT,
        SetModelDataWithResultAsync: *const fn(self: *anyopaque, dataType: HSTRING, data: *IInputStream, _r: **IAsyncOperation(ActivationSignalDetectionConfigurationSetModelDataResult)) callconv(.winapi) HRESULT,
        SetEnabledWithResultAsync: *const fn(self: *anyopaque, value: bool, _r: **IAsyncOperation(ActivationSignalDetectionConfigurationStateChangeResult)) callconv(.winapi) HRESULT,
        SetEnabledWithResult: *const fn(self: *anyopaque, value: bool, _r: *ActivationSignalDetectionConfigurationStateChangeResult) callconv(.winapi) HRESULT,
        get_TrainingStepCompletionMaxAllowedTime: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IActivationSignalDetectionConfigurationCreationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ActivationSignalDetectionConfigurationCreationStatus {
        var _r: ActivationSignalDetectionConfigurationCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*ActivationSignalDetectionConfiguration {
        var _r: *ActivationSignalDetectionConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IActivationSignalDetectionConfigurationCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c89bc1b-8d12-5e48-a71c-7f6bc1cd66e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ActivationSignalDetectionConfigurationCreationStatus) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **ActivationSignalDetectionConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IActivationSignalDetector = extern struct {
    vtable: *const VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationSignalDetectorKind {
        var _r: ActivationSignalDetectorKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanCreateConfigurations(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCreateConfigurations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModelDataTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedModelDataTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedTrainingDataFormats(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetectionTrainingDataFormat) {
        var _r: *IVectorView(ActivationSignalDetectionTrainingDataFormat) = undefined;
        const _c = self.vtable.get_SupportedTrainingDataFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedPowerStates(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetectorPowerState) {
        var _r: *IVectorView(ActivationSignalDetectorPowerState) = undefined;
        const _c = self.vtable.get_SupportedPowerStates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedModelIdsForSignalId(self: *@This(), signalId: HSTRING) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetSupportedModelIdsForSignalId(@ptrCast(self), signalId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedModelIdsForSignalIdAsync(self: *@This(), signalId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetSupportedModelIdsForSignalIdAsync(@ptrCast(self), signalId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateConfiguration(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!void {
        const _c = self.vtable.CreateConfiguration(@ptrCast(self), signalId, modelId, displayName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateConfigurationAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CreateConfigurationAsync(@ptrCast(self), signalId, modelId, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConfigurations(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetectionConfiguration) {
        var _r: *IVectorView(ActivationSignalDetectionConfiguration) = undefined;
        const _c = self.vtable.GetConfigurations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConfigurationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ActivationSignalDetectionConfiguration)) {
        var _r: *IAsyncOperation(IVectorView(ActivationSignalDetectionConfiguration)) = undefined;
        const _c = self.vtable.GetConfigurationsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConfiguration(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*ActivationSignalDetectionConfiguration {
        var _r: *ActivationSignalDetectionConfiguration = undefined;
        const _c = self.vtable.GetConfiguration(@ptrCast(self), signalId, modelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConfigurationAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfiguration) {
        var _r: *IAsyncOperation(ActivationSignalDetectionConfiguration) = undefined;
        const _c = self.vtable.GetConfigurationAsync(@ptrCast(self), signalId, modelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveConfiguration(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveConfiguration(@ptrCast(self), signalId, modelId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveConfigurationAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RemoveConfigurationAsync(@ptrCast(self), signalId, modelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IActivationSignalDetector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5bf345f-a4d0-5b2b-8e65-b3c55ee756ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ActivationSignalDetectorKind) callconv(.winapi) HRESULT,
        get_CanCreateConfigurations: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModelDataTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_SupportedTrainingDataFormats: *const fn(self: *anyopaque, _r: **IVectorView(ActivationSignalDetectionTrainingDataFormat)) callconv(.winapi) HRESULT,
        get_SupportedPowerStates: *const fn(self: *anyopaque, _r: **IVectorView(ActivationSignalDetectorPowerState)) callconv(.winapi) HRESULT,
        GetSupportedModelIdsForSignalId: *const fn(self: *anyopaque, signalId: HSTRING, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        GetSupportedModelIdsForSignalIdAsync: *const fn(self: *anyopaque, signalId: HSTRING, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        CreateConfiguration: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) callconv(.winapi) HRESULT,
        CreateConfigurationAsync: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, displayName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetConfigurations: *const fn(self: *anyopaque, _r: **IVectorView(ActivationSignalDetectionConfiguration)) callconv(.winapi) HRESULT,
        GetConfigurationsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ActivationSignalDetectionConfiguration))) callconv(.winapi) HRESULT,
        GetConfiguration: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, _r: **ActivationSignalDetectionConfiguration) callconv(.winapi) HRESULT,
        GetConfigurationAsync: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, _r: **IAsyncOperation(ActivationSignalDetectionConfiguration)) callconv(.winapi) HRESULT,
        RemoveConfiguration: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING) callconv(.winapi) HRESULT,
        RemoveConfigurationAsync: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IActivationSignalDetector2 = extern struct {
    vtable: *const VTable,
    pub fn GetAvailableModelIdsForSignalIdAsync(self: *@This(), signalId: HSTRING) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        var _r: *IAsyncOperation(IVector(HSTRING)) = undefined;
        const _c = self.vtable.GetAvailableModelIdsForSignalIdAsync(@ptrCast(self), signalId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAvailableModelIdsForSignalId(self: *@This(), signalId: HSTRING) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetAvailableModelIdsForSignalId(@ptrCast(self), signalId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateConfigurationWithResultAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationCreationResult) {
        var _r: *IAsyncOperation(ActivationSignalDetectionConfigurationCreationResult) = undefined;
        const _c = self.vtable.CreateConfigurationWithResultAsync(@ptrCast(self), signalId, modelId, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateConfigurationWithResult(self: *@This(), signalId: HSTRING, modelId: HSTRING, displayName: HSTRING) core.HResult!*ActivationSignalDetectionConfigurationCreationResult {
        var _r: *ActivationSignalDetectionConfigurationCreationResult = undefined;
        const _c = self.vtable.CreateConfigurationWithResult(@ptrCast(self), signalId, modelId, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveConfigurationWithResultAsync(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetectionConfigurationRemovalResult) {
        var _r: *IAsyncOperation(ActivationSignalDetectionConfigurationRemovalResult) = undefined;
        const _c = self.vtable.RemoveConfigurationWithResultAsync(@ptrCast(self), signalId, modelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveConfigurationWithResult(self: *@This(), signalId: HSTRING, modelId: HSTRING) core.HResult!ActivationSignalDetectionConfigurationRemovalResult {
        var _r: ActivationSignalDetectionConfigurationRemovalResult = undefined;
        const _c = self.vtable.RemoveConfigurationWithResult(@ptrCast(self), signalId, modelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetectorId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DetectorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IActivationSignalDetector2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7e2490a-baa5-59d2-85d1-ba42f7cf78c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAvailableModelIdsForSignalIdAsync: *const fn(self: *anyopaque, signalId: HSTRING, _r: **IAsyncOperation(IVector(HSTRING))) callconv(.winapi) HRESULT,
        GetAvailableModelIdsForSignalId: *const fn(self: *anyopaque, signalId: HSTRING, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        CreateConfigurationWithResultAsync: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, displayName: HSTRING, _r: **IAsyncOperation(ActivationSignalDetectionConfigurationCreationResult)) callconv(.winapi) HRESULT,
        CreateConfigurationWithResult: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, displayName: HSTRING, _r: **ActivationSignalDetectionConfigurationCreationResult) callconv(.winapi) HRESULT,
        RemoveConfigurationWithResultAsync: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, _r: **IAsyncOperation(ActivationSignalDetectionConfigurationRemovalResult)) callconv(.winapi) HRESULT,
        RemoveConfigurationWithResult: *const fn(self: *anyopaque, signalId: HSTRING, modelId: HSTRING, _r: *ActivationSignalDetectionConfigurationRemovalResult) callconv(.winapi) HRESULT,
        get_DetectorId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentDetectorManager = extern struct {
    vtable: *const VTable,
    pub fn GetAllActivationSignalDetectors(self: *@This()) core.HResult!*IVectorView(ActivationSignalDetector) {
        var _r: *IVectorView(ActivationSignalDetector) = undefined;
        const _c = self.vtable.GetAllActivationSignalDetectors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllActivationSignalDetectorsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ActivationSignalDetector)) {
        var _r: *IAsyncOperation(IVectorView(ActivationSignalDetector)) = undefined;
        const _c = self.vtable.GetAllActivationSignalDetectorsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActivationSignalDetectors(self: *@This(), kind: ActivationSignalDetectorKind) core.HResult!*IVectorView(ActivationSignalDetector) {
        var _r: *IVectorView(ActivationSignalDetector) = undefined;
        const _c = self.vtable.GetActivationSignalDetectors(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActivationSignalDetectorsAsync(self: *@This(), kind: ActivationSignalDetectorKind) core.HResult!*IAsyncOperation(IVectorView(ActivationSignalDetector)) {
        var _r: *IAsyncOperation(IVectorView(ActivationSignalDetector)) = undefined;
        const _c = self.vtable.GetActivationSignalDetectorsAsync(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentDetectorManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de94fbb0-597a-5df8-8cfb-9dbb583ba3ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAllActivationSignalDetectors: *const fn(self: *anyopaque, _r: **IVectorView(ActivationSignalDetector)) callconv(.winapi) HRESULT,
        GetAllActivationSignalDetectorsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ActivationSignalDetector))) callconv(.winapi) HRESULT,
        GetActivationSignalDetectors: *const fn(self: *anyopaque, kind: ActivationSignalDetectorKind, _r: **IVectorView(ActivationSignalDetector)) callconv(.winapi) HRESULT,
        GetActivationSignalDetectorsAsync: *const fn(self: *anyopaque, kind: ActivationSignalDetectorKind, _r: **IAsyncOperation(IVectorView(ActivationSignalDetector))) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentDetectorManager2 = extern struct {
    vtable: *const VTable,
    pub fn GetActivationSignalDetectorFromId(self: *@This(), detectorId: HSTRING) core.HResult!*ActivationSignalDetector {
        var _r: *ActivationSignalDetector = undefined;
        const _c = self.vtable.GetActivationSignalDetectorFromId(@ptrCast(self), detectorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActivationSignalDetectorFromIdAsync(self: *@This(), detectorId: HSTRING) core.HResult!*IAsyncOperation(ActivationSignalDetector) {
        var _r: *IAsyncOperation(ActivationSignalDetector) = undefined;
        const _c = self.vtable.GetActivationSignalDetectorFromIdAsync(@ptrCast(self), detectorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentDetectorManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84610f31-d7f3-52fe-9311-c9eb4e3eb30a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetActivationSignalDetectorFromId: *const fn(self: *anyopaque, detectorId: HSTRING, _r: **ActivationSignalDetector) callconv(.winapi) HRESULT,
        GetActivationSignalDetectorFromIdAsync: *const fn(self: *anyopaque, detectorId: HSTRING, _r: **IAsyncOperation(ActivationSignalDetector)) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentDetectorManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getDefault(self: *@This()) core.HResult!*ConversationalAgentDetectorManager {
        var _r: *ConversationalAgentDetectorManager = undefined;
        const _c = self.vtable.get_Default(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentDetectorManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36a8d283-fa0e-5693-8489-0fb2f0ab40d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Default: *const fn(self: *anyopaque, _r: **ConversationalAgentDetectorManager) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentSession = extern struct {
    vtable: *const VTable,
    pub fn addSessionInterrupted(self: *@This(), handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSessionInterruptedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionInterrupted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionInterrupted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionInterrupted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSignalDetected(self: *@This(), handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSignalDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SignalDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSignalDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SignalDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSystemStateChanged(self: *@This(), handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSystemStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SystemStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSystemStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SystemStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAgentState(self: *@This()) core.HResult!ConversationalAgentState {
        var _r: ConversationalAgentState = undefined;
        const _c = self.vtable.get_AgentState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignal(self: *@This()) core.HResult!*ConversationalAgentSignal {
        var _r: *ConversationalAgentSignal = undefined;
        const _c = self.vtable.get_Signal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIndicatorLightAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIndicatorLightAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsScreenAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScreenAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUserAuthenticated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUserAuthenticated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVoiceActivationAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVoiceActivationAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInterruptible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInterruptible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInterrupted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInterrupted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestInterruptibleAsync(self: *@This(), interruptible: bool) core.HResult!*IAsyncOperation(ConversationalAgentSessionUpdateResponse) {
        var _r: *IAsyncOperation(ConversationalAgentSessionUpdateResponse) = undefined;
        const _c = self.vtable.RequestInterruptibleAsync(@ptrCast(self), interruptible, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestInterruptible(self: *@This(), interruptible: bool) core.HResult!ConversationalAgentSessionUpdateResponse {
        var _r: ConversationalAgentSessionUpdateResponse = undefined;
        const _c = self.vtable.RequestInterruptible(@ptrCast(self), interruptible, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAgentStateChangeAsync(self: *@This(), state: ConversationalAgentState) core.HResult!*IAsyncOperation(ConversationalAgentSessionUpdateResponse) {
        var _r: *IAsyncOperation(ConversationalAgentSessionUpdateResponse) = undefined;
        const _c = self.vtable.RequestAgentStateChangeAsync(@ptrCast(self), state, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAgentStateChange(self: *@This(), state: ConversationalAgentState) core.HResult!ConversationalAgentSessionUpdateResponse {
        var _r: ConversationalAgentSessionUpdateResponse = undefined;
        const _c = self.vtable.RequestAgentStateChange(@ptrCast(self), state, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestForegroundActivationAsync(self: *@This()) core.HResult!*IAsyncOperation(ConversationalAgentSessionUpdateResponse) {
        var _r: *IAsyncOperation(ConversationalAgentSessionUpdateResponse) = undefined;
        const _c = self.vtable.RequestForegroundActivationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestForegroundActivation(self: *@This()) core.HResult!ConversationalAgentSessionUpdateResponse {
        var _r: ConversationalAgentSessionUpdateResponse = undefined;
        const _c = self.vtable.RequestForegroundActivation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioClientAsync(self: *@This()) core.HResult!*IAsyncOperation(IInspectable) {
        var _r: *IAsyncOperation(IInspectable) = undefined;
        const _c = self.vtable.GetAudioClientAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioClient(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetAudioClient(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAudioDeviceInputNodeAsync(self: *@This(), graph: *AudioGraph) core.HResult!*IAsyncOperation(AudioDeviceInputNode) {
        var _r: *IAsyncOperation(AudioDeviceInputNode) = undefined;
        const _c = self.vtable.CreateAudioDeviceInputNodeAsync(@ptrCast(self), graph, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAudioDeviceInputNode(self: *@This(), graph: *AudioGraph) core.HResult!*AudioDeviceInputNode {
        var _r: *AudioDeviceInputNode = undefined;
        const _c = self.vtable.CreateAudioDeviceInputNode(@ptrCast(self), graph, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioCaptureDeviceIdAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAudioCaptureDeviceIdAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioCaptureDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAudioCaptureDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioRenderDeviceIdAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAudioRenderDeviceIdAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioRenderDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAudioRenderDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSignalModelIdAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetSignalModelIdAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSignalModelId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.GetSignalModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSignalModelIdAsync(self: *@This(), signalModelId: u32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SetSignalModelIdAsync(@ptrCast(self), signalModelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSignalModelId(self: *@This(), signalModelId: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SetSignalModelId(@ptrCast(self), signalModelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedSignalModelIdsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(u32)) {
        var _r: *IAsyncOperation(IVectorView(u32)) = undefined;
        const _c = self.vtable.GetSupportedSignalModelIdsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedSignalModelIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.GetSupportedSignalModelIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "daaae09a-b7ba-57e5-ad13-df520f9b6fa7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SessionInterrupted: *const fn(self: *anyopaque, handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSessionInterruptedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionInterrupted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SignalDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSignalDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SignalDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SystemStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ConversationalAgentSession,ConversationalAgentSystemStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SystemStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AgentState: *const fn(self: *anyopaque, _r: *ConversationalAgentState) callconv(.winapi) HRESULT,
        get_Signal: *const fn(self: *anyopaque, _r: **ConversationalAgentSignal) callconv(.winapi) HRESULT,
        get_IsIndicatorLightAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsScreenAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUserAuthenticated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsVoiceActivationAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInterruptible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInterrupted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        RequestInterruptibleAsync: *const fn(self: *anyopaque, interruptible: bool, _r: **IAsyncOperation(ConversationalAgentSessionUpdateResponse)) callconv(.winapi) HRESULT,
        RequestInterruptible: *const fn(self: *anyopaque, interruptible: bool, _r: *ConversationalAgentSessionUpdateResponse) callconv(.winapi) HRESULT,
        RequestAgentStateChangeAsync: *const fn(self: *anyopaque, state: ConversationalAgentState, _r: **IAsyncOperation(ConversationalAgentSessionUpdateResponse)) callconv(.winapi) HRESULT,
        RequestAgentStateChange: *const fn(self: *anyopaque, state: ConversationalAgentState, _r: *ConversationalAgentSessionUpdateResponse) callconv(.winapi) HRESULT,
        RequestForegroundActivationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ConversationalAgentSessionUpdateResponse)) callconv(.winapi) HRESULT,
        RequestForegroundActivation: *const fn(self: *anyopaque, _r: *ConversationalAgentSessionUpdateResponse) callconv(.winapi) HRESULT,
        GetAudioClientAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IInspectable)) callconv(.winapi) HRESULT,
        GetAudioClient: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateAudioDeviceInputNodeAsync: *const fn(self: *anyopaque, graph: *AudioGraph, _r: **IAsyncOperation(AudioDeviceInputNode)) callconv(.winapi) HRESULT,
        CreateAudioDeviceInputNode: *const fn(self: *anyopaque, graph: *AudioGraph, _r: **AudioDeviceInputNode) callconv(.winapi) HRESULT,
        GetAudioCaptureDeviceIdAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetAudioCaptureDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAudioRenderDeviceIdAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetAudioRenderDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetSignalModelIdAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        GetSignalModelId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetSignalModelIdAsync: *const fn(self: *anyopaque, signalModelId: u32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SetSignalModelId: *const fn(self: *anyopaque, signalModelId: u32, _r: *bool) callconv(.winapi) HRESULT,
        GetSupportedSignalModelIdsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(u32))) callconv(.winapi) HRESULT,
        GetSupportedSignalModelIds: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentSession2 = extern struct {
    vtable: *const VTable,
    pub fn RequestActivationAsync(self: *@This(), activationKind: ConversationalAgentActivationKind) core.HResult!*IAsyncOperation(ConversationalAgentActivationResult) {
        var _r: *IAsyncOperation(ConversationalAgentActivationResult) = undefined;
        const _c = self.vtable.RequestActivationAsync(@ptrCast(self), activationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestActivation(self: *@This(), activationKind: ConversationalAgentActivationKind) core.HResult!ConversationalAgentActivationResult {
        var _r: ConversationalAgentActivationResult = undefined;
        const _c = self.vtable.RequestActivation(@ptrCast(self), activationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSupportLockScreenActivationAsync(self: *@This(), lockScreenActivationSupported: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetSupportLockScreenActivationAsync(@ptrCast(self), lockScreenActivationSupported, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSupportLockScreenActivation(self: *@This(), lockScreenActivationSupported: bool) core.HResult!void {
        const _c = self.vtable.SetSupportLockScreenActivation(@ptrCast(self), lockScreenActivationSupported);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetMissingPrerequisites(self: *@This()) core.HResult!*IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind) {
        var _r: *IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind) = undefined;
        const _c = self.vtable.GetMissingPrerequisites(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMissingPrerequisitesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind)) {
        var _r: *IAsyncOperation(IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind)) = undefined;
        const _c = self.vtable.GetMissingPrerequisitesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7a9fbf9-ac78-57ff-9596-acc7a1c9a607";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestActivationAsync: *const fn(self: *anyopaque, activationKind: ConversationalAgentActivationKind, _r: **IAsyncOperation(ConversationalAgentActivationResult)) callconv(.winapi) HRESULT,
        RequestActivation: *const fn(self: *anyopaque, activationKind: ConversationalAgentActivationKind, _r: *ConversationalAgentActivationResult) callconv(.winapi) HRESULT,
        SetSupportLockScreenActivationAsync: *const fn(self: *anyopaque, lockScreenActivationSupported: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetSupportLockScreenActivation: *const fn(self: *anyopaque, lockScreenActivationSupported: bool) callconv(.winapi) HRESULT,
        GetMissingPrerequisites: *const fn(self: *anyopaque, _r: **IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind)) callconv(.winapi) HRESULT,
        GetMissingPrerequisitesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ConversationalAgentVoiceActivationPrerequisiteKind))) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentSessionInterruptedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSessionInterruptedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9766591f-f63d-5d3e-9bf2-bd0760552686";
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
pub const IConversationalAgentSessionStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentSessionAsync(self: *@This()) core.HResult!*IAsyncOperation(ConversationalAgentSession) {
        var _r: *IAsyncOperation(ConversationalAgentSession) = undefined;
        const _c = self.vtable.GetCurrentSessionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentSessionSync(self: *@This()) core.HResult!*ConversationalAgentSession {
        var _r: *ConversationalAgentSession = undefined;
        const _c = self.vtable.GetCurrentSessionSync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSessionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a005166e-e954-576e-be04-11b8ed10f37b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentSessionAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ConversationalAgentSession)) callconv(.winapi) HRESULT,
        GetCurrentSessionSync: *const fn(self: *anyopaque, _r: **ConversationalAgentSession) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentSignal = extern struct {
    vtable: *const VTable,
    pub fn getIsSignalVerificationRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSignalVerificationRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSignalVerificationRequired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSignalVerificationRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SignalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SignalId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignalName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SignalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SignalName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignalContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SignalContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_SignalContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignalStart(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SignalStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_SignalStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignalEnd(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SignalEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalEnd(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_SignalEnd(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSignal";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20ed25f7-b120-51f2-8603-265d6a47f232";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSignalVerificationRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSignalVerificationRequired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SignalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SignalId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SignalName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SignalName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SignalContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_SignalContext: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_SignalStart: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_SignalStart: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_SignalEnd: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_SignalEnd: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentSignal2 = extern struct {
    vtable: *const VTable,
    pub fn getDetectorId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DetectorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetectorKind(self: *@This()) core.HResult!ActivationSignalDetectorKind {
        var _r: ActivationSignalDetectorKind = undefined;
        const _c = self.vtable.get_DetectorKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSignal2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0cc7ba9-9a7b-5c34-880e-b6146c904ecb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DetectorId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DetectorKind: *const fn(self: *anyopaque, _r: *ActivationSignalDetectorKind) callconv(.winapi) HRESULT,
    };
};
pub const IConversationalAgentSignalDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSignalDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d57eb8f-f88a-599b-91d3-d604876708bc";
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
pub const IConversationalAgentSystemStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSystemStateChangeType(self: *@This()) core.HResult!ConversationalAgentSystemStateChangeType {
        var _r: ConversationalAgentSystemStateChangeType = undefined;
        const _c = self.vtable.get_SystemStateChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IConversationalAgentSystemStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c2c6e3e-2785-59a7-8e71-38adeef79928";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SystemStateChangeType: *const fn(self: *anyopaque, _r: *ConversationalAgentSystemStateChangeType) callconv(.winapi) HRESULT,
    };
};
pub const IDetectionConfigurationAvailabilityChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!DetectionConfigurationAvailabilityChangeKind {
        var _r: DetectionConfigurationAvailabilityChangeKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IDetectionConfigurationAvailabilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5129c9fb-4be8-5f14-af2b-88d62b1b4462";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *DetectionConfigurationAvailabilityChangeKind) callconv(.winapi) HRESULT,
    };
};
pub const IDetectionConfigurationAvailabilityInfo = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasSystemResourceAccess(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasSystemResourceAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasPermission(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasPermission(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasLockScreenPermission(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasLockScreenPermission(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IDetectionConfigurationAvailabilityInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5affeb0-40f0-5398-b838-91979c2c6208";
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
        get_HasSystemResourceAccess: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasPermission: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasLockScreenPermission: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDetectionConfigurationAvailabilityInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getUnavailableSystemResources(self: *@This()) core.HResult!*IVectorView(SignalDetectorResourceKind) {
        var _r: *IVectorView(SignalDetectorResourceKind) = undefined;
        const _c = self.vtable.get_UnavailableSystemResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ConversationalAgent.IDetectionConfigurationAvailabilityInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30e06433-38b3-5c4b-84c3-62b6e685b2ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnavailableSystemResources: *const fn(self: *anyopaque, _r: **IVectorView(SignalDetectorResourceKind)) callconv(.winapi) HRESULT,
    };
};
pub const SignalDetectorResourceKind = enum(i32) {
    ParallelModelSupport = 0,
    ParallelModelSupportForAgent = 1,
    ParallelSignalSupport = 2,
    ParallelSignalSupportForAgent = 3,
    DisplayOffSupport = 4,
    PluggedInPower = 5,
    Detector = 6,
    SupportedSleepState = 7,
    SupportedBatterySaverState = 8,
    ScreenAvailability = 9,
    InputHardware = 10,
    AcousticEchoCancellation = 11,
    ModelIdSupport = 12,
    DataChannel = 13,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const AudioDeviceInputNode = @import("../Media/Audio.zig").AudioDeviceInputNode;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const AudioGraph = @import("../Media/Audio.zig").AudioGraph;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
