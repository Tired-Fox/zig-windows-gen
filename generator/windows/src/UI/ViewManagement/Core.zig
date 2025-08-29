pub const CoreFrameworkInputView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPrimaryViewAnimationStarting(self: *@This(), handler: *TypedEventHandler(CoreFrameworkInputView,CoreFrameworkInputViewAnimationStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreFrameworkInputView = @ptrCast(self);
        return try this.addPrimaryViewAnimationStarting(handler);
    }
    pub fn removePrimaryViewAnimationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICoreFrameworkInputView = @ptrCast(self);
        return try this.removePrimaryViewAnimationStarting(token);
    }
    pub fn addOcclusionsChanged(self: *@This(), handler: *TypedEventHandler(CoreFrameworkInputView,CoreFrameworkInputViewOcclusionsChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreFrameworkInputView = @ptrCast(self);
        return try this.addOcclusionsChanged(handler);
    }
    pub fn removeOcclusionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICoreFrameworkInputView = @ptrCast(self);
        return try this.removeOcclusionsChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUIContext(context: *UIContext) core.HResult!*CoreFrameworkInputView {
        const factory = @This().ICoreFrameworkInputViewStaticsCache.get();
        return try factory.GetForUIContext(context);
    }
    pub fn GetForCurrentView() core.HResult!*CoreFrameworkInputView {
        const factory = @This().ICoreFrameworkInputViewStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreFrameworkInputView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreFrameworkInputView.GUID;
    pub const IID: Guid = ICoreFrameworkInputView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreFrameworkInputView.SIGNATURE);
    var _ICoreFrameworkInputViewStaticsCache: FactoryCache(ICoreFrameworkInputViewStatics, RUNTIME_NAME) = .{};
};
pub const CoreFrameworkInputViewAnimationStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        const this: *ICoreFrameworkInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.getOcclusions();
    }
    pub fn getFrameworkAnimationRecommended(self: *@This()) core.HResult!bool {
        const this: *ICoreFrameworkInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.getFrameworkAnimationRecommended();
    }
    pub fn getAnimationDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ICoreFrameworkInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.getAnimationDuration();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreFrameworkInputViewAnimationStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreFrameworkInputViewAnimationStartingEventArgs.GUID;
    pub const IID: Guid = ICoreFrameworkInputViewAnimationStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreFrameworkInputViewAnimationStartingEventArgs.SIGNATURE);
};
pub const CoreFrameworkInputViewOcclusionsChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        const this: *ICoreFrameworkInputViewOcclusionsChangedEventArgs = @ptrCast(self);
        return try this.getOcclusions();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ICoreFrameworkInputViewOcclusionsChangedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreFrameworkInputViewOcclusionsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreFrameworkInputViewOcclusionsChangedEventArgs.GUID;
    pub const IID: Guid = ICoreFrameworkInputViewOcclusionsChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreFrameworkInputViewOcclusionsChangedEventArgs.SIGNATURE);
};
pub const CoreInputView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addOcclusionsChanged(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewOcclusionsChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInputView = @ptrCast(self);
        return try this.addOcclusionsChanged(handler);
    }
    pub fn removeOcclusionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInputView = @ptrCast(self);
        return try this.removeOcclusionsChanged(token);
    }
    pub fn GetCoreInputViewOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        const this: *ICoreInputView = @ptrCast(self);
        return try this.GetCoreInputViewOcclusions();
    }
    pub fn TryShowPrimaryView(self: *@This()) core.HResult!bool {
        const this: *ICoreInputView = @ptrCast(self);
        return try this.TryShowPrimaryView();
    }
    pub fn TryHidePrimaryView(self: *@This()) core.HResult!bool {
        const this: *ICoreInputView = @ptrCast(self);
        return try this.TryHidePrimaryView();
    }
    pub fn addXYFocusTransferringFromPrimaryView(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewTransferringXYFocusEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreInputView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addXYFocusTransferringFromPrimaryView(handler);
    }
    pub fn removeXYFocusTransferringFromPrimaryView(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreInputView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeXYFocusTransferringFromPrimaryView(token);
    }
    pub fn addXYFocusTransferredToPrimaryView(self: *@This(), handler: *TypedEventHandler(CoreInputView,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreInputView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addXYFocusTransferredToPrimaryView(handler);
    }
    pub fn removeXYFocusTransferredToPrimaryView(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreInputView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeXYFocusTransferredToPrimaryView(token);
    }
    pub fn TryTransferXYFocusToPrimaryView(self: *@This(), origin: Rect, direction: CoreInputViewXYFocusTransferDirection) core.HResult!bool {
        var this: ?*ICoreInputView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryTransferXYFocusToPrimaryView(origin, direction);
    }
    pub fn TryShow(self: *@This()) core.HResult!bool {
        var this: ?*ICoreInputView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryShow();
    }
    pub fn TryShow(self: *@This(), ty: CoreInputViewKind) core.HResult!bool {
        var this: ?*ICoreInputView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryShow(ty);
    }
    pub fn TryHide(self: *@This()) core.HResult!bool {
        var this: ?*ICoreInputView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryHide();
    }
    pub fn addPrimaryViewShowing(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewShowingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreInputView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPrimaryViewShowing(handler);
    }
    pub fn removePrimaryViewShowing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreInputView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePrimaryViewShowing(token);
    }
    pub fn addPrimaryViewHiding(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewHidingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreInputView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPrimaryViewHiding(handler);
    }
    pub fn removePrimaryViewHiding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreInputView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePrimaryViewHiding(token);
    }
    pub fn IsKindSupported(self: *@This(), ty: CoreInputViewKind) core.HResult!bool {
        var this: ?*ICoreInputView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsKindSupported(ty);
    }
    pub fn addSupportedKindsChanged(self: *@This(), handler: *TypedEventHandler(CoreInputView,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreInputView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSupportedKindsChanged(handler);
    }
    pub fn removeSupportedKindsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreInputView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSupportedKindsChanged(token);
    }
    pub fn addPrimaryViewAnimationStarting(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewAnimationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreInputView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPrimaryViewAnimationStarting(handler);
    }
    pub fn removePrimaryViewAnimationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreInputView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreInputView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePrimaryViewAnimationStarting(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUIContext(context: *UIContext) core.HResult!*CoreInputView {
        const factory = @This().ICoreInputViewStatics2Cache.get();
        return try factory.GetForUIContext(context);
    }
    pub fn GetForCurrentView() core.HResult!*CoreInputView {
        const factory = @This().ICoreInputViewStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputView.GUID;
    pub const IID: Guid = ICoreInputView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputView.SIGNATURE);
    var _ICoreInputViewStatics2Cache: FactoryCache(ICoreInputViewStatics2, RUNTIME_NAME) = .{};
    var _ICoreInputViewStaticsCache: FactoryCache(ICoreInputViewStatics, RUNTIME_NAME) = .{};
};
pub const CoreInputViewAnimationStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        const this: *ICoreInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.getOcclusions();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ICoreInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getAnimationDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ICoreInputViewAnimationStartingEventArgs = @ptrCast(self);
        return try this.getAnimationDuration();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputViewAnimationStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputViewAnimationStartingEventArgs.GUID;
    pub const IID: Guid = ICoreInputViewAnimationStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputViewAnimationStartingEventArgs.SIGNATURE);
};
pub const CoreInputViewHidingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        const this: *ICoreInputViewHidingEventArgs = @ptrCast(self);
        return try this.TryCancel();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputViewHidingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputViewHidingEventArgs.GUID;
    pub const IID: Guid = ICoreInputViewHidingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputViewHidingEventArgs.SIGNATURE);
};
pub const CoreInputViewKind = enum(i32) {
    Default = 0,
    Keyboard = 1,
    Handwriting = 2,
    Emoji = 3,
    Symbols = 4,
    Clipboard = 5,
    Dictation = 6,
    Gamepad = 7,
};
pub const CoreInputViewOcclusion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOccludingRect(self: *@This()) core.HResult!Rect {
        const this: *ICoreInputViewOcclusion = @ptrCast(self);
        return try this.getOccludingRect();
    }
    pub fn getOcclusionKind(self: *@This()) core.HResult!CoreInputViewOcclusionKind {
        const this: *ICoreInputViewOcclusion = @ptrCast(self);
        return try this.getOcclusionKind();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputViewOcclusion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputViewOcclusion.GUID;
    pub const IID: Guid = ICoreInputViewOcclusion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputViewOcclusion.SIGNATURE);
};
pub const CoreInputViewOcclusionKind = enum(i32) {
    Docked = 0,
    Floating = 1,
    Overlay = 2,
};
pub const CoreInputViewOcclusionsChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        const this: *ICoreInputViewOcclusionsChangedEventArgs = @ptrCast(self);
        return try this.getOcclusions();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ICoreInputViewOcclusionsChangedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreInputViewOcclusionsChangedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputViewOcclusionsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputViewOcclusionsChangedEventArgs.GUID;
    pub const IID: Guid = ICoreInputViewOcclusionsChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputViewOcclusionsChangedEventArgs.SIGNATURE);
};
pub const CoreInputViewShowingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        const this: *ICoreInputViewShowingEventArgs = @ptrCast(self);
        return try this.TryCancel();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputViewShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputViewShowingEventArgs.GUID;
    pub const IID: Guid = ICoreInputViewShowingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputViewShowingEventArgs.SIGNATURE);
};
pub const CoreInputViewTransferringXYFocusEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOrigin(self: *@This()) core.HResult!Rect {
        const this: *ICoreInputViewTransferringXYFocusEventArgs = @ptrCast(self);
        return try this.getOrigin();
    }
    pub fn getDirection(self: *@This()) core.HResult!CoreInputViewXYFocusTransferDirection {
        const this: *ICoreInputViewTransferringXYFocusEventArgs = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn putTransferHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreInputViewTransferringXYFocusEventArgs = @ptrCast(self);
        return try this.putTransferHandled(value);
    }
    pub fn getTransferHandled(self: *@This()) core.HResult!bool {
        const this: *ICoreInputViewTransferringXYFocusEventArgs = @ptrCast(self);
        return try this.getTransferHandled();
    }
    pub fn putKeepPrimaryViewVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreInputViewTransferringXYFocusEventArgs = @ptrCast(self);
        return try this.putKeepPrimaryViewVisible(value);
    }
    pub fn getKeepPrimaryViewVisible(self: *@This()) core.HResult!bool {
        const this: *ICoreInputViewTransferringXYFocusEventArgs = @ptrCast(self);
        return try this.getKeepPrimaryViewVisible();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.CoreInputViewTransferringXYFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputViewTransferringXYFocusEventArgs.GUID;
    pub const IID: Guid = ICoreInputViewTransferringXYFocusEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputViewTransferringXYFocusEventArgs.SIGNATURE);
};
pub const CoreInputViewXYFocusTransferDirection = enum(i32) {
    Up = 0,
    Right = 1,
    Down = 2,
    Left = 3,
};
pub const ICoreFrameworkInputView = extern struct {
    vtable: *const VTable,
    pub fn addPrimaryViewAnimationStarting(self: *@This(), handler: *TypedEventHandler(CoreFrameworkInputView,CoreFrameworkInputViewAnimationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrimaryViewAnimationStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrimaryViewAnimationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrimaryViewAnimationStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOcclusionsChanged(self: *@This(), handler: *TypedEventHandler(CoreFrameworkInputView,CoreFrameworkInputViewOcclusionsChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OcclusionsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOcclusionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OcclusionsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreFrameworkInputView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d77c94ae-46b8-5d4a-9489-8ddec3d639a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PrimaryViewAnimationStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreFrameworkInputView,CoreFrameworkInputViewAnimationStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrimaryViewAnimationStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_OcclusionsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreFrameworkInputView,CoreFrameworkInputViewOcclusionsChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OcclusionsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreFrameworkInputViewAnimationStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        var _r: *IVectorView(CoreInputViewOcclusion) = undefined;
        const _c = self.vtable.get_Occlusions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameworkAnimationRecommended(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_FrameworkAnimationRecommended(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnimationDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AnimationDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreFrameworkInputViewAnimationStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0ec901c-bba4-501b-ae8b-65c9e756a719";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Occlusions: *const fn(self: *anyopaque, _r: **IVectorView(CoreInputViewOcclusion)) callconv(.winapi) HRESULT,
        get_FrameworkAnimationRecommended: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AnimationDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ICoreFrameworkInputViewOcclusionsChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        var _r: *IVectorView(CoreInputViewOcclusion) = undefined;
        const _c = self.vtable.get_Occlusions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreFrameworkInputViewOcclusionsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f36f4949-c82c-53d1-a75d-2b2baf0d9b0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Occlusions: *const fn(self: *anyopaque, _r: **IVectorView(CoreInputViewOcclusion)) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreFrameworkInputViewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForUIContext(self: *@This(), context: *UIContext) core.HResult!*CoreFrameworkInputView {
        var _r: *CoreFrameworkInputView = undefined;
        const _c = self.vtable.GetForUIContext(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForCurrentView(self: *@This()) core.HResult!*CoreFrameworkInputView {
        var _r: *CoreFrameworkInputView = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreFrameworkInputViewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6eebd9b6-eac2-5f8b-975f-772ee3e42eeb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUIContext: *const fn(self: *anyopaque, context: *UIContext, _r: **CoreFrameworkInputView) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **CoreFrameworkInputView) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputView = extern struct {
    vtable: *const VTable,
    pub fn addOcclusionsChanged(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewOcclusionsChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OcclusionsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOcclusionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OcclusionsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCoreInputViewOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        var _r: *IVectorView(CoreInputViewOcclusion) = undefined;
        const _c = self.vtable.GetCoreInputViewOcclusions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryShowPrimaryView(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryShowPrimaryView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryHidePrimaryView(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryHidePrimaryView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c770cd7a-7001-4c32-bf94-25c1f554cbf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_OcclusionsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,CoreInputViewOcclusionsChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OcclusionsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetCoreInputViewOcclusions: *const fn(self: *anyopaque, _r: **IVectorView(CoreInputViewOcclusion)) callconv(.winapi) HRESULT,
        TryShowPrimaryView: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TryHidePrimaryView: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputView2 = extern struct {
    vtable: *const VTable,
    pub fn addXYFocusTransferringFromPrimaryView(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewTransferringXYFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_XYFocusTransferringFromPrimaryView(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeXYFocusTransferringFromPrimaryView(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_XYFocusTransferringFromPrimaryView(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addXYFocusTransferredToPrimaryView(self: *@This(), handler: *TypedEventHandler(CoreInputView,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_XYFocusTransferredToPrimaryView(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeXYFocusTransferredToPrimaryView(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_XYFocusTransferredToPrimaryView(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryTransferXYFocusToPrimaryView(self: *@This(), origin: Rect, direction: CoreInputViewXYFocusTransferDirection) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryTransferXYFocusToPrimaryView(@ptrCast(self), origin, direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputView2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ed726c1-e09a-4ae8-aedf-dfa4857d1a01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_XYFocusTransferringFromPrimaryView: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,CoreInputViewTransferringXYFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_XYFocusTransferringFromPrimaryView: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_XYFocusTransferredToPrimaryView: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_XYFocusTransferredToPrimaryView: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryTransferXYFocusToPrimaryView: *const fn(self: *anyopaque, origin: Rect, direction: CoreInputViewXYFocusTransferDirection, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputView3 = extern struct {
    vtable: *const VTable,
    pub fn TryShow(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryShow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryShow(self: *@This(), ty: CoreInputViewKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryShow(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryHide(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryHide(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputView3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc941653-3ab9-4849-8f58-46e7f0353cfc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryShow: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TryShow: *const fn(self: *anyopaque, ty: CoreInputViewKind, _r: *bool) callconv(.winapi) HRESULT,
        TryHide: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputView4 = extern struct {
    vtable: *const VTable,
    pub fn addPrimaryViewShowing(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewShowingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrimaryViewShowing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrimaryViewShowing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrimaryViewShowing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPrimaryViewHiding(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewHidingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrimaryViewHiding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrimaryViewHiding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrimaryViewHiding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputView4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "002863d6-d9ef-57eb-8cef-77f6ce1b7ee7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PrimaryViewShowing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,CoreInputViewShowingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrimaryViewShowing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PrimaryViewHiding: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,CoreInputViewHidingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrimaryViewHiding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputView5 = extern struct {
    vtable: *const VTable,
    pub fn IsKindSupported(self: *@This(), ty: CoreInputViewKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsKindSupported(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSupportedKindsChanged(self: *@This(), handler: *TypedEventHandler(CoreInputView,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SupportedKindsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSupportedKindsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SupportedKindsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPrimaryViewAnimationStarting(self: *@This(), handler: *TypedEventHandler(CoreInputView,CoreInputViewAnimationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrimaryViewAnimationStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrimaryViewAnimationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrimaryViewAnimationStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputView5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "136316e0-c6d5-5c57-811e-1ad8a99ba6ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsKindSupported: *const fn(self: *anyopaque, ty: CoreInputViewKind, _r: *bool) callconv(.winapi) HRESULT,
        add_SupportedKindsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SupportedKindsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PrimaryViewAnimationStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreInputView,CoreInputViewAnimationStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrimaryViewAnimationStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewAnimationStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        var _r: *IVectorView(CoreInputViewOcclusion) = undefined;
        const _c = self.vtable.get_Occlusions(@ptrCast(self), &_r);
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
    pub fn getAnimationDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AnimationDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewAnimationStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9144af2-b55c-5ea1-b8ab-5340f3e94897";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Occlusions: *const fn(self: *anyopaque, _r: **IVectorView(CoreInputViewOcclusion)) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AnimationDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewHidingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryCancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewHidingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eada47bd-bac5-5336-848d-41083584daad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewOcclusion = extern struct {
    vtable: *const VTable,
    pub fn getOccludingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_OccludingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOcclusionKind(self: *@This()) core.HResult!CoreInputViewOcclusionKind {
        var _r: CoreInputViewOcclusionKind = undefined;
        const _c = self.vtable.get_OcclusionKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewOcclusion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc36ce06-3865-4177-b5f5-8b65e0b9ce84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OccludingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_OcclusionKind: *const fn(self: *anyopaque, _r: *CoreInputViewOcclusionKind) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewOcclusionsChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOcclusions(self: *@This()) core.HResult!*IVectorView(CoreInputViewOcclusion) {
        var _r: *IVectorView(CoreInputViewOcclusion) = undefined;
        const _c = self.vtable.get_Occlusions(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewOcclusionsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be1027e8-b3ee-4df7-9554-89cdc66082c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Occlusions: *const fn(self: *anyopaque, _r: **IVectorView(CoreInputViewOcclusion)) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewShowingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryCancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca52261b-fb9e-5daf-a98c-262b8b76af50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*CoreInputView {
        var _r: *CoreInputView = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d9b97cd-edbe-49cf-a54f-337de052907f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **CoreInputView) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUIContext(self: *@This(), context: *UIContext) core.HResult!*CoreInputView {
        var _r: *CoreInputView = undefined;
        const _c = self.vtable.GetForUIContext(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ebc0862-d049-4e52-87b0-1e90e98c49ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUIContext: *const fn(self: *anyopaque, context: *UIContext, _r: **CoreInputView) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputViewTransferringXYFocusEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOrigin(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Origin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirection(self: *@This()) core.HResult!CoreInputViewXYFocusTransferDirection {
        var _r: CoreInputViewXYFocusTransferDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransferHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TransferHandled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransferHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TransferHandled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeepPrimaryViewVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeepPrimaryViewVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeepPrimaryViewVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeepPrimaryViewVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.ICoreInputViewTransferringXYFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04de169f-ba02-4850-8b55-d82d03ba6d7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Origin: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *CoreInputViewXYFocusTransferDirection) callconv(.winapi) HRESULT,
        put_TransferHandled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TransferHandled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_KeepPrimaryViewVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeepPrimaryViewVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUISettingsController = extern struct {
    vtable: *const VTable,
    pub fn SetAdvancedEffectsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.SetAdvancedEffectsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAnimationsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.SetAnimationsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAutoHideScrollBars(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.SetAutoHideScrollBars(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetMessageDuration(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.SetMessageDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetTextScaleFactor(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.SetTextScaleFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.IUISettingsController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78a51ac4-15c0-5a1b-a75b-acbf9cb8bb9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAdvancedEffectsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetAnimationsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetAutoHideScrollBars: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetMessageDuration: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        SetTextScaleFactor: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IUISettingsControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(UISettingsController) {
        var _r: *IAsyncOperation(UISettingsController) = undefined;
        const _c = self.vtable.RequestDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.IUISettingsControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb3c68cc-c220-578c-8119-7db324ed26a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(UISettingsController)) callconv(.winapi) HRESULT,
    };
};
pub const UISettingsController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetAdvancedEffectsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUISettingsController = @ptrCast(self);
        return try this.SetAdvancedEffectsEnabled(value);
    }
    pub fn SetAnimationsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUISettingsController = @ptrCast(self);
        return try this.SetAnimationsEnabled(value);
    }
    pub fn SetAutoHideScrollBars(self: *@This(), value: bool) core.HResult!void {
        const this: *IUISettingsController = @ptrCast(self);
        return try this.SetAutoHideScrollBars(value);
    }
    pub fn SetMessageDuration(self: *@This(), value: u32) core.HResult!void {
        const this: *IUISettingsController = @ptrCast(self);
        return try this.SetMessageDuration(value);
    }
    pub fn SetTextScaleFactor(self: *@This(), value: f64) core.HResult!void {
        const this: *IUISettingsController = @ptrCast(self);
        return try this.SetTextScaleFactor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestDefaultAsync() core.HResult!*IAsyncOperation(UISettingsController) {
        const factory = @This().IUISettingsControllerStaticsCache.get();
        return try factory.RequestDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.Core.UISettingsController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUISettingsController.GUID;
    pub const IID: Guid = IUISettingsController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUISettingsController.SIGNATURE);
    var _IUISettingsControllerStaticsCache: FactoryCache(IUISettingsControllerStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const Rect = @import("../../Foundation.zig").Rect;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const UIContext = @import("../../UI.zig").UIContext;
const HSTRING = @import("../../root.zig").HSTRING;
