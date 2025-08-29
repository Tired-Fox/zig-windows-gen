pub const AnimationDescription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAnimations(self: *@This()) core.HResult!*IVectorView(IPropertyAnimation) {
        const this: *IAnimationDescription = @ptrCast(self);
        return try this.getAnimations();
    }
    pub fn getStaggerDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IAnimationDescription = @ptrCast(self);
        return try this.getStaggerDelay();
    }
    pub fn getStaggerDelayFactor(self: *@This()) core.HResult!f32 {
        const this: *IAnimationDescription = @ptrCast(self);
        return try this.getStaggerDelayFactor();
    }
    pub fn getDelayLimit(self: *@This()) core.HResult!TimeSpan {
        const this: *IAnimationDescription = @ptrCast(self);
        return try this.getDelayLimit();
    }
    pub fn getZOrder(self: *@This()) core.HResult!i32 {
        const this: *IAnimationDescription = @ptrCast(self);
        return try this.getZOrder();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(effect: AnimationEffect, target: AnimationEffectTarget) core.HResult!*AnimationDescription {
        const factory = @This().IAnimationDescriptionFactoryCache.get();
        return try factory.CreateInstance(effect, target);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.AnimationDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAnimationDescription.GUID;
    pub const IID: Guid = IAnimationDescription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAnimationDescription.SIGNATURE);
    var _IAnimationDescriptionFactoryCache: FactoryCache(IAnimationDescriptionFactory, RUNTIME_NAME) = .{};
};
pub const AnimationEffect = enum(i32) {
    Expand = 0,
    Collapse = 1,
    Reposition = 2,
    FadeIn = 3,
    FadeOut = 4,
    AddToList = 5,
    DeleteFromList = 6,
    AddToGrid = 7,
    DeleteFromGrid = 8,
    AddToSearchGrid = 9,
    DeleteFromSearchGrid = 10,
    AddToSearchList = 11,
    DeleteFromSearchList = 12,
    ShowEdgeUI = 13,
    ShowPanel = 14,
    HideEdgeUI = 15,
    HidePanel = 16,
    ShowPopup = 17,
    HidePopup = 18,
    PointerDown = 19,
    PointerUp = 20,
    DragSourceStart = 21,
    DragSourceEnd = 22,
    TransitionContent = 23,
    Reveal = 24,
    Hide = 25,
    DragBetweenEnter = 26,
    DragBetweenLeave = 27,
    SwipeSelect = 28,
    SwipeDeselect = 29,
    SwipeReveal = 30,
    EnterPage = 31,
    TransitionPage = 32,
    CrossFade = 33,
    Peek = 34,
    UpdateBadge = 35,
};
pub const AnimationEffectTarget = enum(i32) {
    Primary = 0,
    Added = 1,
    Affected = 2,
    Background = 3,
    Content = 4,
    Deleted = 5,
    Deselected = 6,
    DragSource = 7,
    Hidden = 8,
    Incoming = 9,
    Outgoing = 10,
    Outline = 11,
    Remaining = 12,
    Revealed = 13,
    RowIn = 14,
    RowOut = 15,
    Selected = 16,
    Selection = 17,
    Shown = 18,
    Tapped = 19,
};
pub const IAnimationDescription = extern struct {
    vtable: *const VTable,
    pub fn getAnimations(self: *@This()) core.HResult!*IVectorView(IPropertyAnimation) {
        var _r: *IVectorView(IPropertyAnimation) = undefined;
        const _c = self.vtable.get_Animations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStaggerDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StaggerDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStaggerDelayFactor(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_StaggerDelayFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelayLimit(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DelayLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZOrder(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.IAnimationDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d11a549-be3d-41de-b081-05c149962f9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Animations: *const fn(self: *anyopaque, _r: **IVectorView(IPropertyAnimation)) callconv(.winapi) HRESULT,
        get_StaggerDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_StaggerDelayFactor: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_DelayLimit: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ZOrder: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAnimationDescriptionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), effect: AnimationEffect, target: AnimationEffectTarget) core.HResult!*AnimationDescription {
        var _r: *AnimationDescription = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), effect, target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.IAnimationDescriptionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6e27abe-c1fb-48b5-9271-ecc70ac86ef0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, effect: AnimationEffect, target: AnimationEffectTarget, _r: **AnimationDescription) callconv(.winapi) HRESULT,
    };
};
pub const IOpacityAnimation = extern struct {
    vtable: *const VTable,
    pub fn getInitialOpacity(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_InitialOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFinalOpacity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_FinalOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.IOpacityAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "803aabe5-ee7e-455f-84e9-2506afb8d2b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InitialOpacity: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        get_FinalOpacity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyAnimation = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!PropertyAnimationType {
        var _r: PropertyAnimationType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Delay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControl1(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Control1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControl2(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Control2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.IPropertyAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a01b4da-4d8c-411e-b615-1ade683a9903";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PropertyAnimationType) callconv(.winapi) HRESULT,
        get_Delay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Control1: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Control2: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IScaleAnimation = extern struct {
    vtable: *const VTable,
    pub fn getInitialScaleX(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_InitialScaleX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInitialScaleY(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_InitialScaleY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFinalScaleX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_FinalScaleX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFinalScaleY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_FinalScaleY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedOrigin(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_NormalizedOrigin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.IScaleAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "023552c7-71ab-428c-9c9f-d31780964995";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InitialScaleX: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        get_InitialScaleY: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        get_FinalScaleX: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_FinalScaleY: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_NormalizedOrigin: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const OpacityAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInitialOpacity(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IOpacityAnimation = @ptrCast(self);
        return try this.getInitialOpacity();
    }
    pub fn getFinalOpacity(self: *@This()) core.HResult!f32 {
        const this: *IOpacityAnimation = @ptrCast(self);
        return try this.getFinalOpacity();
    }
    pub fn getType(self: *@This()) core.HResult!PropertyAnimationType {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDelay();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn getControl1(self: *@This()) core.HResult!Point {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getControl1();
    }
    pub fn getControl2(self: *@This()) core.HResult!Point {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getControl2();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.OpacityAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOpacityAnimation.GUID;
    pub const IID: Guid = IOpacityAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOpacityAnimation.SIGNATURE);
};
pub const PropertyAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!PropertyAnimationType {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getType();
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getControl1(self: *@This()) core.HResult!Point {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getControl1();
    }
    pub fn getControl2(self: *@This()) core.HResult!Point {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getControl2();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.PropertyAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertyAnimation.GUID;
    pub const IID: Guid = IPropertyAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertyAnimation.SIGNATURE);
};
pub const PropertyAnimationType = enum(i32) {
    Scale = 0,
    Translation = 1,
    Opacity = 2,
};
pub const ScaleAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInitialScaleX(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IScaleAnimation = @ptrCast(self);
        return try this.getInitialScaleX();
    }
    pub fn getInitialScaleY(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IScaleAnimation = @ptrCast(self);
        return try this.getInitialScaleY();
    }
    pub fn getFinalScaleX(self: *@This()) core.HResult!f32 {
        const this: *IScaleAnimation = @ptrCast(self);
        return try this.getFinalScaleX();
    }
    pub fn getFinalScaleY(self: *@This()) core.HResult!f32 {
        const this: *IScaleAnimation = @ptrCast(self);
        return try this.getFinalScaleY();
    }
    pub fn getNormalizedOrigin(self: *@This()) core.HResult!Point {
        const this: *IScaleAnimation = @ptrCast(self);
        return try this.getNormalizedOrigin();
    }
    pub fn getType(self: *@This()) core.HResult!PropertyAnimationType {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDelay();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn getControl1(self: *@This()) core.HResult!Point {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getControl1();
    }
    pub fn getControl2(self: *@This()) core.HResult!Point {
        var this: ?*IPropertyAnimation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPropertyAnimation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getControl2();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.ScaleAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScaleAnimation.GUID;
    pub const IID: Guid = IScaleAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScaleAnimation.SIGNATURE);
};
pub const TranslationAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!PropertyAnimationType {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getType();
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getControl1(self: *@This()) core.HResult!Point {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getControl1();
    }
    pub fn getControl2(self: *@This()) core.HResult!Point {
        const this: *IPropertyAnimation = @ptrCast(self);
        return try this.getControl2();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AnimationMetrics.TranslationAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertyAnimation.GUID;
    pub const IID: Guid = IPropertyAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertyAnimation.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IReference = @import("../../Foundation.zig").IReference;
const Point = @import("../../Foundation.zig").Point;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
