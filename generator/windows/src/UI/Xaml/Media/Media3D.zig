pub const Transform3D = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Transform3D {
        const factory = @This().ITransform3DFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.Transform3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITransform3D.GUID;
    pub const IID: Guid = ITransform3D.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITransform3D.SIGNATURE);
    var _ITransform3DFactoryCache: FactoryCache(ITransform3DFactory, RUNTIME_NAME) = .{};
};
pub const CompositeTransform3D = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getCenterX();
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putCenterX(value);
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getCenterY();
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putCenterY(value);
    }
    pub fn getCenterZ(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getCenterZ();
    }
    pub fn putCenterZ(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putCenterZ(value);
    }
    pub fn getRotationX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getRotationX();
    }
    pub fn putRotationX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putRotationX(value);
    }
    pub fn getRotationY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getRotationY();
    }
    pub fn putRotationY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putRotationY(value);
    }
    pub fn getRotationZ(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getRotationZ();
    }
    pub fn putRotationZ(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putRotationZ(value);
    }
    pub fn getScaleX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getScaleX();
    }
    pub fn putScaleX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putScaleX(value);
    }
    pub fn getScaleY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getScaleY();
    }
    pub fn putScaleY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putScaleY(value);
    }
    pub fn getScaleZ(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getScaleZ();
    }
    pub fn putScaleZ(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putScaleZ(value);
    }
    pub fn getTranslateX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getTranslateX();
    }
    pub fn putTranslateX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putTranslateX(value);
    }
    pub fn getTranslateY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getTranslateY();
    }
    pub fn putTranslateY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putTranslateY(value);
    }
    pub fn getTranslateZ(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.getTranslateZ();
    }
    pub fn putTranslateZ(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform3D = @ptrCast(self);
        return try this.putTranslateZ(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICompositeTransform3D.IID)));
    }
    pub fn get_CenterXProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getCenterXProperty();
    }
    pub fn get_CenterYProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getCenterYProperty();
    }
    pub fn get_CenterZProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getCenterZProperty();
    }
    pub fn get_RotationXProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getRotationXProperty();
    }
    pub fn get_RotationYProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getRotationYProperty();
    }
    pub fn get_RotationZProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getRotationZProperty();
    }
    pub fn get_ScaleXProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getScaleXProperty();
    }
    pub fn get_ScaleYProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getScaleYProperty();
    }
    pub fn get_ScaleZProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getScaleZProperty();
    }
    pub fn get_TranslateXProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getTranslateXProperty();
    }
    pub fn get_TranslateYProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getTranslateYProperty();
    }
    pub fn get_TranslateZProperty() core.HResult!*DependencyProperty {
        const factory = @This().ICompositeTransform3DStaticsCache.get();
        return try factory.getTranslateZProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.CompositeTransform3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositeTransform3D.GUID;
    pub const IID: Guid = ICompositeTransform3D.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositeTransform3D.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICompositeTransform3DStaticsCache: FactoryCache(ICompositeTransform3DStatics, RUNTIME_NAME) = .{};
};
pub const ICompositeTransform3D = extern struct {
    vtable: *const VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslateX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TranslateX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslateX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TranslateX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslateY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TranslateY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslateY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TranslateY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslateZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TranslateZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslateZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TranslateZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8977cb01-af8d-4af5-b084-c08eb9704abe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RotationX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RotationY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RotationZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TranslateX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TranslateX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TranslateY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TranslateY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TranslateZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TranslateZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ICompositeTransform3DStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTranslateXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TranslateXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTranslateYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TranslateYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTranslateZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TranslateZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.ICompositeTransform3DStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddbf4d67-2a25-48f3-9808-c51ec3d55bec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TranslateXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TranslateYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TranslateZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMatrix3DHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.IMatrix3DHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e48c10ef-9927-4c9b-8213-07775512ba04";
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
pub const IMatrix3DHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getIdentity(self: *@This()) core.HResult!Matrix3D {
        var _r: Matrix3D = undefined;
        const _c = self.vtable.get_Identity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Multiply(self: *@This(), matrix1: Matrix3D, matrix2: Matrix3D) core.HResult!Matrix3D {
        var _r: Matrix3D = undefined;
        const _c = self.vtable.Multiply(@ptrCast(self), matrix1, matrix2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromElements(self: *@This(), m11: f64, m12: f64, m13: f64, m14: f64, m21: f64, m22: f64, m23: f64, m24: f64, m31: f64, m32: f64, m33: f64, m34: f64, offsetX: f64, offsetY: f64, offsetZ: f64, m44: f64) core.HResult!Matrix3D {
        var _r: Matrix3D = undefined;
        const _c = self.vtable.FromElements(@ptrCast(self), m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, offsetX, offsetY, offsetZ, m44, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHasInverse(self: *@This(), target: Matrix3D) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetHasInverse(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsIdentity(self: *@This(), target: Matrix3D) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsIdentity(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Invert(self: *@This(), target: Matrix3D) core.HResult!Matrix3D {
        var _r: Matrix3D = undefined;
        const _c = self.vtable.Invert(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.IMatrix3DHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9264545e-e158-4e74-8899-689160bd2f8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Identity: *const fn(self: *anyopaque, _r: *Matrix3D) callconv(.winapi) HRESULT,
        Multiply: *const fn(self: *anyopaque, matrix1: Matrix3D, matrix2: Matrix3D, _r: *Matrix3D) callconv(.winapi) HRESULT,
        FromElements: *const fn(self: *anyopaque, m11: f64, m12: f64, m13: f64, m14: f64, m21: f64, m22: f64, m23: f64, m24: f64, m31: f64, m32: f64, m33: f64, m34: f64, offsetX: f64, offsetY: f64, offsetZ: f64, m44: f64, _r: *Matrix3D) callconv(.winapi) HRESULT,
        GetHasInverse: *const fn(self: *anyopaque, target: Matrix3D, _r: *bool) callconv(.winapi) HRESULT,
        GetIsIdentity: *const fn(self: *anyopaque, target: Matrix3D, _r: *bool) callconv(.winapi) HRESULT,
        Invert: *const fn(self: *anyopaque, target: Matrix3D, _r: *Matrix3D) callconv(.winapi) HRESULT,
    };
};
pub const IPerspectiveTransform3D = extern struct {
    vtable: *const VTable,
    pub fn getDepth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Depth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDepth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Depth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffsetX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OffsetX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffsetX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OffsetX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffsetY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OffsetY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffsetY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OffsetY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a7b532a-30f9-40a1-96c9-c59d87f95ac3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Depth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Depth: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OffsetX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OffsetX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OffsetY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OffsetY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IPerspectiveTransform3DStatics = extern struct {
    vtable: *const VTable,
    pub fn getDepthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DepthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffsetXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OffsetXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffsetYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OffsetYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3DStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e6f6400-620c-48c7-844d-3f0984da5b17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DepthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OffsetXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OffsetYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITransform3D = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.ITransform3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae3ed43a-a9fc-4c31-86cd-56d9ca251a69";
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
pub const ITransform3DFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Transform3D {
        var _r: *Transform3D = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.ITransform3DFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "052c1f7a-8d73-48cd-bbb8-d00434caae5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Transform3D) callconv(.winapi) HRESULT,
    };
};
pub const Matrix3D = extern struct {
    M11: f64,
    M12: f64,
    M13: f64,
    M14: f64,
    M21: f64,
    M22: f64,
    M23: f64,
    M24: f64,
    M31: f64,
    M32: f64,
    M33: f64,
    M34: f64,
    OffsetX: f64,
    OffsetY: f64,
    OffsetZ: f64,
    M44: f64,
};
pub const Matrix3DHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Identity() core.HResult!Matrix3D {
        const factory = @This().IMatrix3DHelperStaticsCache.get();
        return try factory.getIdentity();
    }
    pub fn Multiply(matrix1: Matrix3D, matrix2: Matrix3D) core.HResult!Matrix3D {
        const factory = @This().IMatrix3DHelperStaticsCache.get();
        return try factory.Multiply(matrix1, matrix2);
    }
    pub fn FromElements(m11: f64, m12: f64, m13: f64, m14: f64, m21: f64, m22: f64, m23: f64, m24: f64, m31: f64, m32: f64, m33: f64, m34: f64, offsetX: f64, offsetY: f64, offsetZ: f64, m44: f64) core.HResult!Matrix3D {
        const factory = @This().IMatrix3DHelperStaticsCache.get();
        return try factory.FromElements(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, offsetX, offsetY, offsetZ, m44);
    }
    pub fn GetHasInverse(target: Matrix3D) core.HResult!bool {
        const factory = @This().IMatrix3DHelperStaticsCache.get();
        return try factory.GetHasInverse(target);
    }
    pub fn GetIsIdentity(target: Matrix3D) core.HResult!bool {
        const factory = @This().IMatrix3DHelperStaticsCache.get();
        return try factory.GetIsIdentity(target);
    }
    pub fn Invert(target: Matrix3D) core.HResult!Matrix3D {
        const factory = @This().IMatrix3DHelperStaticsCache.get();
        return try factory.Invert(target);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.Matrix3DHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMatrix3DHelper.GUID;
    pub const IID: Guid = IMatrix3DHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMatrix3DHelper.SIGNATURE);
    var _IMatrix3DHelperStaticsCache: FactoryCache(IMatrix3DHelperStatics, RUNTIME_NAME) = .{};
};
pub const PerspectiveTransform3D = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDepth(self: *@This()) core.HResult!f64 {
        const this: *IPerspectiveTransform3D = @ptrCast(self);
        return try this.getDepth();
    }
    pub fn putDepth(self: *@This(), value: f64) core.HResult!void {
        const this: *IPerspectiveTransform3D = @ptrCast(self);
        return try this.putDepth(value);
    }
    pub fn getOffsetX(self: *@This()) core.HResult!f64 {
        const this: *IPerspectiveTransform3D = @ptrCast(self);
        return try this.getOffsetX();
    }
    pub fn putOffsetX(self: *@This(), value: f64) core.HResult!void {
        const this: *IPerspectiveTransform3D = @ptrCast(self);
        return try this.putOffsetX(value);
    }
    pub fn getOffsetY(self: *@This()) core.HResult!f64 {
        const this: *IPerspectiveTransform3D = @ptrCast(self);
        return try this.getOffsetY();
    }
    pub fn putOffsetY(self: *@This(), value: f64) core.HResult!void {
        const this: *IPerspectiveTransform3D = @ptrCast(self);
        return try this.putOffsetY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPerspectiveTransform3D.IID)));
    }
    pub fn get_DepthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPerspectiveTransform3DStaticsCache.get();
        return try factory.getDepthProperty();
    }
    pub fn get_OffsetXProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPerspectiveTransform3DStaticsCache.get();
        return try factory.getOffsetXProperty();
    }
    pub fn get_OffsetYProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPerspectiveTransform3DStaticsCache.get();
        return try factory.getOffsetYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Media3D.PerspectiveTransform3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerspectiveTransform3D.GUID;
    pub const IID: Guid = IPerspectiveTransform3D.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerspectiveTransform3D.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPerspectiveTransform3DStaticsCache: FactoryCache(IPerspectiveTransform3DStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const HRESULT = @import("../../../root.zig").HRESULT;
const core = @import("../../../root.zig").core;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const DependencyProperty = @import("../../Xaml.zig").DependencyProperty;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const HSTRING = @import("../../../root.zig").HSTRING;
