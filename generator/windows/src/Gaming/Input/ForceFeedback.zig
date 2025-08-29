pub const ConditionForceEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getGain();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.putGain(value);
    }
    pub fn getState(self: *@This()) core.HResult!ForceFeedbackEffectState {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getState();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Stop();
    }
    pub fn getKind(self: *@This()) core.HResult!ConditionForceEffectKind {
        var this: ?*IConditionForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConditionForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn SetParameters(self: *@This(), direction: Vector3, positiveCoefficient: f32, negativeCoefficient: f32, maxPositiveMagnitude: f32, maxNegativeMagnitude: f32, deadZone: f32, bias: f32) core.HResult!void {
        var this: ?*IConditionForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConditionForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParameters(direction, positiveCoefficient, negativeCoefficient, maxPositiveMagnitude, maxNegativeMagnitude, deadZone, bias);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(effectKind: ConditionForceEffectKind) core.HResult!*ConditionForceEffect {
        const factory = @This().IConditionForceEffectFactoryCache.get();
        return try factory.CreateInstance(effectKind);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.ConditionForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IForceFeedbackEffect.GUID;
    pub const IID: Guid = IForceFeedbackEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IForceFeedbackEffect.SIGNATURE);
    var _IConditionForceEffectFactoryCache: FactoryCache(IConditionForceEffectFactory, RUNTIME_NAME) = .{};
};
pub const ConditionForceEffectKind = enum(i32) {
    Spring = 0,
    Damper = 1,
    Inertia = 2,
    Friction = 3,
};
pub const ConstantForceEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getGain();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.putGain(value);
    }
    pub fn getState(self: *@This()) core.HResult!ForceFeedbackEffectState {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getState();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Stop();
    }
    pub fn SetParameters(self: *@This(), vector: Vector3, duration: TimeSpan) core.HResult!void {
        var this: ?*IConstantForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConstantForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParameters(vector, duration);
    }
    pub fn SetParametersWithEnvelope(self: *@This(), vector: Vector3, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) core.HResult!void {
        var this: ?*IConstantForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConstantForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParametersWithEnvelope(vector, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IForceFeedbackEffect.IID)));
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.ConstantForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IForceFeedbackEffect.GUID;
    pub const IID: Guid = IForceFeedbackEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IForceFeedbackEffect.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ForceFeedbackEffectAxes = enum(i32) {
    None = 0,
    X = 1,
    Y = 2,
    Z = 4,
};
pub const ForceFeedbackEffectState = enum(i32) {
    Stopped = 0,
    Running = 1,
    Paused = 2,
    Faulted = 3,
};
pub const ForceFeedbackLoadEffectResult = enum(i32) {
    Succeeded = 0,
    EffectStorageFull = 1,
    EffectNotSupported = 2,
};
pub const ForceFeedbackMotor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAreEffectsPaused(self: *@This()) core.HResult!bool {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.getAreEffectsPaused();
    }
    pub fn getMasterGain(self: *@This()) core.HResult!f64 {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.getMasterGain();
    }
    pub fn putMasterGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.putMasterGain(value);
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getSupportedAxes(self: *@This()) core.HResult!ForceFeedbackEffectAxes {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.getSupportedAxes();
    }
    pub fn LoadEffectAsync(self: *@This(), effect: *IForceFeedbackEffect) core.HResult!*IAsyncOperation(ForceFeedbackLoadEffectResult) {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.LoadEffectAsync(effect);
    }
    pub fn PauseAllEffects(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.PauseAllEffects();
    }
    pub fn ResumeAllEffects(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.ResumeAllEffects();
    }
    pub fn StopAllEffects(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.StopAllEffects();
    }
    pub fn TryDisableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.TryDisableAsync();
    }
    pub fn TryEnableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.TryEnableAsync();
    }
    pub fn TryResetAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.TryResetAsync();
    }
    pub fn TryUnloadEffectAsync(self: *@This(), effect: *IForceFeedbackEffect) core.HResult!*IAsyncOperation(bool) {
        const this: *IForceFeedbackMotor = @ptrCast(self);
        return try this.TryUnloadEffectAsync(effect);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IForceFeedbackMotor.GUID;
    pub const IID: Guid = IForceFeedbackMotor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IForceFeedbackMotor.SIGNATURE);
};
pub const IConditionForceEffect = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!ConditionForceEffectKind {
        var _r: ConditionForceEffectKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetParameters(self: *@This(), direction: Vector3, positiveCoefficient: f32, negativeCoefficient: f32, maxPositiveMagnitude: f32, maxNegativeMagnitude: f32, deadZone: f32, bias: f32) core.HResult!void {
        const _c = self.vtable.SetParameters(@ptrCast(self), direction, positiveCoefficient, negativeCoefficient, maxPositiveMagnitude, maxNegativeMagnitude, deadZone, bias);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IConditionForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32d1ea68-3695-4e69-85c0-cd1944189140";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ConditionForceEffectKind) callconv(.winapi) HRESULT,
        SetParameters: *const fn(self: *anyopaque, direction: Vector3, positiveCoefficient: f32, negativeCoefficient: f32, maxPositiveMagnitude: f32, maxNegativeMagnitude: f32, deadZone: f32, bias: f32) callconv(.winapi) HRESULT,
    };
};
pub const IConditionForceEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), effectKind: ConditionForceEffectKind) core.HResult!*ConditionForceEffect {
        var _r: *ConditionForceEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), effectKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IConditionForceEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91a99264-1810-4eb6-a773-bfd3b8cddbab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, effectKind: ConditionForceEffectKind, _r: **ConditionForceEffect) callconv(.winapi) HRESULT,
    };
};
pub const IConstantForceEffect = extern struct {
    vtable: *const VTable,
    pub fn SetParameters(self: *@This(), vector: Vector3, duration: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetParameters(@ptrCast(self), vector, duration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetParametersWithEnvelope(self: *@This(), vector: Vector3, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) core.HResult!void {
        const _c = self.vtable.SetParametersWithEnvelope(@ptrCast(self), vector, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IConstantForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bfa0140-f3c7-415c-b068-0f068734bce0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetParameters: *const fn(self: *anyopaque, vector: Vector3, duration: TimeSpan) callconv(.winapi) HRESULT,
        SetParametersWithEnvelope: *const fn(self: *anyopaque, vector: Vector3, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) callconv(.winapi) HRESULT,
    };
};
pub const IForceFeedbackEffect = extern struct {
    vtable: *const VTable,
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
    pub fn getState(self: *@This()) core.HResult!ForceFeedbackEffectState {
        var _r: ForceFeedbackEffectState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a17fba0c-2ae4-48c2-8063-eabd0777cb89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Gain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Gain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *ForceFeedbackEffectState) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IForceFeedbackMotor = extern struct {
    vtable: *const VTable,
    pub fn getAreEffectsPaused(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreEffectsPaused(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMasterGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MasterGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMasterGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MasterGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedAxes(self: *@This()) core.HResult!ForceFeedbackEffectAxes {
        var _r: ForceFeedbackEffectAxes = undefined;
        const _c = self.vtable.get_SupportedAxes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadEffectAsync(self: *@This(), effect: *IForceFeedbackEffect) core.HResult!*IAsyncOperation(ForceFeedbackLoadEffectResult) {
        var _r: *IAsyncOperation(ForceFeedbackLoadEffectResult) = undefined;
        const _c = self.vtable.LoadEffectAsync(@ptrCast(self), effect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PauseAllEffects(self: *@This()) core.HResult!void {
        const _c = self.vtable.PauseAllEffects(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResumeAllEffects(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResumeAllEffects(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAllEffects(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopAllEffects(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryDisableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEnableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryEnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryResetAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryResetAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUnloadEffectAsync(self: *@This(), effect: *IForceFeedbackEffect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryUnloadEffectAsync(@ptrCast(self), effect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d3d417c-a5ea-4516-8026-2b00f74ef6e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AreEffectsPaused: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MasterGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MasterGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedAxes: *const fn(self: *anyopaque, _r: *ForceFeedbackEffectAxes) callconv(.winapi) HRESULT,
        LoadEffectAsync: *const fn(self: *anyopaque, effect: *IForceFeedbackEffect, _r: **IAsyncOperation(ForceFeedbackLoadEffectResult)) callconv(.winapi) HRESULT,
        PauseAllEffects: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ResumeAllEffects: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StopAllEffects: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TryDisableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryEnableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryResetAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryUnloadEffectAsync: *const fn(self: *anyopaque, effect: *IForceFeedbackEffect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPeriodicForceEffect = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!PeriodicForceEffectKind {
        var _r: PeriodicForceEffectKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetParameters(self: *@This(), vector: Vector3, frequency: f32, phase: f32, bias: f32, duration: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetParameters(@ptrCast(self), vector, frequency, phase, bias, duration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetParametersWithEnvelope(self: *@This(), vector: Vector3, frequency: f32, phase: f32, bias: f32, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) core.HResult!void {
        const _c = self.vtable.SetParametersWithEnvelope(@ptrCast(self), vector, frequency, phase, bias, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c5138d7-fc75-4d52-9a0a-efe4cab5fe64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *PeriodicForceEffectKind) callconv(.winapi) HRESULT,
        SetParameters: *const fn(self: *anyopaque, vector: Vector3, frequency: f32, phase: f32, bias: f32, duration: TimeSpan) callconv(.winapi) HRESULT,
        SetParametersWithEnvelope: *const fn(self: *anyopaque, vector: Vector3, frequency: f32, phase: f32, bias: f32, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) callconv(.winapi) HRESULT,
    };
};
pub const IPeriodicForceEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), effectKind: PeriodicForceEffectKind) core.HResult!*PeriodicForceEffect {
        var _r: *PeriodicForceEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), effectKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f62eb1a-9851-477b-b318-35ecaa15070f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, effectKind: PeriodicForceEffectKind, _r: **PeriodicForceEffect) callconv(.winapi) HRESULT,
    };
};
pub const IRampForceEffect = extern struct {
    vtable: *const VTable,
    pub fn SetParameters(self: *@This(), startVector: Vector3, endVector: Vector3, duration: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetParameters(@ptrCast(self), startVector, endVector, duration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetParametersWithEnvelope(self: *@This(), startVector: Vector3, endVector: Vector3, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) core.HResult!void {
        const _c = self.vtable.SetParametersWithEnvelope(@ptrCast(self), startVector, endVector, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.IRampForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1f81259-1ca6-4080-b56d-b43f3354d052";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetParameters: *const fn(self: *anyopaque, startVector: Vector3, endVector: Vector3, duration: TimeSpan) callconv(.winapi) HRESULT,
        SetParametersWithEnvelope: *const fn(self: *anyopaque, startVector: Vector3, endVector: Vector3, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) callconv(.winapi) HRESULT,
    };
};
pub const PeriodicForceEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getGain();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.putGain(value);
    }
    pub fn getState(self: *@This()) core.HResult!ForceFeedbackEffectState {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getState();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Stop();
    }
    pub fn getKind(self: *@This()) core.HResult!PeriodicForceEffectKind {
        var this: ?*IPeriodicForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeriodicForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn SetParameters(self: *@This(), vector: Vector3, frequency: f32, phase: f32, bias: f32, duration: TimeSpan) core.HResult!void {
        var this: ?*IPeriodicForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeriodicForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParameters(vector, frequency, phase, bias, duration);
    }
    pub fn SetParametersWithEnvelope(self: *@This(), vector: Vector3, frequency: f32, phase: f32, bias: f32, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) core.HResult!void {
        var this: ?*IPeriodicForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeriodicForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParametersWithEnvelope(vector, frequency, phase, bias, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(effectKind: PeriodicForceEffectKind) core.HResult!*PeriodicForceEffect {
        const factory = @This().IPeriodicForceEffectFactoryCache.get();
        return try factory.CreateInstance(effectKind);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IForceFeedbackEffect.GUID;
    pub const IID: Guid = IForceFeedbackEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IForceFeedbackEffect.SIGNATURE);
    var _IPeriodicForceEffectFactoryCache: FactoryCache(IPeriodicForceEffectFactory, RUNTIME_NAME) = .{};
};
pub const PeriodicForceEffectKind = enum(i32) {
    SquareWave = 0,
    SineWave = 1,
    TriangleWave = 2,
    SawtoothWaveUp = 3,
    SawtoothWaveDown = 4,
};
pub const RampForceEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGain(self: *@This()) core.HResult!f64 {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getGain();
    }
    pub fn putGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.putGain(value);
    }
    pub fn getState(self: *@This()) core.HResult!ForceFeedbackEffectState {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.getState();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IForceFeedbackEffect = @ptrCast(self);
        return try this.Stop();
    }
    pub fn SetParameters(self: *@This(), startVector: Vector3, endVector: Vector3, duration: TimeSpan) core.HResult!void {
        var this: ?*IRampForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRampForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParameters(startVector, endVector, duration);
    }
    pub fn SetParametersWithEnvelope(self: *@This(), startVector: Vector3, endVector: Vector3, attackGain: f32, sustainGain: f32, releaseGain: f32, startDelay: TimeSpan, attackDuration: TimeSpan, sustainDuration: TimeSpan, releaseDuration: TimeSpan, repeatCount: u32) core.HResult!void {
        var this: ?*IRampForceEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRampForceEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParametersWithEnvelope(startVector, endVector, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IForceFeedbackEffect.IID)));
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.ForceFeedback.RampForceEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IForceFeedbackEffect.GUID;
    pub const IID: Guid = IForceFeedbackEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IForceFeedbackEffect.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
