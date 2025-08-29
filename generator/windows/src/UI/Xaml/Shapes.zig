pub const Shape = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFill(self: *@This()) core.HResult!*Brush {
        const this: *IShape = @ptrCast(self);
        return try this.getFill();
    }
    pub fn putFill(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putFill(value);
    }
    pub fn getStroke(self: *@This()) core.HResult!*Brush {
        const this: *IShape = @ptrCast(self);
        return try this.getStroke();
    }
    pub fn putStroke(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStroke(value);
    }
    pub fn getStrokeMiterLimit(self: *@This()) core.HResult!f64 {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeMiterLimit();
    }
    pub fn putStrokeMiterLimit(self: *@This(), value: f64) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeMiterLimit(value);
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f64 {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeThickness();
    }
    pub fn putStrokeThickness(self: *@This(), value: f64) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeThickness(value);
    }
    pub fn getStrokeStartLineCap(self: *@This()) core.HResult!PenLineCap {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeStartLineCap();
    }
    pub fn putStrokeStartLineCap(self: *@This(), value: PenLineCap) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeStartLineCap(value);
    }
    pub fn getStrokeEndLineCap(self: *@This()) core.HResult!PenLineCap {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeEndLineCap();
    }
    pub fn putStrokeEndLineCap(self: *@This(), value: PenLineCap) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeEndLineCap(value);
    }
    pub fn getStrokeLineJoin(self: *@This()) core.HResult!PenLineJoin {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeLineJoin();
    }
    pub fn putStrokeLineJoin(self: *@This(), value: PenLineJoin) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeLineJoin(value);
    }
    pub fn getStrokeDashOffset(self: *@This()) core.HResult!f64 {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeDashOffset();
    }
    pub fn putStrokeDashOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeDashOffset(value);
    }
    pub fn getStrokeDashCap(self: *@This()) core.HResult!PenLineCap {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeDashCap();
    }
    pub fn putStrokeDashCap(self: *@This(), value: PenLineCap) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeDashCap(value);
    }
    pub fn getStrokeDashArray(self: *@This()) core.HResult!*DoubleCollection {
        const this: *IShape = @ptrCast(self);
        return try this.getStrokeDashArray();
    }
    pub fn putStrokeDashArray(self: *@This(), value: *DoubleCollection) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStrokeDashArray(value);
    }
    pub fn getStretch(self: *@This()) core.HResult!Stretch {
        const this: *IShape = @ptrCast(self);
        return try this.getStretch();
    }
    pub fn putStretch(self: *@This(), value: Stretch) core.HResult!void {
        const this: *IShape = @ptrCast(self);
        return try this.putStretch(value);
    }
    pub fn getGeometryTransform(self: *@This()) core.HResult!*Transform {
        const this: *IShape = @ptrCast(self);
        return try this.getGeometryTransform();
    }
    pub fn GetAlphaMask(self: *@This()) core.HResult!*CompositionBrush {
        var this: ?*IShape2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IShape2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAlphaMask();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_FillProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getFillProperty();
    }
    pub fn get_StrokeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeProperty();
    }
    pub fn get_StrokeMiterLimitProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeMiterLimitProperty();
    }
    pub fn get_StrokeThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeThicknessProperty();
    }
    pub fn get_StrokeStartLineCapProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeStartLineCapProperty();
    }
    pub fn get_StrokeEndLineCapProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeEndLineCapProperty();
    }
    pub fn get_StrokeLineJoinProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeLineJoinProperty();
    }
    pub fn get_StrokeDashOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeDashOffsetProperty();
    }
    pub fn get_StrokeDashCapProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeDashCapProperty();
    }
    pub fn get_StrokeDashArrayProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStrokeDashArrayProperty();
    }
    pub fn get_StretchProperty() core.HResult!*DependencyProperty {
        const factory = @This().IShapeStaticsCache.get();
        return try factory.getStretchProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Shape {
        const factory = @This().IShapeFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Shape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShape.GUID;
    pub const IID: Guid = IShape.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShape.SIGNATURE);
    var _IShapeStaticsCache: FactoryCache(IShapeStatics, RUNTIME_NAME) = .{};
    var _IShapeFactoryCache: FactoryCache(IShapeFactory, RUNTIME_NAME) = .{};
};
pub const Ellipse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEllipse.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Ellipse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEllipse.GUID;
    pub const IID: Guid = IEllipse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEllipse.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IEllipse = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IEllipse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70e05ac4-d38d-4bab-831f-4a22ef52ac86";
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
pub const ILine = extern struct {
    vtable: *const VTable,
    pub fn getX1(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_X1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putX1(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_X1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getY1(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Y1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putY1(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Y1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getX2(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_X2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putX2(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_X2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getY2(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Y2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putY2(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Y2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.ILine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46a5433d-4ffb-48df-8732-4e15c834816b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_X1: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_X1: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Y1: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Y1: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_X2: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_X2: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Y2: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Y2: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ILineStatics = extern struct {
    vtable: *const VTable,
    pub fn getX1Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_X1Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getY1Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Y1Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX2Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_X2Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getY2Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Y2Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.ILineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "267c123d-6ea4-4c50-8b1d-50207aff1e8a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_X1Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_Y1Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_X2Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_Y2Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPath = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*Geometry {
        var _r: *Geometry = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *Geometry) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78883609-3d57-4f3c-b8a5-6cabcac9711f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **Geometry) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *Geometry) callconv(.winapi) HRESULT,
    };
};
pub const IPathFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Path {
        var _r: *Path = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPathFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2340a4e3-5a86-4fc6-9a50-cbb93b828766";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Path) callconv(.winapi) HRESULT,
    };
};
pub const IPathStatics = extern struct {
    vtable: *const VTable,
    pub fn getDataProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DataProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPathStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f627e59d-87dc-4142-81f1-97fc7ff8641c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPolygon = extern struct {
    vtable: *const VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        var _r: FillRule = undefined;
        const _c = self.vtable.get_FillRule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const _c = self.vtable.put_FillRule(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        var _r: *PointCollection = undefined;
        const _c = self.vtable.get_Points(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const _c = self.vtable.put_Points(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPolygon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3755c19-2e4d-4bcc-8d34-86871957fa01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRule: *const fn(self: *anyopaque, _r: *FillRule) callconv(.winapi) HRESULT,
        put_FillRule: *const fn(self: *anyopaque, value: FillRule) callconv(.winapi) HRESULT,
        get_Points: *const fn(self: *anyopaque, _r: **PointCollection) callconv(.winapi) HRESULT,
        put_Points: *const fn(self: *anyopaque, value: *PointCollection) callconv(.winapi) HRESULT,
    };
};
pub const IPolygonStatics = extern struct {
    vtable: *const VTable,
    pub fn getFillRuleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillRuleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPolygonStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "362a8aab-d463-4366-9e1a-beba72810fb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRuleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPolyline = extern struct {
    vtable: *const VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        var _r: FillRule = undefined;
        const _c = self.vtable.get_FillRule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const _c = self.vtable.put_FillRule(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        var _r: *PointCollection = undefined;
        const _c = self.vtable.get_Points(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const _c = self.vtable.put_Points(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPolyline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91dc62f8-42b3-47f3-8476-c55124a7c4c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRule: *const fn(self: *anyopaque, _r: *FillRule) callconv(.winapi) HRESULT,
        put_FillRule: *const fn(self: *anyopaque, value: FillRule) callconv(.winapi) HRESULT,
        get_Points: *const fn(self: *anyopaque, _r: **PointCollection) callconv(.winapi) HRESULT,
        put_Points: *const fn(self: *anyopaque, value: *PointCollection) callconv(.winapi) HRESULT,
    };
};
pub const IPolylineStatics = extern struct {
    vtable: *const VTable,
    pub fn getFillRuleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillRuleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IPolylineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7aa2cd1-a26c-43b0-aaa5-822fa64a11b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRuleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IRectangle = extern struct {
    vtable: *const VTable,
    pub fn getRadiusX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RadiusX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadiusX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RadiusX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRadiusY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RadiusY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadiusY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RadiusY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IRectangle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "855bc230-8a11-4e18-a136-4bc21c7827b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RadiusX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RadiusX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RadiusY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RadiusY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IRectangleStatics = extern struct {
    vtable: *const VTable,
    pub fn getRadiusXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RadiusXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadiusYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RadiusYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IRectangleStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f25aa53-bb3a-4c3c-89db-6fbc0d1fa0cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RadiusXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RadiusYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IShape = extern struct {
    vtable: *const VTable,
    pub fn getFill(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Fill(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFill(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Fill(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStroke(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Stroke(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStroke(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Stroke(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeMiterLimit(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StrokeMiterLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeMiterLimit(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_StrokeMiterLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StrokeThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeThickness(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_StrokeThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeStartLineCap(self: *@This()) core.HResult!PenLineCap {
        var _r: PenLineCap = undefined;
        const _c = self.vtable.get_StrokeStartLineCap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeStartLineCap(self: *@This(), value: PenLineCap) core.HResult!void {
        const _c = self.vtable.put_StrokeStartLineCap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeEndLineCap(self: *@This()) core.HResult!PenLineCap {
        var _r: PenLineCap = undefined;
        const _c = self.vtable.get_StrokeEndLineCap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeEndLineCap(self: *@This(), value: PenLineCap) core.HResult!void {
        const _c = self.vtable.put_StrokeEndLineCap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeLineJoin(self: *@This()) core.HResult!PenLineJoin {
        var _r: PenLineJoin = undefined;
        const _c = self.vtable.get_StrokeLineJoin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeLineJoin(self: *@This(), value: PenLineJoin) core.HResult!void {
        const _c = self.vtable.put_StrokeLineJoin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StrokeDashOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_StrokeDashOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashCap(self: *@This()) core.HResult!PenLineCap {
        var _r: PenLineCap = undefined;
        const _c = self.vtable.get_StrokeDashCap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashCap(self: *@This(), value: PenLineCap) core.HResult!void {
        const _c = self.vtable.put_StrokeDashCap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashArray(self: *@This()) core.HResult!*DoubleCollection {
        var _r: *DoubleCollection = undefined;
        const _c = self.vtable.get_StrokeDashArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashArray(self: *@This(), value: *DoubleCollection) core.HResult!void {
        const _c = self.vtable.put_StrokeDashArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStretch(self: *@This()) core.HResult!Stretch {
        var _r: Stretch = undefined;
        const _c = self.vtable.get_Stretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStretch(self: *@This(), value: Stretch) core.HResult!void {
        const _c = self.vtable.put_Stretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGeometryTransform(self: *@This()) core.HResult!*Transform {
        var _r: *Transform = undefined;
        const _c = self.vtable.get_GeometryTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "786f2b75-9aa0-454d-ae06-a2466e37c832";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Fill: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Fill: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_Stroke: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Stroke: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_StrokeMiterLimit: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_StrokeMiterLimit: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_StrokeThickness: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_StrokeThickness: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_StrokeStartLineCap: *const fn(self: *anyopaque, _r: *PenLineCap) callconv(.winapi) HRESULT,
        put_StrokeStartLineCap: *const fn(self: *anyopaque, value: PenLineCap) callconv(.winapi) HRESULT,
        get_StrokeEndLineCap: *const fn(self: *anyopaque, _r: *PenLineCap) callconv(.winapi) HRESULT,
        put_StrokeEndLineCap: *const fn(self: *anyopaque, value: PenLineCap) callconv(.winapi) HRESULT,
        get_StrokeLineJoin: *const fn(self: *anyopaque, _r: *PenLineJoin) callconv(.winapi) HRESULT,
        put_StrokeLineJoin: *const fn(self: *anyopaque, value: PenLineJoin) callconv(.winapi) HRESULT,
        get_StrokeDashOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_StrokeDashOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_StrokeDashCap: *const fn(self: *anyopaque, _r: *PenLineCap) callconv(.winapi) HRESULT,
        put_StrokeDashCap: *const fn(self: *anyopaque, value: PenLineCap) callconv(.winapi) HRESULT,
        get_StrokeDashArray: *const fn(self: *anyopaque, _r: **DoubleCollection) callconv(.winapi) HRESULT,
        put_StrokeDashArray: *const fn(self: *anyopaque, value: *DoubleCollection) callconv(.winapi) HRESULT,
        get_Stretch: *const fn(self: *anyopaque, _r: *Stretch) callconv(.winapi) HRESULT,
        put_Stretch: *const fn(self: *anyopaque, value: Stretch) callconv(.winapi) HRESULT,
        get_GeometryTransform: *const fn(self: *anyopaque, _r: **Transform) callconv(.winapi) HRESULT,
    };
};
pub const IShape2 = extern struct {
    vtable: *const VTable,
    pub fn GetAlphaMask(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.GetAlphaMask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IShape2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97248dba-49f2-49a4-a5dd-164df824db14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAlphaMask: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
    };
};
pub const IShapeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Shape {
        var _r: *Shape = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IShapeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b717613-f6aa-48d5-9588-e1d188eacbc9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Shape) callconv(.winapi) HRESULT,
    };
};
pub const IShapeStatics = extern struct {
    vtable: *const VTable,
    pub fn getFillProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeMiterLimitProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeMiterLimitProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeStartLineCapProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeStartLineCapProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeEndLineCapProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeEndLineCapProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeLineJoinProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeLineJoinProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeDashOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeDashOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeDashCapProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeDashCapProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeDashArrayProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeDashArrayProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStretchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StretchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.IShapeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d7b4c55-9df3-48dc-9194-9d306faa6089";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeMiterLimitProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeStartLineCapProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeEndLineCapProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeLineJoinProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeDashOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeDashCapProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeDashArrayProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StretchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const Line = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getX1(self: *@This()) core.HResult!f64 {
        const this: *ILine = @ptrCast(self);
        return try this.getX1();
    }
    pub fn putX1(self: *@This(), value: f64) core.HResult!void {
        const this: *ILine = @ptrCast(self);
        return try this.putX1(value);
    }
    pub fn getY1(self: *@This()) core.HResult!f64 {
        const this: *ILine = @ptrCast(self);
        return try this.getY1();
    }
    pub fn putY1(self: *@This(), value: f64) core.HResult!void {
        const this: *ILine = @ptrCast(self);
        return try this.putY1(value);
    }
    pub fn getX2(self: *@This()) core.HResult!f64 {
        const this: *ILine = @ptrCast(self);
        return try this.getX2();
    }
    pub fn putX2(self: *@This(), value: f64) core.HResult!void {
        const this: *ILine = @ptrCast(self);
        return try this.putX2(value);
    }
    pub fn getY2(self: *@This()) core.HResult!f64 {
        const this: *ILine = @ptrCast(self);
        return try this.getY2();
    }
    pub fn putY2(self: *@This(), value: f64) core.HResult!void {
        const this: *ILine = @ptrCast(self);
        return try this.putY2(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILine.IID)));
    }
    pub fn get_X1Property() core.HResult!*DependencyProperty {
        const factory = @This().ILineStaticsCache.get();
        return try factory.getX1Property();
    }
    pub fn get_Y1Property() core.HResult!*DependencyProperty {
        const factory = @This().ILineStaticsCache.get();
        return try factory.getY1Property();
    }
    pub fn get_X2Property() core.HResult!*DependencyProperty {
        const factory = @This().ILineStaticsCache.get();
        return try factory.getX2Property();
    }
    pub fn get_Y2Property() core.HResult!*DependencyProperty {
        const factory = @This().ILineStaticsCache.get();
        return try factory.getY2Property();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Line";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILine.GUID;
    pub const IID: Guid = ILine.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILine.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILineStaticsCache: FactoryCache(ILineStatics, RUNTIME_NAME) = .{};
};
pub const Path = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*Geometry {
        const this: *IPath = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *Geometry) core.HResult!void {
        const this: *IPath = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DataProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPathStaticsCache.get();
        return try factory.getDataProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Path {
        const factory = @This().IPathFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Path";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPath.GUID;
    pub const IID: Guid = IPath.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPath.SIGNATURE);
    var _IPathStaticsCache: FactoryCache(IPathStatics, RUNTIME_NAME) = .{};
    var _IPathFactoryCache: FactoryCache(IPathFactory, RUNTIME_NAME) = .{};
};
pub const Polygon = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        const this: *IPolygon = @ptrCast(self);
        return try this.getFillRule();
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const this: *IPolygon = @ptrCast(self);
        return try this.putFillRule(value);
    }
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        const this: *IPolygon = @ptrCast(self);
        return try this.getPoints();
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const this: *IPolygon = @ptrCast(self);
        return try this.putPoints(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPolygon.IID)));
    }
    pub fn get_FillRuleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPolygonStaticsCache.get();
        return try factory.getFillRuleProperty();
    }
    pub fn get_PointsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPolygonStaticsCache.get();
        return try factory.getPointsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Polygon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPolygon.GUID;
    pub const IID: Guid = IPolygon.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPolygon.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPolygonStaticsCache: FactoryCache(IPolygonStatics, RUNTIME_NAME) = .{};
};
pub const Polyline = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        const this: *IPolyline = @ptrCast(self);
        return try this.getFillRule();
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const this: *IPolyline = @ptrCast(self);
        return try this.putFillRule(value);
    }
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        const this: *IPolyline = @ptrCast(self);
        return try this.getPoints();
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const this: *IPolyline = @ptrCast(self);
        return try this.putPoints(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPolyline.IID)));
    }
    pub fn get_FillRuleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPolylineStaticsCache.get();
        return try factory.getFillRuleProperty();
    }
    pub fn get_PointsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPolylineStaticsCache.get();
        return try factory.getPointsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Polyline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPolyline.GUID;
    pub const IID: Guid = IPolyline.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPolyline.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPolylineStaticsCache: FactoryCache(IPolylineStatics, RUNTIME_NAME) = .{};
};
pub const Rectangle = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRadiusX(self: *@This()) core.HResult!f64 {
        const this: *IRectangle = @ptrCast(self);
        return try this.getRadiusX();
    }
    pub fn putRadiusX(self: *@This(), value: f64) core.HResult!void {
        const this: *IRectangle = @ptrCast(self);
        return try this.putRadiusX(value);
    }
    pub fn getRadiusY(self: *@This()) core.HResult!f64 {
        const this: *IRectangle = @ptrCast(self);
        return try this.getRadiusY();
    }
    pub fn putRadiusY(self: *@This(), value: f64) core.HResult!void {
        const this: *IRectangle = @ptrCast(self);
        return try this.putRadiusY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRectangle.IID)));
    }
    pub fn get_RadiusXProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRectangleStaticsCache.get();
        return try factory.getRadiusXProperty();
    }
    pub fn get_RadiusYProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRectangleStaticsCache.get();
        return try factory.getRadiusYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Shapes.Rectangle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRectangle.GUID;
    pub const IID: Guid = IRectangle.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRectangle.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRectangleStaticsCache: FactoryCache(IRectangleStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Stretch = @import("./Media.zig").Stretch;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const CompositionBrush = @import("../Composition.zig").CompositionBrush;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Geometry = @import("./Media.zig").Geometry;
const Transform = @import("./Media.zig").Transform;
const PenLineJoin = @import("./Media.zig").PenLineJoin;
const PointCollection = @import("./Media.zig").PointCollection;
const FillRule = @import("./Media.zig").FillRule;
const PenLineCap = @import("./Media.zig").PenLineCap;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const DoubleCollection = @import("./Media.zig").DoubleCollection;
const Brush = @import("./Media.zig").Brush;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
