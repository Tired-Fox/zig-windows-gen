pub const CompositionConditionalValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *ICompositionConditionalValue = @ptrCast(self);
        return try this.getCondition();
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *ICompositionConditionalValue = @ptrCast(self);
        return try this.putCondition(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *ICompositionConditionalValue = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *ICompositionConditionalValue = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*CompositionConditionalValue {
        const factory = @This().ICompositionConditionalValueStaticsCache.get();
        return try factory.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.CompositionConditionalValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionConditionalValue.GUID;
    pub const IID: Guid = ICompositionConditionalValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionConditionalValue.SIGNATURE);
    var _ICompositionConditionalValueStaticsCache: FactoryCache(ICompositionConditionalValueStatics, RUNTIME_NAME) = .{};
};
pub const CompositionInteractionSourceCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        const this: *ICompositionInteractionSourceCollection = @ptrCast(self);
        return try this.getCount();
    }
    pub fn Add(self: *@This(), value: *ICompositionInteractionSource) core.HResult!void {
        const this: *ICompositionInteractionSourceCollection = @ptrCast(self);
        return try this.Add(value);
    }
    pub fn Remove(self: *@This(), value: *ICompositionInteractionSource) core.HResult!void {
        const this: *ICompositionInteractionSourceCollection = @ptrCast(self);
        return try this.Remove(value);
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const this: *ICompositionInteractionSourceCollection = @ptrCast(self);
        return try this.RemoveAll();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(ICompositionInteractionSource) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionInteractionSourceCollection.GUID;
    pub const IID: Guid = ICompositionInteractionSourceCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionInteractionSourceCollection.SIGNATURE);
};
pub const ICompositionConditionalValue = extern struct {
    vtable: *const VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Condition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Condition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.ICompositionConditionalValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43250538-eb73-4561-a71d-1a43eaeb7a9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Condition: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Condition: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionConditionalValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*CompositionConditionalValue {
        var _r: *CompositionConditionalValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.ICompositionConditionalValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "090c4b72-8467-4d0a-9065-ac46b80a5522";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **CompositionConditionalValue) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionInteractionSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.ICompositionInteractionSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "043b2431-06e3-495a-ba54-409f0017fac0";
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
pub const ICompositionInteractionSourceCollection = extern struct {
    vtable: *const VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Count(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Add(self: *@This(), value: *ICompositionInteractionSource) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), value: *ICompositionInteractionSource) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b468e4b-a5bf-47d8-a547-3894155a158c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Count: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, value: *ICompositionInteractionSource) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, value: *ICompositionInteractionSource) callconv(.winapi) HRESULT,
        RemoveAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionSourceConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getPositionXSourceMode(self: *@This()) core.HResult!InteractionSourceRedirectionMode {
        var _r: InteractionSourceRedirectionMode = undefined;
        const _c = self.vtable.get_PositionXSourceMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionXSourceMode(self: *@This(), value: InteractionSourceRedirectionMode) core.HResult!void {
        const _c = self.vtable.put_PositionXSourceMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionYSourceMode(self: *@This()) core.HResult!InteractionSourceRedirectionMode {
        var _r: InteractionSourceRedirectionMode = undefined;
        const _c = self.vtable.get_PositionYSourceMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionYSourceMode(self: *@This(), value: InteractionSourceRedirectionMode) core.HResult!void {
        const _c = self.vtable.put_PositionYSourceMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleSourceMode(self: *@This()) core.HResult!InteractionSourceRedirectionMode {
        var _r: InteractionSourceRedirectionMode = undefined;
        const _c = self.vtable.get_ScaleSourceMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleSourceMode(self: *@This(), value: InteractionSourceRedirectionMode) core.HResult!void {
        const _c = self.vtable.put_ScaleSourceMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionSourceConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a78347e5-a9d1-4d02-985e-b930cd0b9da4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionXSourceMode: *const fn(self: *anyopaque, _r: *InteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        put_PositionXSourceMode: *const fn(self: *anyopaque, value: InteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        get_PositionYSourceMode: *const fn(self: *anyopaque, _r: *InteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        put_PositionYSourceMode: *const fn(self: *anyopaque, value: InteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        get_ScaleSourceMode: *const fn(self: *anyopaque, _r: *InteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        put_ScaleSourceMode: *const fn(self: *anyopaque, value: InteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTracker = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSources(self: *@This()) core.HResult!*CompositionInteractionSourceCollection {
        var _r: *CompositionInteractionSourceCollection = undefined;
        const _c = self.vtable.get_InteractionSources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPositionRoundingSuggested(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPositionRoundingSuggested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_MaxPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPosition(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_MaxPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MaxScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_MinPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinPosition(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_MinPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MinScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNaturalRestingPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_NaturalRestingPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalRestingScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_NaturalRestingScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOwner(self: *@This()) core.HResult!*IInteractionTrackerOwner {
        var _r: *IInteractionTrackerOwner = undefined;
        const _c = self.vtable.get_Owner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPositionInertiaDecayRate(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_PositionInertiaDecayRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionInertiaDecayRate(self: *@This(), value: *IReference(Vector3)) core.HResult!void {
        const _c = self.vtable.put_PositionInertiaDecayRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionVelocityInPixelsPerSecond(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_PositionVelocityInPixelsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleInertiaDecayRate(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_ScaleInertiaDecayRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleInertiaDecayRate(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const _c = self.vtable.put_ScaleInertiaDecayRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleVelocityInPercentPerSecond(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ScaleVelocityInPercentPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AdjustPositionXIfGreaterThanThreshold(self: *@This(), adjustment: f32, positionThreshold: f32) core.HResult!void {
        const _c = self.vtable.AdjustPositionXIfGreaterThanThreshold(@ptrCast(self), adjustment, positionThreshold);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AdjustPositionYIfGreaterThanThreshold(self: *@This(), adjustment: f32, positionThreshold: f32) core.HResult!void {
        const _c = self.vtable.AdjustPositionYIfGreaterThanThreshold(@ptrCast(self), adjustment, positionThreshold);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigurePositionXInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerInertiaModifier)) core.HResult!void {
        const _c = self.vtable.ConfigurePositionXInertiaModifiers(@ptrCast(self), modifiers);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigurePositionYInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerInertiaModifier)) core.HResult!void {
        const _c = self.vtable.ConfigurePositionYInertiaModifiers(@ptrCast(self), modifiers);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureScaleInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerInertiaModifier)) core.HResult!void {
        const _c = self.vtable.ConfigureScaleInertiaModifiers(@ptrCast(self), modifiers);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryUpdatePosition(self: *@This(), value: Vector3) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePosition(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdatePositionBy(self: *@This(), amount: Vector3) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePositionBy(@ptrCast(self), amount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdatePositionWithAnimation(self: *@This(), animation: *CompositionAnimation) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePositionWithAnimation(@ptrCast(self), animation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdatePositionWithAdditionalVelocity(self: *@This(), velocityInPixelsPerSecond: Vector3) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePositionWithAdditionalVelocity(@ptrCast(self), velocityInPixelsPerSecond, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateScale(self: *@This(), value: f32, centerPoint: Vector3) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdateScale(@ptrCast(self), value, centerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateScaleWithAnimation(self: *@This(), animation: *CompositionAnimation, centerPoint: Vector3) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdateScaleWithAnimation(@ptrCast(self), animation, centerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateScaleWithAdditionalVelocity(self: *@This(), velocityInPercentPerSecond: f32, centerPoint: Vector3) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdateScaleWithAdditionalVelocity(@ptrCast(self), velocityInPercentPerSecond, centerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a8e8cb1-1000-4416-8363-cc27fb877308";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSources: *const fn(self: *anyopaque, _r: **CompositionInteractionSourceCollection) callconv(.winapi) HRESULT,
        get_IsPositionRoundingSuggested: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxPosition: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_MaxPosition: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_MaxScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MaxScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_MinPosition: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_MinPosition: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_MinScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MinScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_NaturalRestingPosition: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_NaturalRestingScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Owner: *const fn(self: *anyopaque, _r: **IInteractionTrackerOwner) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_PositionInertiaDecayRate: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        put_PositionInertiaDecayRate: *const fn(self: *anyopaque, value: *IReference(Vector3)) callconv(.winapi) HRESULT,
        get_PositionVelocityInPixelsPerSecond: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_ScaleInertiaDecayRate: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        put_ScaleInertiaDecayRate: *const fn(self: *anyopaque, value: *IReference(f32)) callconv(.winapi) HRESULT,
        get_ScaleVelocityInPercentPerSecond: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        AdjustPositionXIfGreaterThanThreshold: *const fn(self: *anyopaque, adjustment: f32, positionThreshold: f32) callconv(.winapi) HRESULT,
        AdjustPositionYIfGreaterThanThreshold: *const fn(self: *anyopaque, adjustment: f32, positionThreshold: f32) callconv(.winapi) HRESULT,
        ConfigurePositionXInertiaModifiers: *const fn(self: *anyopaque, modifiers: *IIterable(InteractionTrackerInertiaModifier)) callconv(.winapi) HRESULT,
        ConfigurePositionYInertiaModifiers: *const fn(self: *anyopaque, modifiers: *IIterable(InteractionTrackerInertiaModifier)) callconv(.winapi) HRESULT,
        ConfigureScaleInertiaModifiers: *const fn(self: *anyopaque, modifiers: *IIterable(InteractionTrackerInertiaModifier)) callconv(.winapi) HRESULT,
        TryUpdatePosition: *const fn(self: *anyopaque, value: Vector3, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdatePositionBy: *const fn(self: *anyopaque, amount: Vector3, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdatePositionWithAnimation: *const fn(self: *anyopaque, animation: *CompositionAnimation, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdatePositionWithAdditionalVelocity: *const fn(self: *anyopaque, velocityInPixelsPerSecond: Vector3, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdateScale: *const fn(self: *anyopaque, value: f32, centerPoint: Vector3, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdateScaleWithAnimation: *const fn(self: *anyopaque, animation: *CompositionAnimation, centerPoint: Vector3, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdateScaleWithAdditionalVelocity: *const fn(self: *anyopaque, velocityInPercentPerSecond: f32, centerPoint: Vector3, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTracker2 = extern struct {
    vtable: *const VTable,
    pub fn ConfigureCenterPointXInertiaModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureCenterPointXInertiaModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureCenterPointYInertiaModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureCenterPointYInertiaModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTracker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25769a3e-ce6d-448c-8386-92620d240756";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConfigureCenterPointXInertiaModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
        ConfigureCenterPointYInertiaModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTracker3 = extern struct {
    vtable: *const VTable,
    pub fn ConfigureVector2PositionInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerVector2InertiaModifier)) core.HResult!void {
        const _c = self.vtable.ConfigureVector2PositionInertiaModifiers(@ptrCast(self), modifiers);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTracker3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6c5d7a2-5c4b-42c6-84b7-f69441b18091";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConfigureVector2PositionInertiaModifiers: *const fn(self: *anyopaque, modifiers: *IIterable(InteractionTrackerVector2InertiaModifier)) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTracker4 = extern struct {
    vtable: *const VTable,
    pub fn TryUpdatePosition(self: *@This(), value: Vector3, option: InteractionTrackerClampingOption) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePosition(@ptrCast(self), value, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdatePositionBy(self: *@This(), amount: Vector3, option: InteractionTrackerClampingOption) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePositionBy(@ptrCast(self), amount, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInertiaFromImpulse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInertiaFromImpulse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTracker4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebd222bc-04af-4ac7-847d-06ea36e80a16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryUpdatePosition: *const fn(self: *anyopaque, value: Vector3, option: InteractionTrackerClampingOption, _r: *i32) callconv(.winapi) HRESULT,
        TryUpdatePositionBy: *const fn(self: *anyopaque, amount: Vector3, option: InteractionTrackerClampingOption, _r: *i32) callconv(.winapi) HRESULT,
        get_IsInertiaFromImpulse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTracker5 = extern struct {
    vtable: *const VTable,
    pub fn TryUpdatePosition(self: *@This(), value: Vector3, option: InteractionTrackerClampingOption, posUpdateOption: InteractionTrackerPositionUpdateOption) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.TryUpdatePosition(@ptrCast(self), value, option, posUpdateOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTracker5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3ef5da2-a254-40e4-88d5-44e4e16b5809";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryUpdatePosition: *const fn(self: *anyopaque, value: Vector3, option: InteractionTrackerClampingOption, posUpdateOption: InteractionTrackerPositionUpdateOption, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerCustomAnimationStateEnteredArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerCustomAnimationStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d1c8cf1-d7b0-434c-a5d2-2d7611864834";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerCustomAnimationStateEnteredArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFromBinding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerCustomAnimationStateEnteredArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47d579b7-0985-5e99-b024-2f32c380c1a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFromBinding: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerIdleStateEnteredArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerIdleStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50012faa-1510-4142-a1a5-019b09f8857b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerIdleStateEnteredArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFromBinding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerIdleStateEnteredArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2e771ed-b803-5137-9435-1c96e48721e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFromBinding: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaModifier = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaModifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0e2c920-26b4-4da2-8b61-5e683979bbe2";
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
pub const IInteractionTrackerInertiaModifierFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaModifierFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "993818fe-c94e-4b86-87f3-922665ba46b9";
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
pub const IInteractionTrackerInertiaMotion = extern struct {
    vtable: *const VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Condition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Condition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMotion(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Motion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMotion(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Motion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04922fdc-f154-4cb8-bf33-cc1ba611e6db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Condition: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Condition: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
        get_Motion: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Motion: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaMotionStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*InteractionTrackerInertiaMotion {
        var _r: *InteractionTrackerInertiaMotion = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8cc83dd6-ba7b-431a-844b-6eac9130f99a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **InteractionTrackerInertiaMotion) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaNaturalMotion = extern struct {
    vtable: *const VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Condition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Condition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNaturalMotion(self: *@This()) core.HResult!*ScalarNaturalMotionAnimation {
        var _r: *ScalarNaturalMotionAnimation = undefined;
        const _c = self.vtable.get_NaturalMotion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNaturalMotion(self: *@This(), value: *ScalarNaturalMotionAnimation) core.HResult!void {
        const _c = self.vtable.put_NaturalMotion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaNaturalMotion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70acdaae-27dc-48ed-a3c3-6d61c9a029d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Condition: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Condition: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
        get_NaturalMotion: *const fn(self: *anyopaque, _r: **ScalarNaturalMotionAnimation) callconv(.winapi) HRESULT,
        put_NaturalMotion: *const fn(self: *anyopaque, value: *ScalarNaturalMotionAnimation) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaNaturalMotionStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*InteractionTrackerInertiaNaturalMotion {
        var _r: *InteractionTrackerInertiaNaturalMotion = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaNaturalMotionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfda55b0-5e3e-4289-932d-ee5f50e74283";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **InteractionTrackerInertiaNaturalMotion) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaRestingValue = extern struct {
    vtable: *const VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Condition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Condition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRestingValue(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_RestingValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRestingValue(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_RestingValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86f7ec09-5096-4170-9cc8-df2fe101bb93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Condition: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Condition: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
        get_RestingValue: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_RestingValue: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaRestingValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*InteractionTrackerInertiaRestingValue {
        var _r: *InteractionTrackerInertiaRestingValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18ed4699-0745-4096-bcab-3a4e99569bcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **InteractionTrackerInertiaRestingValue) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaStateEnteredArgs = extern struct {
    vtable: *const VTable,
    pub fn getModifiedRestingPosition(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_ModifiedRestingPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModifiedRestingScale(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_ModifiedRestingScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalRestingPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_NaturalRestingPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalRestingScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_NaturalRestingScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPositionVelocityInPixelsPerSecond(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_PositionVelocityInPixelsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleVelocityInPercentPerSecond(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ScaleVelocityInPercentPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87108cf2-e7ff-4f7d-9ffd-d72f1e409b63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ModifiedRestingPosition: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        get_ModifiedRestingScale: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        get_NaturalRestingPosition: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_NaturalRestingScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_PositionVelocityInPixelsPerSecond: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ScaleVelocityInPercentPerSecond: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaStateEnteredArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsInertiaFromImpulse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInertiaFromImpulse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1eb32f6-c26c-41f6-a189-fabc22b323cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsInertiaFromImpulse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInertiaStateEnteredArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFromBinding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48ac1c2f-47bd-59af-a58c-79bd2eb9ef71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFromBinding: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInteractingStateEnteredArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInteractingStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7263939-a17b-4011-99fd-b5c24f143748";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerInteractingStateEnteredArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFromBinding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerInteractingStateEnteredArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "509652d6-d488-59cd-819f-f52310295b11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFromBinding: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerOwner = extern struct {
    vtable: *const VTable,
    pub fn CustomAnimationStateEntered(self: *@This(), sender: *InteractionTracker, args: *InteractionTrackerCustomAnimationStateEnteredArgs) core.HResult!void {
        const _c = self.vtable.CustomAnimationStateEntered(@ptrCast(self), sender, args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IdleStateEntered(self: *@This(), sender: *InteractionTracker, args: *InteractionTrackerIdleStateEnteredArgs) core.HResult!void {
        const _c = self.vtable.IdleStateEntered(@ptrCast(self), sender, args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InertiaStateEntered(self: *@This(), sender: *InteractionTracker, args: *InteractionTrackerInertiaStateEnteredArgs) core.HResult!void {
        const _c = self.vtable.InertiaStateEntered(@ptrCast(self), sender, args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InteractingStateEntered(self: *@This(), sender: *InteractionTracker, args: *InteractionTrackerInteractingStateEnteredArgs) core.HResult!void {
        const _c = self.vtable.InteractingStateEntered(@ptrCast(self), sender, args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestIgnored(self: *@This(), sender: *InteractionTracker, args: *InteractionTrackerRequestIgnoredArgs) core.HResult!void {
        const _c = self.vtable.RequestIgnored(@ptrCast(self), sender, args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ValuesChanged(self: *@This(), sender: *InteractionTracker, args: *InteractionTrackerValuesChangedArgs) core.HResult!void {
        const _c = self.vtable.ValuesChanged(@ptrCast(self), sender, args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerOwner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db2e8af3-4deb-4e53-b29c-b06c9f96d651";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CustomAnimationStateEntered: *const fn(self: *anyopaque, sender: *InteractionTracker, args: *InteractionTrackerCustomAnimationStateEnteredArgs) callconv(.winapi) HRESULT,
        IdleStateEntered: *const fn(self: *anyopaque, sender: *InteractionTracker, args: *InteractionTrackerIdleStateEnteredArgs) callconv(.winapi) HRESULT,
        InertiaStateEntered: *const fn(self: *anyopaque, sender: *InteractionTracker, args: *InteractionTrackerInertiaStateEnteredArgs) callconv(.winapi) HRESULT,
        InteractingStateEntered: *const fn(self: *anyopaque, sender: *InteractionTracker, args: *InteractionTrackerInteractingStateEnteredArgs) callconv(.winapi) HRESULT,
        RequestIgnored: *const fn(self: *anyopaque, sender: *InteractionTracker, args: *InteractionTrackerRequestIgnoredArgs) callconv(.winapi) HRESULT,
        ValuesChanged: *const fn(self: *anyopaque, sender: *InteractionTracker, args: *InteractionTrackerValuesChangedArgs) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerRequestIgnoredArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerRequestIgnoredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80dd82f1-ce25-488f-91dd-cb6455ccff2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*InteractionTracker {
        var _r: *InteractionTracker = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithOwner(self: *@This(), compositor: *Compositor, owner: *IInteractionTrackerOwner) core.HResult!*InteractionTracker {
        var _r: *InteractionTracker = undefined;
        const _c = self.vtable.CreateWithOwner(@ptrCast(self), compositor, owner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bba5d7b7-6590-4498-8d6c-eb62b514c92a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **InteractionTracker) callconv(.winapi) HRESULT,
        CreateWithOwner: *const fn(self: *anyopaque, compositor: *Compositor, owner: *IInteractionTrackerOwner, _r: **InteractionTracker) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn SetBindingMode(self: *@This(), boundTracker1: *InteractionTracker, boundTracker2: *InteractionTracker, axisMode: InteractionBindingAxisModes) core.HResult!void {
        const _c = self.vtable.SetBindingMode(@ptrCast(self), boundTracker1, boundTracker2, axisMode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBindingMode(self: *@This(), boundTracker1: *InteractionTracker, boundTracker2: *InteractionTracker) core.HResult!InteractionBindingAxisModes {
        var _r: InteractionBindingAxisModes = undefined;
        const _c = self.vtable.GetBindingMode(@ptrCast(self), boundTracker1, boundTracker2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35e53720-46b7-5cb0-b505-f3d6884a6163";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetBindingMode: *const fn(self: *anyopaque, boundTracker1: *InteractionTracker, boundTracker2: *InteractionTracker, axisMode: InteractionBindingAxisModes) callconv(.winapi) HRESULT,
        GetBindingMode: *const fn(self: *anyopaque, boundTracker1: *InteractionTracker, boundTracker2: *InteractionTracker, _r: *InteractionBindingAxisModes) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerValuesChangedArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf1578ef-d3df-4501-b9e6-f02fb22f73d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerVector2InertiaModifier = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerVector2InertiaModifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87e08ab0-3086-4853-a4b7-77882ad5d7e3";
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
pub const IInteractionTrackerVector2InertiaModifierFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerVector2InertiaModifierFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7401d6c4-6c6d-48df-bc3e-171e227e7d7f";
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
pub const IInteractionTrackerVector2InertiaNaturalMotion = extern struct {
    vtable: *const VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.get_Condition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const _c = self.vtable.put_Condition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNaturalMotion(self: *@This()) core.HResult!*Vector2NaturalMotionAnimation {
        var _r: *Vector2NaturalMotionAnimation = undefined;
        const _c = self.vtable.get_NaturalMotion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNaturalMotion(self: *@This(), value: *Vector2NaturalMotionAnimation) core.HResult!void {
        const _c = self.vtable.put_NaturalMotion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerVector2InertiaNaturalMotion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f17695c-162d-4c07-9400-c282b28276ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Condition: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        put_Condition: *const fn(self: *anyopaque, value: *ExpressionAnimation) callconv(.winapi) HRESULT,
        get_NaturalMotion: *const fn(self: *anyopaque, _r: **Vector2NaturalMotionAnimation) callconv(.winapi) HRESULT,
        put_NaturalMotion: *const fn(self: *anyopaque, value: *Vector2NaturalMotionAnimation) callconv(.winapi) HRESULT,
    };
};
pub const IInteractionTrackerVector2InertiaNaturalMotionStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*InteractionTrackerVector2InertiaNaturalMotion {
        var _r: *InteractionTrackerVector2InertiaNaturalMotion = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IInteractionTrackerVector2InertiaNaturalMotionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82001a48-09c0-434f-8189-141c66df362f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **InteractionTrackerVector2InertiaNaturalMotion) callconv(.winapi) HRESULT,
    };
};
pub const IVisualInteractionSource = extern struct {
    vtable: *const VTable,
    pub fn getIsPositionXRailsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPositionXRailsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPositionXRailsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPositionXRailsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPositionYRailsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPositionYRailsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPositionYRailsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPositionYRailsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getManipulationRedirectionMode(self: *@This()) core.HResult!VisualInteractionSourceRedirectionMode {
        var _r: VisualInteractionSourceRedirectionMode = undefined;
        const _c = self.vtable.get_ManipulationRedirectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putManipulationRedirectionMode(self: *@This(), value: VisualInteractionSourceRedirectionMode) core.HResult!void {
        const _c = self.vtable.put_ManipulationRedirectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionXChainingMode(self: *@This()) core.HResult!InteractionChainingMode {
        var _r: InteractionChainingMode = undefined;
        const _c = self.vtable.get_PositionXChainingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionXChainingMode(self: *@This(), value: InteractionChainingMode) core.HResult!void {
        const _c = self.vtable.put_PositionXChainingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionXSourceMode(self: *@This()) core.HResult!InteractionSourceMode {
        var _r: InteractionSourceMode = undefined;
        const _c = self.vtable.get_PositionXSourceMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionXSourceMode(self: *@This(), value: InteractionSourceMode) core.HResult!void {
        const _c = self.vtable.put_PositionXSourceMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionYChainingMode(self: *@This()) core.HResult!InteractionChainingMode {
        var _r: InteractionChainingMode = undefined;
        const _c = self.vtable.get_PositionYChainingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionYChainingMode(self: *@This(), value: InteractionChainingMode) core.HResult!void {
        const _c = self.vtable.put_PositionYChainingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPositionYSourceMode(self: *@This()) core.HResult!InteractionSourceMode {
        var _r: InteractionSourceMode = undefined;
        const _c = self.vtable.get_PositionYSourceMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPositionYSourceMode(self: *@This(), value: InteractionSourceMode) core.HResult!void {
        const _c = self.vtable.put_PositionYSourceMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleChainingMode(self: *@This()) core.HResult!InteractionChainingMode {
        var _r: InteractionChainingMode = undefined;
        const _c = self.vtable.get_ScaleChainingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleChainingMode(self: *@This(), value: InteractionChainingMode) core.HResult!void {
        const _c = self.vtable.put_ScaleChainingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleSourceMode(self: *@This()) core.HResult!InteractionSourceMode {
        var _r: InteractionSourceMode = undefined;
        const _c = self.vtable.get_ScaleSourceMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleSourceMode(self: *@This(), value: InteractionSourceMode) core.HResult!void {
        const _c = self.vtable.put_ScaleSourceMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRedirectForManipulation(self: *@This(), pointerPoint: *PointerPoint) core.HResult!void {
        const _c = self.vtable.TryRedirectForManipulation(@ptrCast(self), pointerPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IVisualInteractionSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca0e8a86-d8d6-4111-b088-70347bd2b0ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPositionXRailsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPositionXRailsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPositionYRailsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPositionYRailsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ManipulationRedirectionMode: *const fn(self: *anyopaque, _r: *VisualInteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        put_ManipulationRedirectionMode: *const fn(self: *anyopaque, value: VisualInteractionSourceRedirectionMode) callconv(.winapi) HRESULT,
        get_PositionXChainingMode: *const fn(self: *anyopaque, _r: *InteractionChainingMode) callconv(.winapi) HRESULT,
        put_PositionXChainingMode: *const fn(self: *anyopaque, value: InteractionChainingMode) callconv(.winapi) HRESULT,
        get_PositionXSourceMode: *const fn(self: *anyopaque, _r: *InteractionSourceMode) callconv(.winapi) HRESULT,
        put_PositionXSourceMode: *const fn(self: *anyopaque, value: InteractionSourceMode) callconv(.winapi) HRESULT,
        get_PositionYChainingMode: *const fn(self: *anyopaque, _r: *InteractionChainingMode) callconv(.winapi) HRESULT,
        put_PositionYChainingMode: *const fn(self: *anyopaque, value: InteractionChainingMode) callconv(.winapi) HRESULT,
        get_PositionYSourceMode: *const fn(self: *anyopaque, _r: *InteractionSourceMode) callconv(.winapi) HRESULT,
        put_PositionYSourceMode: *const fn(self: *anyopaque, value: InteractionSourceMode) callconv(.winapi) HRESULT,
        get_ScaleChainingMode: *const fn(self: *anyopaque, _r: *InteractionChainingMode) callconv(.winapi) HRESULT,
        put_ScaleChainingMode: *const fn(self: *anyopaque, value: InteractionChainingMode) callconv(.winapi) HRESULT,
        get_ScaleSourceMode: *const fn(self: *anyopaque, _r: *InteractionSourceMode) callconv(.winapi) HRESULT,
        put_ScaleSourceMode: *const fn(self: *anyopaque, value: InteractionSourceMode) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        TryRedirectForManipulation: *const fn(self: *anyopaque, pointerPoint: *PointerPoint) callconv(.winapi) HRESULT,
    };
};
pub const IVisualInteractionSource2 = extern struct {
    vtable: *const VTable,
    pub fn getDeltaPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_DeltaPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeltaScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DeltaScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPositionVelocity(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_PositionVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleVelocity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ScaleVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConfigureCenterPointXModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureCenterPointXModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureCenterPointYModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureCenterPointYModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureDeltaPositionXModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureDeltaPositionXModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureDeltaPositionYModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureDeltaPositionYModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureDeltaScaleModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        const _c = self.vtable.ConfigureDeltaScaleModifiers(@ptrCast(self), conditionalValues);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IVisualInteractionSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa914893-a73c-414d-80d0-249bad2fbd93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeltaPosition: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_DeltaScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_PositionVelocity: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_ScaleVelocity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        ConfigureCenterPointXModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
        ConfigureCenterPointYModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
        ConfigureDeltaPositionXModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
        ConfigureDeltaPositionYModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
        ConfigureDeltaScaleModifiers: *const fn(self: *anyopaque, conditionalValues: *IIterable(CompositionConditionalValue)) callconv(.winapi) HRESULT,
    };
};
pub const IVisualInteractionSource3 = extern struct {
    vtable: *const VTable,
    pub fn getPointerWheelConfig(self: *@This()) core.HResult!*InteractionSourceConfiguration {
        var _r: *InteractionSourceConfiguration = undefined;
        const _c = self.vtable.get_PointerWheelConfig(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IVisualInteractionSource3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d941ef2a-0d5c-4057-92d7-c9711533204f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerWheelConfig: *const fn(self: *anyopaque, _r: **InteractionSourceConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IVisualInteractionSourceObjectFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IVisualInteractionSourceObjectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2ca917c-e98a-41f2-b3c9-891c9266c8f6";
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
pub const IVisualInteractionSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), source: *Visual) core.HResult!*VisualInteractionSource {
        var _r: *VisualInteractionSource = undefined;
        const _c = self.vtable.Create(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IVisualInteractionSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "369965e1-8645-4f75-ba00-6479cd10c8e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, source: *Visual, _r: **VisualInteractionSource) callconv(.winapi) HRESULT,
    };
};
pub const IVisualInteractionSourceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromIVisualElement(self: *@This(), source: *IVisualElement) core.HResult!*VisualInteractionSource {
        var _r: *VisualInteractionSource = undefined;
        const _c = self.vtable.CreateFromIVisualElement(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.IVisualInteractionSourceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a979c032-5764-55e0-bc1f-0778786dcfde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromIVisualElement: *const fn(self: *anyopaque, source: *IVisualElement, _r: **VisualInteractionSource) callconv(.winapi) HRESULT,
    };
};
pub const InteractionBindingAxisModes = enum(i32) {
    None = 0,
    PositionX = 1,
    PositionY = 2,
    Scale = 4,
};
pub const InteractionChainingMode = enum(i32) {
    Auto = 0,
    Always = 1,
    Never = 2,
};
pub const InteractionSourceConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPositionXSourceMode(self: *@This()) core.HResult!InteractionSourceRedirectionMode {
        const this: *IInteractionSourceConfiguration = @ptrCast(self);
        return try this.getPositionXSourceMode();
    }
    pub fn putPositionXSourceMode(self: *@This(), value: InteractionSourceRedirectionMode) core.HResult!void {
        const this: *IInteractionSourceConfiguration = @ptrCast(self);
        return try this.putPositionXSourceMode(value);
    }
    pub fn getPositionYSourceMode(self: *@This()) core.HResult!InteractionSourceRedirectionMode {
        const this: *IInteractionSourceConfiguration = @ptrCast(self);
        return try this.getPositionYSourceMode();
    }
    pub fn putPositionYSourceMode(self: *@This(), value: InteractionSourceRedirectionMode) core.HResult!void {
        const this: *IInteractionSourceConfiguration = @ptrCast(self);
        return try this.putPositionYSourceMode(value);
    }
    pub fn getScaleSourceMode(self: *@This()) core.HResult!InteractionSourceRedirectionMode {
        const this: *IInteractionSourceConfiguration = @ptrCast(self);
        return try this.getScaleSourceMode();
    }
    pub fn putScaleSourceMode(self: *@This(), value: InteractionSourceRedirectionMode) core.HResult!void {
        const this: *IInteractionSourceConfiguration = @ptrCast(self);
        return try this.putScaleSourceMode(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionSourceConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionSourceConfiguration.GUID;
    pub const IID: Guid = IInteractionSourceConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionSourceConfiguration.SIGNATURE);
};
pub const InteractionSourceMode = enum(i32) {
    Disabled = 0,
    EnabledWithInertia = 1,
    EnabledWithoutInertia = 2,
};
pub const InteractionSourceRedirectionMode = enum(i32) {
    Disabled = 0,
    Enabled = 1,
};
pub const InteractionTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSources(self: *@This()) core.HResult!*CompositionInteractionSourceCollection {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getInteractionSources();
    }
    pub fn getIsPositionRoundingSuggested(self: *@This()) core.HResult!bool {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getIsPositionRoundingSuggested();
    }
    pub fn getMaxPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getMaxPosition();
    }
    pub fn putMaxPosition(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.putMaxPosition(value);
    }
    pub fn getMaxScale(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getMaxScale();
    }
    pub fn putMaxScale(self: *@This(), value: f32) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.putMaxScale(value);
    }
    pub fn getMinPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getMinPosition();
    }
    pub fn putMinPosition(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.putMinPosition(value);
    }
    pub fn getMinScale(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getMinScale();
    }
    pub fn putMinScale(self: *@This(), value: f32) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.putMinScale(value);
    }
    pub fn getNaturalRestingPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getNaturalRestingPosition();
    }
    pub fn getNaturalRestingScale(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getNaturalRestingScale();
    }
    pub fn getOwner(self: *@This()) core.HResult!*IInteractionTrackerOwner {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getOwner();
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getPositionInertiaDecayRate(self: *@This()) core.HResult!*IReference(Vector3) {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getPositionInertiaDecayRate();
    }
    pub fn putPositionInertiaDecayRate(self: *@This(), value: *IReference(Vector3)) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.putPositionInertiaDecayRate(value);
    }
    pub fn getPositionVelocityInPixelsPerSecond(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getPositionVelocityInPixelsPerSecond();
    }
    pub fn getScale(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getScale();
    }
    pub fn getScaleInertiaDecayRate(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getScaleInertiaDecayRate();
    }
    pub fn putScaleInertiaDecayRate(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.putScaleInertiaDecayRate(value);
    }
    pub fn getScaleVelocityInPercentPerSecond(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.getScaleVelocityInPercentPerSecond();
    }
    pub fn AdjustPositionXIfGreaterThanThreshold(self: *@This(), adjustment: f32, positionThreshold: f32) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.AdjustPositionXIfGreaterThanThreshold(adjustment, positionThreshold);
    }
    pub fn AdjustPositionYIfGreaterThanThreshold(self: *@This(), adjustment: f32, positionThreshold: f32) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.AdjustPositionYIfGreaterThanThreshold(adjustment, positionThreshold);
    }
    pub fn ConfigurePositionXInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerInertiaModifier)) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.ConfigurePositionXInertiaModifiers(modifiers);
    }
    pub fn ConfigurePositionYInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerInertiaModifier)) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.ConfigurePositionYInertiaModifiers(modifiers);
    }
    pub fn ConfigureScaleInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerInertiaModifier)) core.HResult!void {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.ConfigureScaleInertiaModifiers(modifiers);
    }
    pub fn TryUpdatePosition(self: *@This(), value: Vector3) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdatePosition(value);
    }
    pub fn TryUpdatePositionBy(self: *@This(), amount: Vector3) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdatePositionBy(amount);
    }
    pub fn TryUpdatePositionWithAnimation(self: *@This(), animation: *CompositionAnimation) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdatePositionWithAnimation(animation);
    }
    pub fn TryUpdatePositionWithAdditionalVelocity(self: *@This(), velocityInPixelsPerSecond: Vector3) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdatePositionWithAdditionalVelocity(velocityInPixelsPerSecond);
    }
    pub fn TryUpdateScale(self: *@This(), value: f32, centerPoint: Vector3) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdateScale(value, centerPoint);
    }
    pub fn TryUpdateScaleWithAnimation(self: *@This(), animation: *CompositionAnimation, centerPoint: Vector3) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdateScaleWithAnimation(animation, centerPoint);
    }
    pub fn TryUpdateScaleWithAdditionalVelocity(self: *@This(), velocityInPercentPerSecond: f32, centerPoint: Vector3) core.HResult!i32 {
        const this: *IInteractionTracker = @ptrCast(self);
        return try this.TryUpdateScaleWithAdditionalVelocity(velocityInPercentPerSecond, centerPoint);
    }
    pub fn ConfigureCenterPointXInertiaModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IInteractionTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureCenterPointXInertiaModifiers(conditionalValues);
    }
    pub fn ConfigureCenterPointYInertiaModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IInteractionTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureCenterPointYInertiaModifiers(conditionalValues);
    }
    pub fn ConfigureVector2PositionInertiaModifiers(self: *@This(), modifiers: *IIterable(InteractionTrackerVector2InertiaModifier)) core.HResult!void {
        var this: ?*IInteractionTracker3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureVector2PositionInertiaModifiers(modifiers);
    }
    pub fn TryUpdatePositionWithOption(self: *@This(), value: Vector3, option: InteractionTrackerClampingOption) core.HResult!i32 {
        var this: ?*IInteractionTracker4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryUpdatePositionWithOption(value, option);
    }
    pub fn TryUpdatePositionByWithOption(self: *@This(), amount: Vector3, option: InteractionTrackerClampingOption) core.HResult!i32 {
        var this: ?*IInteractionTracker4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryUpdatePositionByWithOption(amount, option);
    }
    pub fn getIsInertiaFromImpulse(self: *@This()) core.HResult!bool {
        var this: ?*IInteractionTracker4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsInertiaFromImpulse();
    }
    pub fn TryUpdatePositionWithOptionWithPosUpdateOption(self: *@This(), value: Vector3, option: InteractionTrackerClampingOption, posUpdateOption: InteractionTrackerPositionUpdateOption) core.HResult!i32 {
        var this: ?*IInteractionTracker5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTracker5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryUpdatePositionWithOptionWithPosUpdateOption(value, option, posUpdateOption);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetBindingMode(boundTracker1: *InteractionTracker, boundTracker2: *InteractionTracker, axisMode: InteractionBindingAxisModes) core.HResult!void {
        const factory = @This().IInteractionTrackerStatics2Cache.get();
        return try factory.SetBindingMode(boundTracker1, boundTracker2, axisMode);
    }
    pub fn GetBindingMode(boundTracker1: *InteractionTracker, boundTracker2: *InteractionTracker) core.HResult!InteractionBindingAxisModes {
        const factory = @This().IInteractionTrackerStatics2Cache.get();
        return try factory.GetBindingMode(boundTracker1, boundTracker2);
    }
    pub fn Create(compositor: *Compositor) core.HResult!*InteractionTracker {
        const factory = @This().IInteractionTrackerStaticsCache.get();
        return try factory.Create(compositor);
    }
    pub fn CreateWithOwner(compositor: *Compositor, owner: *IInteractionTrackerOwner) core.HResult!*InteractionTracker {
        const factory = @This().IInteractionTrackerStaticsCache.get();
        return try factory.CreateWithOwner(compositor, owner);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTracker.GUID;
    pub const IID: Guid = IInteractionTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTracker.SIGNATURE);
    var _IInteractionTrackerStatics2Cache: FactoryCache(IInteractionTrackerStatics2, RUNTIME_NAME) = .{};
    var _IInteractionTrackerStaticsCache: FactoryCache(IInteractionTrackerStatics, RUNTIME_NAME) = .{};
};
pub const InteractionTrackerClampingOption = enum(i32) {
    Auto = 0,
    Disabled = 1,
};
pub const InteractionTrackerCustomAnimationStateEnteredArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        const this: *IInteractionTrackerCustomAnimationStateEnteredArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var this: ?*IInteractionTrackerCustomAnimationStateEnteredArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTrackerCustomAnimationStateEnteredArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFromBinding();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerCustomAnimationStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerCustomAnimationStateEnteredArgs.GUID;
    pub const IID: Guid = IInteractionTrackerCustomAnimationStateEnteredArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerCustomAnimationStateEnteredArgs.SIGNATURE);
};
pub const InteractionTrackerIdleStateEnteredArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        const this: *IInteractionTrackerIdleStateEnteredArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var this: ?*IInteractionTrackerIdleStateEnteredArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTrackerIdleStateEnteredArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFromBinding();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerIdleStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerIdleStateEnteredArgs.GUID;
    pub const IID: Guid = IInteractionTrackerIdleStateEnteredArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerIdleStateEnteredArgs.SIGNATURE);
};
pub const InteractionTrackerInertiaModifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerInertiaModifier.GUID;
    pub const IID: Guid = IInteractionTrackerInertiaModifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerInertiaModifier.SIGNATURE);
    var _IInteractionTrackerInertiaModifierFactoryCache: FactoryCache(IInteractionTrackerInertiaModifierFactory, RUNTIME_NAME) = .{};
};
pub const InteractionTrackerInertiaMotion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *IInteractionTrackerInertiaMotion = @ptrCast(self);
        return try this.getCondition();
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *IInteractionTrackerInertiaMotion = @ptrCast(self);
        return try this.putCondition(value);
    }
    pub fn getMotion(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *IInteractionTrackerInertiaMotion = @ptrCast(self);
        return try this.getMotion();
    }
    pub fn putMotion(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *IInteractionTrackerInertiaMotion = @ptrCast(self);
        return try this.putMotion(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*InteractionTrackerInertiaMotion {
        const factory = @This().IInteractionTrackerInertiaMotionStaticsCache.get();
        return try factory.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerInertiaMotion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerInertiaMotion.GUID;
    pub const IID: Guid = IInteractionTrackerInertiaMotion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerInertiaMotion.SIGNATURE);
    var _IInteractionTrackerInertiaMotionStaticsCache: FactoryCache(IInteractionTrackerInertiaMotionStatics, RUNTIME_NAME) = .{};
};
pub const InteractionTrackerInertiaNaturalMotion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *IInteractionTrackerInertiaNaturalMotion = @ptrCast(self);
        return try this.getCondition();
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *IInteractionTrackerInertiaNaturalMotion = @ptrCast(self);
        return try this.putCondition(value);
    }
    pub fn getNaturalMotion(self: *@This()) core.HResult!*ScalarNaturalMotionAnimation {
        const this: *IInteractionTrackerInertiaNaturalMotion = @ptrCast(self);
        return try this.getNaturalMotion();
    }
    pub fn putNaturalMotion(self: *@This(), value: *ScalarNaturalMotionAnimation) core.HResult!void {
        const this: *IInteractionTrackerInertiaNaturalMotion = @ptrCast(self);
        return try this.putNaturalMotion(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*InteractionTrackerInertiaNaturalMotion {
        const factory = @This().IInteractionTrackerInertiaNaturalMotionStaticsCache.get();
        return try factory.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerInertiaNaturalMotion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerInertiaNaturalMotion.GUID;
    pub const IID: Guid = IInteractionTrackerInertiaNaturalMotion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerInertiaNaturalMotion.SIGNATURE);
    var _IInteractionTrackerInertiaNaturalMotionStaticsCache: FactoryCache(IInteractionTrackerInertiaNaturalMotionStatics, RUNTIME_NAME) = .{};
};
pub const InteractionTrackerInertiaRestingValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *IInteractionTrackerInertiaRestingValue = @ptrCast(self);
        return try this.getCondition();
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *IInteractionTrackerInertiaRestingValue = @ptrCast(self);
        return try this.putCondition(value);
    }
    pub fn getRestingValue(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *IInteractionTrackerInertiaRestingValue = @ptrCast(self);
        return try this.getRestingValue();
    }
    pub fn putRestingValue(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *IInteractionTrackerInertiaRestingValue = @ptrCast(self);
        return try this.putRestingValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*InteractionTrackerInertiaRestingValue {
        const factory = @This().IInteractionTrackerInertiaRestingValueStaticsCache.get();
        return try factory.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerInertiaRestingValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerInertiaRestingValue.GUID;
    pub const IID: Guid = IInteractionTrackerInertiaRestingValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerInertiaRestingValue.SIGNATURE);
    var _IInteractionTrackerInertiaRestingValueStaticsCache: FactoryCache(IInteractionTrackerInertiaRestingValueStatics, RUNTIME_NAME) = .{};
};
pub const InteractionTrackerInertiaStateEnteredArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getModifiedRestingPosition(self: *@This()) core.HResult!*IReference(Vector3) {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getModifiedRestingPosition();
    }
    pub fn getModifiedRestingScale(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getModifiedRestingScale();
    }
    pub fn getNaturalRestingPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getNaturalRestingPosition();
    }
    pub fn getNaturalRestingScale(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getNaturalRestingScale();
    }
    pub fn getPositionVelocityInPixelsPerSecond(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getPositionVelocityInPixelsPerSecond();
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getScaleVelocityInPercentPerSecond(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTrackerInertiaStateEnteredArgs = @ptrCast(self);
        return try this.getScaleVelocityInPercentPerSecond();
    }
    pub fn getIsInertiaFromImpulse(self: *@This()) core.HResult!bool {
        var this: ?*IInteractionTrackerInertiaStateEnteredArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTrackerInertiaStateEnteredArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsInertiaFromImpulse();
    }
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var this: ?*IInteractionTrackerInertiaStateEnteredArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTrackerInertiaStateEnteredArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFromBinding();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerInertiaStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerInertiaStateEnteredArgs.GUID;
    pub const IID: Guid = IInteractionTrackerInertiaStateEnteredArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerInertiaStateEnteredArgs.SIGNATURE);
};
pub const InteractionTrackerInteractingStateEnteredArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        const this: *IInteractionTrackerInteractingStateEnteredArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getIsFromBinding(self: *@This()) core.HResult!bool {
        var this: ?*IInteractionTrackerInteractingStateEnteredArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInteractionTrackerInteractingStateEnteredArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFromBinding();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerInteractingStateEnteredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerInteractingStateEnteredArgs.GUID;
    pub const IID: Guid = IInteractionTrackerInteractingStateEnteredArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerInteractingStateEnteredArgs.SIGNATURE);
};
pub const InteractionTrackerPositionUpdateOption = enum(i32) {
    Default = 0,
    AllowActiveCustomScaleAnimation = 1,
};
pub const InteractionTrackerRequestIgnoredArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        const this: *IInteractionTrackerRequestIgnoredArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerRequestIgnoredArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerRequestIgnoredArgs.GUID;
    pub const IID: Guid = IInteractionTrackerRequestIgnoredArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerRequestIgnoredArgs.SIGNATURE);
};
pub const InteractionTrackerValuesChangedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IInteractionTrackerValuesChangedArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        const this: *IInteractionTrackerValuesChangedArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getScale(self: *@This()) core.HResult!f32 {
        const this: *IInteractionTrackerValuesChangedArgs = @ptrCast(self);
        return try this.getScale();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerValuesChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerValuesChangedArgs.GUID;
    pub const IID: Guid = IInteractionTrackerValuesChangedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerValuesChangedArgs.SIGNATURE);
};
pub const InteractionTrackerVector2InertiaModifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerVector2InertiaModifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerVector2InertiaModifier.GUID;
    pub const IID: Guid = IInteractionTrackerVector2InertiaModifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerVector2InertiaModifier.SIGNATURE);
    var _IInteractionTrackerVector2InertiaModifierFactoryCache: FactoryCache(IInteractionTrackerVector2InertiaModifierFactory, RUNTIME_NAME) = .{};
};
pub const InteractionTrackerVector2InertiaNaturalMotion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCondition(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *IInteractionTrackerVector2InertiaNaturalMotion = @ptrCast(self);
        return try this.getCondition();
    }
    pub fn putCondition(self: *@This(), value: *ExpressionAnimation) core.HResult!void {
        const this: *IInteractionTrackerVector2InertiaNaturalMotion = @ptrCast(self);
        return try this.putCondition(value);
    }
    pub fn getNaturalMotion(self: *@This()) core.HResult!*Vector2NaturalMotionAnimation {
        const this: *IInteractionTrackerVector2InertiaNaturalMotion = @ptrCast(self);
        return try this.getNaturalMotion();
    }
    pub fn putNaturalMotion(self: *@This(), value: *Vector2NaturalMotionAnimation) core.HResult!void {
        const this: *IInteractionTrackerVector2InertiaNaturalMotion = @ptrCast(self);
        return try this.putNaturalMotion(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*InteractionTrackerVector2InertiaNaturalMotion {
        const factory = @This().IInteractionTrackerVector2InertiaNaturalMotionStaticsCache.get();
        return try factory.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.InteractionTrackerVector2InertiaNaturalMotion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInteractionTrackerVector2InertiaNaturalMotion.GUID;
    pub const IID: Guid = IInteractionTrackerVector2InertiaNaturalMotion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInteractionTrackerVector2InertiaNaturalMotion.SIGNATURE);
    var _IInteractionTrackerVector2InertiaNaturalMotionStaticsCache: FactoryCache(IInteractionTrackerVector2InertiaNaturalMotionStatics, RUNTIME_NAME) = .{};
};
pub const VisualInteractionSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsPositionXRailsEnabled(self: *@This()) core.HResult!bool {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getIsPositionXRailsEnabled();
    }
    pub fn putIsPositionXRailsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putIsPositionXRailsEnabled(value);
    }
    pub fn getIsPositionYRailsEnabled(self: *@This()) core.HResult!bool {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getIsPositionYRailsEnabled();
    }
    pub fn putIsPositionYRailsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putIsPositionYRailsEnabled(value);
    }
    pub fn getManipulationRedirectionMode(self: *@This()) core.HResult!VisualInteractionSourceRedirectionMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getManipulationRedirectionMode();
    }
    pub fn putManipulationRedirectionMode(self: *@This(), value: VisualInteractionSourceRedirectionMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putManipulationRedirectionMode(value);
    }
    pub fn getPositionXChainingMode(self: *@This()) core.HResult!InteractionChainingMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getPositionXChainingMode();
    }
    pub fn putPositionXChainingMode(self: *@This(), value: InteractionChainingMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putPositionXChainingMode(value);
    }
    pub fn getPositionXSourceMode(self: *@This()) core.HResult!InteractionSourceMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getPositionXSourceMode();
    }
    pub fn putPositionXSourceMode(self: *@This(), value: InteractionSourceMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putPositionXSourceMode(value);
    }
    pub fn getPositionYChainingMode(self: *@This()) core.HResult!InteractionChainingMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getPositionYChainingMode();
    }
    pub fn putPositionYChainingMode(self: *@This(), value: InteractionChainingMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putPositionYChainingMode(value);
    }
    pub fn getPositionYSourceMode(self: *@This()) core.HResult!InteractionSourceMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getPositionYSourceMode();
    }
    pub fn putPositionYSourceMode(self: *@This(), value: InteractionSourceMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putPositionYSourceMode(value);
    }
    pub fn getScaleChainingMode(self: *@This()) core.HResult!InteractionChainingMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getScaleChainingMode();
    }
    pub fn putScaleChainingMode(self: *@This(), value: InteractionChainingMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putScaleChainingMode(value);
    }
    pub fn getScaleSourceMode(self: *@This()) core.HResult!InteractionSourceMode {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getScaleSourceMode();
    }
    pub fn putScaleSourceMode(self: *@This(), value: InteractionSourceMode) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.putScaleSourceMode(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*Visual {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.getSource();
    }
    pub fn TryRedirectForManipulation(self: *@This(), pointerPoint: *PointerPoint) core.HResult!void {
        const this: *IVisualInteractionSource = @ptrCast(self);
        return try this.TryRedirectForManipulation(pointerPoint);
    }
    pub fn getDeltaPosition(self: *@This()) core.HResult!Vector3 {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeltaPosition();
    }
    pub fn getDeltaScale(self: *@This()) core.HResult!f32 {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeltaScale();
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn getPositionVelocity(self: *@This()) core.HResult!Vector3 {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPositionVelocity();
    }
    pub fn getScale(self: *@This()) core.HResult!f32 {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScale();
    }
    pub fn getScaleVelocity(self: *@This()) core.HResult!f32 {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScaleVelocity();
    }
    pub fn ConfigureCenterPointXModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureCenterPointXModifiers(conditionalValues);
    }
    pub fn ConfigureCenterPointYModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureCenterPointYModifiers(conditionalValues);
    }
    pub fn ConfigureDeltaPositionXModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureDeltaPositionXModifiers(conditionalValues);
    }
    pub fn ConfigureDeltaPositionYModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureDeltaPositionYModifiers(conditionalValues);
    }
    pub fn ConfigureDeltaScaleModifiers(self: *@This(), conditionalValues: *IIterable(CompositionConditionalValue)) core.HResult!void {
        var this: ?*IVisualInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConfigureDeltaScaleModifiers(conditionalValues);
    }
    pub fn getPointerWheelConfig(self: *@This()) core.HResult!*InteractionSourceConfiguration {
        var this: ?*IVisualInteractionSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualInteractionSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerWheelConfig();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(source: *Visual) core.HResult!*VisualInteractionSource {
        const factory = @This().IVisualInteractionSourceStaticsCache.get();
        return try factory.Create(source);
    }
    pub fn CreateFromIVisualElement(source: *IVisualElement) core.HResult!*VisualInteractionSource {
        const factory = @This().IVisualInteractionSourceStatics2Cache.get();
        return try factory.CreateFromIVisualElement(source);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Interactions.VisualInteractionSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualInteractionSource.GUID;
    pub const IID: Guid = IVisualInteractionSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualInteractionSource.SIGNATURE);
    var _IVisualInteractionSourceStaticsCache: FactoryCache(IVisualInteractionSourceStatics, RUNTIME_NAME) = .{};
    var _IVisualInteractionSourceStatics2Cache: FactoryCache(IVisualInteractionSourceStatics2, RUNTIME_NAME) = .{};
    var _IVisualInteractionSourceObjectFactoryCache: FactoryCache(IVisualInteractionSourceObjectFactory, RUNTIME_NAME) = .{};
};
pub const VisualInteractionSourceRedirectionMode = enum(i32) {
    Off = 0,
    CapableTouchpadOnly = 1,
    PointerWheelOnly = 2,
    CapableTouchpadAndPointerWheel = 3,
};
const ExpressionAnimation = @import("../Composition.zig").ExpressionAnimation;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVisualElement = @import("../Composition.zig").IVisualElement;
const IReference = @import("../../Foundation.zig").IReference;
const CompositionAnimation = @import("../Composition.zig").CompositionAnimation;
const Vector2NaturalMotionAnimation = @import("../Composition.zig").Vector2NaturalMotionAnimation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const Visual = @import("../Composition.zig").Visual;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const PointerPoint = @import("../Input.zig").PointerPoint;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
const ScalarNaturalMotionAnimation = @import("../Composition.zig").ScalarNaturalMotionAnimation;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const Compositor = @import("../Composition.zig").Compositor;
