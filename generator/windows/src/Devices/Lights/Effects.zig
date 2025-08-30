pub const ILampArrayBitmapEffect = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_StartDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UpdateInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUpdateInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_UpdateInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedBitmapSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_SuggestedBitmapSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addBitmapRequested(self: *@This(), handler: *TypedEventHandler(LampArrayBitmapEffect,LampArrayBitmapRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BitmapRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBitmapRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BitmapRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayBitmapEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3238e065-d877-4627-89e5-2a88f7052fa6";
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
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StartDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_StartDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_UpdateInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_UpdateInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_SuggestedBitmapSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        add_BitmapRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(LampArrayBitmapEffect,LampArrayBitmapRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BitmapRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayBitmapEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayBitmapEffect {
        var _r: *LampArrayBitmapEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), lampArray, lampIndexes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayBitmapEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13608090-e336-4c8f-9053-a92407ca7b1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, lampArray: *LampArray, lampIndexes: [*]i32, _r: **LampArrayBitmapEffect) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayBitmapRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSinceStarted(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SinceStarted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateBitmap(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.UpdateBitmap(@ptrCast(self), bitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayBitmapRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8b4af9e-fe63-4d51-babd-619defb454ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SinceStarted: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        UpdateBitmap: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayBlinkEffect = extern struct {
    vtable: *const VTable,
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
    pub fn getAttackDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AttackDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAttackDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_AttackDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSustainDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SustainDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSustainDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_SustainDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecayDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DecayDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecayDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DecayDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepetitionDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RepetitionDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepetitionDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_RepetitionDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_StartDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOccurrences(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Occurrences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOccurrences(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Occurrences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepetitionMode(self: *@This()) core.HResult!LampArrayRepetitionMode {
        var _r: LampArrayRepetitionMode = undefined;
        const _c = self.vtable.get_RepetitionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepetitionMode(self: *@This(), value: LampArrayRepetitionMode) core.HResult!void {
        const _c = self.vtable.put_RepetitionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayBlinkEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebbf35f6-2fc5-4bb3-b3c3-6221a7680d13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_AttackDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_AttackDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_SustainDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_SustainDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_DecayDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DecayDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_RepetitionDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_RepetitionDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StartDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_StartDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Occurrences: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Occurrences: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_RepetitionMode: *const fn(self: *anyopaque, _r: *LampArrayRepetitionMode) callconv(.winapi) HRESULT,
        put_RepetitionMode: *const fn(self: *anyopaque, value: LampArrayRepetitionMode) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayBlinkEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayBlinkEffect {
        var _r: *LampArrayBlinkEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), lampArray, lampIndexes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayBlinkEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "879f1d97-9f50-49b2-a56f-013aa08d55e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, lampArray: *LampArray, lampIndexes: [*]i32, _r: **LampArrayBlinkEffect) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayColorRampEffect = extern struct {
    vtable: *const VTable,
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
    pub fn getRampDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RampDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRampDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_RampDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_StartDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompletionBehavior(self: *@This()) core.HResult!LampArrayEffectCompletionBehavior {
        var _r: LampArrayEffectCompletionBehavior = undefined;
        const _c = self.vtable.get_CompletionBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompletionBehavior(self: *@This(), value: LampArrayEffectCompletionBehavior) core.HResult!void {
        const _c = self.vtable.put_CompletionBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayColorRampEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b004437-40a7-432e-a0b9-0d570c2153ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_RampDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_RampDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StartDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_StartDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_CompletionBehavior: *const fn(self: *anyopaque, _r: *LampArrayEffectCompletionBehavior) callconv(.winapi) HRESULT,
        put_CompletionBehavior: *const fn(self: *anyopaque, value: LampArrayEffectCompletionBehavior) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayColorRampEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayColorRampEffect {
        var _r: *LampArrayColorRampEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), lampArray, lampIndexes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayColorRampEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "520bd133-0c74-4df5-bea7-4899e0266b0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, lampArray: *LampArray, lampIndexes: [*]i32, _r: **LampArrayColorRampEffect) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayCustomEffect = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UpdateInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUpdateInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_UpdateInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdateRequested(self: *@This(), handler: *TypedEventHandler(LampArrayCustomEffect,LampArrayUpdateRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UpdateRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdateRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UpdateRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayCustomEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec579170-3c34-4876-818b-5765f78b0ee4";
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
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_UpdateInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_UpdateInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        add_UpdateRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(LampArrayCustomEffect,LampArrayUpdateRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UpdateRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayCustomEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayCustomEffect {
        var _r: *LampArrayCustomEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), lampArray, lampIndexes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayCustomEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68b4774d-63e5-4af0-a58b-3e535b94e8c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, lampArray: *LampArray, lampIndexes: [*]i32, _r: **LampArrayCustomEffect) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayEffect = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11d45590-57fb-4546-b1ce-863107f740df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ZIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ZIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayEffectPlaylist = extern struct {
    vtable: *const VTable,
    pub fn Append(self: *@This(), effect: *ILampArrayEffect) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), effect);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OverrideZIndex(self: *@This(), zIndex: i32) core.HResult!void {
        const _c = self.vtable.OverrideZIndex(@ptrCast(self), zIndex);
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
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEffectStartMode(self: *@This()) core.HResult!LampArrayEffectStartMode {
        var _r: LampArrayEffectStartMode = undefined;
        const _c = self.vtable.get_EffectStartMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEffectStartMode(self: *@This(), value: LampArrayEffectStartMode) core.HResult!void {
        const _c = self.vtable.put_EffectStartMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOccurrences(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Occurrences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOccurrences(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Occurrences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepetitionMode(self: *@This()) core.HResult!LampArrayRepetitionMode {
        var _r: LampArrayRepetitionMode = undefined;
        const _c = self.vtable.get_RepetitionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepetitionMode(self: *@This(), value: LampArrayRepetitionMode) core.HResult!void {
        const _c = self.vtable.put_RepetitionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayEffectPlaylist";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7de58bfe-6f61-4103-98c7-d6632f7b9169";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, effect: *ILampArrayEffect) callconv(.winapi) HRESULT,
        OverrideZIndex: *const fn(self: *anyopaque, zIndex: i32) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_EffectStartMode: *const fn(self: *anyopaque, _r: *LampArrayEffectStartMode) callconv(.winapi) HRESULT,
        put_EffectStartMode: *const fn(self: *anyopaque, value: LampArrayEffectStartMode) callconv(.winapi) HRESULT,
        get_Occurrences: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Occurrences: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_RepetitionMode: *const fn(self: *anyopaque, _r: *LampArrayRepetitionMode) callconv(.winapi) HRESULT,
        put_RepetitionMode: *const fn(self: *anyopaque, value: LampArrayRepetitionMode) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayEffectPlaylistStatics = extern struct {
    vtable: *const VTable,
    pub fn StartAll(self: *@This(), value: *IIterable(LampArrayEffectPlaylist)) core.HResult!void {
        const _c = self.vtable.StartAll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAll(self: *@This(), value: *IIterable(LampArrayEffectPlaylist)) core.HResult!void {
        const _c = self.vtable.StopAll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PauseAll(self: *@This(), value: *IIterable(LampArrayEffectPlaylist)) core.HResult!void {
        const _c = self.vtable.PauseAll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayEffectPlaylistStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb15235c-ea35-4c7f-a016-f3bfc6a6c47d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAll: *const fn(self: *anyopaque, value: *IIterable(LampArrayEffectPlaylist)) callconv(.winapi) HRESULT,
        StopAll: *const fn(self: *anyopaque, value: *IIterable(LampArrayEffectPlaylist)) callconv(.winapi) HRESULT,
        PauseAll: *const fn(self: *anyopaque, value: *IIterable(LampArrayEffectPlaylist)) callconv(.winapi) HRESULT,
    };
};
pub const ILampArraySolidEffect = extern struct {
    vtable: *const VTable,
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
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_StartDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompletionBehavior(self: *@This()) core.HResult!LampArrayEffectCompletionBehavior {
        var _r: LampArrayEffectCompletionBehavior = undefined;
        const _c = self.vtable.get_CompletionBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompletionBehavior(self: *@This(), value: LampArrayEffectCompletionBehavior) core.HResult!void {
        const _c = self.vtable.put_CompletionBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArraySolidEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "441f8213-43cc-4b33-80eb-c6ddde7dc8ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StartDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_StartDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_CompletionBehavior: *const fn(self: *anyopaque, _r: *LampArrayEffectCompletionBehavior) callconv(.winapi) HRESULT,
        put_CompletionBehavior: *const fn(self: *anyopaque, value: LampArrayEffectCompletionBehavior) callconv(.winapi) HRESULT,
    };
};
pub const ILampArraySolidEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArraySolidEffect {
        var _r: *LampArraySolidEffect = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), lampArray, lampIndexes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArraySolidEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f862a32c-5576-4341-961b-aee1f13cf9dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, lampArray: *LampArray, lampIndexes: [*]i32, _r: **LampArraySolidEffect) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayUpdateRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSinceStarted(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SinceStarted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetColor(self: *@This(), desiredColor: Color) core.HResult!void {
        const _c = self.vtable.SetColor(@ptrCast(self), desiredColor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorForIndex(self: *@This(), lampIndex: i32, desiredColor: Color) core.HResult!void {
        const _c = self.vtable.SetColorForIndex(@ptrCast(self), lampIndex, desiredColor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSingleColorForIndices(self: *@This(), desiredColor: Color, lampIndexes: [*]i32) core.HResult!void {
        const _c = self.vtable.SetSingleColorForIndices(@ptrCast(self), desiredColor, lampIndexes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorsForIndices(self: *@This(), desiredColors: [*]Color, lampIndexes: [*]i32) core.HResult!void {
        const _c = self.vtable.SetColorsForIndices(@ptrCast(self), desiredColors, lampIndexes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.ILampArrayUpdateRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73560d6a-576a-48af-8539-67ffa0ab3516";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SinceStarted: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        SetColor: *const fn(self: *anyopaque, desiredColor: Color) callconv(.winapi) HRESULT,
        SetColorForIndex: *const fn(self: *anyopaque, lampIndex: i32, desiredColor: Color) callconv(.winapi) HRESULT,
        SetSingleColorForIndices: *const fn(self: *anyopaque, desiredColor: Color, lampIndexes: [*]i32) callconv(.winapi) HRESULT,
        SetColorsForIndices: *const fn(self: *anyopaque, desiredColors: [*]Color, lampIndexes: [*]i32) callconv(.winapi) HRESULT,
    };
};
pub const LampArrayBitmapEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.getStartDelay();
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.putStartDelay(value);
    }
    pub fn getUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.getUpdateInterval();
    }
    pub fn putUpdateInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.putUpdateInterval(value);
    }
    pub fn getSuggestedBitmapSize(self: *@This()) core.HResult!Size {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.getSuggestedBitmapSize();
    }
    pub fn addBitmapRequested(self: *@This(), handler: *TypedEventHandler(LampArrayBitmapEffect,LampArrayBitmapRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.addBitmapRequested(handler);
    }
    pub fn removeBitmapRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILampArrayBitmapEffect = @ptrCast(self);
        return try this.removeBitmapRequested(token);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putZIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayBitmapEffect {
        const factory = @This().ILampArrayBitmapEffectFactoryCache.get();
        return try factory.CreateInstance(lampArray, lampIndexes);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayBitmapEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayBitmapEffect.GUID;
    pub const IID: Guid = ILampArrayBitmapEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayBitmapEffect.SIGNATURE);
    var _ILampArrayBitmapEffectFactoryCache: FactoryCache(ILampArrayBitmapEffectFactory, RUNTIME_NAME) = .{};
};
pub const LampArrayBitmapRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSinceStarted(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBitmapRequestedEventArgs = @ptrCast(self);
        return try this.getSinceStarted();
    }
    pub fn UpdateBitmap(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!void {
        const this: *ILampArrayBitmapRequestedEventArgs = @ptrCast(self);
        return try this.UpdateBitmap(bitmap);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayBitmapRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayBitmapRequestedEventArgs.GUID;
    pub const IID: Guid = ILampArrayBitmapRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayBitmapRequestedEventArgs.SIGNATURE);
};
pub const LampArrayBlinkEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getAttackDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getAttackDuration();
    }
    pub fn putAttackDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putAttackDuration(value);
    }
    pub fn getSustainDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getSustainDuration();
    }
    pub fn putSustainDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putSustainDuration(value);
    }
    pub fn getDecayDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getDecayDuration();
    }
    pub fn putDecayDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putDecayDuration(value);
    }
    pub fn getRepetitionDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getRepetitionDelay();
    }
    pub fn putRepetitionDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putRepetitionDelay(value);
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getStartDelay();
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putStartDelay(value);
    }
    pub fn getOccurrences(self: *@This()) core.HResult!i32 {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getOccurrences();
    }
    pub fn putOccurrences(self: *@This(), value: i32) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putOccurrences(value);
    }
    pub fn getRepetitionMode(self: *@This()) core.HResult!LampArrayRepetitionMode {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.getRepetitionMode();
    }
    pub fn putRepetitionMode(self: *@This(), value: LampArrayRepetitionMode) core.HResult!void {
        const this: *ILampArrayBlinkEffect = @ptrCast(self);
        return try this.putRepetitionMode(value);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putZIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayBlinkEffect {
        const factory = @This().ILampArrayBlinkEffectFactoryCache.get();
        return try factory.CreateInstance(lampArray, lampIndexes);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayBlinkEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayBlinkEffect.GUID;
    pub const IID: Guid = ILampArrayBlinkEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayBlinkEffect.SIGNATURE);
    var _ILampArrayBlinkEffectFactoryCache: FactoryCache(ILampArrayBlinkEffectFactory, RUNTIME_NAME) = .{};
};
pub const LampArrayColorRampEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getRampDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.getRampDuration();
    }
    pub fn putRampDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.putRampDuration(value);
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.getStartDelay();
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.putStartDelay(value);
    }
    pub fn getCompletionBehavior(self: *@This()) core.HResult!LampArrayEffectCompletionBehavior {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.getCompletionBehavior();
    }
    pub fn putCompletionBehavior(self: *@This(), value: LampArrayEffectCompletionBehavior) core.HResult!void {
        const this: *ILampArrayColorRampEffect = @ptrCast(self);
        return try this.putCompletionBehavior(value);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putZIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayColorRampEffect {
        const factory = @This().ILampArrayColorRampEffectFactoryCache.get();
        return try factory.CreateInstance(lampArray, lampIndexes);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayColorRampEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayColorRampEffect.GUID;
    pub const IID: Guid = ILampArrayColorRampEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayColorRampEffect.SIGNATURE);
    var _ILampArrayColorRampEffectFactoryCache: FactoryCache(ILampArrayColorRampEffectFactory, RUNTIME_NAME) = .{};
};
pub const LampArrayCustomEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayCustomEffect = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayCustomEffect = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayCustomEffect = @ptrCast(self);
        return try this.getUpdateInterval();
    }
    pub fn putUpdateInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArrayCustomEffect = @ptrCast(self);
        return try this.putUpdateInterval(value);
    }
    pub fn addUpdateRequested(self: *@This(), handler: *TypedEventHandler(LampArrayCustomEffect,LampArrayUpdateRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILampArrayCustomEffect = @ptrCast(self);
        return try this.addUpdateRequested(handler);
    }
    pub fn removeUpdateRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILampArrayCustomEffect = @ptrCast(self);
        return try this.removeUpdateRequested(token);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putZIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArrayCustomEffect {
        const factory = @This().ILampArrayCustomEffectFactoryCache.get();
        return try factory.CreateInstance(lampArray, lampIndexes);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayCustomEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayCustomEffect.GUID;
    pub const IID: Guid = ILampArrayCustomEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayCustomEffect.SIGNATURE);
    var _ILampArrayCustomEffectFactoryCache: FactoryCache(ILampArrayCustomEffectFactory, RUNTIME_NAME) = .{};
};
pub const LampArrayEffectCompletionBehavior = enum(i32) {
    ClearState = 0,
    KeepState = 1,
};
pub const LampArrayEffectPlaylist = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Append(self: *@This(), effect: *ILampArrayEffect) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.Append(effect);
    }
    pub fn OverrideZIndex(self: *@This(), zIndex: i32) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.OverrideZIndex(zIndex);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.Stop();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.Pause();
    }
    pub fn getEffectStartMode(self: *@This()) core.HResult!LampArrayEffectStartMode {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.getEffectStartMode();
    }
    pub fn putEffectStartMode(self: *@This(), value: LampArrayEffectStartMode) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.putEffectStartMode(value);
    }
    pub fn getOccurrences(self: *@This()) core.HResult!i32 {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.getOccurrences();
    }
    pub fn putOccurrences(self: *@This(), value: i32) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.putOccurrences(value);
    }
    pub fn getRepetitionMode(self: *@This()) core.HResult!LampArrayRepetitionMode {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.getRepetitionMode();
    }
    pub fn putRepetitionMode(self: *@This(), value: LampArrayRepetitionMode) core.HResult!void {
        const this: *ILampArrayEffectPlaylist = @ptrCast(self);
        return try this.putRepetitionMode(value);
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var this: ?*IVectorView(ILampArrayEffect) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVectorView(ILampArrayEffect) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var this: ?*IVectorView(ILampArrayEffect) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var this: ?*IVectorView(ILampArrayEffect) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(ILampArrayEffect) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILampArrayEffectPlaylist.IID)));
    }
    pub fn StartAll(value: *IIterable(LampArrayEffectPlaylist)) core.HResult!void {
        const factory = @This().ILampArrayEffectPlaylistStaticsCache.get();
        return try factory.StartAll(value);
    }
    pub fn StopAll(value: *IIterable(LampArrayEffectPlaylist)) core.HResult!void {
        const factory = @This().ILampArrayEffectPlaylistStaticsCache.get();
        return try factory.StopAll(value);
    }
    pub fn PauseAll(value: *IIterable(LampArrayEffectPlaylist)) core.HResult!void {
        const factory = @This().ILampArrayEffectPlaylistStaticsCache.get();
        return try factory.PauseAll(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayEffectPlaylist";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayEffectPlaylist.GUID;
    pub const IID: Guid = ILampArrayEffectPlaylist.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayEffectPlaylist.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILampArrayEffectPlaylistStaticsCache: FactoryCache(ILampArrayEffectPlaylistStatics, RUNTIME_NAME) = .{};
};
pub const LampArrayEffectStartMode = enum(i32) {
    Sequential = 0,
    Simultaneous = 1,
};
pub const LampArrayRepetitionMode = enum(i32) {
    Occurrences = 0,
    Forever = 1,
};
pub const LampArraySolidEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getStartDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.getStartDelay();
    }
    pub fn putStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.putStartDelay(value);
    }
    pub fn getCompletionBehavior(self: *@This()) core.HResult!LampArrayEffectCompletionBehavior {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.getCompletionBehavior();
    }
    pub fn putCompletionBehavior(self: *@This(), value: LampArrayEffectCompletionBehavior) core.HResult!void {
        const this: *ILampArraySolidEffect = @ptrCast(self);
        return try this.putCompletionBehavior(value);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ILampArrayEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArrayEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putZIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(lampArray: *LampArray, lampIndexes: [*]i32) core.HResult!*LampArraySolidEffect {
        const factory = @This().ILampArraySolidEffectFactoryCache.get();
        return try factory.CreateInstance(lampArray, lampIndexes);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArraySolidEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArraySolidEffect.GUID;
    pub const IID: Guid = ILampArraySolidEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArraySolidEffect.SIGNATURE);
    var _ILampArraySolidEffectFactoryCache: FactoryCache(ILampArraySolidEffectFactory, RUNTIME_NAME) = .{};
};
pub const LampArrayUpdateRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSinceStarted(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArrayUpdateRequestedEventArgs = @ptrCast(self);
        return try this.getSinceStarted();
    }
    pub fn SetColor(self: *@This(), desiredColor: Color) core.HResult!void {
        const this: *ILampArrayUpdateRequestedEventArgs = @ptrCast(self);
        return try this.SetColor(desiredColor);
    }
    pub fn SetColorForIndex(self: *@This(), lampIndex: i32, desiredColor: Color) core.HResult!void {
        const this: *ILampArrayUpdateRequestedEventArgs = @ptrCast(self);
        return try this.SetColorForIndex(lampIndex, desiredColor);
    }
    pub fn SetSingleColorForIndices(self: *@This(), desiredColor: Color, lampIndexes: [*]i32) core.HResult!void {
        const this: *ILampArrayUpdateRequestedEventArgs = @ptrCast(self);
        return try this.SetSingleColorForIndices(desiredColor, lampIndexes);
    }
    pub fn SetColorsForIndices(self: *@This(), desiredColors: [*]Color, lampIndexes: [*]i32) core.HResult!void {
        const this: *ILampArrayUpdateRequestedEventArgs = @ptrCast(self);
        return try this.SetColorsForIndices(desiredColors, lampIndexes);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Effects.LampArrayUpdateRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArrayUpdateRequestedEventArgs.GUID;
    pub const IID: Guid = ILampArrayUpdateRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArrayUpdateRequestedEventArgs.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const Color = @import("../../UI.zig").Color;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Size = @import("../../Foundation.zig").Size;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const LampArray = @import("../Lights.zig").LampArray;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const SoftwareBitmap = @import("../../Graphics/Imaging.zig").SoftwareBitmap;
const HSTRING = @import("../../root.zig").HSTRING;
