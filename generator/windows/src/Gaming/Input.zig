pub const ArcadeStick = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetButtonLabel(self: *@This(), button: ArcadeStickButtons) core.HResult!GameControllerButtonLabel {
        const this: *IArcadeStick = @ptrCast(self);
        return try this.GetButtonLabel(button);
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!ArcadeStickReading {
        const this: *IArcadeStick = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetConnected(value);
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetConnected(token);
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetDisconnected(value);
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetDisconnected(token);
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserChanged(value);
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserChanged(token);
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadset();
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWireless();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromGameController(gameController: *IGameController) core.HResult!*ArcadeStick {
        const _f = @This().IArcadeStickStatics2Cache.get();
        return try _f.FromGameController(gameController);
    }
    pub fn addArcadeStickAdded(value: *EventHandler(ArcadeStick)) core.HResult!EventRegistrationToken {
        const _f = @This().IArcadeStickStaticsCache.get();
        return try _f.addArcadeStickAdded(value);
    }
    pub fn removeArcadeStickAdded(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IArcadeStickStaticsCache.get();
        return try _f.removeArcadeStickAdded(token);
    }
    pub fn addArcadeStickRemoved(value: *EventHandler(ArcadeStick)) core.HResult!EventRegistrationToken {
        const _f = @This().IArcadeStickStaticsCache.get();
        return try _f.addArcadeStickRemoved(value);
    }
    pub fn removeArcadeStickRemoved(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IArcadeStickStaticsCache.get();
        return try _f.removeArcadeStickRemoved(token);
    }
    pub fn getArcadeSticks() core.HResult!*IVectorView(ArcadeStick) {
        const _f = @This().IArcadeStickStaticsCache.get();
        return try _f.getArcadeSticks();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ArcadeStick";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IArcadeStick.GUID;
    pub const IID: Guid = IArcadeStick.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IArcadeStick.SIGNATURE);
    var _IArcadeStickStatics2Cache: FactoryCache(IArcadeStickStatics2, RUNTIME_NAME) = .{};
    var _IArcadeStickStaticsCache: FactoryCache(IArcadeStickStatics, RUNTIME_NAME) = .{};
};
pub const ArcadeStickButtons = enum(i32) {
    None = 0,
    StickUp = 1,
    StickDown = 2,
    StickLeft = 4,
    StickRight = 8,
    Action1 = 16,
    Action2 = 32,
    Action3 = 64,
    Action4 = 128,
    Action5 = 256,
    Action6 = 512,
    Special1 = 1024,
    Special2 = 2048,
};
pub const ArcadeStickReading = extern struct {
    Timestamp: u64,
    Buttons: ArcadeStickButtons,
};
pub const FlightStick = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHatSwitchKind(self: *@This()) core.HResult!GameControllerSwitchKind {
        const this: *IFlightStick = @ptrCast(self);
        return try this.getHatSwitchKind();
    }
    pub fn GetButtonLabel(self: *@This(), button: FlightStickButtons) core.HResult!GameControllerButtonLabel {
        const this: *IFlightStick = @ptrCast(self);
        return try this.GetButtonLabel(button);
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!FlightStickReading {
        const this: *IFlightStick = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetConnected(value);
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetConnected(token);
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetDisconnected(value);
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetDisconnected(token);
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserChanged(value);
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserChanged(token);
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadset();
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWireless();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addFlightStickAdded(value: *EventHandler(FlightStick)) core.HResult!EventRegistrationToken {
        const _f = @This().IFlightStickStaticsCache.get();
        return try _f.addFlightStickAdded(value);
    }
    pub fn removeFlightStickAdded(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IFlightStickStaticsCache.get();
        return try _f.removeFlightStickAdded(token);
    }
    pub fn addFlightStickRemoved(value: *EventHandler(FlightStick)) core.HResult!EventRegistrationToken {
        const _f = @This().IFlightStickStaticsCache.get();
        return try _f.addFlightStickRemoved(value);
    }
    pub fn removeFlightStickRemoved(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IFlightStickStaticsCache.get();
        return try _f.removeFlightStickRemoved(token);
    }
    pub fn getFlightSticks() core.HResult!*IVectorView(FlightStick) {
        const _f = @This().IFlightStickStaticsCache.get();
        return try _f.getFlightSticks();
    }
    pub fn FromGameController(gameController: *IGameController) core.HResult!*FlightStick {
        const _f = @This().IFlightStickStaticsCache.get();
        return try _f.FromGameController(gameController);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.FlightStick";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlightStick.GUID;
    pub const IID: Guid = IFlightStick.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlightStick.SIGNATURE);
    var _IFlightStickStaticsCache: FactoryCache(IFlightStickStatics, RUNTIME_NAME) = .{};
};
pub const FlightStickButtons = enum(i32) {
    None = 0,
    FirePrimary = 1,
    FireSecondary = 2,
};
pub const FlightStickReading = extern struct {
    Timestamp: u64,
    Buttons: FlightStickButtons,
    HatSwitch: GameControllerSwitchPosition,
    Roll: f64,
    Pitch: f64,
    Yaw: f64,
    Throttle: f64,
};
pub const GameControllerButtonLabel = enum(i32) {
    None = 0,
    XboxBack = 1,
    XboxStart = 2,
    XboxMenu = 3,
    XboxView = 4,
    XboxUp = 5,
    XboxDown = 6,
    XboxLeft = 7,
    XboxRight = 8,
    XboxA = 9,
    XboxB = 10,
    XboxX = 11,
    XboxY = 12,
    XboxLeftBumper = 13,
    XboxLeftTrigger = 14,
    XboxLeftStickButton = 15,
    XboxRightBumper = 16,
    XboxRightTrigger = 17,
    XboxRightStickButton = 18,
    XboxPaddle1 = 19,
    XboxPaddle2 = 20,
    XboxPaddle3 = 21,
    XboxPaddle4 = 22,
    Mode = 23,
    Select = 24,
    Menu = 25,
    View = 26,
    Back = 27,
    Start = 28,
    Options = 29,
    Share = 30,
    Up = 31,
    Down = 32,
    Left = 33,
    Right = 34,
    LetterA = 35,
    LetterB = 36,
    LetterC = 37,
    LetterL = 38,
    LetterR = 39,
    LetterX = 40,
    LetterY = 41,
    LetterZ = 42,
    Cross = 43,
    Circle = 44,
    Square = 45,
    Triangle = 46,
    LeftBumper = 47,
    LeftTrigger = 48,
    LeftStickButton = 49,
    Left1 = 50,
    Left2 = 51,
    Left3 = 52,
    RightBumper = 53,
    RightTrigger = 54,
    RightStickButton = 55,
    Right1 = 56,
    Right2 = 57,
    Right3 = 58,
    Paddle1 = 59,
    Paddle2 = 60,
    Paddle3 = 61,
    Paddle4 = 62,
    Plus = 63,
    Minus = 64,
    DownLeftArrow = 65,
    DialLeft = 66,
    DialRight = 67,
    Suspension = 68,
};
pub const GameControllerSwitchKind = enum(i32) {
    TwoWay = 0,
    FourWay = 1,
    EightWay = 2,
};
pub const GameControllerSwitchPosition = enum(i32) {
    Center = 0,
    Up = 1,
    UpRight = 2,
    Right = 3,
    DownRight = 4,
    Down = 5,
    DownLeft = 6,
    Left = 7,
    UpLeft = 8,
};
pub const Gamepad = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVibration(self: *@This()) core.HResult!GamepadVibration {
        const this: *IGamepad = @ptrCast(self);
        return try this.getVibration();
    }
    pub fn putVibration(self: *@This(), value: GamepadVibration) core.HResult!void {
        const this: *IGamepad = @ptrCast(self);
        return try this.putVibration(value);
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!GamepadReading {
        const this: *IGamepad = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetConnected(value);
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetConnected(token);
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetDisconnected(value);
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetDisconnected(token);
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserChanged(value);
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserChanged(token);
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadset();
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWireless();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn GetButtonLabel(self: *@This(), button: GamepadButtons) core.HResult!GameControllerButtonLabel {
        var this: ?*IGamepad2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGamepad2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetButtonLabel(button);
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromGameController(gameController: *IGameController) core.HResult!*Gamepad {
        const _f = @This().IGamepadStatics2Cache.get();
        return try _f.FromGameController(gameController);
    }
    pub fn addGamepadAdded(value: *EventHandler(Gamepad)) core.HResult!EventRegistrationToken {
        const _f = @This().IGamepadStaticsCache.get();
        return try _f.addGamepadAdded(value);
    }
    pub fn removeGamepadAdded(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IGamepadStaticsCache.get();
        return try _f.removeGamepadAdded(token);
    }
    pub fn addGamepadRemoved(value: *EventHandler(Gamepad)) core.HResult!EventRegistrationToken {
        const _f = @This().IGamepadStaticsCache.get();
        return try _f.addGamepadRemoved(value);
    }
    pub fn removeGamepadRemoved(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IGamepadStaticsCache.get();
        return try _f.removeGamepadRemoved(token);
    }
    pub fn getGamepads() core.HResult!*IVectorView(Gamepad) {
        const _f = @This().IGamepadStaticsCache.get();
        return try _f.getGamepads();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Gamepad";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGamepad.GUID;
    pub const IID: Guid = IGamepad.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGamepad.SIGNATURE);
    var _IGamepadStatics2Cache: FactoryCache(IGamepadStatics2, RUNTIME_NAME) = .{};
    var _IGamepadStaticsCache: FactoryCache(IGamepadStatics, RUNTIME_NAME) = .{};
};
pub const GamepadButtons = enum(i32) {
    None = 0,
    Menu = 1,
    View = 2,
    A = 4,
    B = 8,
    X = 16,
    Y = 32,
    DPadUp = 64,
    DPadDown = 128,
    DPadLeft = 256,
    DPadRight = 512,
    LeftShoulder = 1024,
    RightShoulder = 2048,
    LeftThumbstick = 4096,
    RightThumbstick = 8192,
    Paddle1 = 16384,
    Paddle2 = 32768,
    Paddle3 = 65536,
    Paddle4 = 131072,
};
pub const GamepadReading = extern struct {
    Timestamp: u64,
    Buttons: GamepadButtons,
    LeftTrigger: f64,
    RightTrigger: f64,
    LeftThumbstickX: f64,
    LeftThumbstickY: f64,
    RightThumbstickX: f64,
    RightThumbstickY: f64,
};
pub const GamepadVibration = extern struct {
    LeftMotor: f64,
    RightMotor: f64,
    LeftTrigger: f64,
    RightTrigger: f64,
};
pub const Headset = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCaptureDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IHeadset = @ptrCast(self);
        return try this.getCaptureDeviceId();
    }
    pub fn getRenderDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IHeadset = @ptrCast(self);
        return try this.getRenderDeviceId();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Headset";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHeadset.GUID;
    pub const IID: Guid = IHeadset.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHeadset.SIGNATURE);
};
pub const IArcadeStick = extern struct {
    vtable: *const VTable,
    pub fn GetButtonLabel(self: *@This(), button: ArcadeStickButtons) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetButtonLabel(@ptrCast(self), button, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!ArcadeStickReading {
        var _r: ArcadeStickReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IArcadeStick";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b14a539d-befb-4c81-8051-15ecf3b13036";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetButtonLabel: *const fn(self: *anyopaque, button: ArcadeStickButtons, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: *ArcadeStickReading) callconv(.winapi) HRESULT,
    };
};
pub const IArcadeStickStatics = extern struct {
    vtable: *const VTable,
    pub fn addArcadeStickAdded(self: *@This(), value: *EventHandler(ArcadeStick)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ArcadeStickAdded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeArcadeStickAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ArcadeStickAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addArcadeStickRemoved(self: *@This(), value: *EventHandler(ArcadeStick)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ArcadeStickRemoved(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeArcadeStickRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ArcadeStickRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getArcadeSticks(self: *@This()) core.HResult!*IVectorView(ArcadeStick) {
        var _r: *IVectorView(ArcadeStick) = undefined;
        const _c = self.vtable.get_ArcadeSticks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IArcadeStickStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c37b8c8-37b1-4ad8-9458-200f1a30018e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ArcadeStickAdded: *const fn(self: *anyopaque, value: *EventHandler(ArcadeStick), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ArcadeStickAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ArcadeStickRemoved: *const fn(self: *anyopaque, value: *EventHandler(ArcadeStick), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ArcadeStickRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_ArcadeSticks: *const fn(self: *anyopaque, _r: **IVectorView(ArcadeStick)) callconv(.winapi) HRESULT,
    };
};
pub const IArcadeStickStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromGameController(self: *@This(), gameController: *IGameController) core.HResult!*ArcadeStick {
        var _r: *ArcadeStick = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IArcadeStickStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52b5d744-bb86-445a-b59c-596f0e2a49df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, gameController: *IGameController, _r: **ArcadeStick) callconv(.winapi) HRESULT,
    };
};
pub const IFlightStick = extern struct {
    vtable: *const VTable,
    pub fn getHatSwitchKind(self: *@This()) core.HResult!GameControllerSwitchKind {
        var _r: GameControllerSwitchKind = undefined;
        const _c = self.vtable.get_HatSwitchKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetButtonLabel(self: *@This(), button: FlightStickButtons) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetButtonLabel(@ptrCast(self), button, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!FlightStickReading {
        var _r: FlightStickReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IFlightStick";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4a2c01c-b83b-4459-a1a9-97b03c33da7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HatSwitchKind: *const fn(self: *anyopaque, _r: *GameControllerSwitchKind) callconv(.winapi) HRESULT,
        GetButtonLabel: *const fn(self: *anyopaque, button: FlightStickButtons, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: *FlightStickReading) callconv(.winapi) HRESULT,
    };
};
pub const IFlightStickStatics = extern struct {
    vtable: *const VTable,
    pub fn addFlightStickAdded(self: *@This(), value: *EventHandler(FlightStick)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FlightStickAdded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFlightStickAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FlightStickAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFlightStickRemoved(self: *@This(), value: *EventHandler(FlightStick)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FlightStickRemoved(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFlightStickRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FlightStickRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFlightSticks(self: *@This()) core.HResult!*IVectorView(FlightStick) {
        var _r: *IVectorView(FlightStick) = undefined;
        const _c = self.vtable.get_FlightSticks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromGameController(self: *@This(), gameController: *IGameController) core.HResult!*FlightStick {
        var _r: *FlightStick = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IFlightStickStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5514924a-fecc-435e-83dc-5cec8a18a520";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_FlightStickAdded: *const fn(self: *anyopaque, value: *EventHandler(FlightStick), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FlightStickAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FlightStickRemoved: *const fn(self: *anyopaque, value: *EventHandler(FlightStick), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FlightStickRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_FlightSticks: *const fn(self: *anyopaque, _r: **IVectorView(FlightStick)) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, gameController: *IGameController, _r: **FlightStick) callconv(.winapi) HRESULT,
    };
};
pub const IGameController = extern struct {
    vtable: *const VTable,
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HeadsetConnected(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HeadsetConnected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HeadsetDisconnected(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HeadsetDisconnected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var _r: *Headset = undefined;
        const _c = self.vtable.get_Headset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWireless(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IGameController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1baf6522-5f64-42c5-8267-b9fe2215bfbd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_HeadsetConnected: *const fn(self: *anyopaque, value: *TypedEventHandler(IGameController,Headset), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HeadsetConnected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HeadsetDisconnected: *const fn(self: *anyopaque, value: *TypedEventHandler(IGameController,Headset), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HeadsetDisconnected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UserChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(IGameController,UserChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Headset: *const fn(self: *anyopaque, _r: **Headset) callconv(.winapi) HRESULT,
        get_IsWireless: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IGameControllerBatteryInfo = extern struct {
    vtable: *const VTable,
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var _r: *BatteryReport = undefined;
        const _c = self.vtable.TryGetBatteryReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IGameControllerBatteryInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcecc681-3963-4da6-955d-553f3b6f6161";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetBatteryReport: *const fn(self: *anyopaque, _r: **BatteryReport) callconv(.winapi) HRESULT,
    };
};
pub const IGamepad = extern struct {
    vtable: *const VTable,
    pub fn getVibration(self: *@This()) core.HResult!GamepadVibration {
        var _r: GamepadVibration = undefined;
        const _c = self.vtable.get_Vibration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVibration(self: *@This(), value: GamepadVibration) core.HResult!void {
        const _c = self.vtable.put_Vibration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!GamepadReading {
        var _r: GamepadReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IGamepad";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc7bb43c-0a69-3903-9e9d-a50f86a45de5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Vibration: *const fn(self: *anyopaque, _r: *GamepadVibration) callconv(.winapi) HRESULT,
        put_Vibration: *const fn(self: *anyopaque, value: GamepadVibration) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: *GamepadReading) callconv(.winapi) HRESULT,
    };
};
pub const IGamepad2 = extern struct {
    vtable: *const VTable,
    pub fn GetButtonLabel(self: *@This(), button: GamepadButtons) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetButtonLabel(@ptrCast(self), button, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IGamepad2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c1689bd-5915-4245-b0c0-c89fae0308ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetButtonLabel: *const fn(self: *anyopaque, button: GamepadButtons, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
    };
};
pub const IGamepadStatics = extern struct {
    vtable: *const VTable,
    pub fn addGamepadAdded(self: *@This(), value: *EventHandler(Gamepad)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GamepadAdded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGamepadAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GamepadAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGamepadRemoved(self: *@This(), value: *EventHandler(Gamepad)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GamepadRemoved(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGamepadRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GamepadRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGamepads(self: *@This()) core.HResult!*IVectorView(Gamepad) {
        var _r: *IVectorView(Gamepad) = undefined;
        const _c = self.vtable.get_Gamepads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IGamepadStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bbce529-d49c-39e9-9560-e47dde96b7c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_GamepadAdded: *const fn(self: *anyopaque, value: *EventHandler(Gamepad), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GamepadAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GamepadRemoved: *const fn(self: *anyopaque, value: *EventHandler(Gamepad), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GamepadRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Gamepads: *const fn(self: *anyopaque, _r: **IVectorView(Gamepad)) callconv(.winapi) HRESULT,
    };
};
pub const IGamepadStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromGameController(self: *@This(), gameController: *IGameController) core.HResult!*Gamepad {
        var _r: *Gamepad = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IGamepadStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42676dc5-0856-47c4-9213-b395504c3a3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, gameController: *IGameController, _r: **Gamepad) callconv(.winapi) HRESULT,
    };
};
pub const IHeadset = extern struct {
    vtable: *const VTable,
    pub fn getCaptureDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CaptureDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRenderDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RenderDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IHeadset";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fd156ef-6925-3fa8-9181-029c5223ae3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CaptureDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RenderDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRacingWheel = extern struct {
    vtable: *const VTable,
    pub fn getHasClutch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasClutch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasHandbrake(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasHandbrake(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasPatternShifter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasPatternShifter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPatternShifterGear(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxPatternShifterGear(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxWheelAngle(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxWheelAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWheelMotor(self: *@This()) core.HResult!*ForceFeedbackMotor {
        var _r: *ForceFeedbackMotor = undefined;
        const _c = self.vtable.get_WheelMotor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetButtonLabel(self: *@This(), button: RacingWheelButtons) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetButtonLabel(@ptrCast(self), button, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!RacingWheelReading {
        var _r: RacingWheelReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IRacingWheel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f546656f-e106-4c82-a90f-554012904b85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasClutch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasHandbrake: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasPatternShifter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxPatternShifterGear: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxWheelAngle: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_WheelMotor: *const fn(self: *anyopaque, _r: **ForceFeedbackMotor) callconv(.winapi) HRESULT,
        GetButtonLabel: *const fn(self: *anyopaque, button: RacingWheelButtons, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: *RacingWheelReading) callconv(.winapi) HRESULT,
    };
};
pub const IRacingWheelStatics = extern struct {
    vtable: *const VTable,
    pub fn addRacingWheelAdded(self: *@This(), value: *EventHandler(RacingWheel)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RacingWheelAdded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRacingWheelAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RacingWheelAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRacingWheelRemoved(self: *@This(), value: *EventHandler(RacingWheel)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RacingWheelRemoved(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRacingWheelRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RacingWheelRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRacingWheels(self: *@This()) core.HResult!*IVectorView(RacingWheel) {
        var _r: *IVectorView(RacingWheel) = undefined;
        const _c = self.vtable.get_RacingWheels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IRacingWheelStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ac12cd5-581b-4936-9f94-69f1e6514c7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_RacingWheelAdded: *const fn(self: *anyopaque, value: *EventHandler(RacingWheel), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RacingWheelAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RacingWheelRemoved: *const fn(self: *anyopaque, value: *EventHandler(RacingWheel), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RacingWheelRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_RacingWheels: *const fn(self: *anyopaque, _r: **IVectorView(RacingWheel)) callconv(.winapi) HRESULT,
    };
};
pub const IRacingWheelStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromGameController(self: *@This(), gameController: *IGameController) core.HResult!*RacingWheel {
        var _r: *RacingWheel = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IRacingWheelStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e666bcaa-edfd-4323-a9f6-3c384048d1ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, gameController: *IGameController, _r: **RacingWheel) callconv(.winapi) HRESULT,
    };
};
pub const IRawGameController = extern struct {
    vtable: *const VTable,
    pub fn getAxisCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_AxisCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getButtonCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ButtonCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForceFeedbackMotors(self: *@This()) core.HResult!*IVectorView(ForceFeedbackMotor) {
        var _r: *IVectorView(ForceFeedbackMotor) = undefined;
        const _c = self.vtable.get_ForceFeedbackMotors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareVendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSwitchCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SwitchCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetButtonLabel(self: *@This(), buttonIndex: i32) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetButtonLabel(@ptrCast(self), buttonIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentReading(self: *@This(), buttonArray: [*]bool, switchArray: [*]GameControllerSwitchPosition, axisArray: [*]f64) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), buttonArray, switchArray, axisArray, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSwitchKind(self: *@This(), switchIndex: i32) core.HResult!GameControllerSwitchKind {
        var _r: GameControllerSwitchKind = undefined;
        const _c = self.vtable.GetSwitchKind(@ptrCast(self), switchIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IRawGameController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cad6d91-a7e1-4f71-9a78-33e9c5dfea62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AxisCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ButtonCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ForceFeedbackMotors: *const fn(self: *anyopaque, _r: **IVectorView(ForceFeedbackMotor)) callconv(.winapi) HRESULT,
        get_HardwareProductId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HardwareVendorId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_SwitchCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetButtonLabel: *const fn(self: *anyopaque, buttonIndex: i32, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, buttonArray: [*]bool, switchArray: [*]GameControllerSwitchPosition, axisArray: [*]f64, _r: *u64) callconv(.winapi) HRESULT,
        GetSwitchKind: *const fn(self: *anyopaque, switchIndex: i32, _r: *GameControllerSwitchKind) callconv(.winapi) HRESULT,
    };
};
pub const IRawGameController2 = extern struct {
    vtable: *const VTable,
    pub fn getSimpleHapticsControllers(self: *@This()) core.HResult!*IVectorView(SimpleHapticsController) {
        var _r: *IVectorView(SimpleHapticsController) = undefined;
        const _c = self.vtable.get_SimpleHapticsControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNonRoamableId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NonRoamableId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IRawGameController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43c0c035-bb73-4756-a787-3ed6bea617bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SimpleHapticsControllers: *const fn(self: *anyopaque, _r: **IVectorView(SimpleHapticsController)) callconv(.winapi) HRESULT,
        get_NonRoamableId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRawGameControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn addRawGameControllerAdded(self: *@This(), value: *EventHandler(RawGameController)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RawGameControllerAdded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRawGameControllerAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RawGameControllerAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRawGameControllerRemoved(self: *@This(), value: *EventHandler(RawGameController)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RawGameControllerRemoved(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRawGameControllerRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RawGameControllerRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRawGameControllers(self: *@This()) core.HResult!*IVectorView(RawGameController) {
        var _r: *IVectorView(RawGameController) = undefined;
        const _c = self.vtable.get_RawGameControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromGameController(self: *@This(), gameController: *IGameController) core.HResult!*RawGameController {
        var _r: *RawGameController = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IRawGameControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb8d0792-e95a-4b19-afc7-0a59f8bf759e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_RawGameControllerAdded: *const fn(self: *anyopaque, value: *EventHandler(RawGameController), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RawGameControllerAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RawGameControllerRemoved: *const fn(self: *anyopaque, value: *EventHandler(RawGameController), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RawGameControllerRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_RawGameControllers: *const fn(self: *anyopaque, _r: **IVectorView(RawGameController)) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, gameController: *IGameController, _r: **RawGameController) callconv(.winapi) HRESULT,
    };
};
pub const IUINavigationController = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!UINavigationReading {
        var _r: UINavigationReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOptionalButtonLabel(self: *@This(), button: OptionalUINavigationButtons) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetOptionalButtonLabel(@ptrCast(self), button, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRequiredButtonLabel(self: *@This(), button: RequiredUINavigationButtons) core.HResult!GameControllerButtonLabel {
        var _r: GameControllerButtonLabel = undefined;
        const _c = self.vtable.GetRequiredButtonLabel(@ptrCast(self), button, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IUINavigationController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5aeefdd-f50e-4a55-8cdc-d33229548175";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: *UINavigationReading) callconv(.winapi) HRESULT,
        GetOptionalButtonLabel: *const fn(self: *anyopaque, button: OptionalUINavigationButtons, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
        GetRequiredButtonLabel: *const fn(self: *anyopaque, button: RequiredUINavigationButtons, _r: *GameControllerButtonLabel) callconv(.winapi) HRESULT,
    };
};
pub const IUINavigationControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn addUINavigationControllerAdded(self: *@This(), value: *EventHandler(UINavigationController)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UINavigationControllerAdded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUINavigationControllerAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UINavigationControllerAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUINavigationControllerRemoved(self: *@This(), value: *EventHandler(UINavigationController)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UINavigationControllerRemoved(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUINavigationControllerRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UINavigationControllerRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUINavigationControllers(self: *@This()) core.HResult!*IVectorView(UINavigationController) {
        var _r: *IVectorView(UINavigationController) = undefined;
        const _c = self.vtable.get_UINavigationControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IUINavigationControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f14930a-f6f8-4a48-8d89-94786cca0c2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_UINavigationControllerAdded: *const fn(self: *anyopaque, value: *EventHandler(UINavigationController), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UINavigationControllerAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UINavigationControllerRemoved: *const fn(self: *anyopaque, value: *EventHandler(UINavigationController), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UINavigationControllerRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_UINavigationControllers: *const fn(self: *anyopaque, _r: **IVectorView(UINavigationController)) callconv(.winapi) HRESULT,
    };
};
pub const IUINavigationControllerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromGameController(self: *@This(), gameController: *IGameController) core.HResult!*UINavigationController {
        var _r: *UINavigationController = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.IUINavigationControllerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0cb28e3-b20b-4b0b-9ed4-f3d53cec0de4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, gameController: *IGameController, _r: **UINavigationController) callconv(.winapi) HRESULT,
    };
};
pub const OptionalUINavigationButtons = enum(i32) {
    None = 0,
    Context1 = 1,
    Context2 = 2,
    Context3 = 4,
    Context4 = 8,
    PageUp = 16,
    PageDown = 32,
    PageLeft = 64,
    PageRight = 128,
    ScrollUp = 256,
    ScrollDown = 512,
    ScrollLeft = 1024,
    ScrollRight = 2048,
};
pub const RacingWheel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasClutch(self: *@This()) core.HResult!bool {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.getHasClutch();
    }
    pub fn getHasHandbrake(self: *@This()) core.HResult!bool {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.getHasHandbrake();
    }
    pub fn getHasPatternShifter(self: *@This()) core.HResult!bool {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.getHasPatternShifter();
    }
    pub fn getMaxPatternShifterGear(self: *@This()) core.HResult!i32 {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.getMaxPatternShifterGear();
    }
    pub fn getMaxWheelAngle(self: *@This()) core.HResult!f64 {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.getMaxWheelAngle();
    }
    pub fn getWheelMotor(self: *@This()) core.HResult!*ForceFeedbackMotor {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.getWheelMotor();
    }
    pub fn GetButtonLabel(self: *@This(), button: RacingWheelButtons) core.HResult!GameControllerButtonLabel {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.GetButtonLabel(button);
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!RacingWheelReading {
        const this: *IRacingWheel = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetConnected(value);
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetConnected(token);
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetDisconnected(value);
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetDisconnected(token);
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserChanged(value);
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserChanged(token);
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadset();
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWireless();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromGameController(gameController: *IGameController) core.HResult!*RacingWheel {
        const _f = @This().IRacingWheelStatics2Cache.get();
        return try _f.FromGameController(gameController);
    }
    pub fn addRacingWheelAdded(value: *EventHandler(RacingWheel)) core.HResult!EventRegistrationToken {
        const _f = @This().IRacingWheelStaticsCache.get();
        return try _f.addRacingWheelAdded(value);
    }
    pub fn removeRacingWheelAdded(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IRacingWheelStaticsCache.get();
        return try _f.removeRacingWheelAdded(token);
    }
    pub fn addRacingWheelRemoved(value: *EventHandler(RacingWheel)) core.HResult!EventRegistrationToken {
        const _f = @This().IRacingWheelStaticsCache.get();
        return try _f.addRacingWheelRemoved(value);
    }
    pub fn removeRacingWheelRemoved(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IRacingWheelStaticsCache.get();
        return try _f.removeRacingWheelRemoved(token);
    }
    pub fn getRacingWheels() core.HResult!*IVectorView(RacingWheel) {
        const _f = @This().IRacingWheelStaticsCache.get();
        return try _f.getRacingWheels();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.RacingWheel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRacingWheel.GUID;
    pub const IID: Guid = IRacingWheel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRacingWheel.SIGNATURE);
    var _IRacingWheelStatics2Cache: FactoryCache(IRacingWheelStatics2, RUNTIME_NAME) = .{};
    var _IRacingWheelStaticsCache: FactoryCache(IRacingWheelStatics, RUNTIME_NAME) = .{};
};
pub const RacingWheelButtons = enum(i32) {
    None = 0,
    PreviousGear = 1,
    NextGear = 2,
    DPadUp = 4,
    DPadDown = 8,
    DPadLeft = 16,
    DPadRight = 32,
    Button1 = 64,
    Button2 = 128,
    Button3 = 256,
    Button4 = 512,
    Button5 = 1024,
    Button6 = 2048,
    Button7 = 4096,
    Button8 = 8192,
    Button9 = 16384,
    Button10 = 32768,
    Button11 = 65536,
    Button12 = 131072,
    Button13 = 262144,
    Button14 = 524288,
    Button15 = 1048576,
    Button16 = 2097152,
};
pub const RacingWheelReading = extern struct {
    Timestamp: u64,
    Buttons: RacingWheelButtons,
    PatternShifterGear: i32,
    Wheel: f64,
    Throttle: f64,
    Brake: f64,
    Clutch: f64,
    Handbrake: f64,
};
pub const RawGameController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAxisCount(self: *@This()) core.HResult!i32 {
        const this: *IRawGameController = @ptrCast(self);
        return try this.getAxisCount();
    }
    pub fn getButtonCount(self: *@This()) core.HResult!i32 {
        const this: *IRawGameController = @ptrCast(self);
        return try this.getButtonCount();
    }
    pub fn getForceFeedbackMotors(self: *@This()) core.HResult!*IVectorView(ForceFeedbackMotor) {
        const this: *IRawGameController = @ptrCast(self);
        return try this.getForceFeedbackMotors();
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        const this: *IRawGameController = @ptrCast(self);
        return try this.getHardwareProductId();
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        const this: *IRawGameController = @ptrCast(self);
        return try this.getHardwareVendorId();
    }
    pub fn getSwitchCount(self: *@This()) core.HResult!i32 {
        const this: *IRawGameController = @ptrCast(self);
        return try this.getSwitchCount();
    }
    pub fn GetButtonLabel(self: *@This(), buttonIndex: i32) core.HResult!GameControllerButtonLabel {
        const this: *IRawGameController = @ptrCast(self);
        return try this.GetButtonLabel(buttonIndex);
    }
    pub fn GetCurrentReading(self: *@This(), buttonArray: [*]bool, switchArray: [*]GameControllerSwitchPosition, axisArray: [*]f64) core.HResult!u64 {
        const this: *IRawGameController = @ptrCast(self);
        return try this.GetCurrentReading(buttonArray, switchArray, axisArray);
    }
    pub fn GetSwitchKind(self: *@This(), switchIndex: i32) core.HResult!GameControllerSwitchKind {
        const this: *IRawGameController = @ptrCast(self);
        return try this.GetSwitchKind(switchIndex);
    }
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetConnected(value);
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetConnected(token);
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetDisconnected(value);
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetDisconnected(token);
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserChanged(value);
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserChanged(token);
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadset();
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWireless();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub fn getSimpleHapticsControllers(self: *@This()) core.HResult!*IVectorView(SimpleHapticsController) {
        var this: ?*IRawGameController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRawGameController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsControllers();
    }
    pub fn getNonRoamableId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRawGameController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRawGameController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNonRoamableId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRawGameController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRawGameController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addRawGameControllerAdded(value: *EventHandler(RawGameController)) core.HResult!EventRegistrationToken {
        const _f = @This().IRawGameControllerStaticsCache.get();
        return try _f.addRawGameControllerAdded(value);
    }
    pub fn removeRawGameControllerAdded(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IRawGameControllerStaticsCache.get();
        return try _f.removeRawGameControllerAdded(token);
    }
    pub fn addRawGameControllerRemoved(value: *EventHandler(RawGameController)) core.HResult!EventRegistrationToken {
        const _f = @This().IRawGameControllerStaticsCache.get();
        return try _f.addRawGameControllerRemoved(value);
    }
    pub fn removeRawGameControllerRemoved(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IRawGameControllerStaticsCache.get();
        return try _f.removeRawGameControllerRemoved(token);
    }
    pub fn getRawGameControllers() core.HResult!*IVectorView(RawGameController) {
        const _f = @This().IRawGameControllerStaticsCache.get();
        return try _f.getRawGameControllers();
    }
    pub fn FromGameController(gameController: *IGameController) core.HResult!*RawGameController {
        const _f = @This().IRawGameControllerStaticsCache.get();
        return try _f.FromGameController(gameController);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.RawGameController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRawGameController.GUID;
    pub const IID: Guid = IRawGameController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRawGameController.SIGNATURE);
    var _IRawGameControllerStaticsCache: FactoryCache(IRawGameControllerStatics, RUNTIME_NAME) = .{};
};
pub const RequiredUINavigationButtons = enum(i32) {
    None = 0,
    Menu = 1,
    View = 2,
    Accept = 4,
    Cancel = 8,
    Up = 16,
    Down = 32,
    Left = 64,
    Right = 128,
};
pub const UINavigationController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!UINavigationReading {
        const this: *IUINavigationController = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn GetOptionalButtonLabel(self: *@This(), button: OptionalUINavigationButtons) core.HResult!GameControllerButtonLabel {
        const this: *IUINavigationController = @ptrCast(self);
        return try this.GetOptionalButtonLabel(button);
    }
    pub fn GetRequiredButtonLabel(self: *@This(), button: RequiredUINavigationButtons) core.HResult!GameControllerButtonLabel {
        const this: *IUINavigationController = @ptrCast(self);
        return try this.GetRequiredButtonLabel(button);
    }
    pub fn addHeadsetConnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetConnected(value);
    }
    pub fn removeHeadsetConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetConnected(token);
    }
    pub fn addHeadsetDisconnected(self: *@This(), value: *TypedEventHandler(IGameController,Headset)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHeadsetDisconnected(value);
    }
    pub fn removeHeadsetDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHeadsetDisconnected(token);
    }
    pub fn addUserChanged(self: *@This(), value: *TypedEventHandler(IGameController,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserChanged(value);
    }
    pub fn removeUserChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserChanged(token);
    }
    pub fn getHeadset(self: *@This()) core.HResult!*Headset {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadset();
    }
    pub fn getIsWireless(self: *@This()) core.HResult!bool {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWireless();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IGameController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*IGameControllerBatteryInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerBatteryInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addUINavigationControllerAdded(value: *EventHandler(UINavigationController)) core.HResult!EventRegistrationToken {
        const _f = @This().IUINavigationControllerStaticsCache.get();
        return try _f.addUINavigationControllerAdded(value);
    }
    pub fn removeUINavigationControllerAdded(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IUINavigationControllerStaticsCache.get();
        return try _f.removeUINavigationControllerAdded(token);
    }
    pub fn addUINavigationControllerRemoved(value: *EventHandler(UINavigationController)) core.HResult!EventRegistrationToken {
        const _f = @This().IUINavigationControllerStaticsCache.get();
        return try _f.addUINavigationControllerRemoved(value);
    }
    pub fn removeUINavigationControllerRemoved(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IUINavigationControllerStaticsCache.get();
        return try _f.removeUINavigationControllerRemoved(token);
    }
    pub fn getUINavigationControllers() core.HResult!*IVectorView(UINavigationController) {
        const _f = @This().IUINavigationControllerStaticsCache.get();
        return try _f.getUINavigationControllers();
    }
    pub fn FromGameController(gameController: *IGameController) core.HResult!*UINavigationController {
        const _f = @This().IUINavigationControllerStatics2Cache.get();
        return try _f.FromGameController(gameController);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.UINavigationController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUINavigationController.GUID;
    pub const IID: Guid = IUINavigationController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUINavigationController.SIGNATURE);
    var _IUINavigationControllerStaticsCache: FactoryCache(IUINavigationControllerStatics, RUNTIME_NAME) = .{};
    var _IUINavigationControllerStatics2Cache: FactoryCache(IUINavigationControllerStatics2, RUNTIME_NAME) = .{};
};
pub const UINavigationReading = extern struct {
    Timestamp: u64,
    RequiredButtons: RequiredUINavigationButtons,
    OptionalButtons: OptionalUINavigationButtons,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const SimpleHapticsController = @import("../Devices/Haptics.zig").SimpleHapticsController;
const FactoryCache = @import("../core.zig").FactoryCache;
const BatteryReport = @import("../Devices/Power.zig").BatteryReport;
const TrustLevel = @import("../root.zig").TrustLevel;
const UserChangedEventArgs = @import("../System.zig").UserChangedEventArgs;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const ForceFeedbackMotor = @import("./Input/ForceFeedback.zig").ForceFeedbackMotor;
const IInspectable = @import("../Foundation.zig").IInspectable;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const User = @import("../System.zig").User;
pub const Custom = @import("./Input/Custom.zig");
pub const ForceFeedback = @import("./Input/ForceFeedback.zig");
pub const Preview = @import("./Input/Preview.zig");
