pub const AttachableInputObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.AttachableInputObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAttachableInputObject.GUID;
    pub const IID: Guid = IAttachableInputObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAttachableInputObject.SIGNATURE);
    var _IAttachableInputObjectFactoryCache: FactoryCache(IAttachableInputObjectFactory, RUNTIME_NAME) = .{};
};
pub const CrossSlideThresholds = extern struct {
    SelectionStart: f32,
    SpeedBumpStart: f32,
    SpeedBumpEnd: f32,
    RearrangeStart: f32,
};
pub const CrossSlidingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *ICrossSlidingEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *ICrossSlidingEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getCrossSlidingState(self: *@This()) core.HResult!CrossSlidingState {
        const this: *ICrossSlidingEventArgs = @ptrCast(self);
        return try this.getCrossSlidingState();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*ICrossSlidingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICrossSlidingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.CrossSlidingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICrossSlidingEventArgs.GUID;
    pub const IID: Guid = ICrossSlidingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICrossSlidingEventArgs.SIGNATURE);
};
pub const CrossSlidingState = enum(i32) {
    Started = 0,
    Dragging = 1,
    Selecting = 2,
    SelectSpeedBumping = 3,
    SpeedBumping = 4,
    Rearranging = 5,
    Completed = 6,
};
pub const DraggingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IDraggingEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IDraggingEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getDraggingState(self: *@This()) core.HResult!DraggingState {
        const this: *IDraggingEventArgs = @ptrCast(self);
        return try this.getDraggingState();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IDraggingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDraggingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.DraggingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDraggingEventArgs.GUID;
    pub const IID: Guid = IDraggingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDraggingEventArgs.SIGNATURE);
};
pub const DraggingState = enum(i32) {
    Started = 0,
    Continuing = 1,
    Completed = 2,
};
pub const EdgeGesture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addStarting(self: *@This(), handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEdgeGesture = @ptrCast(self);
        return try this.addStarting(handler);
    }
    pub fn removeStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEdgeGesture = @ptrCast(self);
        return try this.removeStarting(token);
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEdgeGesture = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEdgeGesture = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub fn addCanceled(self: *@This(), handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEdgeGesture = @ptrCast(self);
        return try this.addCanceled(handler);
    }
    pub fn removeCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEdgeGesture = @ptrCast(self);
        return try this.removeCanceled(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*EdgeGesture {
        const factory = @This().IEdgeGestureStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.EdgeGesture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEdgeGesture.GUID;
    pub const IID: Guid = IEdgeGesture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEdgeGesture.SIGNATURE);
    var _IEdgeGestureStaticsCache: FactoryCache(IEdgeGestureStatics, RUNTIME_NAME) = .{};
};
pub const EdgeGestureEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!EdgeGestureKind {
        const this: *IEdgeGestureEventArgs = @ptrCast(self);
        return try this.getKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.EdgeGestureEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEdgeGestureEventArgs.GUID;
    pub const IID: Guid = IEdgeGestureEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEdgeGestureEventArgs.SIGNATURE);
};
pub const EdgeGestureKind = enum(i32) {
    Touch = 0,
    Keyboard = 1,
    Mouse = 2,
};
pub const GazeInputAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const GestureRecognizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGestureSettings(self: *@This()) core.HResult!GestureSettings {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getGestureSettings();
    }
    pub fn putGestureSettings(self: *@This(), value: GestureSettings) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putGestureSettings(value);
    }
    pub fn getIsInertial(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getIsInertial();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getShowGestureFeedback(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getShowGestureFeedback();
    }
    pub fn putShowGestureFeedback(self: *@This(), value: bool) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putShowGestureFeedback(value);
    }
    pub fn getPivotCenter(self: *@This()) core.HResult!Point {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getPivotCenter();
    }
    pub fn putPivotCenter(self: *@This(), value: Point) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putPivotCenter(value);
    }
    pub fn getPivotRadius(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getPivotRadius();
    }
    pub fn putPivotRadius(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putPivotRadius(value);
    }
    pub fn getInertiaTranslationDeceleration(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getInertiaTranslationDeceleration();
    }
    pub fn putInertiaTranslationDeceleration(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putInertiaTranslationDeceleration(value);
    }
    pub fn getInertiaRotationDeceleration(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getInertiaRotationDeceleration();
    }
    pub fn putInertiaRotationDeceleration(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putInertiaRotationDeceleration(value);
    }
    pub fn getInertiaExpansionDeceleration(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getInertiaExpansionDeceleration();
    }
    pub fn putInertiaExpansionDeceleration(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putInertiaExpansionDeceleration(value);
    }
    pub fn getInertiaTranslationDisplacement(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getInertiaTranslationDisplacement();
    }
    pub fn putInertiaTranslationDisplacement(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putInertiaTranslationDisplacement(value);
    }
    pub fn getInertiaRotationAngle(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getInertiaRotationAngle();
    }
    pub fn putInertiaRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putInertiaRotationAngle(value);
    }
    pub fn getInertiaExpansion(self: *@This()) core.HResult!f32 {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getInertiaExpansion();
    }
    pub fn putInertiaExpansion(self: *@This(), value: f32) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putInertiaExpansion(value);
    }
    pub fn getManipulationExact(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getManipulationExact();
    }
    pub fn putManipulationExact(self: *@This(), value: bool) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putManipulationExact(value);
    }
    pub fn getCrossSlideThresholds(self: *@This()) core.HResult!CrossSlideThresholds {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getCrossSlideThresholds();
    }
    pub fn putCrossSlideThresholds(self: *@This(), value: CrossSlideThresholds) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putCrossSlideThresholds(value);
    }
    pub fn getCrossSlideHorizontally(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getCrossSlideHorizontally();
    }
    pub fn putCrossSlideHorizontally(self: *@This(), value: bool) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putCrossSlideHorizontally(value);
    }
    pub fn getCrossSlideExact(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getCrossSlideExact();
    }
    pub fn putCrossSlideExact(self: *@This(), value: bool) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putCrossSlideExact(value);
    }
    pub fn getAutoProcessInertia(self: *@This()) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getAutoProcessInertia();
    }
    pub fn putAutoProcessInertia(self: *@This(), value: bool) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.putAutoProcessInertia(value);
    }
    pub fn getMouseWheelParameters(self: *@This()) core.HResult!*MouseWheelParameters {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.getMouseWheelParameters();
    }
    pub fn CanBeDoubleTap(self: *@This(), value: *PointerPoint) core.HResult!bool {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.CanBeDoubleTap(value);
    }
    pub fn ProcessDownEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.ProcessDownEvent(value);
    }
    pub fn ProcessMoveEvents(self: *@This(), value: *IVector(PointerPoint)) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.ProcessMoveEvents(value);
    }
    pub fn ProcessUpEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.ProcessUpEvent(value);
    }
    pub fn ProcessMouseWheelEvent(self: *@This(), value: *PointerPoint, isShiftKeyDown: bool, isControlKeyDown: bool) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.ProcessMouseWheelEvent(value, isShiftKeyDown, isControlKeyDown);
    }
    pub fn ProcessInertia(self: *@This()) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.ProcessInertia();
    }
    pub fn CompleteGesture(self: *@This()) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.CompleteGesture();
    }
    pub fn addTapped(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,TappedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addTapped(handler);
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeTapped(token);
    }
    pub fn addRightTapped(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,RightTappedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addRightTapped(handler);
    }
    pub fn removeRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeRightTapped(token);
    }
    pub fn addHolding(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,HoldingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addHolding(handler);
    }
    pub fn removeHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeHolding(token);
    }
    pub fn addDragging(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,DraggingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addDragging(handler);
    }
    pub fn removeDragging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeDragging(token);
    }
    pub fn addManipulationStarted(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addManipulationStarted(handler);
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationStarted(token);
    }
    pub fn addManipulationUpdated(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addManipulationUpdated(handler);
    }
    pub fn removeManipulationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationUpdated(token);
    }
    pub fn addManipulationInertiaStarting(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationInertiaStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addManipulationInertiaStarting(handler);
    }
    pub fn removeManipulationInertiaStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationInertiaStarting(token);
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addManipulationCompleted(handler);
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationCompleted(token);
    }
    pub fn addCrossSliding(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,CrossSlidingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.addCrossSliding(handler);
    }
    pub fn removeCrossSliding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGestureRecognizer = @ptrCast(self);
        return try this.removeCrossSliding(token);
    }
    pub fn getTapMinContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTapMinContactCount();
    }
    pub fn putTapMinContactCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTapMinContactCount(value);
    }
    pub fn getTapMaxContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTapMaxContactCount();
    }
    pub fn putTapMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTapMaxContactCount(value);
    }
    pub fn getHoldMinContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHoldMinContactCount();
    }
    pub fn putHoldMinContactCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHoldMinContactCount(value);
    }
    pub fn getHoldMaxContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHoldMaxContactCount();
    }
    pub fn putHoldMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHoldMaxContactCount(value);
    }
    pub fn getHoldRadius(self: *@This()) core.HResult!f32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHoldRadius();
    }
    pub fn putHoldRadius(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHoldRadius(value);
    }
    pub fn getHoldStartDelay(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHoldStartDelay();
    }
    pub fn putHoldStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHoldStartDelay(value);
    }
    pub fn getTranslationMinContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTranslationMinContactCount();
    }
    pub fn putTranslationMinContactCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTranslationMinContactCount(value);
    }
    pub fn getTranslationMaxContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTranslationMaxContactCount();
    }
    pub fn putTranslationMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGestureRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGestureRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTranslationMaxContactCount(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGestureRecognizer.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.GestureRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGestureRecognizer.GUID;
    pub const IID: Guid = IGestureRecognizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGestureRecognizer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GestureSettings = enum(i32) {
    None = 0,
    Tap = 1,
    DoubleTap = 2,
    Hold = 4,
    HoldWithMouse = 8,
    RightTap = 16,
    Drag = 32,
    ManipulationTranslateX = 64,
    ManipulationTranslateY = 128,
    ManipulationTranslateRailsX = 256,
    ManipulationTranslateRailsY = 512,
    ManipulationRotate = 1024,
    ManipulationScale = 2048,
    ManipulationTranslateInertia = 4096,
    ManipulationRotateInertia = 8192,
    ManipulationScaleInertia = 16384,
    CrossSlide = 32768,
    ManipulationMultipleFingerPanning = 65536,
};
pub const HoldingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IHoldingEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IHoldingEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getHoldingState(self: *@This()) core.HResult!HoldingState {
        const this: *IHoldingEventArgs = @ptrCast(self);
        return try this.getHoldingState();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IHoldingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHoldingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub fn getCurrentContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IHoldingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHoldingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.HoldingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHoldingEventArgs.GUID;
    pub const IID: Guid = IHoldingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHoldingEventArgs.SIGNATURE);
};
pub const HoldingState = enum(i32) {
    Started = 0,
    Completed = 1,
    Canceled = 2,
};
pub const IAttachableInputObject = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Input.IAttachableInputObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b822734-a3c1-542a-b2f4-0e32b773fb07";
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
pub const IAttachableInputObjectFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Input.IAttachableInputObjectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4c54c4e-42bc-58fa-a640-ea1516f4c06b";
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
pub const ICrossSlidingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCrossSlidingState(self: *@This()) core.HResult!CrossSlidingState {
        var _r: CrossSlidingState = undefined;
        const _c = self.vtable.get_CrossSlidingState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ICrossSlidingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9374738-6f88-41d9-8720-78e08e398349";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_CrossSlidingState: *const fn(self: *anyopaque, _r: *CrossSlidingState) callconv(.winapi) HRESULT,
    };
};
pub const ICrossSlidingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ICrossSlidingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eefb7d48-c070-59f3-8dab-bcaf621d8687";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IDraggingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDraggingState(self: *@This()) core.HResult!DraggingState {
        var _r: DraggingState = undefined;
        const _c = self.vtable.get_DraggingState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IDraggingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c905384-083c-4bd3-b559-179cddeb33ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_DraggingState: *const fn(self: *anyopaque, _r: *DraggingState) callconv(.winapi) HRESULT,
    };
};
pub const IDraggingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IDraggingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71efdbf9-382a-55ca-b4b9-008123c1bf1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IEdgeGesture = extern struct {
    vtable: *const VTable,
    pub fn addStarting(self: *@This(), handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Starting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Starting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCanceled(self: *@This(), handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Canceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Canceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IEdgeGesture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "580d5292-2ab1-49aa-a7f0-33bd3f8df9f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Starting: *const fn(self: *anyopaque, handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Starting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Canceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(EdgeGesture,EdgeGestureEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Canceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IEdgeGestureEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!EdgeGestureKind {
        var _r: EdgeGestureKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IEdgeGestureEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44fa4a24-2d09-42e1-8b5e-368208796a4c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *EdgeGestureKind) callconv(.winapi) HRESULT,
    };
};
pub const IEdgeGestureStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*EdgeGesture {
        var _r: *EdgeGesture = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IEdgeGestureStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc6a8519-18ee-4043-9839-4fc584d60a14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **EdgeGesture) callconv(.winapi) HRESULT,
    };
};
pub const IGestureRecognizer = extern struct {
    vtable: *const VTable,
    pub fn getGestureSettings(self: *@This()) core.HResult!GestureSettings {
        var _r: GestureSettings = undefined;
        const _c = self.vtable.get_GestureSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGestureSettings(self: *@This(), value: GestureSettings) core.HResult!void {
        const _c = self.vtable.put_GestureSettings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsInertial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInertial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShowGestureFeedback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowGestureFeedback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowGestureFeedback(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowGestureFeedback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPivotCenter(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_PivotCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPivotCenter(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_PivotCenter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPivotRadius(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PivotRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPivotRadius(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PivotRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInertiaTranslationDeceleration(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InertiaTranslationDeceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInertiaTranslationDeceleration(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InertiaTranslationDeceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInertiaRotationDeceleration(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InertiaRotationDeceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInertiaRotationDeceleration(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InertiaRotationDeceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInertiaExpansionDeceleration(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InertiaExpansionDeceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInertiaExpansionDeceleration(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InertiaExpansionDeceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInertiaTranslationDisplacement(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InertiaTranslationDisplacement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInertiaTranslationDisplacement(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InertiaTranslationDisplacement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInertiaRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InertiaRotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInertiaRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InertiaRotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInertiaExpansion(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InertiaExpansion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInertiaExpansion(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InertiaExpansion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getManipulationExact(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ManipulationExact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putManipulationExact(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ManipulationExact(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCrossSlideThresholds(self: *@This()) core.HResult!CrossSlideThresholds {
        var _r: CrossSlideThresholds = undefined;
        const _c = self.vtable.get_CrossSlideThresholds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCrossSlideThresholds(self: *@This(), value: CrossSlideThresholds) core.HResult!void {
        const _c = self.vtable.put_CrossSlideThresholds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCrossSlideHorizontally(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CrossSlideHorizontally(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCrossSlideHorizontally(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CrossSlideHorizontally(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCrossSlideExact(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CrossSlideExact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCrossSlideExact(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CrossSlideExact(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoProcessInertia(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoProcessInertia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoProcessInertia(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoProcessInertia(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMouseWheelParameters(self: *@This()) core.HResult!*MouseWheelParameters {
        var _r: *MouseWheelParameters = undefined;
        const _c = self.vtable.get_MouseWheelParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanBeDoubleTap(self: *@This(), value: *PointerPoint) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanBeDoubleTap(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProcessDownEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const _c = self.vtable.ProcessDownEvent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessMoveEvents(self: *@This(), value: *IVector(PointerPoint)) core.HResult!void {
        const _c = self.vtable.ProcessMoveEvents(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessUpEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const _c = self.vtable.ProcessUpEvent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessMouseWheelEvent(self: *@This(), value: *PointerPoint, isShiftKeyDown: bool, isControlKeyDown: bool) core.HResult!void {
        const _c = self.vtable.ProcessMouseWheelEvent(@ptrCast(self), value, isShiftKeyDown, isControlKeyDown);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessInertia(self: *@This()) core.HResult!void {
        const _c = self.vtable.ProcessInertia(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CompleteGesture(self: *@This()) core.HResult!void {
        const _c = self.vtable.CompleteGesture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTapped(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,TappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Tapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Tapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRightTapped(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,RightTappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RightTapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RightTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHolding(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,HoldingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Holding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Holding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragging(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,DraggingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Dragging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Dragging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationStarted(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationUpdated(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationInertiaStarting(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationInertiaStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationInertiaStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationInertiaStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationInertiaStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,ManipulationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCrossSliding(self: *@This(), handler: *TypedEventHandler(GestureRecognizer,CrossSlidingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CrossSliding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCrossSliding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CrossSliding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IGestureRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b47a37bf-3d6b-4f88-83e8-6dcb4012ffb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GestureSettings: *const fn(self: *anyopaque, _r: *GestureSettings) callconv(.winapi) HRESULT,
        put_GestureSettings: *const fn(self: *anyopaque, value: GestureSettings) callconv(.winapi) HRESULT,
        get_IsInertial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ShowGestureFeedback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowGestureFeedback: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PivotCenter: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_PivotCenter: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_PivotRadius: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PivotRadius: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InertiaTranslationDeceleration: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InertiaTranslationDeceleration: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InertiaRotationDeceleration: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InertiaRotationDeceleration: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InertiaExpansionDeceleration: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InertiaExpansionDeceleration: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InertiaTranslationDisplacement: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InertiaTranslationDisplacement: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InertiaRotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InertiaRotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InertiaExpansion: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InertiaExpansion: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_ManipulationExact: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ManipulationExact: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CrossSlideThresholds: *const fn(self: *anyopaque, _r: *CrossSlideThresholds) callconv(.winapi) HRESULT,
        put_CrossSlideThresholds: *const fn(self: *anyopaque, value: CrossSlideThresholds) callconv(.winapi) HRESULT,
        get_CrossSlideHorizontally: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CrossSlideHorizontally: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CrossSlideExact: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CrossSlideExact: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutoProcessInertia: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoProcessInertia: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MouseWheelParameters: *const fn(self: *anyopaque, _r: **MouseWheelParameters) callconv(.winapi) HRESULT,
        CanBeDoubleTap: *const fn(self: *anyopaque, value: *PointerPoint, _r: *bool) callconv(.winapi) HRESULT,
        ProcessDownEvent: *const fn(self: *anyopaque, value: *PointerPoint) callconv(.winapi) HRESULT,
        ProcessMoveEvents: *const fn(self: *anyopaque, value: *IVector(PointerPoint)) callconv(.winapi) HRESULT,
        ProcessUpEvent: *const fn(self: *anyopaque, value: *PointerPoint) callconv(.winapi) HRESULT,
        ProcessMouseWheelEvent: *const fn(self: *anyopaque, value: *PointerPoint, isShiftKeyDown: bool, isControlKeyDown: bool) callconv(.winapi) HRESULT,
        ProcessInertia: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        CompleteGesture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Tapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,TappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Tapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RightTapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,RightTappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RightTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Holding: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,HoldingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Holding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Dragging: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,DraggingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Dragging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,ManipulationStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,ManipulationUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationInertiaStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,ManipulationInertiaStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationInertiaStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,ManipulationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CrossSliding: *const fn(self: *anyopaque, handler: *TypedEventHandler(GestureRecognizer,CrossSlidingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CrossSliding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGestureRecognizer2 = extern struct {
    vtable: *const VTable,
    pub fn getTapMinContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TapMinContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTapMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TapMinContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTapMaxContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TapMaxContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTapMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TapMaxContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldMinContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HoldMinContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_HoldMinContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldMaxContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HoldMaxContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_HoldMaxContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldRadius(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_HoldRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldRadius(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_HoldRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldStartDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_HoldStartDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_HoldStartDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslationMinContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TranslationMinContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslationMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TranslationMinContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslationMaxContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TranslationMaxContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslationMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TranslationMaxContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IGestureRecognizer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d646097f-6ef7-5746-8ba8-8ff2206e6f3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TapMinContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TapMinContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_TapMaxContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TapMaxContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HoldMinContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HoldMinContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HoldMaxContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HoldMaxContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HoldRadius: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_HoldRadius: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_HoldStartDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_HoldStartDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_TranslationMinContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TranslationMinContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_TranslationMaxContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TranslationMaxContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IHoldingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHoldingState(self: *@This()) core.HResult!HoldingState {
        var _r: HoldingState = undefined;
        const _c = self.vtable.get_HoldingState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IHoldingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bf755c5-e799-41b4-bb40-242f40959b71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_HoldingState: *const fn(self: *anyopaque, _r: *HoldingState) callconv(.winapi) HRESULT,
    };
};
pub const IHoldingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IHoldingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "141da9ea-4c79-5674-afea-493fdeb91f19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CurrentContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IInputActivationListener = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!InputActivationState {
        var _r: InputActivationState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addInputActivationChanged(self: *@This(), handler: *TypedEventHandler(InputActivationListener,InputActivationListenerActivationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InputActivationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInputActivationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InputActivationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IInputActivationListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d6d4ed2-28c7-5ae3-aa74-c918a9f243ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *InputActivationState) callconv(.winapi) HRESULT,
        add_InputActivationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(InputActivationListener,InputActivationListenerActivationChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InputActivationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IInputActivationListenerActivationChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!InputActivationState {
        var _r: InputActivationState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IInputActivationListenerActivationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7699b465-1dcf-5791-b4b9-6cafbeed2056";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *InputActivationState) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardDeliveryInterceptor = extern struct {
    vtable: *const VTable,
    pub fn getIsInterceptionEnabledWhenInForeground(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInterceptionEnabledWhenInForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInterceptionEnabledWhenInForeground(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInterceptionEnabledWhenInForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyDown(self: *@This(), handler: *TypedEventHandler(KeyboardDeliveryInterceptor,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyDown(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyDown(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyDown(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyUp(self: *@This(), handler: *TypedEventHandler(KeyboardDeliveryInterceptor,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyUp(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyUp(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyUp(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IKeyboardDeliveryInterceptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4baf068-8f49-446c-8db5-8c0ffe85cc9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsInterceptionEnabledWhenInForeground: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInterceptionEnabledWhenInForeground: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_KeyDown: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardDeliveryInterceptor,KeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyDown: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyUp: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardDeliveryInterceptor,KeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyUp: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardDeliveryInterceptorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*KeyboardDeliveryInterceptor {
        var _r: *KeyboardDeliveryInterceptor = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IKeyboardDeliveryInterceptorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9f63ba2-ceba-4755-8a7e-14c0ffecd239";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **KeyboardDeliveryInterceptor) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        var _r: ManipulationVelocities = undefined;
        const _c = self.vtable.get_Velocities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b34ab22b-d19b-46ff-9f38-dec7754bb9e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Velocities: *const fn(self: *anyopaque, _r: *ManipulationVelocities) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationCompletedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationCompletedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0c0dce7-30a9-5b96-886f-6560a85e4757";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CurrentContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationInertiaStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Delta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        var _r: ManipulationVelocities = undefined;
        const _c = self.vtable.get_Velocities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationInertiaStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd37a898-26bf-467a-9ce5-ccf3fb11371e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Delta: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Velocities: *const fn(self: *anyopaque, _r: *ManipulationVelocities) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationInertiaStartingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationInertiaStartingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c25409b8-f9fa-5a45-bd97-dcbbb2201860";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddec873e-cfce-4932-8c1d-3c3d011a34c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationStartedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationStartedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2da3db4e-e583-5055-afaa-16fd986531a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Delta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        var _r: ManipulationVelocities = undefined;
        const _c = self.vtable.get_Velocities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb354ce5-abb8-4f9f-b3ce-8181aa61ad82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Delta: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Velocities: *const fn(self: *anyopaque, _r: *ManipulationVelocities) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationUpdatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IManipulationUpdatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3dfb96a-3306-5903-a1c5-ff9757a8689e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CurrentContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMouseWheelParameters = extern struct {
    vtable: *const VTable,
    pub fn getCharTranslation(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_CharTranslation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharTranslation(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_CharTranslation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeltaScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DeltaScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeltaScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DeltaScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeltaRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DeltaRotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeltaRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DeltaRotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageTranslation(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_PageTranslation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPageTranslation(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_PageTranslation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IMouseWheelParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ead0ca44-9ded-4037-8149-5e4cc2564468";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CharTranslation: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_CharTranslation: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_DeltaScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DeltaScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_DeltaRotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DeltaRotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_PageTranslation: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_PageTranslation: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const IPhysicalGestureRecognizer = extern struct {
    vtable: *const VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGestureSettings(self: *@This()) core.HResult!GestureSettings {
        var _r: GestureSettings = undefined;
        const _c = self.vtable.get_GestureSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGestureSettings(self: *@This(), value: GestureSettings) core.HResult!void {
        const _c = self.vtable.put_GestureSettings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTapMinContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TapMinContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTapMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TapMinContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTapMaxContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TapMaxContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTapMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TapMaxContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldMinContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HoldMinContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_HoldMinContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldMaxContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HoldMaxContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_HoldMaxContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldRadius(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_HoldRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldRadius(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_HoldRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoldStartDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_HoldStartDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoldStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_HoldStartDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslationMinContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TranslationMinContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslationMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TranslationMinContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslationMaxContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TranslationMaxContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslationMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TranslationMaxContactCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessDownEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const _c = self.vtable.ProcessDownEvent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessMoveEvents(self: *@This(), value: *IVector(PointerPoint)) core.HResult!void {
        const _c = self.vtable.ProcessMoveEvents(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessUpEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const _c = self.vtable.ProcessUpEvent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CompleteGesture(self: *@This()) core.HResult!void {
        const _c = self.vtable.CompleteGesture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationStarted(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationUpdated(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTapped(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,TappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Tapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Tapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHolding(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,HoldingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Holding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Holding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPhysicalGestureRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79a29f4d-32a6-5aa5-a999-42b0b420c66d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_GestureSettings: *const fn(self: *anyopaque, _r: *GestureSettings) callconv(.winapi) HRESULT,
        put_GestureSettings: *const fn(self: *anyopaque, value: GestureSettings) callconv(.winapi) HRESULT,
        get_TapMinContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TapMinContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_TapMaxContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TapMaxContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HoldMinContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HoldMinContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HoldMaxContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HoldMaxContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HoldRadius: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_HoldRadius: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_HoldStartDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_HoldStartDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_TranslationMinContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TranslationMinContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_TranslationMaxContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TranslationMaxContactCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        ProcessDownEvent: *const fn(self: *anyopaque, value: *PointerPoint) callconv(.winapi) HRESULT,
        ProcessMoveEvents: *const fn(self: *anyopaque, value: *IVector(PointerPoint)) callconv(.winapi) HRESULT,
        ProcessUpEvent: *const fn(self: *anyopaque, value: *PointerPoint) callconv(.winapi) HRESULT,
        CompleteGesture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_ManipulationStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Tapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhysicalGestureRecognizer,TappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Tapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Holding: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhysicalGestureRecognizer,HoldingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Holding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPointerPoint = extern struct {
    vtable: *const VTable,
    pub fn getPointerDevice(self: *@This()) core.HResult!*PointerDevice {
        var _r: *PointerDevice = undefined;
        const _c = self.vtable.get_PointerDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_RawPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PointerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_FrameId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInContact(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInContact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*PointerPointProperties {
        var _r: *PointerPointProperties = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerPoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e995317d-7296-42d9-8233-c5be73b74a4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDevice: *const fn(self: *anyopaque, _r: **PointerDevice) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_RawPosition: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_PointerId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_FrameId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_IsInContact: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **PointerPointProperties) callconv(.winapi) HRESULT,
    };
};
pub const IPointerPointPhysicalPosition = extern struct {
    vtable: *const VTable,
    pub fn getIsPhysicalPositionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPhysicalPositionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_PhysicalPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerPointPhysicalPosition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "003185a3-a5e7-4859-9c0b-89340204806c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPhysicalPositionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PhysicalPosition: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IPointerPointProperties = extern struct {
    vtable: *const VTable,
    pub fn getPressure(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInverted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInverted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEraser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEraser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXTilt(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_XTilt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYTilt(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_YTilt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTwist(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Twist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContactRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ContactRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContactRectRaw(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ContactRectRaw(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTouchConfidence(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TouchConfidence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLeftButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLeftButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRightButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRightButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMiddleButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMiddleButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMouseWheelDelta(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MouseWheelDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHorizontalMouseWheel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHorizontalMouseWheel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPrimary(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInRange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBarrelButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBarrelButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsXButton1Pressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsXButton1Pressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsXButton2Pressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsXButton2Pressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerUpdateKind(self: *@This()) core.HResult!PointerUpdateKind {
        var _r: PointerUpdateKind = undefined;
        const _c = self.vtable.get_PointerUpdateKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasUsage(self: *@This(), usagePage: u32, usageId: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasUsage(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUsageValue(self: *@This(), usagePage: u32, usageId: u32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetUsageValue(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerPointProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c79d8a4b-c163-4ee7-803f-67ce79f9972d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_IsInverted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsEraser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_XTilt: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_YTilt: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Twist: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_ContactRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_ContactRectRaw: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_TouchConfidence: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLeftButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRightButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMiddleButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MouseWheelDelta: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsHorizontalMouseWheel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPrimary: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInRange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBarrelButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsXButton1Pressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsXButton2Pressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PointerUpdateKind: *const fn(self: *anyopaque, _r: *PointerUpdateKind) callconv(.winapi) HRESULT,
        HasUsage: *const fn(self: *anyopaque, usagePage: u32, usageId: u32, _r: *bool) callconv(.winapi) HRESULT,
        GetUsageValue: *const fn(self: *anyopaque, usagePage: u32, usageId: u32, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IPointerPointProperties2 = extern struct {
    vtable: *const VTable,
    pub fn getZDistance(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_ZDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerPointProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22c3433a-c83b-41c0-a296-5e232d64d6af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ZDistance: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
    };
};
pub const IPointerPointStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentPoint(self: *@This(), pointerId: u32) core.HResult!*PointerPoint {
        var _r: *PointerPoint = undefined;
        const _c = self.vtable.GetCurrentPoint(@ptrCast(self), pointerId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIntermediatePoints(self: *@This(), pointerId: u32) core.HResult!*IVector(PointerPoint) {
        var _r: *IVector(PointerPoint) = undefined;
        const _c = self.vtable.GetIntermediatePoints(@ptrCast(self), pointerId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentPointWithTransform(self: *@This(), pointerId: u32, transform: *IPointerPointTransform) core.HResult!*PointerPoint {
        var _r: *PointerPoint = undefined;
        const _c = self.vtable.GetCurrentPointWithTransform(@ptrCast(self), pointerId, transform, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIntermediatePointsWithTransform(self: *@This(), pointerId: u32, transform: *IPointerPointTransform) core.HResult!*IVector(PointerPoint) {
        var _r: *IVector(PointerPoint) = undefined;
        const _c = self.vtable.GetIntermediatePointsWithTransform(@ptrCast(self), pointerId, transform, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerPointStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a506638d-2a1a-413e-bc75-9f38381cc069";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentPoint: *const fn(self: *anyopaque, pointerId: u32, _r: **PointerPoint) callconv(.winapi) HRESULT,
        GetIntermediatePoints: *const fn(self: *anyopaque, pointerId: u32, _r: **IVector(PointerPoint)) callconv(.winapi) HRESULT,
        GetCurrentPointWithTransform: *const fn(self: *anyopaque, pointerId: u32, transform: *IPointerPointTransform, _r: **PointerPoint) callconv(.winapi) HRESULT,
        GetIntermediatePointsWithTransform: *const fn(self: *anyopaque, pointerId: u32, transform: *IPointerPointTransform, _r: **IVector(PointerPoint)) callconv(.winapi) HRESULT,
    };
};
pub const IPointerPointTransform = extern struct {
    vtable: *const VTable,
    pub fn getInverse(self: *@This()) core.HResult!*IPointerPointTransform {
        var _r: *IPointerPointTransform = undefined;
        const _c = self.vtable.get_Inverse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryTransform(self: *@This(), inPoint: Point, outPoint: Point) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryTransform(@ptrCast(self), inPoint, outPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TransformBounds(self: *@This(), rect: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.TransformBounds(@ptrCast(self), rect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerPointTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d5fe14f-b87c-4028-bc9c-59e9947fb056";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Inverse: *const fn(self: *anyopaque, _r: **IPointerPointTransform) callconv(.winapi) HRESULT,
        TryTransform: *const fn(self: *anyopaque, inPoint: Point, outPoint: Point, _r: *bool) callconv(.winapi) HRESULT,
        TransformBounds: *const fn(self: *anyopaque, rect: Rect, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IPointerVisualizationSettings = extern struct {
    vtable: *const VTable,
    pub fn putIsContactFeedbackEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsContactFeedbackEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsContactFeedbackEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsContactFeedbackEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsBarrelButtonFeedbackEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsBarrelButtonFeedbackEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsBarrelButtonFeedbackEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBarrelButtonFeedbackEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerVisualizationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d1e6461-84f7-499d-bd91-2a36e2b7aaa2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsContactFeedbackEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsContactFeedbackEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsBarrelButtonFeedbackEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsBarrelButtonFeedbackEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPointerVisualizationSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*PointerVisualizationSettings {
        var _r: *PointerVisualizationSettings = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IPointerVisualizationSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68870edb-165b-4214-b4f3-584eca8c8a69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **PointerVisualizationSettings) callconv(.winapi) HRESULT,
    };
};
pub const IRadialController = extern struct {
    vtable: *const VTable,
    pub fn getMenu(self: *@This()) core.HResult!*RadialControllerMenu {
        var _r: *RadialControllerMenu = undefined;
        const _c = self.vtable.get_Menu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationResolutionInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationResolutionInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationResolutionInDegrees(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationResolutionInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseAutomaticHapticFeedback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseAutomaticHapticFeedback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseAutomaticHapticFeedback(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseAutomaticHapticFeedback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addScreenContactStarted(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerScreenContactStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScreenContactStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScreenContactStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScreenContactStarted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addScreenContactEnded(self: *@This(), handler: *TypedEventHandler(RadialController,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScreenContactEnded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScreenContactEnded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScreenContactEnded(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addScreenContactContinued(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerScreenContactContinuedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScreenContactContinued(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScreenContactContinued(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScreenContactContinued(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addControlLost(self: *@This(), handler: *TypedEventHandler(RadialController,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ControlLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeControlLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ControlLost(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRotationChanged(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerRotationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RotationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRotationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RotationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addButtonClicked(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ButtonClicked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ButtonClicked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addControlAcquired(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerControlAcquiredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ControlAcquired(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeControlAcquired(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ControlAcquired(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3055d1c8-df51-43d4-b23b-0e1037467a09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Menu: *const fn(self: *anyopaque, _r: **RadialControllerMenu) callconv(.winapi) HRESULT,
        get_RotationResolutionInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationResolutionInDegrees: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_UseAutomaticHapticFeedback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseAutomaticHapticFeedback: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_ScreenContactStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerScreenContactStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScreenContactStarted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ScreenContactEnded: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScreenContactEnded: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ScreenContactContinued: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerScreenContactContinuedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScreenContactContinued: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ControlLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ControlLost: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RotationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerRotationChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RotationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ButtonClicked: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerButtonClickedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ButtonClicked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ControlAcquired: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerControlAcquiredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ControlAcquired: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRadialController2 = extern struct {
    vtable: *const VTable,
    pub fn addButtonPressed(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonPressedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ButtonPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeButtonPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ButtonPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addButtonHolding(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonHoldingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ButtonHolding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeButtonHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ButtonHolding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addButtonReleased(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonReleasedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ButtonReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeButtonReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ButtonReleased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577eff-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ButtonPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerButtonPressedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ButtonPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ButtonHolding: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerButtonHoldingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ButtonHolding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ButtonReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialController,RadialControllerButtonReleasedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ButtonReleased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerButtonClickedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206aa438-e651-11e5-bf62-2c27d7404e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerButtonClickedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerButtonClickedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef3-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerButtonHoldingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerButtonHoldingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577eee-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerButtonPressedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerButtonPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577eed-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerButtonReleasedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerButtonReleasedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577eef-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerConfiguration = extern struct {
    vtable: *const VTable,
    pub fn SetDefaultMenuItems(self: *@This(), buttons: *IIterable(RadialControllerSystemMenuItemKind)) core.HResult!void {
        const _c = self.vtable.SetDefaultMenuItems(@ptrCast(self), buttons);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResetToDefaultMenuItems(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetToDefaultMenuItems(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TrySelectDefaultMenuItem(self: *@This(), ty: RadialControllerSystemMenuItemKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySelectDefaultMenuItem(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6b79ecb-6a52-4430-910c-56370a9d6b42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetDefaultMenuItems: *const fn(self: *anyopaque, buttons: *IIterable(RadialControllerSystemMenuItemKind)) callconv(.winapi) HRESULT,
        ResetToDefaultMenuItems: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TrySelectDefaultMenuItem: *const fn(self: *anyopaque, ty: RadialControllerSystemMenuItemKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn putActiveControllerWhenMenuIsSuppressed(self: *@This(), value: *RadialController) core.HResult!void {
        const _c = self.vtable.put_ActiveControllerWhenMenuIsSuppressed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActiveControllerWhenMenuIsSuppressed(self: *@This()) core.HResult!*RadialController {
        var _r: *RadialController = undefined;
        const _c = self.vtable.get_ActiveControllerWhenMenuIsSuppressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMenuSuppressed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMenuSuppressed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMenuSuppressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMenuSuppressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef7-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ActiveControllerWhenMenuIsSuppressed: *const fn(self: *anyopaque, value: *RadialController) callconv(.winapi) HRESULT,
        get_ActiveControllerWhenMenuIsSuppressed: *const fn(self: *anyopaque, _r: **RadialController) callconv(.winapi) HRESULT,
        put_IsMenuSuppressed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsMenuSuppressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerConfigurationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*RadialControllerConfiguration {
        var _r: *RadialControllerConfiguration = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerConfigurationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79b6b0e5-069a-4486-a99d-8db772b9642f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **RadialControllerConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerConfigurationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn putAppController(self: *@This(), value: *RadialController) core.HResult!void {
        const _c = self.vtable.put_AppController(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppController(self: *@This()) core.HResult!*RadialController {
        var _r: *RadialController = undefined;
        const _c = self.vtable.get_AppController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAppControllerEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAppControllerEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAppControllerEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppControllerEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerConfigurationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53e08b17-e205-48d3-9caf-80ff47c4d7c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AppController: *const fn(self: *anyopaque, value: *RadialController) callconv(.winapi) HRESULT,
        get_AppController: *const fn(self: *anyopaque, _r: **RadialController) callconv(.winapi) HRESULT,
        put_IsAppControllerEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAppControllerEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerControlAcquiredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerControlAcquiredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206aa439-e651-11e5-bf62-2c27d7404e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerControlAcquiredEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerControlAcquiredEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef4-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerMenu = extern struct {
    vtable: *const VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVector(RadialControllerMenuItem) {
        var _r: *IVector(RadialControllerMenuItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSelectedMenuItem(self: *@This()) core.HResult!*RadialControllerMenuItem {
        var _r: *RadialControllerMenuItem = undefined;
        const _c = self.vtable.GetSelectedMenuItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectMenuItem(self: *@This(), menuItem: *RadialControllerMenuItem) core.HResult!void {
        const _c = self.vtable.SelectMenuItem(@ptrCast(self), menuItem);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TrySelectPreviouslySelectedMenuItem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySelectPreviouslySelectedMenuItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerMenu";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8506b35d-f640-4412-aba0-bad077e5ea8a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(RadialControllerMenuItem)) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetSelectedMenuItem: *const fn(self: *anyopaque, _r: **RadialControllerMenuItem) callconv(.winapi) HRESULT,
        SelectMenuItem: *const fn(self: *anyopaque, menuItem: *RadialControllerMenuItem) callconv(.winapi) HRESULT,
        TrySelectPreviouslySelectedMenuItem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerMenuItem = extern struct {
    vtable: *const VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInvoked(self: *@This(), handler: *TypedEventHandler(RadialControllerMenuItem,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Invoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Invoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerMenuItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c80fc98d-ad0b-4c9c-8f2f-136a2373a6ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        add_Invoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(RadialControllerMenuItem,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Invoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerMenuItemStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromIcon(self: *@This(), displayText: HSTRING, icon: *RandomAccessStreamReference) core.HResult!*RadialControllerMenuItem {
        var _r: *RadialControllerMenuItem = undefined;
        const _c = self.vtable.CreateFromIcon(@ptrCast(self), displayText, icon, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromKnownIcon(self: *@This(), displayText: HSTRING, value: RadialControllerMenuKnownIcon) core.HResult!*RadialControllerMenuItem {
        var _r: *RadialControllerMenuItem = undefined;
        const _c = self.vtable.CreateFromKnownIcon(@ptrCast(self), displayText, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerMenuItemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "249e0887-d842-4524-9df8-e0d647edc887";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromIcon: *const fn(self: *anyopaque, displayText: HSTRING, icon: *RandomAccessStreamReference, _r: **RadialControllerMenuItem) callconv(.winapi) HRESULT,
        CreateFromKnownIcon: *const fn(self: *anyopaque, displayText: HSTRING, value: RadialControllerMenuKnownIcon, _r: **RadialControllerMenuItem) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerMenuItemStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromFontGlyph(self: *@This(), displayText: HSTRING, glyph: HSTRING, fontFamily: HSTRING) core.HResult!*RadialControllerMenuItem {
        var _r: *RadialControllerMenuItem = undefined;
        const _c = self.vtable.CreateFromFontGlyph(@ptrCast(self), displayText, glyph, fontFamily, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromFontGlyphWithGlyphWithFontFamilyWithFontUri(self: *@This(), displayText: HSTRING, glyph: HSTRING, fontFamily: HSTRING, fontUri: *Uri) core.HResult!*RadialControllerMenuItem {
        var _r: *RadialControllerMenuItem = undefined;
        const _c = self.vtable.CreateFromFontGlyphWithGlyphWithFontFamilyWithFontUri(@ptrCast(self), displayText, glyph, fontFamily, fontUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerMenuItemStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cbb70be-7e3e-48bd-be04-2c7fcaa9c1ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromFontGlyph: *const fn(self: *anyopaque, displayText: HSTRING, glyph: HSTRING, fontFamily: HSTRING, _r: **RadialControllerMenuItem) callconv(.winapi) HRESULT,
        CreateFromFontGlyphWithGlyphWithFontFamilyWithFontUri: *const fn(self: *anyopaque, displayText: HSTRING, glyph: HSTRING, fontFamily: HSTRING, fontUri: *Uri, _r: **RadialControllerMenuItem) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerRotationChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRotationDeltaInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationDeltaInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerRotationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206aa435-e651-11e5-bf62-2c27d7404e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RotationDeltaInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerRotationChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerRotationChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577eec-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerScreenContact = extern struct {
    vtable: *const VTable,
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerScreenContact";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206aa434-e651-11e5-bf62-2c27d7404e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerScreenContactContinuedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206aa437-e651-11e5-bf62-2c27d7404e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerScreenContactContinuedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef1-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerScreenContactEndedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerScreenContactEndedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef2-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerScreenContactStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        var _r: *RadialControllerScreenContact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206aa436-e651-11e5-bf62-2c27d7404e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **RadialControllerScreenContact) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerScreenContactStartedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsButtonPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef0-3cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsButtonPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForCurrentView(self: *@This()) core.HResult!*RadialController {
        var _r: *RadialController = undefined;
        const _c = self.vtable.CreateForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRadialControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faded0b7-b84c-4894-87aa-8f25aa5f288b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        CreateForCurrentView: *const fn(self: *anyopaque, _r: **RadialController) callconv(.winapi) HRESULT,
    };
};
pub const IRightTappedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4cbf40bd-af7a-4a36-9476-b1dce141709a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IRightTappedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.IRightTappedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61c7b7bb-9f57-5857-a33c-c58c3dfa959e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ISystemButtonEventController = extern struct {
    vtable: *const VTable,
    pub fn addSystemFunctionButtonPressed(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionButtonEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SystemFunctionButtonPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSystemFunctionButtonPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SystemFunctionButtonPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSystemFunctionButtonReleased(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionButtonEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SystemFunctionButtonReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSystemFunctionButtonReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SystemFunctionButtonReleased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSystemFunctionLockChanged(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionLockChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SystemFunctionLockChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSystemFunctionLockChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SystemFunctionLockChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSystemFunctionLockIndicatorChanged(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionLockIndicatorChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SystemFunctionLockIndicatorChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSystemFunctionLockIndicatorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SystemFunctionLockIndicatorChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ISystemButtonEventController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59b893a9-73bc-52b5-ba41-82511b2cb46c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SystemFunctionButtonPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionButtonEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SystemFunctionButtonPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SystemFunctionButtonReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionButtonEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SystemFunctionButtonReleased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SystemFunctionLockChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionLockChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SystemFunctionLockChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SystemFunctionLockIndicatorChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionLockIndicatorChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SystemFunctionLockIndicatorChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISystemButtonEventControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForDispatcherQueue(self: *@This(), queue: *DispatcherQueue) core.HResult!*SystemButtonEventController {
        var _r: *SystemButtonEventController = undefined;
        const _c = self.vtable.CreateForDispatcherQueue(@ptrCast(self), queue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ISystemButtonEventControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "632fb07b-20bd-5e15-af4a-00dbf2064ffa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForDispatcherQueue: *const fn(self: *anyopaque, queue: *DispatcherQueue, _r: **SystemButtonEventController) callconv(.winapi) HRESULT,
    };
};
pub const ISystemFunctionButtonEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ISystemFunctionButtonEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4833896f-80d1-5dd6-92a7-62a508ffef5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISystemFunctionLockChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLocked(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLocked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ISystemFunctionLockChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd040608-fcf9-585c-beab-f1d2eaf364ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_IsLocked: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISystemFunctionLockIndicatorChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIndicatorOn(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIndicatorOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ISystemFunctionLockIndicatorChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b212b94e-7a6f-58ae-b304-bae61d0371b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_IsIndicatorOn: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ITappedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTapCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TapCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ITappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfa126e4-253a-4c3c-953b-395c37aed309";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_TapCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ITappedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContactCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ITappedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "294388f2-177e-51d5-be56-ee0866fa968c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ITouchpadGesturesController = extern struct {
    vtable: *const VTable,
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportedGestures(self: *@This()) core.HResult!TouchpadGlobalGestureKinds {
        var _r: TouchpadGlobalGestureKinds = undefined;
        const _c = self.vtable.get_SupportedGestures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportedGestures(self: *@This(), value: TouchpadGlobalGestureKinds) core.HResult!void {
        const _c = self.vtable.put_SupportedGestures(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerMoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerMoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerReleased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGlobalActionPerformed(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,TouchpadGlobalActionEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GlobalActionPerformed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGlobalActionPerformed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GlobalActionPerformed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ITouchpadGesturesController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28c13cdd-e068-549f-89c6-1a440c6fc327";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportedGestures: *const fn(self: *anyopaque, _r: *TouchpadGlobalGestureKinds) callconv(.winapi) HRESULT,
        put_SupportedGestures: *const fn(self: *anyopaque, value: TouchpadGlobalGestureKinds) callconv(.winapi) HRESULT,
        add_PointerPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerMoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerMoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerReleased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GlobalActionPerformed: *const fn(self: *anyopaque, handler: *TypedEventHandler(TouchpadGesturesController,TouchpadGlobalActionEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GlobalActionPerformed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITouchpadGesturesControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForProcess(self: *@This()) core.HResult!*TouchpadGesturesController {
        var _r: *TouchpadGesturesController = undefined;
        const _c = self.vtable.CreateForProcess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ITouchpadGesturesControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "207ef171-1a73-51cd-a694-8840e09dbafa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        CreateForProcess: *const fn(self: *anyopaque, _r: **TouchpadGesturesController) callconv(.winapi) HRESULT,
    };
};
pub const ITouchpadGlobalActionEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!TouchpadGlobalAction {
        var _r: TouchpadGlobalAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerDevice(self: *@This()) core.HResult!*PointerDevice {
        var _r: *PointerDevice = undefined;
        const _c = self.vtable.get_PointerDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ITouchpadGlobalActionEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6edad206-e4e3-5f39-9d13-8575e8e2a12b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *TouchpadGlobalAction) callconv(.winapi) HRESULT,
        get_PointerDevice: *const fn(self: *anyopaque, _r: **PointerDevice) callconv(.winapi) HRESULT,
    };
};
pub const InputActivationListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!InputActivationState {
        const this: *IInputActivationListener = @ptrCast(self);
        return try this.getState();
    }
    pub fn addInputActivationChanged(self: *@This(), handler: *TypedEventHandler(InputActivationListener,InputActivationListenerActivationChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInputActivationListener = @ptrCast(self);
        return try this.addInputActivationChanged(handler);
    }
    pub fn removeInputActivationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IInputActivationListener = @ptrCast(self);
        return try this.removeInputActivationChanged(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.InputActivationListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputActivationListener.GUID;
    pub const IID: Guid = IInputActivationListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputActivationListener.SIGNATURE);
};
pub const InputActivationListenerActivationChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!InputActivationState {
        const this: *IInputActivationListenerActivationChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.InputActivationListenerActivationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputActivationListenerActivationChangedEventArgs.GUID;
    pub const IID: Guid = IInputActivationListenerActivationChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputActivationListenerActivationChangedEventArgs.SIGNATURE);
};
pub const InputActivationState = enum(i32) {
    None = 0,
    Deactivated = 1,
    ActivatedNotForeground = 2,
    ActivatedInForeground = 3,
};
pub const KeyboardDeliveryInterceptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsInterceptionEnabledWhenInForeground(self: *@This()) core.HResult!bool {
        const this: *IKeyboardDeliveryInterceptor = @ptrCast(self);
        return try this.getIsInterceptionEnabledWhenInForeground();
    }
    pub fn putIsInterceptionEnabledWhenInForeground(self: *@This(), value: bool) core.HResult!void {
        const this: *IKeyboardDeliveryInterceptor = @ptrCast(self);
        return try this.putIsInterceptionEnabledWhenInForeground(value);
    }
    pub fn addKeyDown(self: *@This(), handler: *TypedEventHandler(KeyboardDeliveryInterceptor,KeyEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardDeliveryInterceptor = @ptrCast(self);
        return try this.addKeyDown(handler);
    }
    pub fn removeKeyDown(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardDeliveryInterceptor = @ptrCast(self);
        return try this.removeKeyDown(token);
    }
    pub fn addKeyUp(self: *@This(), handler: *TypedEventHandler(KeyboardDeliveryInterceptor,KeyEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardDeliveryInterceptor = @ptrCast(self);
        return try this.addKeyUp(handler);
    }
    pub fn removeKeyUp(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardDeliveryInterceptor = @ptrCast(self);
        return try this.removeKeyUp(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*KeyboardDeliveryInterceptor {
        const factory = @This().IKeyboardDeliveryInterceptorStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.KeyboardDeliveryInterceptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyboardDeliveryInterceptor.GUID;
    pub const IID: Guid = IKeyboardDeliveryInterceptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyboardDeliveryInterceptor.SIGNATURE);
    var _IKeyboardDeliveryInterceptorStaticsCache: FactoryCache(IKeyboardDeliveryInterceptorStatics, RUNTIME_NAME) = .{};
};
pub const ManipulationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationCompletedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationCompletedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationCompletedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        const this: *IManipulationCompletedEventArgs = @ptrCast(self);
        return try this.getVelocities();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IManipulationCompletedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IManipulationCompletedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub fn getCurrentContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IManipulationCompletedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IManipulationCompletedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ManipulationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationCompletedEventArgs.GUID;
    pub const IID: Guid = IManipulationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationCompletedEventArgs.SIGNATURE);
};
pub const ManipulationDelta = extern struct {
    Translation: Point,
    Scale: f32,
    Rotation: f32,
    Expansion: f32,
};
pub const ManipulationInertiaStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationInertiaStartingEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationInertiaStartingEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationInertiaStartingEventArgs = @ptrCast(self);
        return try this.getDelta();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationInertiaStartingEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        const this: *IManipulationInertiaStartingEventArgs = @ptrCast(self);
        return try this.getVelocities();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IManipulationInertiaStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IManipulationInertiaStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ManipulationInertiaStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationInertiaStartingEventArgs.GUID;
    pub const IID: Guid = IManipulationInertiaStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationInertiaStartingEventArgs.SIGNATURE);
};
pub const ManipulationStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationStartedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationStartedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationStartedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IManipulationStartedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IManipulationStartedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ManipulationStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationStartedEventArgs.GUID;
    pub const IID: Guid = IManipulationStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationStartedEventArgs.SIGNATURE);
};
pub const ManipulationUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.getDelta();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        const this: *IManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.getVelocities();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IManipulationUpdatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IManipulationUpdatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub fn getCurrentContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IManipulationUpdatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IManipulationUpdatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.ManipulationUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationUpdatedEventArgs.GUID;
    pub const IID: Guid = IManipulationUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationUpdatedEventArgs.SIGNATURE);
};
pub const ManipulationVelocities = extern struct {
    Linear: Point,
    Angular: f32,
    Expansion: f32,
};
pub const MouseWheelParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharTranslation(self: *@This()) core.HResult!Point {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.getCharTranslation();
    }
    pub fn putCharTranslation(self: *@This(), value: Point) core.HResult!void {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.putCharTranslation(value);
    }
    pub fn getDeltaScale(self: *@This()) core.HResult!f32 {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.getDeltaScale();
    }
    pub fn putDeltaScale(self: *@This(), value: f32) core.HResult!void {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.putDeltaScale(value);
    }
    pub fn getDeltaRotationAngle(self: *@This()) core.HResult!f32 {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.getDeltaRotationAngle();
    }
    pub fn putDeltaRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.putDeltaRotationAngle(value);
    }
    pub fn getPageTranslation(self: *@This()) core.HResult!Point {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.getPageTranslation();
    }
    pub fn putPageTranslation(self: *@This(), value: Point) core.HResult!void {
        const this: *IMouseWheelParameters = @ptrCast(self);
        return try this.putPageTranslation(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.MouseWheelParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMouseWheelParameters.GUID;
    pub const IID: Guid = IMouseWheelParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMouseWheelParameters.SIGNATURE);
};
pub const PhysicalGestureRecognizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getGestureSettings(self: *@This()) core.HResult!GestureSettings {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getGestureSettings();
    }
    pub fn putGestureSettings(self: *@This(), value: GestureSettings) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putGestureSettings(value);
    }
    pub fn getTapMinContactCount(self: *@This()) core.HResult!u32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getTapMinContactCount();
    }
    pub fn putTapMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putTapMinContactCount(value);
    }
    pub fn getTapMaxContactCount(self: *@This()) core.HResult!u32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getTapMaxContactCount();
    }
    pub fn putTapMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putTapMaxContactCount(value);
    }
    pub fn getHoldMinContactCount(self: *@This()) core.HResult!u32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getHoldMinContactCount();
    }
    pub fn putHoldMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putHoldMinContactCount(value);
    }
    pub fn getHoldMaxContactCount(self: *@This()) core.HResult!u32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getHoldMaxContactCount();
    }
    pub fn putHoldMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putHoldMaxContactCount(value);
    }
    pub fn getHoldRadius(self: *@This()) core.HResult!f32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getHoldRadius();
    }
    pub fn putHoldRadius(self: *@This(), value: f32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putHoldRadius(value);
    }
    pub fn getHoldStartDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getHoldStartDelay();
    }
    pub fn putHoldStartDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putHoldStartDelay(value);
    }
    pub fn getTranslationMinContactCount(self: *@This()) core.HResult!u32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getTranslationMinContactCount();
    }
    pub fn putTranslationMinContactCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putTranslationMinContactCount(value);
    }
    pub fn getTranslationMaxContactCount(self: *@This()) core.HResult!u32 {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.getTranslationMaxContactCount();
    }
    pub fn putTranslationMaxContactCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.putTranslationMaxContactCount(value);
    }
    pub fn ProcessDownEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.ProcessDownEvent(value);
    }
    pub fn ProcessMoveEvents(self: *@This(), value: *IVector(PointerPoint)) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.ProcessMoveEvents(value);
    }
    pub fn ProcessUpEvent(self: *@This(), value: *PointerPoint) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.ProcessUpEvent(value);
    }
    pub fn CompleteGesture(self: *@This()) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.CompleteGesture();
    }
    pub fn addManipulationStarted(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.addManipulationStarted(handler);
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationStarted(token);
    }
    pub fn addManipulationUpdated(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.addManipulationUpdated(handler);
    }
    pub fn removeManipulationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationUpdated(token);
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,ManipulationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.addManipulationCompleted(handler);
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationCompleted(token);
    }
    pub fn addTapped(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,TappedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.addTapped(handler);
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.removeTapped(token);
    }
    pub fn addHolding(self: *@This(), handler: *TypedEventHandler(PhysicalGestureRecognizer,HoldingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.addHolding(handler);
    }
    pub fn removeHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhysicalGestureRecognizer = @ptrCast(self);
        return try this.removeHolding(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhysicalGestureRecognizer.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.PhysicalGestureRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhysicalGestureRecognizer.GUID;
    pub const IID: Guid = IPhysicalGestureRecognizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhysicalGestureRecognizer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PointerPoint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDevice(self: *@This()) core.HResult!*PointerDevice {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getPointerDevice();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getRawPosition(self: *@This()) core.HResult!Point {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getRawPosition();
    }
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getPointerId();
    }
    pub fn getFrameId(self: *@This()) core.HResult!u32 {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getFrameId();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getIsInContact(self: *@This()) core.HResult!bool {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getIsInContact();
    }
    pub fn getProperties(self: *@This()) core.HResult!*PointerPointProperties {
        const this: *IPointerPoint = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getIsPhysicalPositionSupported(self: *@This()) core.HResult!bool {
        var this: ?*IPointerPointPhysicalPosition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointerPointPhysicalPosition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPhysicalPositionSupported();
    }
    pub fn getPhysicalPosition(self: *@This()) core.HResult!Point {
        var this: ?*IPointerPointPhysicalPosition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointerPointPhysicalPosition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhysicalPosition();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCurrentPoint(pointerId: u32) core.HResult!*PointerPoint {
        const factory = @This().IPointerPointStaticsCache.get();
        return try factory.GetCurrentPoint(pointerId);
    }
    pub fn GetIntermediatePoints(pointerId: u32) core.HResult!*IVector(PointerPoint) {
        const factory = @This().IPointerPointStaticsCache.get();
        return try factory.GetIntermediatePoints(pointerId);
    }
    pub fn GetCurrentPointWithTransform(pointerId: u32, transform: *IPointerPointTransform) core.HResult!*PointerPoint {
        const factory = @This().IPointerPointStaticsCache.get();
        return try factory.GetCurrentPointWithTransform(pointerId, transform);
    }
    pub fn GetIntermediatePointsWithTransform(pointerId: u32, transform: *IPointerPointTransform) core.HResult!*IVector(PointerPoint) {
        const factory = @This().IPointerPointStaticsCache.get();
        return try factory.GetIntermediatePointsWithTransform(pointerId, transform);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.PointerPoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerPoint.GUID;
    pub const IID: Guid = IPointerPoint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerPoint.SIGNATURE);
    var _IPointerPointStaticsCache: FactoryCache(IPointerPointStatics, RUNTIME_NAME) = .{};
};
pub const PointerPointProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPressure(self: *@This()) core.HResult!f32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn getIsInverted(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsInverted();
    }
    pub fn getIsEraser(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsEraser();
    }
    pub fn getOrientation(self: *@This()) core.HResult!f32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn getXTilt(self: *@This()) core.HResult!f32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getXTilt();
    }
    pub fn getYTilt(self: *@This()) core.HResult!f32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getYTilt();
    }
    pub fn getTwist(self: *@This()) core.HResult!f32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getTwist();
    }
    pub fn getContactRect(self: *@This()) core.HResult!Rect {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getContactRect();
    }
    pub fn getContactRectRaw(self: *@This()) core.HResult!Rect {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getContactRectRaw();
    }
    pub fn getTouchConfidence(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getTouchConfidence();
    }
    pub fn getIsLeftButtonPressed(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsLeftButtonPressed();
    }
    pub fn getIsRightButtonPressed(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsRightButtonPressed();
    }
    pub fn getIsMiddleButtonPressed(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsMiddleButtonPressed();
    }
    pub fn getMouseWheelDelta(self: *@This()) core.HResult!i32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getMouseWheelDelta();
    }
    pub fn getIsHorizontalMouseWheel(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsHorizontalMouseWheel();
    }
    pub fn getIsPrimary(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsPrimary();
    }
    pub fn getIsInRange(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsInRange();
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn getIsBarrelButtonPressed(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsBarrelButtonPressed();
    }
    pub fn getIsXButton1Pressed(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsXButton1Pressed();
    }
    pub fn getIsXButton2Pressed(self: *@This()) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getIsXButton2Pressed();
    }
    pub fn getPointerUpdateKind(self: *@This()) core.HResult!PointerUpdateKind {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.getPointerUpdateKind();
    }
    pub fn HasUsage(self: *@This(), usagePage: u32, usageId: u32) core.HResult!bool {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.HasUsage(usagePage, usageId);
    }
    pub fn GetUsageValue(self: *@This(), usagePage: u32, usageId: u32) core.HResult!i32 {
        const this: *IPointerPointProperties = @ptrCast(self);
        return try this.GetUsageValue(usagePage, usageId);
    }
    pub fn getZDistance(self: *@This()) core.HResult!*IReference(f32) {
        var this: ?*IPointerPointProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointerPointProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZDistance();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.PointerPointProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerPointProperties.GUID;
    pub const IID: Guid = IPointerPointProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerPointProperties.SIGNATURE);
};
pub const PointerUpdateKind = enum(i32) {
    Other = 0,
    LeftButtonPressed = 1,
    LeftButtonReleased = 2,
    RightButtonPressed = 3,
    RightButtonReleased = 4,
    MiddleButtonPressed = 5,
    MiddleButtonReleased = 6,
    XButton1Pressed = 7,
    XButton1Released = 8,
    XButton2Pressed = 9,
    XButton2Released = 10,
};
pub const PointerVisualizationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putIsContactFeedbackEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IPointerVisualizationSettings = @ptrCast(self);
        return try this.putIsContactFeedbackEnabled(value);
    }
    pub fn getIsContactFeedbackEnabled(self: *@This()) core.HResult!bool {
        const this: *IPointerVisualizationSettings = @ptrCast(self);
        return try this.getIsContactFeedbackEnabled();
    }
    pub fn putIsBarrelButtonFeedbackEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IPointerVisualizationSettings = @ptrCast(self);
        return try this.putIsBarrelButtonFeedbackEnabled(value);
    }
    pub fn getIsBarrelButtonFeedbackEnabled(self: *@This()) core.HResult!bool {
        const this: *IPointerVisualizationSettings = @ptrCast(self);
        return try this.getIsBarrelButtonFeedbackEnabled();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*PointerVisualizationSettings {
        const factory = @This().IPointerVisualizationSettingsStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.PointerVisualizationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerVisualizationSettings.GUID;
    pub const IID: Guid = IPointerVisualizationSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerVisualizationSettings.SIGNATURE);
    var _IPointerVisualizationSettingsStaticsCache: FactoryCache(IPointerVisualizationSettingsStatics, RUNTIME_NAME) = .{};
};
pub const RadialController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMenu(self: *@This()) core.HResult!*RadialControllerMenu {
        const this: *IRadialController = @ptrCast(self);
        return try this.getMenu();
    }
    pub fn getRotationResolutionInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IRadialController = @ptrCast(self);
        return try this.getRotationResolutionInDegrees();
    }
    pub fn putRotationResolutionInDegrees(self: *@This(), value: f64) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.putRotationResolutionInDegrees(value);
    }
    pub fn getUseAutomaticHapticFeedback(self: *@This()) core.HResult!bool {
        const this: *IRadialController = @ptrCast(self);
        return try this.getUseAutomaticHapticFeedback();
    }
    pub fn putUseAutomaticHapticFeedback(self: *@This(), value: bool) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.putUseAutomaticHapticFeedback(value);
    }
    pub fn addScreenContactStarted(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerScreenContactStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addScreenContactStarted(handler);
    }
    pub fn removeScreenContactStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeScreenContactStarted(cookie);
    }
    pub fn addScreenContactEnded(self: *@This(), handler: *TypedEventHandler(RadialController,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addScreenContactEnded(handler);
    }
    pub fn removeScreenContactEnded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeScreenContactEnded(cookie);
    }
    pub fn addScreenContactContinued(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerScreenContactContinuedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addScreenContactContinued(handler);
    }
    pub fn removeScreenContactContinued(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeScreenContactContinued(cookie);
    }
    pub fn addControlLost(self: *@This(), handler: *TypedEventHandler(RadialController,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addControlLost(handler);
    }
    pub fn removeControlLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeControlLost(cookie);
    }
    pub fn addRotationChanged(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerRotationChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addRotationChanged(handler);
    }
    pub fn removeRotationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeRotationChanged(token);
    }
    pub fn addButtonClicked(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addButtonClicked(handler);
    }
    pub fn removeButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeButtonClicked(token);
    }
    pub fn addControlAcquired(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerControlAcquiredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRadialController = @ptrCast(self);
        return try this.addControlAcquired(handler);
    }
    pub fn removeControlAcquired(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IRadialController = @ptrCast(self);
        return try this.removeControlAcquired(cookie);
    }
    pub fn addButtonPressed(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonPressedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IRadialController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addButtonPressed(handler);
    }
    pub fn removeButtonPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IRadialController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeButtonPressed(token);
    }
    pub fn addButtonHolding(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonHoldingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IRadialController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addButtonHolding(handler);
    }
    pub fn removeButtonHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IRadialController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeButtonHolding(token);
    }
    pub fn addButtonReleased(self: *@This(), handler: *TypedEventHandler(RadialController,RadialControllerButtonReleasedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IRadialController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addButtonReleased(handler);
    }
    pub fn removeButtonReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IRadialController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeButtonReleased(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IRadialControllerStaticsCache.get();
        return try factory.IsSupported();
    }
    pub fn CreateForCurrentView() core.HResult!*RadialController {
        const factory = @This().IRadialControllerStaticsCache.get();
        return try factory.CreateForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialController.GUID;
    pub const IID: Guid = IRadialController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialController.SIGNATURE);
    var _IRadialControllerStaticsCache: FactoryCache(IRadialControllerStatics, RUNTIME_NAME) = .{};
};
pub const RadialControllerButtonClickedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerButtonClickedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var this: ?*IRadialControllerButtonClickedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerButtonClickedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerButtonClickedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerButtonClickedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerButtonClickedEventArgs.SIGNATURE);
};
pub const RadialControllerButtonHoldingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerButtonHoldingEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        const this: *IRadialControllerButtonHoldingEventArgs = @ptrCast(self);
        return try this.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerButtonHoldingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerButtonHoldingEventArgs.GUID;
    pub const IID: Guid = IRadialControllerButtonHoldingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerButtonHoldingEventArgs.SIGNATURE);
};
pub const RadialControllerButtonPressedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerButtonPressedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        const this: *IRadialControllerButtonPressedEventArgs = @ptrCast(self);
        return try this.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerButtonPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerButtonPressedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerButtonPressedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerButtonPressedEventArgs.SIGNATURE);
};
pub const RadialControllerButtonReleasedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerButtonReleasedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        const this: *IRadialControllerButtonReleasedEventArgs = @ptrCast(self);
        return try this.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerButtonReleasedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerButtonReleasedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerButtonReleasedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerButtonReleasedEventArgs.SIGNATURE);
};
pub const RadialControllerConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetDefaultMenuItems(self: *@This(), buttons: *IIterable(RadialControllerSystemMenuItemKind)) core.HResult!void {
        const this: *IRadialControllerConfiguration = @ptrCast(self);
        return try this.SetDefaultMenuItems(buttons);
    }
    pub fn ResetToDefaultMenuItems(self: *@This()) core.HResult!void {
        const this: *IRadialControllerConfiguration = @ptrCast(self);
        return try this.ResetToDefaultMenuItems();
    }
    pub fn TrySelectDefaultMenuItem(self: *@This(), ty: RadialControllerSystemMenuItemKind) core.HResult!bool {
        const this: *IRadialControllerConfiguration = @ptrCast(self);
        return try this.TrySelectDefaultMenuItem(ty);
    }
    pub fn putActiveControllerWhenMenuIsSuppressed(self: *@This(), value: *RadialController) core.HResult!void {
        var this: ?*IRadialControllerConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putActiveControllerWhenMenuIsSuppressed(value);
    }
    pub fn getActiveControllerWhenMenuIsSuppressed(self: *@This()) core.HResult!*RadialController {
        var this: ?*IRadialControllerConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActiveControllerWhenMenuIsSuppressed();
    }
    pub fn putIsMenuSuppressed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IRadialControllerConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsMenuSuppressed(value);
    }
    pub fn getIsMenuSuppressed(self: *@This()) core.HResult!bool {
        var this: ?*IRadialControllerConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMenuSuppressed();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*RadialControllerConfiguration {
        const factory = @This().IRadialControllerConfigurationStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn putAppController(value: *RadialController) core.HResult!void {
        const factory = @This().IRadialControllerConfigurationStatics2Cache.get();
        return try factory.putAppController(value);
    }
    pub fn getAppController() core.HResult!*RadialController {
        const factory = @This().IRadialControllerConfigurationStatics2Cache.get();
        return try factory.getAppController();
    }
    pub fn putIsAppControllerEnabled(value: bool) core.HResult!void {
        const factory = @This().IRadialControllerConfigurationStatics2Cache.get();
        return try factory.putIsAppControllerEnabled(value);
    }
    pub fn getIsAppControllerEnabled() core.HResult!bool {
        const factory = @This().IRadialControllerConfigurationStatics2Cache.get();
        return try factory.getIsAppControllerEnabled();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerConfiguration.GUID;
    pub const IID: Guid = IRadialControllerConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerConfiguration.SIGNATURE);
    var _IRadialControllerConfigurationStaticsCache: FactoryCache(IRadialControllerConfigurationStatics, RUNTIME_NAME) = .{};
    var _IRadialControllerConfigurationStatics2Cache: FactoryCache(IRadialControllerConfigurationStatics2, RUNTIME_NAME) = .{};
};
pub const RadialControllerControlAcquiredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerControlAcquiredEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var this: ?*IRadialControllerControlAcquiredEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerControlAcquiredEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsButtonPressed();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var this: ?*IRadialControllerControlAcquiredEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerControlAcquiredEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerControlAcquiredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerControlAcquiredEventArgs.GUID;
    pub const IID: Guid = IRadialControllerControlAcquiredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerControlAcquiredEventArgs.SIGNATURE);
};
pub const RadialControllerMenu = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVector(RadialControllerMenuItem) {
        const this: *IRadialControllerMenu = @ptrCast(self);
        return try this.getItems();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IRadialControllerMenu = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IRadialControllerMenu = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn GetSelectedMenuItem(self: *@This()) core.HResult!*RadialControllerMenuItem {
        const this: *IRadialControllerMenu = @ptrCast(self);
        return try this.GetSelectedMenuItem();
    }
    pub fn SelectMenuItem(self: *@This(), menuItem: *RadialControllerMenuItem) core.HResult!void {
        const this: *IRadialControllerMenu = @ptrCast(self);
        return try this.SelectMenuItem(menuItem);
    }
    pub fn TrySelectPreviouslySelectedMenuItem(self: *@This()) core.HResult!bool {
        const this: *IRadialControllerMenu = @ptrCast(self);
        return try this.TrySelectPreviouslySelectedMenuItem();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerMenu";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerMenu.GUID;
    pub const IID: Guid = IRadialControllerMenu.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerMenu.SIGNATURE);
};
pub const RadialControllerMenuItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *IRadialControllerMenuItem = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        const this: *IRadialControllerMenuItem = @ptrCast(self);
        return try this.getTag();
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IRadialControllerMenuItem = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn addInvoked(self: *@This(), handler: *TypedEventHandler(RadialControllerMenuItem,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRadialControllerMenuItem = @ptrCast(self);
        return try this.addInvoked(handler);
    }
    pub fn removeInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRadialControllerMenuItem = @ptrCast(self);
        return try this.removeInvoked(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromIcon(displayText: HSTRING, icon: *RandomAccessStreamReference) core.HResult!*RadialControllerMenuItem {
        const factory = @This().IRadialControllerMenuItemStaticsCache.get();
        return try factory.CreateFromIcon(displayText, icon);
    }
    pub fn CreateFromKnownIcon(displayText: HSTRING, value: RadialControllerMenuKnownIcon) core.HResult!*RadialControllerMenuItem {
        const factory = @This().IRadialControllerMenuItemStaticsCache.get();
        return try factory.CreateFromKnownIcon(displayText, value);
    }
    pub fn CreateFromFontGlyph(displayText: HSTRING, glyph: HSTRING, fontFamily: HSTRING) core.HResult!*RadialControllerMenuItem {
        const factory = @This().IRadialControllerMenuItemStatics2Cache.get();
        return try factory.CreateFromFontGlyph(displayText, glyph, fontFamily);
    }
    pub fn CreateFromFontGlyphWithGlyphWithFontFamilyWithFontUri(displayText: HSTRING, glyph: HSTRING, fontFamily: HSTRING, fontUri: *Uri) core.HResult!*RadialControllerMenuItem {
        const factory = @This().IRadialControllerMenuItemStatics2Cache.get();
        return try factory.CreateFromFontGlyphWithGlyphWithFontFamilyWithFontUri(displayText, glyph, fontFamily, fontUri);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerMenuItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerMenuItem.GUID;
    pub const IID: Guid = IRadialControllerMenuItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerMenuItem.SIGNATURE);
    var _IRadialControllerMenuItemStaticsCache: FactoryCache(IRadialControllerMenuItemStatics, RUNTIME_NAME) = .{};
    var _IRadialControllerMenuItemStatics2Cache: FactoryCache(IRadialControllerMenuItemStatics2, RUNTIME_NAME) = .{};
};
pub const RadialControllerMenuKnownIcon = enum(i32) {
    Scroll = 0,
    Zoom = 1,
    UndoRedo = 2,
    Volume = 3,
    NextPreviousTrack = 4,
    Ruler = 5,
    InkColor = 6,
    InkThickness = 7,
    PenType = 8,
};
pub const RadialControllerRotationChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRotationDeltaInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IRadialControllerRotationChangedEventArgs = @ptrCast(self);
        return try this.getRotationDeltaInDegrees();
    }
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerRotationChangedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var this: ?*IRadialControllerRotationChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerRotationChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsButtonPressed();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var this: ?*IRadialControllerRotationChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerRotationChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerRotationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerRotationChangedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerRotationChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerRotationChangedEventArgs.SIGNATURE);
};
pub const RadialControllerScreenContact = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        const this: *IRadialControllerScreenContact = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IRadialControllerScreenContact = @ptrCast(self);
        return try this.getPosition();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerScreenContact";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerScreenContact.GUID;
    pub const IID: Guid = IRadialControllerScreenContact.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerScreenContact.SIGNATURE);
};
pub const RadialControllerScreenContactContinuedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerScreenContactContinuedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var this: ?*IRadialControllerScreenContactContinuedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerScreenContactContinuedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsButtonPressed();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var this: ?*IRadialControllerScreenContactContinuedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerScreenContactContinuedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerScreenContactContinuedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerScreenContactContinuedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerScreenContactContinuedEventArgs.SIGNATURE);
};
pub const RadialControllerScreenContactEndedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        const this: *IRadialControllerScreenContactEndedEventArgs = @ptrCast(self);
        return try this.getIsButtonPressed();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        const this: *IRadialControllerScreenContactEndedEventArgs = @ptrCast(self);
        return try this.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerScreenContactEndedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerScreenContactEndedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerScreenContactEndedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerScreenContactEndedEventArgs.SIGNATURE);
};
pub const RadialControllerScreenContactStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*RadialControllerScreenContact {
        const this: *IRadialControllerScreenContactStartedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getIsButtonPressed(self: *@This()) core.HResult!bool {
        var this: ?*IRadialControllerScreenContactStartedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerScreenContactStartedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsButtonPressed();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var this: ?*IRadialControllerScreenContactStartedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerScreenContactStartedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsController();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RadialControllerScreenContactStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerScreenContactStartedEventArgs.GUID;
    pub const IID: Guid = IRadialControllerScreenContactStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerScreenContactStartedEventArgs.SIGNATURE);
};
pub const RadialControllerSystemMenuItemKind = enum(i32) {
    Scroll = 0,
    Zoom = 1,
    UndoRedo = 2,
    Volume = 3,
    NextPreviousTrack = 4,
};
pub const RightTappedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IRightTappedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IRightTappedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*IRightTappedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRightTappedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.RightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRightTappedEventArgs.GUID;
    pub const IID: Guid = IRightTappedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRightTappedEventArgs.SIGNATURE);
};
pub const SystemButtonEventController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSystemFunctionButtonPressed(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionButtonEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.addSystemFunctionButtonPressed(handler);
    }
    pub fn removeSystemFunctionButtonPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.removeSystemFunctionButtonPressed(token);
    }
    pub fn addSystemFunctionButtonReleased(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionButtonEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.addSystemFunctionButtonReleased(handler);
    }
    pub fn removeSystemFunctionButtonReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.removeSystemFunctionButtonReleased(token);
    }
    pub fn addSystemFunctionLockChanged(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionLockChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.addSystemFunctionLockChanged(handler);
    }
    pub fn removeSystemFunctionLockChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.removeSystemFunctionLockChanged(token);
    }
    pub fn addSystemFunctionLockIndicatorChanged(self: *@This(), handler: *TypedEventHandler(SystemButtonEventController,SystemFunctionLockIndicatorChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.addSystemFunctionLockIndicatorChanged(handler);
    }
    pub fn removeSystemFunctionLockIndicatorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemButtonEventController = @ptrCast(self);
        return try this.removeSystemFunctionLockIndicatorChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForDispatcherQueue(queue: *DispatcherQueue) core.HResult!*SystemButtonEventController {
        const factory = @This().ISystemButtonEventControllerStaticsCache.get();
        return try factory.CreateForDispatcherQueue(queue);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.SystemButtonEventController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemButtonEventController.GUID;
    pub const IID: Guid = ISystemButtonEventController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemButtonEventController.SIGNATURE);
    var _ISystemButtonEventControllerStaticsCache: FactoryCache(ISystemButtonEventControllerStatics, RUNTIME_NAME) = .{};
};
pub const SystemFunctionButtonEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        const this: *ISystemFunctionButtonEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ISystemFunctionButtonEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemFunctionButtonEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.SystemFunctionButtonEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemFunctionButtonEventArgs.GUID;
    pub const IID: Guid = ISystemFunctionButtonEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemFunctionButtonEventArgs.SIGNATURE);
};
pub const SystemFunctionLockChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        const this: *ISystemFunctionLockChangedEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getIsLocked(self: *@This()) core.HResult!bool {
        const this: *ISystemFunctionLockChangedEventArgs = @ptrCast(self);
        return try this.getIsLocked();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ISystemFunctionLockChangedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemFunctionLockChangedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.SystemFunctionLockChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemFunctionLockChangedEventArgs.GUID;
    pub const IID: Guid = ISystemFunctionLockChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemFunctionLockChangedEventArgs.SIGNATURE);
};
pub const SystemFunctionLockIndicatorChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        const this: *ISystemFunctionLockIndicatorChangedEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getIsIndicatorOn(self: *@This()) core.HResult!bool {
        const this: *ISystemFunctionLockIndicatorChangedEventArgs = @ptrCast(self);
        return try this.getIsIndicatorOn();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ISystemFunctionLockIndicatorChangedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemFunctionLockIndicatorChangedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.SystemFunctionLockIndicatorChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemFunctionLockIndicatorChangedEventArgs.GUID;
    pub const IID: Guid = ISystemFunctionLockIndicatorChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemFunctionLockIndicatorChangedEventArgs.SIGNATURE);
};
pub const TappedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *ITappedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *ITappedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getTapCount(self: *@This()) core.HResult!u32 {
        const this: *ITappedEventArgs = @ptrCast(self);
        return try this.getTapCount();
    }
    pub fn getContactCount(self: *@This()) core.HResult!u32 {
        var this: ?*ITappedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITappedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.TappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITappedEventArgs.GUID;
    pub const IID: Guid = ITappedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITappedEventArgs.SIGNATURE);
};
pub const TouchpadGesturesController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getSupportedGestures(self: *@This()) core.HResult!TouchpadGlobalGestureKinds {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.getSupportedGestures();
    }
    pub fn putSupportedGestures(self: *@This(), value: TouchpadGlobalGestureKinds) core.HResult!void {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.putSupportedGestures(value);
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.addPointerPressed(handler);
    }
    pub fn removePointerPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.removePointerPressed(token);
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.addPointerMoved(handler);
    }
    pub fn removePointerMoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.removePointerMoved(token);
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.addPointerReleased(handler);
    }
    pub fn removePointerReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.removePointerReleased(token);
    }
    pub fn addGlobalActionPerformed(self: *@This(), handler: *TypedEventHandler(TouchpadGesturesController,TouchpadGlobalActionEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.addGlobalActionPerformed(handler);
    }
    pub fn removeGlobalActionPerformed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITouchpadGesturesController = @ptrCast(self);
        return try this.removeGlobalActionPerformed(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().ITouchpadGesturesControllerStaticsCache.get();
        return try factory.IsSupported();
    }
    pub fn CreateForProcess() core.HResult!*TouchpadGesturesController {
        const factory = @This().ITouchpadGesturesControllerStaticsCache.get();
        return try factory.CreateForProcess();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.TouchpadGesturesController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITouchpadGesturesController.GUID;
    pub const IID: Guid = ITouchpadGesturesController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITouchpadGesturesController.SIGNATURE);
    var _ITouchpadGesturesControllerStaticsCache: FactoryCache(ITouchpadGesturesControllerStatics, RUNTIME_NAME) = .{};
};
pub const TouchpadGlobalAction = enum(i32) {
    ThreeFingerTap = 0,
    FourFingerTap = 1,
    FiveFingerTap = 2,
    ThreeFingerPressDown = 3,
    FourFingerPressDown = 4,
    FiveFingerPressDown = 5,
    ThreeFingerPressUp = 6,
    FourFingerPressUp = 7,
    FiveFingerPressUp = 8,
};
pub const TouchpadGlobalActionEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!TouchpadGlobalAction {
        const this: *ITouchpadGlobalActionEventArgs = @ptrCast(self);
        return try this.getAction();
    }
    pub fn getPointerDevice(self: *@This()) core.HResult!*PointerDevice {
        const this: *ITouchpadGlobalActionEventArgs = @ptrCast(self);
        return try this.getPointerDevice();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.TouchpadGlobalActionEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITouchpadGlobalActionEventArgs.GUID;
    pub const IID: Guid = ITouchpadGlobalActionEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITouchpadGlobalActionEventArgs.SIGNATURE);
};
pub const TouchpadGlobalGestureKinds = enum(i32) {
    None = 0,
    ThreeFingerManipulations = 1,
    FourFingerManipulations = 2,
    FiveFingerManipulations = 4,
    ThreeFingerActions = 8,
    FourFingerActions = 16,
    FiveFingerActions = 32,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const RandomAccessStreamReference = @import("../Storage/Streams.zig").RandomAccessStreamReference;
const IVector = @import("../Foundation/Collections.zig").IVector;
const DispatcherQueue = @import("../System.zig").DispatcherQueue;
const KeyEventArgs = @import("./Core.zig").KeyEventArgs;
const IClosable = @import("../Foundation.zig").IClosable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const PointerDeviceType = @import("../Devices/Input.zig").PointerDeviceType;
const IReference = @import("../Foundation.zig").IReference;
const SimpleHapticsController = @import("../Devices/Haptics.zig").SimpleHapticsController;
const Point = @import("../Foundation.zig").Point;
const FactoryCache = @import("../core.zig").FactoryCache;
const PointerEventArgs = @import("./Core.zig").PointerEventArgs;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const PointerDevice = @import("../Devices/Input.zig").PointerDevice;
const core = @import("../root.zig").core;
pub const Core = @import("./Input/Core.zig");
pub const Inking = @import("./Input/Inking.zig");
pub const Preview = @import("./Input/Preview.zig");
pub const Spatial = @import("./Input/Spatial.zig");
