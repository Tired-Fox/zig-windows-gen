pub const AdvancedColorInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentAdvancedColorKind(self: *@This()) core.HResult!AdvancedColorKind {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getCurrentAdvancedColorKind();
    }
    pub fn getRedPrimary(self: *@This()) core.HResult!Point {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getRedPrimary();
    }
    pub fn getGreenPrimary(self: *@This()) core.HResult!Point {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getGreenPrimary();
    }
    pub fn getBluePrimary(self: *@This()) core.HResult!Point {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getBluePrimary();
    }
    pub fn getWhitePoint(self: *@This()) core.HResult!Point {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getWhitePoint();
    }
    pub fn getMaxLuminanceInNits(self: *@This()) core.HResult!f32 {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getMaxLuminanceInNits();
    }
    pub fn getMinLuminanceInNits(self: *@This()) core.HResult!f32 {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getMinLuminanceInNits();
    }
    pub fn getMaxAverageFullFrameLuminanceInNits(self: *@This()) core.HResult!f32 {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getMaxAverageFullFrameLuminanceInNits();
    }
    pub fn getSdrWhiteLevelInNits(self: *@This()) core.HResult!f32 {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.getSdrWhiteLevelInNits();
    }
    pub fn IsHdrMetadataFormatCurrentlySupported(self: *@This(), format: HdrMetadataFormat) core.HResult!bool {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.IsHdrMetadataFormatCurrentlySupported(format);
    }
    pub fn IsAdvancedColorKindAvailable(self: *@This(), kind: AdvancedColorKind) core.HResult!bool {
        const this: *IAdvancedColorInfo = @ptrCast(self);
        return try this.IsAdvancedColorKindAvailable(kind);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.AdvancedColorInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdvancedColorInfo.GUID;
    pub const IID: Guid = IAdvancedColorInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdvancedColorInfo.SIGNATURE);
};
pub const AdvancedColorKind = enum(i32) {
    StandardDynamicRange = 0,
    WideColorGamut = 1,
    HighDynamicRange = 2,
};
pub const BrightnessOverride = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.getIsSupported();
    }
    pub fn getIsOverrideActive(self: *@This()) core.HResult!bool {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.getIsOverrideActive();
    }
    pub fn getBrightnessLevel(self: *@This()) core.HResult!f64 {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.getBrightnessLevel();
    }
    pub fn SetBrightnessLevel(self: *@This(), brightnessLevel: f64, options: DisplayBrightnessOverrideOptions) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.SetBrightnessLevel(brightnessLevel, options);
    }
    pub fn SetBrightnessScenario(self: *@This(), scenario: DisplayBrightnessScenario, options: DisplayBrightnessOverrideOptions) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.SetBrightnessScenario(scenario, options);
    }
    pub fn GetLevelForScenario(self: *@This(), scenario: DisplayBrightnessScenario) core.HResult!f64 {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.GetLevelForScenario(scenario);
    }
    pub fn StartOverride(self: *@This()) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.StartOverride();
    }
    pub fn StopOverride(self: *@This()) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.StopOverride();
    }
    pub fn addIsSupportedChanged(self: *@This(), handler: *TypedEventHandler(BrightnessOverride,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.addIsSupportedChanged(handler);
    }
    pub fn removeIsSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.removeIsSupportedChanged(token);
    }
    pub fn addIsOverrideActiveChanged(self: *@This(), handler: *TypedEventHandler(BrightnessOverride,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.addIsOverrideActiveChanged(handler);
    }
    pub fn removeIsOverrideActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.removeIsOverrideActiveChanged(token);
    }
    pub fn addBrightnessLevelChanged(self: *@This(), handler: *TypedEventHandler(BrightnessOverride,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.addBrightnessLevelChanged(handler);
    }
    pub fn removeBrightnessLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBrightnessOverride = @ptrCast(self);
        return try this.removeBrightnessLevelChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultForSystem() core.HResult!*BrightnessOverride {
        const factory = @This().IBrightnessOverrideStaticsCache.get();
        return try factory.GetDefaultForSystem();
    }
    pub fn GetForCurrentView() core.HResult!*BrightnessOverride {
        const factory = @This().IBrightnessOverrideStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn SaveForSystemAsync(value: *BrightnessOverride) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IBrightnessOverrideStaticsCache.get();
        return try factory.SaveForSystemAsync(value);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.BrightnessOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBrightnessOverride.GUID;
    pub const IID: Guid = IBrightnessOverride.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBrightnessOverride.SIGNATURE);
    var _IBrightnessOverrideStaticsCache: FactoryCache(IBrightnessOverrideStatics, RUNTIME_NAME) = .{};
};
pub const BrightnessOverrideSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredLevel(self: *@This()) core.HResult!f64 {
        const this: *IBrightnessOverrideSettings = @ptrCast(self);
        return try this.getDesiredLevel();
    }
    pub fn getDesiredNits(self: *@This()) core.HResult!f32 {
        const this: *IBrightnessOverrideSettings = @ptrCast(self);
        return try this.getDesiredNits();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromLevel(level: f64) core.HResult!*BrightnessOverrideSettings {
        const factory = @This().IBrightnessOverrideSettingsStaticsCache.get();
        return try factory.CreateFromLevel(level);
    }
    pub fn CreateFromNits(nits: f32) core.HResult!*BrightnessOverrideSettings {
        const factory = @This().IBrightnessOverrideSettingsStaticsCache.get();
        return try factory.CreateFromNits(nits);
    }
    pub fn CreateFromDisplayBrightnessOverrideScenario(overrideScenario: DisplayBrightnessOverrideScenario) core.HResult!*BrightnessOverrideSettings {
        const factory = @This().IBrightnessOverrideSettingsStaticsCache.get();
        return try factory.CreateFromDisplayBrightnessOverrideScenario(overrideScenario);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.BrightnessOverrideSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBrightnessOverrideSettings.GUID;
    pub const IID: Guid = IBrightnessOverrideSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBrightnessOverrideSettings.SIGNATURE);
    var _IBrightnessOverrideSettingsStaticsCache: FactoryCache(IBrightnessOverrideSettingsStatics, RUNTIME_NAME) = .{};
};
pub const ColorOverrideSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredDisplayColorOverrideScenario(self: *@This()) core.HResult!DisplayColorOverrideScenario {
        const this: *IColorOverrideSettings = @ptrCast(self);
        return try this.getDesiredDisplayColorOverrideScenario();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromDisplayColorOverrideScenario(overrideScenario: DisplayColorOverrideScenario) core.HResult!*ColorOverrideSettings {
        const factory = @This().IColorOverrideSettingsStaticsCache.get();
        return try factory.CreateFromDisplayColorOverrideScenario(overrideScenario);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.ColorOverrideSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorOverrideSettings.GUID;
    pub const IID: Guid = IColorOverrideSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorOverrideSettings.SIGNATURE);
    var _IColorOverrideSettingsStaticsCache: FactoryCache(IColorOverrideSettingsStatics, RUNTIME_NAME) = .{};
};
pub const DisplayBrightnessOverrideOptions = enum(i32) {
    None = 0,
    UseDimmedPolicyWhenBatteryIsLow = 1,
};
pub const DisplayBrightnessOverrideScenario = enum(i32) {
    IdleBrightness = 0,
    BarcodeReadingBrightness = 1,
    FullBrightness = 2,
};
pub const DisplayBrightnessScenario = enum(i32) {
    DefaultBrightness = 0,
    IdleBrightness = 1,
    BarcodeReadingBrightness = 2,
    FullBrightness = 3,
};
pub const DisplayColorOverrideScenario = enum(i32) {
    Accurate = 0,
};
pub const DisplayEnhancementOverride = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColorOverrideSettings(self: *@This()) core.HResult!*ColorOverrideSettings {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.getColorOverrideSettings();
    }
    pub fn putColorOverrideSettings(self: *@This(), value: *ColorOverrideSettings) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.putColorOverrideSettings(value);
    }
    pub fn getBrightnessOverrideSettings(self: *@This()) core.HResult!*BrightnessOverrideSettings {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.getBrightnessOverrideSettings();
    }
    pub fn putBrightnessOverrideSettings(self: *@This(), value: *BrightnessOverrideSettings) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.putBrightnessOverrideSettings(value);
    }
    pub fn getCanOverride(self: *@This()) core.HResult!bool {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.getCanOverride();
    }
    pub fn getIsOverrideActive(self: *@This()) core.HResult!bool {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.getIsOverrideActive();
    }
    pub fn GetCurrentDisplayEnhancementOverrideCapabilities(self: *@This()) core.HResult!*DisplayEnhancementOverrideCapabilities {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.GetCurrentDisplayEnhancementOverrideCapabilities();
    }
    pub fn RequestOverride(self: *@This()) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.RequestOverride();
    }
    pub fn StopOverride(self: *@This()) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.StopOverride();
    }
    pub fn addCanOverrideChanged(self: *@This(), handler: *TypedEventHandler(DisplayEnhancementOverride,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.addCanOverrideChanged(handler);
    }
    pub fn removeCanOverrideChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.removeCanOverrideChanged(token);
    }
    pub fn addIsOverrideActiveChanged(self: *@This(), handler: *TypedEventHandler(DisplayEnhancementOverride,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.addIsOverrideActiveChanged(handler);
    }
    pub fn removeIsOverrideActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.removeIsOverrideActiveChanged(token);
    }
    pub fn addDisplayEnhancementOverrideCapabilitiesChanged(self: *@This(), handler: *TypedEventHandler(DisplayEnhancementOverride,DisplayEnhancementOverrideCapabilitiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.addDisplayEnhancementOverrideCapabilitiesChanged(handler);
    }
    pub fn removeDisplayEnhancementOverrideCapabilitiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayEnhancementOverride = @ptrCast(self);
        return try this.removeDisplayEnhancementOverrideCapabilitiesChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*DisplayEnhancementOverride {
        const factory = @This().IDisplayEnhancementOverrideStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayEnhancementOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayEnhancementOverride.GUID;
    pub const IID: Guid = IDisplayEnhancementOverride.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayEnhancementOverride.SIGNATURE);
    var _IDisplayEnhancementOverrideStaticsCache: FactoryCache(IDisplayEnhancementOverrideStatics, RUNTIME_NAME) = .{};
};
pub const DisplayEnhancementOverrideCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsBrightnessControlSupported(self: *@This()) core.HResult!bool {
        const this: *IDisplayEnhancementOverrideCapabilities = @ptrCast(self);
        return try this.getIsBrightnessControlSupported();
    }
    pub fn getIsBrightnessNitsControlSupported(self: *@This()) core.HResult!bool {
        const this: *IDisplayEnhancementOverrideCapabilities = @ptrCast(self);
        return try this.getIsBrightnessNitsControlSupported();
    }
    pub fn GetSupportedNitRanges(self: *@This()) core.HResult!*IVectorView(NitRange) {
        const this: *IDisplayEnhancementOverrideCapabilities = @ptrCast(self);
        return try this.GetSupportedNitRanges();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayEnhancementOverrideCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayEnhancementOverrideCapabilities.GUID;
    pub const IID: Guid = IDisplayEnhancementOverrideCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayEnhancementOverrideCapabilities.SIGNATURE);
};
pub const DisplayEnhancementOverrideCapabilitiesChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapabilities(self: *@This()) core.HResult!*DisplayEnhancementOverrideCapabilities {
        const this: *IDisplayEnhancementOverrideCapabilitiesChangedEventArgs = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayEnhancementOverrideCapabilitiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayEnhancementOverrideCapabilitiesChangedEventArgs.GUID;
    pub const IID: Guid = IDisplayEnhancementOverrideCapabilitiesChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayEnhancementOverrideCapabilitiesChangedEventArgs.SIGNATURE);
};
pub const DisplayInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentOrientation(self: *@This()) core.HResult!DisplayOrientations {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getCurrentOrientation();
    }
    pub fn getNativeOrientation(self: *@This()) core.HResult!DisplayOrientations {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getNativeOrientation();
    }
    pub fn addOrientationChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.addOrientationChanged(handler);
    }
    pub fn removeOrientationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.removeOrientationChanged(token);
    }
    pub fn getResolutionScale(self: *@This()) core.HResult!ResolutionScale {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getResolutionScale();
    }
    pub fn getLogicalDpi(self: *@This()) core.HResult!f32 {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getLogicalDpi();
    }
    pub fn getRawDpiX(self: *@This()) core.HResult!f32 {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getRawDpiX();
    }
    pub fn getRawDpiY(self: *@This()) core.HResult!f32 {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getRawDpiY();
    }
    pub fn addDpiChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.addDpiChanged(handler);
    }
    pub fn removeDpiChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.removeDpiChanged(token);
    }
    pub fn getStereoEnabled(self: *@This()) core.HResult!bool {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.getStereoEnabled();
    }
    pub fn addStereoEnabledChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.addStereoEnabledChanged(handler);
    }
    pub fn removeStereoEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.removeStereoEnabledChanged(token);
    }
    pub fn GetColorProfileAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.GetColorProfileAsync();
    }
    pub fn addColorProfileChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.addColorProfileChanged(handler);
    }
    pub fn removeColorProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayInformation = @ptrCast(self);
        return try this.removeColorProfileChanged(token);
    }
    pub fn getRawPixelsPerViewPixel(self: *@This()) core.HResult!f64 {
        var this: ?*IDisplayInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawPixelsPerViewPixel();
    }
    pub fn getDiagonalSizeInInches(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IDisplayInformation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDiagonalSizeInInches();
    }
    pub fn getScreenWidthInRawPixels(self: *@This()) core.HResult!u32 {
        var this: ?*IDisplayInformation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScreenWidthInRawPixels();
    }
    pub fn getScreenHeightInRawPixels(self: *@This()) core.HResult!u32 {
        var this: ?*IDisplayInformation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScreenHeightInRawPixels();
    }
    pub fn GetAdvancedColorInfo(self: *@This()) core.HResult!*AdvancedColorInfo {
        var this: ?*IDisplayInformation5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAdvancedColorInfo();
    }
    pub fn addAdvancedColorInfoChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IDisplayInformation5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAdvancedColorInfoChanged(handler);
    }
    pub fn removeAdvancedColorInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IDisplayInformation5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayInformation5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAdvancedColorInfoChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*DisplayInformation {
        const factory = @This().IDisplayInformationStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn get_AutoRotationPreferences() core.HResult!DisplayOrientations {
        const factory = @This().IDisplayInformationStaticsCache.get();
        return try factory.getAutoRotationPreferences();
    }
    pub fn put_AutoRotationPreferences(value: DisplayOrientations) core.HResult!void {
        const factory = @This().IDisplayInformationStaticsCache.get();
        return try factory.putAutoRotationPreferences(value);
    }
    pub fn add_DisplayContentsInvalidated(handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IDisplayInformationStaticsCache.get();
        return try factory.addDisplayContentsInvalidated(handler);
    }
    pub fn remove_DisplayContentsInvalidated(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IDisplayInformationStaticsCache.get();
        return try factory.removeDisplayContentsInvalidated(token);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayInformation.GUID;
    pub const IID: Guid = IDisplayInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayInformation.SIGNATURE);
    var _IDisplayInformationStaticsCache: FactoryCache(IDisplayInformationStatics, RUNTIME_NAME) = .{};
};
pub const DisplayOrientations = enum(i32) {
    None = 0,
    Landscape = 1,
    Portrait = 2,
    LandscapeFlipped = 4,
    PortraitFlipped = 8,
};
pub const DisplayProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_CurrentOrientation() core.HResult!DisplayOrientations {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.getCurrentOrientation();
    }
    pub fn get_NativeOrientation() core.HResult!DisplayOrientations {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.getNativeOrientation();
    }
    pub fn get_AutoRotationPreferences() core.HResult!DisplayOrientations {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.getAutoRotationPreferences();
    }
    pub fn put_AutoRotationPreferences(value: DisplayOrientations) core.HResult!void {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.putAutoRotationPreferences(value);
    }
    pub fn add_OrientationChanged(handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.addOrientationChanged(handler);
    }
    pub fn remove_OrientationChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.removeOrientationChanged(token);
    }
    pub fn get_ResolutionScale() core.HResult!ResolutionScale {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.getResolutionScale();
    }
    pub fn get_LogicalDpi() core.HResult!f32 {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.getLogicalDpi();
    }
    pub fn add_LogicalDpiChanged(handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.addLogicalDpiChanged(handler);
    }
    pub fn remove_LogicalDpiChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.removeLogicalDpiChanged(token);
    }
    pub fn get_StereoEnabled() core.HResult!bool {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.getStereoEnabled();
    }
    pub fn add_StereoEnabledChanged(handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.addStereoEnabledChanged(handler);
    }
    pub fn remove_StereoEnabledChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.removeStereoEnabledChanged(token);
    }
    pub fn GetColorProfileAsync() core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.GetColorProfileAsync();
    }
    pub fn add_ColorProfileChanged(handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.addColorProfileChanged(handler);
    }
    pub fn remove_ColorProfileChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.removeColorProfileChanged(token);
    }
    pub fn add_DisplayContentsInvalidated(handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.addDisplayContentsInvalidated(handler);
    }
    pub fn remove_DisplayContentsInvalidated(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IDisplayPropertiesStaticsCache.get();
        return try factory.removeDisplayContentsInvalidated(token);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IDisplayPropertiesStaticsCache: FactoryCache(IDisplayPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const DisplayPropertiesEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *IInspectable) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *IInspectable) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayPropertiesEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbdd8b01-f1a1-46d1-9ee3-543bcc995980";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DisplayServices = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAll() core.HResult![*]DisplayId {
        const factory = @This().IDisplayServicesStaticsCache.get();
        return try factory.FindAll();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.DisplayServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayServices.GUID;
    pub const IID: Guid = IDisplayServices.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayServices.SIGNATURE);
    var _IDisplayServicesStaticsCache: FactoryCache(IDisplayServicesStatics, RUNTIME_NAME) = .{};
};
pub const HdrMetadataFormat = enum(i32) {
    Hdr10 = 0,
    Hdr10Plus = 1,
};
pub const IAdvancedColorInfo = extern struct {
    vtable: *const VTable,
    pub fn getCurrentAdvancedColorKind(self: *@This()) core.HResult!AdvancedColorKind {
        var _r: AdvancedColorKind = undefined;
        const _c = self.vtable.get_CurrentAdvancedColorKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedPrimary(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_RedPrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGreenPrimary(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_GreenPrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluePrimary(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_BluePrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhitePoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_WhitePoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxLuminanceInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxLuminanceInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinLuminanceInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinLuminanceInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAverageFullFrameLuminanceInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxAverageFullFrameLuminanceInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSdrWhiteLevelInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_SdrWhiteLevelInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsHdrMetadataFormatCurrentlySupported(self: *@This(), format: HdrMetadataFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsHdrMetadataFormatCurrentlySupported(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAdvancedColorKindAvailable(self: *@This(), kind: AdvancedColorKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAdvancedColorKindAvailable(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IAdvancedColorInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8797dcfb-b229-4081-ae9a-2cc85e34ad6a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentAdvancedColorKind: *const fn(self: *anyopaque, _r: *AdvancedColorKind) callconv(.winapi) HRESULT,
        get_RedPrimary: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_GreenPrimary: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_BluePrimary: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_WhitePoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_MaxLuminanceInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MinLuminanceInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MaxAverageFullFrameLuminanceInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_SdrWhiteLevelInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        IsHdrMetadataFormatCurrentlySupported: *const fn(self: *anyopaque, format: HdrMetadataFormat, _r: *bool) callconv(.winapi) HRESULT,
        IsAdvancedColorKindAvailable: *const fn(self: *anyopaque, kind: AdvancedColorKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBrightnessOverride = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOverrideActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverrideActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrightnessLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_BrightnessLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetBrightnessLevel(self: *@This(), brightnessLevel: f64, options: DisplayBrightnessOverrideOptions) core.HResult!void {
        const _c = self.vtable.SetBrightnessLevel(@ptrCast(self), brightnessLevel, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetBrightnessScenario(self: *@This(), scenario: DisplayBrightnessScenario, options: DisplayBrightnessOverrideOptions) core.HResult!void {
        const _c = self.vtable.SetBrightnessScenario(@ptrCast(self), scenario, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetLevelForScenario(self: *@This(), scenario: DisplayBrightnessScenario) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetLevelForScenario(@ptrCast(self), scenario, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartOverride(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartOverride(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopOverride(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopOverride(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsSupportedChanged(self: *@This(), handler: *TypedEventHandler(BrightnessOverride,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsSupportedChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsSupportedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsOverrideActiveChanged(self: *@This(), handler: *TypedEventHandler(BrightnessOverride,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsOverrideActiveChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsOverrideActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsOverrideActiveChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBrightnessLevelChanged(self: *@This(), handler: *TypedEventHandler(BrightnessOverride,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BrightnessLevelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBrightnessLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BrightnessLevelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IBrightnessOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96c9621a-c143-4392-bedd-4a7e9574c8fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsOverrideActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_BrightnessLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        SetBrightnessLevel: *const fn(self: *anyopaque, brightnessLevel: f64, options: DisplayBrightnessOverrideOptions) callconv(.winapi) HRESULT,
        SetBrightnessScenario: *const fn(self: *anyopaque, scenario: DisplayBrightnessScenario, options: DisplayBrightnessOverrideOptions) callconv(.winapi) HRESULT,
        GetLevelForScenario: *const fn(self: *anyopaque, scenario: DisplayBrightnessScenario, _r: *f64) callconv(.winapi) HRESULT,
        StartOverride: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StopOverride: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_IsSupportedChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BrightnessOverride,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsSupportedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_IsOverrideActiveChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BrightnessOverride,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsOverrideActiveChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BrightnessLevelChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BrightnessOverride,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BrightnessLevelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBrightnessOverrideSettings = extern struct {
    vtable: *const VTable,
    pub fn getDesiredLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DesiredNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IBrightnessOverrideSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d112ab2a-7604-4dba-bcf8-4b6f49502cb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_DesiredNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IBrightnessOverrideSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromLevel(self: *@This(), level: f64) core.HResult!*BrightnessOverrideSettings {
        var _r: *BrightnessOverrideSettings = undefined;
        const _c = self.vtable.CreateFromLevel(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNits(self: *@This(), nits: f32) core.HResult!*BrightnessOverrideSettings {
        var _r: *BrightnessOverrideSettings = undefined;
        const _c = self.vtable.CreateFromNits(@ptrCast(self), nits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromDisplayBrightnessOverrideScenario(self: *@This(), overrideScenario: DisplayBrightnessOverrideScenario) core.HResult!*BrightnessOverrideSettings {
        var _r: *BrightnessOverrideSettings = undefined;
        const _c = self.vtable.CreateFromDisplayBrightnessOverrideScenario(@ptrCast(self), overrideScenario, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IBrightnessOverrideSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d487dc90-6f74-440b-b383-5fe96cf00b0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromLevel: *const fn(self: *anyopaque, level: f64, _r: **BrightnessOverrideSettings) callconv(.winapi) HRESULT,
        CreateFromNits: *const fn(self: *anyopaque, nits: f32, _r: **BrightnessOverrideSettings) callconv(.winapi) HRESULT,
        CreateFromDisplayBrightnessOverrideScenario: *const fn(self: *anyopaque, overrideScenario: DisplayBrightnessOverrideScenario, _r: **BrightnessOverrideSettings) callconv(.winapi) HRESULT,
    };
};
pub const IBrightnessOverrideStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultForSystem(self: *@This()) core.HResult!*BrightnessOverride {
        var _r: *BrightnessOverride = undefined;
        const _c = self.vtable.GetDefaultForSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForCurrentView(self: *@This()) core.HResult!*BrightnessOverride {
        var _r: *BrightnessOverride = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveForSystemAsync(self: *@This(), value: *BrightnessOverride) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SaveForSystemAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IBrightnessOverrideStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03a7b9ed-e1f1-4a68-a11f-946ad8ce5393";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultForSystem: *const fn(self: *anyopaque, _r: **BrightnessOverride) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **BrightnessOverride) callconv(.winapi) HRESULT,
        SaveForSystemAsync: *const fn(self: *anyopaque, value: *BrightnessOverride, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IColorOverrideSettings = extern struct {
    vtable: *const VTable,
    pub fn getDesiredDisplayColorOverrideScenario(self: *@This()) core.HResult!DisplayColorOverrideScenario {
        var _r: DisplayColorOverrideScenario = undefined;
        const _c = self.vtable.get_DesiredDisplayColorOverrideScenario(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IColorOverrideSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbefa134-4a81-4c4d-a5b6-7d1b5c4bd00b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredDisplayColorOverrideScenario: *const fn(self: *anyopaque, _r: *DisplayColorOverrideScenario) callconv(.winapi) HRESULT,
    };
};
pub const IColorOverrideSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromDisplayColorOverrideScenario(self: *@This(), overrideScenario: DisplayColorOverrideScenario) core.HResult!*ColorOverrideSettings {
        var _r: *ColorOverrideSettings = undefined;
        const _c = self.vtable.CreateFromDisplayColorOverrideScenario(@ptrCast(self), overrideScenario, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IColorOverrideSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b068e05f-c41f-4ac9-afab-827ab6248f9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromDisplayColorOverrideScenario: *const fn(self: *anyopaque, overrideScenario: DisplayColorOverrideScenario, _r: **ColorOverrideSettings) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayEnhancementOverride = extern struct {
    vtable: *const VTable,
    pub fn getColorOverrideSettings(self: *@This()) core.HResult!*ColorOverrideSettings {
        var _r: *ColorOverrideSettings = undefined;
        const _c = self.vtable.get_ColorOverrideSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorOverrideSettings(self: *@This(), value: *ColorOverrideSettings) core.HResult!void {
        const _c = self.vtable.put_ColorOverrideSettings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBrightnessOverrideSettings(self: *@This()) core.HResult!*BrightnessOverrideSettings {
        var _r: *BrightnessOverrideSettings = undefined;
        const _c = self.vtable.get_BrightnessOverrideSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrightnessOverrideSettings(self: *@This(), value: *BrightnessOverrideSettings) core.HResult!void {
        const _c = self.vtable.put_BrightnessOverrideSettings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanOverride(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOverrideActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverrideActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentDisplayEnhancementOverrideCapabilities(self: *@This()) core.HResult!*DisplayEnhancementOverrideCapabilities {
        var _r: *DisplayEnhancementOverrideCapabilities = undefined;
        const _c = self.vtable.GetCurrentDisplayEnhancementOverrideCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestOverride(self: *@This()) core.HResult!void {
        const _c = self.vtable.RequestOverride(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopOverride(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopOverride(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCanOverrideChanged(self: *@This(), handler: *TypedEventHandler(DisplayEnhancementOverride,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CanOverrideChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCanOverrideChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CanOverrideChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsOverrideActiveChanged(self: *@This(), handler: *TypedEventHandler(DisplayEnhancementOverride,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsOverrideActiveChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsOverrideActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsOverrideActiveChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisplayEnhancementOverrideCapabilitiesChanged(self: *@This(), handler: *TypedEventHandler(DisplayEnhancementOverride,DisplayEnhancementOverrideCapabilitiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisplayEnhancementOverrideCapabilitiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisplayEnhancementOverrideCapabilitiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisplayEnhancementOverrideCapabilitiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayEnhancementOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "429594cf-d97a-4b02-a428-5c4292f7f522";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColorOverrideSettings: *const fn(self: *anyopaque, _r: **ColorOverrideSettings) callconv(.winapi) HRESULT,
        put_ColorOverrideSettings: *const fn(self: *anyopaque, value: *ColorOverrideSettings) callconv(.winapi) HRESULT,
        get_BrightnessOverrideSettings: *const fn(self: *anyopaque, _r: **BrightnessOverrideSettings) callconv(.winapi) HRESULT,
        put_BrightnessOverrideSettings: *const fn(self: *anyopaque, value: *BrightnessOverrideSettings) callconv(.winapi) HRESULT,
        get_CanOverride: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsOverrideActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetCurrentDisplayEnhancementOverrideCapabilities: *const fn(self: *anyopaque, _r: **DisplayEnhancementOverrideCapabilities) callconv(.winapi) HRESULT,
        RequestOverride: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StopOverride: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_CanOverrideChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayEnhancementOverride,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CanOverrideChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_IsOverrideActiveChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayEnhancementOverride,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsOverrideActiveChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DisplayEnhancementOverrideCapabilitiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayEnhancementOverride,DisplayEnhancementOverrideCapabilitiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisplayEnhancementOverrideCapabilitiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayEnhancementOverrideCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsBrightnessControlSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBrightnessControlSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBrightnessNitsControlSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBrightnessNitsControlSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedNitRanges(self: *@This()) core.HResult!*IVectorView(NitRange) {
        var _r: *IVectorView(NitRange) = undefined;
        const _c = self.vtable.GetSupportedNitRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayEnhancementOverrideCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "457060de-ee5a-47b7-9918-1e51e812ccc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBrightnessControlSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBrightnessNitsControlSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetSupportedNitRanges: *const fn(self: *anyopaque, _r: **IVectorView(NitRange)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayEnhancementOverrideCapabilitiesChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCapabilities(self: *@This()) core.HResult!*DisplayEnhancementOverrideCapabilities {
        var _r: *DisplayEnhancementOverrideCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayEnhancementOverrideCapabilitiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db61e664-15fa-49da-8b77-07dbd2af585d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **DisplayEnhancementOverrideCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayEnhancementOverrideStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*DisplayEnhancementOverride {
        var _r: *DisplayEnhancementOverride = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayEnhancementOverrideStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf5b7ec1-9791-4453-b013-29b6f778e519";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **DisplayEnhancementOverride) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayInformation = extern struct {
    vtable: *const VTable,
    pub fn getCurrentOrientation(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_CurrentOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNativeOrientation(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_NativeOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addOrientationChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OrientationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOrientationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OrientationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResolutionScale(self: *@This()) core.HResult!ResolutionScale {
        var _r: ResolutionScale = undefined;
        const _c = self.vtable.get_ResolutionScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogicalDpi(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LogicalDpi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawDpiX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RawDpiX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawDpiY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RawDpiY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDpiChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DpiChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDpiChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DpiChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStereoEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StereoEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStereoEnabledChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StereoEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStereoEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StereoEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetColorProfileAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.GetColorProfileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addColorProfileChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ColorProfileChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeColorProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ColorProfileChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bed112ae-adc3-4dc9-ae65-851f4d7d4799";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentOrientation: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        get_NativeOrientation: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        add_OrientationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OrientationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_ResolutionScale: *const fn(self: *anyopaque, _r: *ResolutionScale) callconv(.winapi) HRESULT,
        get_LogicalDpi: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_RawDpiX: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_RawDpiY: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        add_DpiChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DpiChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_StereoEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_StereoEnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StereoEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetColorProfileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        add_ColorProfileChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ColorProfileChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getRawPixelsPerViewPixel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RawPixelsPerViewPixel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4dcd0021-fad1-4b8e-8edf-775887b8bf19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RawPixelsPerViewPixel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayInformation3 = extern struct {
    vtable: *const VTable,
    pub fn getDiagonalSizeInInches(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_DiagonalSizeInInches(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayInformation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db15011d-0f09-4466-8ff3-11de9a3c929a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DiagonalSizeInInches: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayInformation4 = extern struct {
    vtable: *const VTable,
    pub fn getScreenWidthInRawPixels(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ScreenWidthInRawPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScreenHeightInRawPixels(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ScreenHeightInRawPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayInformation4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c972ce2f-1242-46be-b536-e1aafe9e7acf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScreenWidthInRawPixels: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ScreenHeightInRawPixels: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayInformation5 = extern struct {
    vtable: *const VTable,
    pub fn GetAdvancedColorInfo(self: *@This()) core.HResult!*AdvancedColorInfo {
        var _r: *AdvancedColorInfo = undefined;
        const _c = self.vtable.GetAdvancedColorInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAdvancedColorInfoChanged(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AdvancedColorInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdvancedColorInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AdvancedColorInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayInformation5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a5442dc-2cde-4a8d-80d1-21dc5adcc1aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAdvancedColorInfo: *const fn(self: *anyopaque, _r: **AdvancedColorInfo) callconv(.winapi) HRESULT,
        add_AdvancedColorInfoChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AdvancedColorInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*DisplayInformation {
        var _r: *DisplayInformation = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoRotationPreferences(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_AutoRotationPreferences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoRotationPreferences(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_AutoRotationPreferences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisplayContentsInvalidated(self: *@This(), handler: *TypedEventHandler(DisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisplayContentsInvalidated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisplayContentsInvalidated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisplayContentsInvalidated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6a02a6c-d452-44dc-ba07-96f3c6adf9d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **DisplayInformation) callconv(.winapi) HRESULT,
        get_AutoRotationPreferences: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        put_AutoRotationPreferences: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        add_DisplayContentsInvalidated: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisplayContentsInvalidated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrentOrientation(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_CurrentOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNativeOrientation(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_NativeOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoRotationPreferences(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_AutoRotationPreferences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoRotationPreferences(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_AutoRotationPreferences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOrientationChanged(self: *@This(), handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OrientationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOrientationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OrientationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResolutionScale(self: *@This()) core.HResult!ResolutionScale {
        var _r: ResolutionScale = undefined;
        const _c = self.vtable.get_ResolutionScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogicalDpi(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LogicalDpi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addLogicalDpiChanged(self: *@This(), handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LogicalDpiChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLogicalDpiChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LogicalDpiChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStereoEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StereoEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStereoEnabledChanged(self: *@This(), handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StereoEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStereoEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StereoEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetColorProfileAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.GetColorProfileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addColorProfileChanged(self: *@This(), handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ColorProfileChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeColorProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ColorProfileChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisplayContentsInvalidated(self: *@This(), handler: *DisplayPropertiesEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisplayContentsInvalidated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisplayContentsInvalidated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisplayContentsInvalidated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6937ed8d-30ea-4ded-8271-4553ff02f68a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentOrientation: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        get_NativeOrientation: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        get_AutoRotationPreferences: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        put_AutoRotationPreferences: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        add_OrientationChanged: *const fn(self: *anyopaque, handler: *DisplayPropertiesEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OrientationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_ResolutionScale: *const fn(self: *anyopaque, _r: *ResolutionScale) callconv(.winapi) HRESULT,
        get_LogicalDpi: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        add_LogicalDpiChanged: *const fn(self: *anyopaque, handler: *DisplayPropertiesEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LogicalDpiChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_StereoEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_StereoEnabledChanged: *const fn(self: *anyopaque, handler: *DisplayPropertiesEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StereoEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetColorProfileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        add_ColorProfileChanged: *const fn(self: *anyopaque, handler: *DisplayPropertiesEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ColorProfileChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DisplayContentsInvalidated: *const fn(self: *anyopaque, handler: *DisplayPropertiesEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisplayContentsInvalidated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayServices = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b54f32b-890d-5747-bd26-fdbdeb0c8a71";
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
pub const IDisplayServicesStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAll(self: *@This()) core.HResult![*]DisplayId {
        var _r: [*]DisplayId = undefined;
        const _c = self.vtable.FindAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.IDisplayServicesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc2096bf-730a-5560-b461-91c13d692e0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAll: *const fn(self: *anyopaque, _r: *[*]DisplayId) callconv(.winapi) HRESULT,
    };
};
pub const NitRange = extern struct {
    MinNits: f32,
    MaxNits: f32,
    StepSizeNits: f32,
};
pub const ResolutionScale = enum(i32) {
    Invalid = 0,
    Scale100Percent = 100,
    Scale120Percent = 120,
    Scale125Percent = 125,
    Scale140Percent = 140,
    Scale150Percent = 150,
    Scale160Percent = 160,
    Scale175Percent = 175,
    Scale180Percent = 180,
    Scale200Percent = 200,
    Scale225Percent = 225,
    Scale250Percent = 250,
    Scale300Percent = 300,
    Scale350Percent = 350,
    Scale400Percent = 400,
    Scale450Percent = 450,
    Scale500Percent = 500,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const Point = @import("../Foundation.zig").Point;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAgileObject = @import("../root.zig").IAgileObject;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const DisplayId = @import("../Graphics.zig").DisplayId;
pub const Core = @import("./Display/Core.zig");
