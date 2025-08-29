pub const CoreIncrementalInkStroke = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AppendInkPoints(self: *@This(), inkPoints: *IIterable(InkPoint)) core.HResult!Rect {
        const this: *ICoreIncrementalInkStroke = @ptrCast(self);
        return try this.AppendInkPoints(inkPoints);
    }
    pub fn CreateInkStroke(self: *@This()) core.HResult!*InkStroke {
        const this: *ICoreIncrementalInkStroke = @ptrCast(self);
        return try this.CreateInkStroke();
    }
    pub fn getDrawingAttributes(self: *@This()) core.HResult!*InkDrawingAttributes {
        const this: *ICoreIncrementalInkStroke = @ptrCast(self);
        return try this.getDrawingAttributes();
    }
    pub fn getPointTransform(self: *@This()) core.HResult!Matrix3x2 {
        const this: *ICoreIncrementalInkStroke = @ptrCast(self);
        return try this.getPointTransform();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        const this: *ICoreIncrementalInkStroke = @ptrCast(self);
        return try this.getBoundingRect();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(drawingAttributes: *InkDrawingAttributes, pointTransform: Matrix3x2) core.HResult!*CoreIncrementalInkStroke {
        const factory = @This().ICoreIncrementalInkStrokeFactoryCache.get();
        return try factory.Create(drawingAttributes, pointTransform);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.CoreIncrementalInkStroke";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreIncrementalInkStroke.GUID;
    pub const IID: Guid = ICoreIncrementalInkStroke.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreIncrementalInkStroke.SIGNATURE);
    var _ICoreIncrementalInkStrokeFactoryCache: FactoryCache(ICoreIncrementalInkStrokeFactory, RUNTIME_NAME) = .{};
};
pub const CoreInkIndependentInputSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPointerEntering(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerEntering(handler);
    }
    pub fn removePointerEntering(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerEntering(cookie);
    }
    pub fn addPointerHovering(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerHovering(handler);
    }
    pub fn removePointerHovering(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerHovering(cookie);
    }
    pub fn addPointerExiting(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerExiting(handler);
    }
    pub fn removePointerExiting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerExiting(cookie);
    }
    pub fn addPointerPressing(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerPressing(handler);
    }
    pub fn removePointerPressing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerPressing(cookie);
    }
    pub fn addPointerMoving(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerMoving(handler);
    }
    pub fn removePointerMoving(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerMoving(cookie);
    }
    pub fn addPointerReleasing(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerReleasing(handler);
    }
    pub fn removePointerReleasing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerReleasing(cookie);
    }
    pub fn addPointerLost(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.addPointerLost(handler);
    }
    pub fn removePointerLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.removePointerLost(cookie);
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        const this: *ICoreInkIndependentInputSource = @ptrCast(self);
        return try this.getInkPresenter();
    }
    pub fn getPointerCursor(self: *@This()) core.HResult!*CoreCursor {
        var this: ?*ICoreInkIndependentInputSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInkIndependentInputSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerCursor();
    }
    pub fn putPointerCursor(self: *@This(), value: *CoreCursor) core.HResult!void {
        var this: ?*ICoreInkIndependentInputSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInkIndependentInputSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointerCursor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(inkPresenter: *InkPresenter) core.HResult!*CoreInkIndependentInputSource {
        const factory = @This().ICoreInkIndependentInputSourceStaticsCache.get();
        return try factory.Create(inkPresenter);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInkIndependentInputSource.GUID;
    pub const IID: Guid = ICoreInkIndependentInputSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInkIndependentInputSource.SIGNATURE);
    var _ICoreInkIndependentInputSourceStaticsCache: FactoryCache(ICoreInkIndependentInputSourceStatics, RUNTIME_NAME) = .{};
};
pub const CoreInkPresenterHost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        const this: *ICoreInkPresenterHost = @ptrCast(self);
        return try this.getInkPresenter();
    }
    pub fn getRootVisual(self: *@This()) core.HResult!*ContainerVisual {
        const this: *ICoreInkPresenterHost = @ptrCast(self);
        return try this.getRootVisual();
    }
    pub fn putRootVisual(self: *@This(), value: *ContainerVisual) core.HResult!void {
        const this: *ICoreInkPresenterHost = @ptrCast(self);
        return try this.putRootVisual(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICoreInkPresenterHost.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.CoreInkPresenterHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInkPresenterHost.GUID;
    pub const IID: Guid = ICoreInkPresenterHost.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInkPresenterHost.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CoreWetStrokeDisposition = enum(i32) {
    Inking = 0,
    Completed = 1,
    Canceled = 2,
};
pub const CoreWetStrokeUpdateEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewInkPoints(self: *@This()) core.HResult!*IVector(InkPoint) {
        const this: *ICoreWetStrokeUpdateEventArgs = @ptrCast(self);
        return try this.getNewInkPoints();
    }
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        const this: *ICoreWetStrokeUpdateEventArgs = @ptrCast(self);
        return try this.getPointerId();
    }
    pub fn getDisposition(self: *@This()) core.HResult!CoreWetStrokeDisposition {
        const this: *ICoreWetStrokeUpdateEventArgs = @ptrCast(self);
        return try this.getDisposition();
    }
    pub fn putDisposition(self: *@This(), value: CoreWetStrokeDisposition) core.HResult!void {
        const this: *ICoreWetStrokeUpdateEventArgs = @ptrCast(self);
        return try this.putDisposition(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWetStrokeUpdateEventArgs.GUID;
    pub const IID: Guid = ICoreWetStrokeUpdateEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWetStrokeUpdateEventArgs.SIGNATURE);
};
pub const CoreWetStrokeUpdateSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addWetStrokeStarting(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.addWetStrokeStarting(handler);
    }
    pub fn removeWetStrokeStarting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.removeWetStrokeStarting(cookie);
    }
    pub fn addWetStrokeContinuing(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.addWetStrokeContinuing(handler);
    }
    pub fn removeWetStrokeContinuing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.removeWetStrokeContinuing(cookie);
    }
    pub fn addWetStrokeStopping(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.addWetStrokeStopping(handler);
    }
    pub fn removeWetStrokeStopping(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.removeWetStrokeStopping(cookie);
    }
    pub fn addWetStrokeCompleted(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.addWetStrokeCompleted(handler);
    }
    pub fn removeWetStrokeCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.removeWetStrokeCompleted(cookie);
    }
    pub fn addWetStrokeCanceled(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.addWetStrokeCanceled(handler);
    }
    pub fn removeWetStrokeCanceled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.removeWetStrokeCanceled(cookie);
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        const this: *ICoreWetStrokeUpdateSource = @ptrCast(self);
        return try this.getInkPresenter();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(inkPresenter: *InkPresenter) core.HResult!*CoreWetStrokeUpdateSource {
        const factory = @This().ICoreWetStrokeUpdateSourceStaticsCache.get();
        return try factory.Create(inkPresenter);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWetStrokeUpdateSource.GUID;
    pub const IID: Guid = ICoreWetStrokeUpdateSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWetStrokeUpdateSource.SIGNATURE);
    var _ICoreWetStrokeUpdateSourceStaticsCache: FactoryCache(ICoreWetStrokeUpdateSourceStatics, RUNTIME_NAME) = .{};
};
pub const ICoreIncrementalInkStroke = extern struct {
    vtable: *const VTable,
    pub fn AppendInkPoints(self: *@This(), inkPoints: *IIterable(InkPoint)) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.AppendInkPoints(@ptrCast(self), inkPoints, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInkStroke(self: *@This()) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.CreateInkStroke(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDrawingAttributes(self: *@This()) core.HResult!*InkDrawingAttributes {
        var _r: *InkDrawingAttributes = undefined;
        const _c = self.vtable.get_DrawingAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointTransform(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_PointTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreIncrementalInkStroke";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fda015d3-9d66-4f7d-a57f-cc70b9cfaa76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AppendInkPoints: *const fn(self: *anyopaque, inkPoints: *IIterable(InkPoint), _r: *Rect) callconv(.winapi) HRESULT,
        CreateInkStroke: *const fn(self: *anyopaque, _r: **InkStroke) callconv(.winapi) HRESULT,
        get_DrawingAttributes: *const fn(self: *anyopaque, _r: **InkDrawingAttributes) callconv(.winapi) HRESULT,
        get_PointTransform: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        get_BoundingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const ICoreIncrementalInkStrokeFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), drawingAttributes: *InkDrawingAttributes, pointTransform: Matrix3x2) core.HResult!*CoreIncrementalInkStroke {
        var _r: *CoreIncrementalInkStroke = undefined;
        const _c = self.vtable.Create(@ptrCast(self), drawingAttributes, pointTransform, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreIncrementalInkStrokeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7c59f46-8da8-4f70-9751-e53bb6df4596";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, drawingAttributes: *InkDrawingAttributes, pointTransform: Matrix3x2, _r: **CoreIncrementalInkStroke) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInkIndependentInputSource = extern struct {
    vtable: *const VTable,
    pub fn addPointerEntering(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerEntering(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerEntering(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerEntering(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerHovering(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerHovering(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerHovering(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerHovering(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerExiting(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerExiting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerExiting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerExiting(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerPressing(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerPressing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerPressing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerPressing(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerMoving(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerMoving(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerMoving(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerMoving(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerReleasing(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerReleasing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerReleasing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerReleasing(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerLost(self: *@This(), handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerLost(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        var _r: *InkPresenter = undefined;
        const _c = self.vtable.get_InkPresenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39b38da9-7639-4499-a5b5-191d00e35b16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PointerEntering: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerEntering: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerHovering: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerHovering: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerExiting: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerExiting: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerPressing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerPressing: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerMoving: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerMoving: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerReleasing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerReleasing: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInkIndependentInputSource,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerLost: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_InkPresenter: *const fn(self: *anyopaque, _r: **InkPresenter) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInkIndependentInputSource2 = extern struct {
    vtable: *const VTable,
    pub fn getPointerCursor(self: *@This()) core.HResult!*CoreCursor {
        var _r: *CoreCursor = undefined;
        const _c = self.vtable.get_PointerCursor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerCursor(self: *@This(), value: *CoreCursor) core.HResult!void {
        const _c = self.vtable.put_PointerCursor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2846b012-0b59-5bb9-a3c5-becb7cf03a33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerCursor: *const fn(self: *anyopaque, _r: **CoreCursor) callconv(.winapi) HRESULT,
        put_PointerCursor: *const fn(self: *anyopaque, value: *CoreCursor) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInkIndependentInputSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), inkPresenter: *InkPresenter) core.HResult!*CoreInkIndependentInputSource {
        var _r: *CoreInkIndependentInputSource = undefined;
        const _c = self.vtable.Create(@ptrCast(self), inkPresenter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73e6011b-80c0-4dfb-9b66-10ba7f3f9c84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, inkPresenter: *InkPresenter, _r: **CoreInkIndependentInputSource) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInkPresenterHost = extern struct {
    vtable: *const VTable,
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        var _r: *InkPresenter = undefined;
        const _c = self.vtable.get_InkPresenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRootVisual(self: *@This()) core.HResult!*ContainerVisual {
        var _r: *ContainerVisual = undefined;
        const _c = self.vtable.get_RootVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRootVisual(self: *@This(), value: *ContainerVisual) core.HResult!void {
        const _c = self.vtable.put_RootVisual(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreInkPresenterHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "396e89e6-7d55-4617-9e58-68c70c9169b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InkPresenter: *const fn(self: *anyopaque, _r: **InkPresenter) callconv(.winapi) HRESULT,
        get_RootVisual: *const fn(self: *anyopaque, _r: **ContainerVisual) callconv(.winapi) HRESULT,
        put_RootVisual: *const fn(self: *anyopaque, value: *ContainerVisual) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWetStrokeUpdateEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewInkPoints(self: *@This()) core.HResult!*IVector(InkPoint) {
        var _r: *IVector(InkPoint) = undefined;
        const _c = self.vtable.get_NewInkPoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PointerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisposition(self: *@This()) core.HResult!CoreWetStrokeDisposition {
        var _r: CoreWetStrokeDisposition = undefined;
        const _c = self.vtable.get_Disposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisposition(self: *@This(), value: CoreWetStrokeDisposition) core.HResult!void {
        const _c = self.vtable.put_Disposition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb07d14c-3380-457a-a987-991357896c1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewInkPoints: *const fn(self: *anyopaque, _r: **IVector(InkPoint)) callconv(.winapi) HRESULT,
        get_PointerId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Disposition: *const fn(self: *anyopaque, _r: *CoreWetStrokeDisposition) callconv(.winapi) HRESULT,
        put_Disposition: *const fn(self: *anyopaque, value: CoreWetStrokeDisposition) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWetStrokeUpdateSource = extern struct {
    vtable: *const VTable,
    pub fn addWetStrokeStarting(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WetStrokeStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWetStrokeStarting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WetStrokeStarting(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWetStrokeContinuing(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WetStrokeContinuing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWetStrokeContinuing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WetStrokeContinuing(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWetStrokeStopping(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WetStrokeStopping(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWetStrokeStopping(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WetStrokeStopping(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWetStrokeCompleted(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WetStrokeCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWetStrokeCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WetStrokeCompleted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWetStrokeCanceled(self: *@This(), handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WetStrokeCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWetStrokeCanceled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WetStrokeCanceled(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        var _r: *InkPresenter = undefined;
        const _c = self.vtable.get_InkPresenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f718e22-ee52-4e00-8209-4c3e5b21a3cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_WetStrokeStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WetStrokeStarting: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WetStrokeContinuing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WetStrokeContinuing: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WetStrokeStopping: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WetStrokeStopping: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WetStrokeCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WetStrokeCompleted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WetStrokeCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWetStrokeUpdateSource,CoreWetStrokeUpdateEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WetStrokeCanceled: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_InkPresenter: *const fn(self: *anyopaque, _r: **InkPresenter) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWetStrokeUpdateSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), inkPresenter: *InkPresenter) core.HResult!*CoreWetStrokeUpdateSource {
        var _r: *CoreWetStrokeUpdateSource = undefined;
        const _c = self.vtable.Create(@ptrCast(self), inkPresenter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3dad9cba-1d3d-46ae-ab9d-8647486c6f90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, inkPresenter: *InkPresenter, _r: **CoreWetStrokeUpdateSource) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const Matrix3x2 = @import("../../../Foundation/Numerics.zig").Matrix3x2;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const InkDrawingAttributes = @import("../Inking.zig").InkDrawingAttributes;
const CoreCursor = @import("../../Core.zig").CoreCursor;
const IVector = @import("../../../Foundation/Collections.zig").IVector;
const InkStroke = @import("../Inking.zig").InkStroke;
const InkPoint = @import("../Inking.zig").InkPoint;
const HRESULT = @import("../../../root.zig").HRESULT;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const core = @import("../../../root.zig").core;
const PointerEventArgs = @import("../../Core.zig").PointerEventArgs;
const Rect = @import("../../../Foundation.zig").Rect;
const InkPresenter = @import("../Inking.zig").InkPresenter;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const ContainerVisual = @import("../../Composition.zig").ContainerVisual;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
