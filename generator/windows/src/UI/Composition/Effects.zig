pub const ISceneLightingEffect = extern struct {
    vtable: *const VTable,
    pub fn getAmbientAmount(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_AmbientAmount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAmbientAmount(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_AmbientAmount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDiffuseAmount(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DiffuseAmount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDiffuseAmount(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DiffuseAmount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalMapSource(self: *@This()) core.HResult!*IGraphicsEffectSource {
        var _r: *IGraphicsEffectSource = undefined;
        const _c = self.vtable.get_NormalMapSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalMapSource(self: *@This(), value: *IGraphicsEffectSource) core.HResult!void {
        const _c = self.vtable.put_NormalMapSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpecularAmount(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_SpecularAmount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpecularAmount(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_SpecularAmount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpecularShine(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_SpecularShine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpecularShine(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_SpecularShine(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Effects.ISceneLightingEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AmbientAmount: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_AmbientAmount: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_DiffuseAmount: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DiffuseAmount: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_NormalMapSource: *const fn(self: *anyopaque, _r: **IGraphicsEffectSource) callconv(.winapi) HRESULT,
        put_NormalMapSource: *const fn(self: *anyopaque, value: *IGraphicsEffectSource) callconv(.winapi) HRESULT,
        get_SpecularAmount: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_SpecularAmount: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_SpecularShine: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_SpecularShine: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ISceneLightingEffect2 = extern struct {
    vtable: *const VTable,
    pub fn getReflectanceModel(self: *@This()) core.HResult!SceneLightingEffectReflectanceModel {
        var _r: SceneLightingEffectReflectanceModel = undefined;
        const _c = self.vtable.get_ReflectanceModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReflectanceModel(self: *@This(), value: SceneLightingEffectReflectanceModel) core.HResult!void {
        const _c = self.vtable.put_ReflectanceModel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Effects.ISceneLightingEffect2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e270e81-72f0-4c5c-95f8-8a6e0024f409";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReflectanceModel: *const fn(self: *anyopaque, _r: *SceneLightingEffectReflectanceModel) callconv(.winapi) HRESULT,
        put_ReflectanceModel: *const fn(self: *anyopaque, value: SceneLightingEffectReflectanceModel) callconv(.winapi) HRESULT,
    };
};
pub const SceneLightingEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAmbientAmount(self: *@This()) core.HResult!f32 {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.getAmbientAmount();
    }
    pub fn putAmbientAmount(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.putAmbientAmount(value);
    }
    pub fn getDiffuseAmount(self: *@This()) core.HResult!f32 {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.getDiffuseAmount();
    }
    pub fn putDiffuseAmount(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.putDiffuseAmount(value);
    }
    pub fn getNormalMapSource(self: *@This()) core.HResult!*IGraphicsEffectSource {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.getNormalMapSource();
    }
    pub fn putNormalMapSource(self: *@This(), value: *IGraphicsEffectSource) core.HResult!void {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.putNormalMapSource(value);
    }
    pub fn getSpecularAmount(self: *@This()) core.HResult!f32 {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.getSpecularAmount();
    }
    pub fn putSpecularAmount(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.putSpecularAmount(value);
    }
    pub fn getSpecularShine(self: *@This()) core.HResult!f32 {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.getSpecularShine();
    }
    pub fn putSpecularShine(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneLightingEffect = @ptrCast(self);
        return try this.putSpecularShine(value);
    }
    pub fn getReflectanceModel(self: *@This()) core.HResult!SceneLightingEffectReflectanceModel {
        var this: ?*ISceneLightingEffect2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISceneLightingEffect2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReflectanceModel();
    }
    pub fn putReflectanceModel(self: *@This(), value: SceneLightingEffectReflectanceModel) core.HResult!void {
        var this: ?*ISceneLightingEffect2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISceneLightingEffect2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReflectanceModel(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGraphicsEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn putName(self: *@This(), name: HSTRING) core.HResult!void {
        var this: ?*IGraphicsEffect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsEffect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putName(name);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISceneLightingEffect.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Effects.SceneLightingEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneLightingEffect.GUID;
    pub const IID: Guid = ISceneLightingEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneLightingEffect.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SceneLightingEffectReflectanceModel = enum(i32) {
    BlinnPhong = 0,
    PhysicallyBasedBlinnPhong = 1,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IGraphicsEffect = @import("../../Graphics/Effects.zig").IGraphicsEffect;
const IGraphicsEffectSource = @import("../../Graphics/Effects.zig").IGraphicsEffectSource;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
