pub const CoreWindowDialog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addShowing(self: *@This(), handler: *TypedEventHandler(CoreWindow,CoreWindowPopupShowingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.addShowing(handler);
    }
    pub fn removeShowing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.removeShowing(cookie);
    }
    pub fn getMaxSize(self: *@This()) core.HResult!Size {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getMaxSize();
    }
    pub fn getMinSize(self: *@This()) core.HResult!Size {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getMinSize();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getIsInteractionDelayed(self: *@This()) core.HResult!i32 {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getIsInteractionDelayed();
    }
    pub fn putIsInteractionDelayed(self: *@This(), value: i32) core.HResult!void {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.putIsInteractionDelayed(value);
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getCommands();
    }
    pub fn getDefaultCommandIndex(self: *@This()) core.HResult!u32 {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getDefaultCommandIndex();
    }
    pub fn putDefaultCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.putDefaultCommandIndex(value);
    }
    pub fn getCancelCommandIndex(self: *@This()) core.HResult!u32 {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getCancelCommandIndex();
    }
    pub fn putCancelCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.putCancelCommandIndex(value);
    }
    pub fn getBackButtonCommand(self: *@This()) core.HResult!*UICommandInvokedHandler {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.getBackButtonCommand();
    }
    pub fn putBackButtonCommand(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.putBackButtonCommand(value);
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncOperation(IUICommand) {
        const this: *ICoreWindowDialog = @ptrCast(self);
        return try this.ShowAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICoreWindowDialog.IID)));
    }
    pub fn CreateWithTitle(title: HSTRING) core.HResult!*CoreWindowDialog {
        const factory = @This().ICoreWindowDialogFactoryCache.get();
        return try factory.CreateWithTitle(title);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreWindowDialog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWindowDialog.GUID;
    pub const IID: Guid = ICoreWindowDialog.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWindowDialog.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICoreWindowDialogFactoryCache: FactoryCache(ICoreWindowDialogFactory, RUNTIME_NAME) = .{};
};
pub const CoreWindowFlyout = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addShowing(self: *@This(), handler: *TypedEventHandler(CoreWindow,CoreWindowPopupShowingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.addShowing(handler);
    }
    pub fn removeShowing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.removeShowing(cookie);
    }
    pub fn getMaxSize(self: *@This()) core.HResult!Size {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getMaxSize();
    }
    pub fn getMinSize(self: *@This()) core.HResult!Size {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getMinSize();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getIsInteractionDelayed(self: *@This()) core.HResult!i32 {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getIsInteractionDelayed();
    }
    pub fn putIsInteractionDelayed(self: *@This(), value: i32) core.HResult!void {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.putIsInteractionDelayed(value);
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getCommands();
    }
    pub fn getDefaultCommandIndex(self: *@This()) core.HResult!u32 {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getDefaultCommandIndex();
    }
    pub fn putDefaultCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.putDefaultCommandIndex(value);
    }
    pub fn getBackButtonCommand(self: *@This()) core.HResult!*UICommandInvokedHandler {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.getBackButtonCommand();
    }
    pub fn putBackButtonCommand(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.putBackButtonCommand(value);
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncOperation(IUICommand) {
        const this: *ICoreWindowFlyout = @ptrCast(self);
        return try this.ShowAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(position: Point) core.HResult!*CoreWindowFlyout {
        const factory = @This().ICoreWindowFlyoutFactoryCache.get();
        return try factory.Create(position);
    }
    pub fn CreateWithTitle(position: Point, title: HSTRING) core.HResult!*CoreWindowFlyout {
        const factory = @This().ICoreWindowFlyoutFactoryCache.get();
        return try factory.CreateWithTitle(position, title);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreWindowFlyout";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWindowFlyout.GUID;
    pub const IID: Guid = ICoreWindowFlyout.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWindowFlyout.SIGNATURE);
    var _ICoreWindowFlyoutFactoryCache: FactoryCache(ICoreWindowFlyoutFactory, RUNTIME_NAME) = .{};
};
pub const CoreWindowPopupShowingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetDesiredSize(self: *@This(), value: Size) core.HResult!void {
        const this: *ICoreWindowPopupShowingEventArgs = @ptrCast(self);
        return try this.SetDesiredSize(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreWindowPopupShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWindowPopupShowingEventArgs.GUID;
    pub const IID: Guid = ICoreWindowPopupShowingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWindowPopupShowingEventArgs.SIGNATURE);
};
pub const ICoreWindowDialog = extern struct {
    vtable: *const VTable,
    pub fn addShowing(self: *@This(), handler: *TypedEventHandler(CoreWindow,CoreWindowPopupShowingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Showing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShowing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Showing(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MaxSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MinSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsInteractionDelayed(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_IsInteractionDelayed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInteractionDelayed(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_IsInteractionDelayed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        var _r: *IVector(IUICommand) = undefined;
        const _c = self.vtable.get_Commands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultCommandIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DefaultCommandIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DefaultCommandIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCancelCommandIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CancelCommandIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCancelCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CancelCommandIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackButtonCommand(self: *@This()) core.HResult!*UICommandInvokedHandler {
        var _r: *UICommandInvokedHandler = undefined;
        const _c = self.vtable.get_BackButtonCommand(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackButtonCommand(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const _c = self.vtable.put_BackButtonCommand(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncOperation(IUICommand) {
        var _r: *IAsyncOperation(IUICommand) = undefined;
        const _c = self.vtable.ShowAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowDialog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7392ce0-c78d-427e-8b2c-01ff420c69d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Showing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,CoreWindowPopupShowingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Showing: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_MaxSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_MinSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsInteractionDelayed: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_IsInteractionDelayed: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Commands: *const fn(self: *anyopaque, _r: **IVector(IUICommand)) callconv(.winapi) HRESULT,
        get_DefaultCommandIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DefaultCommandIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CancelCommandIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CancelCommandIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BackButtonCommand: *const fn(self: *anyopaque, _r: **UICommandInvokedHandler) callconv(.winapi) HRESULT,
        put_BackButtonCommand: *const fn(self: *anyopaque, value: *UICommandInvokedHandler) callconv(.winapi) HRESULT,
        ShowAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IUICommand)) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowDialogFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithTitle(self: *@This(), title: HSTRING) core.HResult!*CoreWindowDialog {
        var _r: *CoreWindowDialog = undefined;
        const _c = self.vtable.CreateWithTitle(@ptrCast(self), title, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowDialogFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfb2a855-1c59-4b13-b1e5-16e29805f7c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithTitle: *const fn(self: *anyopaque, title: HSTRING, _r: **CoreWindowDialog) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowFlyout = extern struct {
    vtable: *const VTable,
    pub fn addShowing(self: *@This(), handler: *TypedEventHandler(CoreWindow,CoreWindowPopupShowingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Showing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShowing(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Showing(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MaxSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MinSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsInteractionDelayed(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_IsInteractionDelayed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInteractionDelayed(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_IsInteractionDelayed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        var _r: *IVector(IUICommand) = undefined;
        const _c = self.vtable.get_Commands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultCommandIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DefaultCommandIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DefaultCommandIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackButtonCommand(self: *@This()) core.HResult!*UICommandInvokedHandler {
        var _r: *UICommandInvokedHandler = undefined;
        const _c = self.vtable.get_BackButtonCommand(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackButtonCommand(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const _c = self.vtable.put_BackButtonCommand(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncOperation(IUICommand) {
        var _r: *IAsyncOperation(IUICommand) = undefined;
        const _c = self.vtable.ShowAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowFlyout";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e89d854d-2050-40bb-b344-f6f355eeb314";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Showing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,CoreWindowPopupShowingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Showing: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_MaxSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_MinSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsInteractionDelayed: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_IsInteractionDelayed: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Commands: *const fn(self: *anyopaque, _r: **IVector(IUICommand)) callconv(.winapi) HRESULT,
        get_DefaultCommandIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DefaultCommandIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BackButtonCommand: *const fn(self: *anyopaque, _r: **UICommandInvokedHandler) callconv(.winapi) HRESULT,
        put_BackButtonCommand: *const fn(self: *anyopaque, value: *UICommandInvokedHandler) callconv(.winapi) HRESULT,
        ShowAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IUICommand)) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowFlyoutFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), position: Point) core.HResult!*CoreWindowFlyout {
        var _r: *CoreWindowFlyout = undefined;
        const _c = self.vtable.Create(@ptrCast(self), position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTitle(self: *@This(), position: Point, title: HSTRING) core.HResult!*CoreWindowFlyout {
        var _r: *CoreWindowFlyout = undefined;
        const _c = self.vtable.CreateWithTitle(@ptrCast(self), position, title, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowFlyoutFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dec4c6c4-93e8-4f7c-be27-cefaa1af68a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, position: Point, _r: **CoreWindowFlyout) callconv(.winapi) HRESULT,
        CreateWithTitle: *const fn(self: *anyopaque, position: Point, title: HSTRING, _r: **CoreWindowFlyout) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowPopupShowingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn SetDesiredSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.SetDesiredSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowPopupShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26155fa2-5ba5-4ea4-a3b4-2dc7d63c8e26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetDesiredSize: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
    };
};
pub const AcceleratorKeyEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEventType(self: *@This()) core.HResult!CoreAcceleratorKeyEventType {
        const this: *IAcceleratorKeyEventArgs = @ptrCast(self);
        return try this.getEventType();
    }
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IAcceleratorKeyEventArgs = @ptrCast(self);
        return try this.getVirtualKey();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *IAcceleratorKeyEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAcceleratorKeyEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAcceleratorKeyEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AcceleratorKeyEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAcceleratorKeyEventArgs.GUID;
    pub const IID: Guid = IAcceleratorKeyEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAcceleratorKeyEventArgs.SIGNATURE);
};
pub const AppViewBackButtonVisibility = enum(i32) {
    Visible = 0,
    Collapsed = 1,
    Disabled = 2,
};
pub const AutomationProviderRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutomationProvider(self: *@This()) core.HResult!*IInspectable {
        const this: *IAutomationProviderRequestedEventArgs = @ptrCast(self);
        return try this.getAutomationProvider();
    }
    pub fn putAutomationProvider(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IAutomationProviderRequestedEventArgs = @ptrCast(self);
        return try this.putAutomationProvider(value);
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.AutomationProviderRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationProviderRequestedEventArgs.GUID;
    pub const IID: Guid = IAutomationProviderRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationProviderRequestedEventArgs.SIGNATURE);
};
pub const BackRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IBackRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IBackRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.BackRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackRequestedEventArgs.GUID;
    pub const IID: Guid = IBackRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackRequestedEventArgs.SIGNATURE);
};
pub const CharacterReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyCode(self: *@This()) core.HResult!u32 {
        const this: *ICharacterReceivedEventArgs = @ptrCast(self);
        return try this.getKeyCode();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *ICharacterReceivedEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CharacterReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICharacterReceivedEventArgs.GUID;
    pub const IID: Guid = ICharacterReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICharacterReceivedEventArgs.SIGNATURE);
};
pub const ClosestInteractiveBoundsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        const this: *IClosestInteractiveBoundsRequestedEventArgs = @ptrCast(self);
        return try this.getPointerPosition();
    }
    pub fn getSearchBounds(self: *@This()) core.HResult!Rect {
        const this: *IClosestInteractiveBoundsRequestedEventArgs = @ptrCast(self);
        return try this.getSearchBounds();
    }
    pub fn getClosestInteractiveBounds(self: *@This()) core.HResult!Rect {
        const this: *IClosestInteractiveBoundsRequestedEventArgs = @ptrCast(self);
        return try this.getClosestInteractiveBounds();
    }
    pub fn putClosestInteractiveBounds(self: *@This(), value: Rect) core.HResult!void {
        const this: *IClosestInteractiveBoundsRequestedEventArgs = @ptrCast(self);
        return try this.putClosestInteractiveBounds(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ClosestInteractiveBoundsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClosestInteractiveBoundsRequestedEventArgs.GUID;
    pub const IID: Guid = IClosestInteractiveBoundsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClosestInteractiveBoundsRequestedEventArgs.SIGNATURE);
};
pub const CoreAcceleratorKeyEventType = enum(i32) {
    Character = 2,
    DeadCharacter = 3,
    KeyDown = 0,
    KeyUp = 1,
    SystemCharacter = 6,
    SystemDeadCharacter = 7,
    SystemKeyDown = 4,
    SystemKeyUp = 5,
    UnicodeCharacter = 8,
};
pub const CoreAcceleratorKeys = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAcceleratorKeyActivated(self: *@This(), handler: *TypedEventHandler(CoreDispatcher,AcceleratorKeyEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreAcceleratorKeys = @ptrCast(self);
        return try this.addAcceleratorKeyActivated(handler);
    }
    pub fn removeAcceleratorKeyActivated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreAcceleratorKeys = @ptrCast(self);
        return try this.removeAcceleratorKeyActivated(cookie);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreAcceleratorKeys";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreAcceleratorKeys.GUID;
    pub const IID: Guid = ICoreAcceleratorKeys.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreAcceleratorKeys.SIGNATURE);
};
pub const CoreComponentInputSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.getIsInputEnabled();
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.putIsInputEnabled(value);
    }
    pub fn addInputEnabled(self: *@This(), handler: *TypedEventHandler(IInspectable,InputEnabledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.addInputEnabled(handler);
    }
    pub fn removeInputEnabled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.removeInputEnabled(cookie);
    }
    pub fn ReleasePointerCapture(self: *@This()) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReleasePointerCapture();
    }
    pub fn SetPointerCapture(self: *@This()) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPointerCapture();
    }
    pub fn getHasCapture(self: *@This()) core.HResult!bool {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasCapture();
    }
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerPosition();
    }
    pub fn getPointerCursor(self: *@This()) core.HResult!*CoreCursor {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerCursor();
    }
    pub fn putPointerCursor(self: *@This(), value: *CoreCursor) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointerCursor(value);
    }
    pub fn addPointerCaptureLost(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerCaptureLost(handler);
    }
    pub fn removePointerCaptureLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerCaptureLost(cookie);
    }
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerEntered(handler);
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerEntered(cookie);
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerExited(handler);
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerExited(cookie);
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerMoved(handler);
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerMoved(cookie);
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerPressed(handler);
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerPressed(cookie);
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerReleased(handler);
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerReleased(cookie);
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerWheelChanged(handler);
    }
    pub fn removePointerWheelChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerWheelChanged(cookie);
    }
    pub fn GetCurrentKeyState(self: *@This(), virtualKey: VirtualKey) core.HResult!CoreVirtualKeyStates {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentKeyState(virtualKey);
    }
    pub fn addCharacterReceived(self: *@This(), handler: *TypedEventHandler(IInspectable,CharacterReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCharacterReceived(handler);
    }
    pub fn removeCharacterReceived(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCharacterReceived(cookie);
    }
    pub fn addKeyDown(self: *@This(), handler: *TypedEventHandler(IInspectable,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addKeyDown(handler);
    }
    pub fn removeKeyDown(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeKeyDown(cookie);
    }
    pub fn addKeyUp(self: *@This(), handler: *TypedEventHandler(IInspectable,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addKeyUp(handler);
    }
    pub fn removeKeyUp(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreKeyboardInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeKeyUp(cookie);
    }
    pub fn getHasFocus(self: *@This()) core.HResult!bool {
        var this: ?*ICoreComponentFocusable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreComponentFocusable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasFocus();
    }
    pub fn addGotFocus(self: *@This(), handler: *TypedEventHandler(IInspectable,CoreWindowEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreComponentFocusable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreComponentFocusable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addGotFocus(handler);
    }
    pub fn removeGotFocus(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreComponentFocusable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreComponentFocusable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeGotFocus(cookie);
    }
    pub fn addLostFocus(self: *@This(), handler: *TypedEventHandler(IInspectable,CoreWindowEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreComponentFocusable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreComponentFocusable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLostFocus(handler);
    }
    pub fn removeLostFocus(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreComponentFocusable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreComponentFocusable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLostFocus(cookie);
    }
    pub fn addTouchHitTesting(self: *@This(), handler: *TypedEventHandler(IInspectable,TouchHitTestingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreTouchHitTesting = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreTouchHitTesting.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addTouchHitTesting(handler);
    }
    pub fn removeTouchHitTesting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreTouchHitTesting = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreTouchHitTesting.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeTouchHitTesting(cookie);
    }
    pub fn addClosestInteractiveBoundsRequested(self: *@This(), handler: *TypedEventHandler(CoreComponentInputSource,ClosestInteractiveBoundsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreClosestInteractiveBoundsRequested = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreClosestInteractiveBoundsRequested.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosestInteractiveBoundsRequested(handler);
    }
    pub fn removeClosestInteractiveBoundsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreClosestInteractiveBoundsRequested = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreClosestInteractiveBoundsRequested.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosestInteractiveBoundsRequested(cookie);
    }
    pub fn GetCurrentKeyEventDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICoreKeyboardInputSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreKeyboardInputSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentKeyEventDeviceId();
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*ICorePointerInputSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreComponentInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputSourceBase.GUID;
    pub const IID: Guid = ICoreInputSourceBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputSourceBase.SIGNATURE);
};
pub const CoreCursor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *ICoreCursor = @ptrCast(self);
        return try this.getId();
    }
    pub fn getType(self: *@This()) core.HResult!CoreCursorType {
        const this: *ICoreCursor = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCursor(ty: CoreCursorType, id: u32) core.HResult!*CoreCursor {
        const factory = @This().ICoreCursorFactoryCache.get();
        return try factory.CreateCursor(ty, id);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreCursor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreCursor.GUID;
    pub const IID: Guid = ICoreCursor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreCursor.SIGNATURE);
    var _ICoreCursorFactoryCache: FactoryCache(ICoreCursorFactory, RUNTIME_NAME) = .{};
};
pub const CoreCursorType = enum(i32) {
    Arrow = 0,
    Cross = 1,
    Custom = 2,
    Hand = 3,
    Help = 4,
    IBeam = 5,
    SizeAll = 6,
    SizeNortheastSouthwest = 7,
    SizeNorthSouth = 8,
    SizeNorthwestSoutheast = 9,
    SizeWestEast = 10,
    UniversalNo = 11,
    UpArrow = 12,
    Wait = 13,
    Pin = 14,
    Person = 15,
};
pub const CoreDispatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasThreadAccess(self: *@This()) core.HResult!bool {
        const this: *ICoreDispatcher = @ptrCast(self);
        return try this.getHasThreadAccess();
    }
    pub fn ProcessEvents(self: *@This(), options: CoreProcessEventsOption) core.HResult!void {
        const this: *ICoreDispatcher = @ptrCast(self);
        return try this.ProcessEvents(options);
    }
    pub fn RunAsync(self: *@This(), priority: CoreDispatcherPriority, agileCallback: *DispatchedHandler) core.HResult!*IAsyncAction {
        const this: *ICoreDispatcher = @ptrCast(self);
        return try this.RunAsync(priority, agileCallback);
    }
    pub fn RunIdleAsync(self: *@This(), agileCallback: *IdleDispatchedHandler) core.HResult!*IAsyncAction {
        const this: *ICoreDispatcher = @ptrCast(self);
        return try this.RunIdleAsync(agileCallback);
    }
    pub fn addAcceleratorKeyActivated(self: *@This(), handler: *TypedEventHandler(CoreDispatcher,AcceleratorKeyEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreAcceleratorKeys = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreAcceleratorKeys.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAcceleratorKeyActivated(handler);
    }
    pub fn removeAcceleratorKeyActivated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreAcceleratorKeys = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreAcceleratorKeys.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAcceleratorKeyActivated(cookie);
    }
    pub fn getCurrentPriority(self: *@This()) core.HResult!CoreDispatcherPriority {
        var this: ?*ICoreDispatcherWithTaskPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcherWithTaskPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentPriority();
    }
    pub fn putCurrentPriority(self: *@This(), value: CoreDispatcherPriority) core.HResult!void {
        var this: ?*ICoreDispatcherWithTaskPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcherWithTaskPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCurrentPriority(value);
    }
    pub fn ShouldYield(self: *@This()) core.HResult!bool {
        var this: ?*ICoreDispatcherWithTaskPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcherWithTaskPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShouldYield();
    }
    pub fn ShouldYieldWithPriority(self: *@This(), priority: CoreDispatcherPriority) core.HResult!bool {
        var this: ?*ICoreDispatcherWithTaskPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcherWithTaskPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShouldYieldWithPriority(priority);
    }
    pub fn StopProcessEvents(self: *@This()) core.HResult!void {
        var this: ?*ICoreDispatcherWithTaskPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcherWithTaskPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopProcessEvents();
    }
    pub fn TryRunAsync(self: *@This(), priority: CoreDispatcherPriority, agileCallback: *DispatchedHandler) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ICoreDispatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRunAsync(priority, agileCallback);
    }
    pub fn TryRunIdleAsync(self: *@This(), agileCallback: *IdleDispatchedHandler) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ICoreDispatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDispatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRunIdleAsync(agileCallback);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreDispatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreDispatcher.GUID;
    pub const IID: Guid = ICoreDispatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreDispatcher.SIGNATURE);
};
pub const CoreDispatcherPriority = enum(i32) {
    Idle = -2,
    Low = -1,
    Normal = 0,
    High = 1,
};
pub const CoreIndependentInputFilters = enum(i32) {
    None = 0,
    MouseButton = 1,
    MouseWheel = 2,
    MouseHover = 4,
    PenWithBarrel = 8,
    PenInverted = 16,
};
pub const CoreIndependentInputSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.getIsInputEnabled();
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.putIsInputEnabled(value);
    }
    pub fn addInputEnabled(self: *@This(), handler: *TypedEventHandler(IInspectable,InputEnabledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.addInputEnabled(handler);
    }
    pub fn removeInputEnabled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreInputSourceBase = @ptrCast(self);
        return try this.removeInputEnabled(cookie);
    }
    pub fn ReleasePointerCapture(self: *@This()) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReleasePointerCapture();
    }
    pub fn SetPointerCapture(self: *@This()) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPointerCapture();
    }
    pub fn getHasCapture(self: *@This()) core.HResult!bool {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasCapture();
    }
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerPosition();
    }
    pub fn getPointerCursor(self: *@This()) core.HResult!*CoreCursor {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerCursor();
    }
    pub fn putPointerCursor(self: *@This(), value: *CoreCursor) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointerCursor(value);
    }
    pub fn addPointerCaptureLost(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerCaptureLost(handler);
    }
    pub fn removePointerCaptureLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerCaptureLost(cookie);
    }
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerEntered(handler);
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerEntered(cookie);
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerExited(handler);
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerExited(cookie);
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerMoved(handler);
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerMoved(cookie);
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerPressed(handler);
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerPressed(cookie);
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerReleased(handler);
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerReleased(cookie);
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerWheelChanged(handler);
    }
    pub fn removePointerWheelChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerInputSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerWheelChanged(cookie);
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*ICorePointerInputSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerInputSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub fn addPointerRoutedAway(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerRoutedAway(handler);
    }
    pub fn removePointerRoutedAway(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerRoutedAway(cookie);
    }
    pub fn addPointerRoutedTo(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerRoutedTo(handler);
    }
    pub fn removePointerRoutedTo(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerRoutedTo(cookie);
    }
    pub fn addPointerRoutedReleased(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerRoutedReleased(handler);
    }
    pub fn removePointerRoutedReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerRoutedReleased(cookie);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreIndependentInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreInputSourceBase.GUID;
    pub const IID: Guid = ICoreInputSourceBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreInputSourceBase.SIGNATURE);
};
pub const CoreIndependentInputSourceController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTransparentForUncontrolledInput(self: *@This()) core.HResult!bool {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.getIsTransparentForUncontrolledInput();
    }
    pub fn putIsTransparentForUncontrolledInput(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.putIsTransparentForUncontrolledInput(value);
    }
    pub fn getIsPalmRejectionEnabled(self: *@This()) core.HResult!bool {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.getIsPalmRejectionEnabled();
    }
    pub fn putIsPalmRejectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.putIsPalmRejectionEnabled(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*CoreIndependentInputSource {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.getSource();
    }
    pub fn SetControlledInput(self: *@This(), inputTypes: CoreInputDeviceTypes) core.HResult!void {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.SetControlledInput(inputTypes);
    }
    pub fn SetControlledInputWithRequiredWithExcluded(self: *@This(), inputTypes: CoreInputDeviceTypes, required: CoreIndependentInputFilters, excluded: CoreIndependentInputFilters) core.HResult!void {
        const this: *ICoreIndependentInputSourceController = @ptrCast(self);
        return try this.SetControlledInputWithRequiredWithExcluded(inputTypes, required, excluded);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForVisual(visual: *Visual) core.HResult!*CoreIndependentInputSourceController {
        const factory = @This().ICoreIndependentInputSourceControllerStaticsCache.get();
        return try factory.CreateForVisual(visual);
    }
    pub fn CreateForIVisualElement(visualElement: *IVisualElement) core.HResult!*CoreIndependentInputSourceController {
        const factory = @This().ICoreIndependentInputSourceControllerStaticsCache.get();
        return try factory.CreateForIVisualElement(visualElement);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreIndependentInputSourceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreIndependentInputSourceController.GUID;
    pub const IID: Guid = ICoreIndependentInputSourceController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreIndependentInputSourceController.SIGNATURE);
    var _ICoreIndependentInputSourceControllerStaticsCache: FactoryCache(ICoreIndependentInputSourceControllerStatics, RUNTIME_NAME) = .{};
};
pub const CoreInputDeviceTypes = enum(i32) {
    None = 0,
    Touch = 1,
    Pen = 2,
    Mouse = 4,
};
pub const CorePhysicalKeyStatus = extern struct {
    RepeatCount: u32,
    ScanCode: u32,
    IsExtendedKey: bool,
    IsMenuKeyDown: bool,
    WasKeyDown: bool,
    IsKeyReleased: bool,
};
pub const CoreProcessEventsOption = enum(i32) {
    ProcessOneAndAllPending = 0,
    ProcessOneIfPresent = 1,
    ProcessUntilQuit = 2,
    ProcessAllIfPresent = 3,
};
pub const CoreProximityEvaluation = extern struct {
    Score: i32,
    AdjustedPoint: Point,
};
pub const CoreProximityEvaluationScore = enum(i32) {
    Closest = 0,
    Farthest = 2147483647,
};
pub const CoreVirtualKeyStates = enum(i32) {
    None = 0,
    Down = 1,
    Locked = 2,
};
pub const CoreWindow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutomationHostProvider(self: *@This()) core.HResult!*IInspectable {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getAutomationHostProvider();
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn getCustomProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getCustomProperties();
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!CoreWindowFlowDirection {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getFlowDirection();
    }
    pub fn putFlowDirection(self: *@This(), value: CoreWindowFlowDirection) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.putFlowDirection(value);
    }
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getIsInputEnabled();
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.putIsInputEnabled(value);
    }
    pub fn getPointerCursor(self: *@This()) core.HResult!*CoreCursor {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getPointerCursor();
    }
    pub fn putPointerCursor(self: *@This(), value: *CoreCursor) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.putPointerCursor(value);
    }
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getPointerPosition();
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn Activate(self: *@This()) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.Activate();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.Close();
    }
    pub fn GetAsyncKeyState(self: *@This(), virtualKey: VirtualKey) core.HResult!CoreVirtualKeyStates {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.GetAsyncKeyState(virtualKey);
    }
    pub fn GetKeyState(self: *@This(), virtualKey: VirtualKey) core.HResult!CoreVirtualKeyStates {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.GetKeyState(virtualKey);
    }
    pub fn ReleasePointerCapture(self: *@This()) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.ReleasePointerCapture();
    }
    pub fn SetPointerCapture(self: *@This()) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.SetPointerCapture();
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(CoreWindow,WindowActivatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addActivated(handler);
    }
    pub fn removeActivated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeActivated(cookie);
    }
    pub fn addAutomationProviderRequested(self: *@This(), handler: *TypedEventHandler(CoreWindow,AutomationProviderRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addAutomationProviderRequested(handler);
    }
    pub fn removeAutomationProviderRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeAutomationProviderRequested(cookie);
    }
    pub fn addCharacterReceived(self: *@This(), handler: *TypedEventHandler(CoreWindow,CharacterReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addCharacterReceived(handler);
    }
    pub fn removeCharacterReceived(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeCharacterReceived(cookie);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(CoreWindow,CoreWindowEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeClosed(cookie);
    }
    pub fn addInputEnabled(self: *@This(), handler: *TypedEventHandler(CoreWindow,InputEnabledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addInputEnabled(handler);
    }
    pub fn removeInputEnabled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeInputEnabled(cookie);
    }
    pub fn addKeyDown(self: *@This(), handler: *TypedEventHandler(CoreWindow,KeyEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addKeyDown(handler);
    }
    pub fn removeKeyDown(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeKeyDown(cookie);
    }
    pub fn addKeyUp(self: *@This(), handler: *TypedEventHandler(CoreWindow,KeyEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addKeyUp(handler);
    }
    pub fn removeKeyUp(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeKeyUp(cookie);
    }
    pub fn addPointerCaptureLost(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerCaptureLost(handler);
    }
    pub fn removePointerCaptureLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerCaptureLost(cookie);
    }
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerEntered(handler);
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerEntered(cookie);
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerExited(handler);
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerExited(cookie);
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerMoved(handler);
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerMoved(cookie);
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerPressed(handler);
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerPressed(cookie);
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerReleased(handler);
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerReleased(cookie);
    }
    pub fn addTouchHitTesting(self: *@This(), handler: *TypedEventHandler(CoreWindow,TouchHitTestingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addTouchHitTesting(handler);
    }
    pub fn removeTouchHitTesting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeTouchHitTesting(cookie);
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addPointerWheelChanged(handler);
    }
    pub fn removePointerWheelChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removePointerWheelChanged(cookie);
    }
    pub fn addSizeChanged(self: *@This(), handler: *TypedEventHandler(CoreWindow,WindowSizeChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addSizeChanged(handler);
    }
    pub fn removeSizeChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeSizeChanged(cookie);
    }
    pub fn addVisibilityChanged(self: *@This(), handler: *TypedEventHandler(CoreWindow,VisibilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.addVisibilityChanged(handler);
    }
    pub fn removeVisibilityChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreWindow = @ptrCast(self);
        return try this.removeVisibilityChanged(cookie);
    }
    pub fn putPointerPosition(self: *@This(), value: Point) core.HResult!void {
        var this: ?*ICoreWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointerPosition(value);
    }
    pub fn addPointerRoutedAway(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerRoutedAway(handler);
    }
    pub fn removePointerRoutedAway(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerRoutedAway(cookie);
    }
    pub fn addPointerRoutedTo(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerRoutedTo(handler);
    }
    pub fn removePointerRoutedTo(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerRoutedTo(cookie);
    }
    pub fn addPointerRoutedReleased(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPointerRoutedReleased(handler);
    }
    pub fn removePointerRoutedReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICorePointerRedirector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICorePointerRedirector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePointerRoutedReleased(cookie);
    }
    pub fn addClosestInteractiveBoundsRequested(self: *@This(), handler: *TypedEventHandler(CoreWindow,ClosestInteractiveBoundsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreWindow3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosestInteractiveBoundsRequested(handler);
    }
    pub fn removeClosestInteractiveBoundsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreWindow3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosestInteractiveBoundsRequested(cookie);
    }
    pub fn GetCurrentKeyEventDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICoreWindow3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentKeyEventDeviceId();
    }
    pub fn addResizeStarted(self: *@This(), handler: *TypedEventHandler(CoreWindow,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreWindow4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addResizeStarted(handler);
    }
    pub fn removeResizeStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreWindow4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeResizeStarted(cookie);
    }
    pub fn addResizeCompleted(self: *@This(), handler: *TypedEventHandler(CoreWindow,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreWindow4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addResizeCompleted(handler);
    }
    pub fn removeResizeCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreWindow4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeResizeCompleted(cookie);
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*ICoreWindow5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub fn getActivationMode(self: *@This()) core.HResult!CoreWindowActivationMode {
        var this: ?*ICoreWindow5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindow5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivationMode();
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var this: ?*ICoreWindowWithContext = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowWithContext.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUIContext();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentThread() core.HResult!*CoreWindow {
        const factory = @This().ICoreWindowStaticCache.get();
        return try factory.GetForCurrentThread();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWindow.GUID;
    pub const IID: Guid = ICoreWindow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWindow.SIGNATURE);
    var _ICoreWindowStaticCache: FactoryCache(ICoreWindowStatic, RUNTIME_NAME) = .{};
};
pub const CoreWindowActivationMode = enum(i32) {
    None = 0,
    Deactivated = 1,
    ActivatedNotForeground = 2,
    ActivatedInForeground = 3,
};
pub const CoreWindowActivationState = enum(i32) {
    CodeActivated = 0,
    Deactivated = 1,
    PointerActivated = 2,
};
pub const CoreWindowEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ICoreWindowEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreWindowEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreWindowEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWindowEventArgs.GUID;
    pub const IID: Guid = ICoreWindowEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWindowEventArgs.SIGNATURE);
};
pub const CoreWindowFlowDirection = enum(i32) {
    LeftToRight = 0,
    RightToLeft = 1,
};
pub const CoreWindowResizeManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn NotifyLayoutCompleted(self: *@This()) core.HResult!void {
        const this: *ICoreWindowResizeManager = @ptrCast(self);
        return try this.NotifyLayoutCompleted();
    }
    pub fn putShouldWaitForLayoutCompletion(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowResizeManagerLayoutCapability = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowResizeManagerLayoutCapability.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShouldWaitForLayoutCompletion(value);
    }
    pub fn getShouldWaitForLayoutCompletion(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowResizeManagerLayoutCapability = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowResizeManagerLayoutCapability.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldWaitForLayoutCompletion();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*CoreWindowResizeManager {
        const factory = @This().ICoreWindowResizeManagerStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.CoreWindowResizeManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreWindowResizeManager.GUID;
    pub const IID: Guid = ICoreWindowResizeManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreWindowResizeManager.SIGNATURE);
    var _ICoreWindowResizeManagerStaticsCache: FactoryCache(ICoreWindowResizeManagerStatics, RUNTIME_NAME) = .{};
};
pub const DispatchedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.DispatchedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1f276c4-98d8-4636-bf49-eb79507548e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IAcceleratorKeyEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEventType(self: *@This()) core.HResult!CoreAcceleratorKeyEventType {
        var _r: CoreAcceleratorKeyEventType = undefined;
        const _c = self.vtable.get_EventType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_VirtualKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IAcceleratorKeyEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff1c4c4a-9287-470b-836e-9086e3126ade";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EventType: *const fn(self: *anyopaque, _r: *CoreAcceleratorKeyEventType) callconv(.winapi) HRESULT,
        get_VirtualKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
    };
};
pub const IAcceleratorKeyEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IAcceleratorKeyEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d300a9f6-2f7e-4873-a555-166e596ee1c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationProviderRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAutomationProvider(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_AutomationProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutomationProvider(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_AutomationProvider(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IAutomationProviderRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "961ff258-21bf-4b42-a298-fa479d4c52e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutomationProvider: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_AutomationProvider: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IBackRequestedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.UI.Core.IBackRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d603d28a-e411-4a4e-ba41-6a327a8675bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICharacterReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getKeyCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_KeyCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICharacterReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c584659f-99b2-4bcc-bd33-04e63f42902e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
    };
};
pub const IClosestInteractiveBoundsRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_PointerPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSearchBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_SearchBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosestInteractiveBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ClosestInteractiveBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosestInteractiveBounds(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_ClosestInteractiveBounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IClosestInteractiveBoundsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "347c11d7-f6f8-40e3-b29f-ae50d3e86486";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerPosition: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_SearchBounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_ClosestInteractiveBounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_ClosestInteractiveBounds: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAcceleratorKeys = extern struct {
    vtable: *const VTable,
    pub fn addAcceleratorKeyActivated(self: *@This(), handler: *TypedEventHandler(CoreDispatcher,AcceleratorKeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AcceleratorKeyActivated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAcceleratorKeyActivated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AcceleratorKeyActivated(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreAcceleratorKeys";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ffdf7f5-b8c9-4ef0-b7d2-1de626561fc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AcceleratorKeyActivated: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreDispatcher,AcceleratorKeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AcceleratorKeyActivated: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreClosestInteractiveBoundsRequested = extern struct {
    vtable: *const VTable,
    pub fn addClosestInteractiveBoundsRequested(self: *@This(), handler: *TypedEventHandler(CoreComponentInputSource,ClosestInteractiveBoundsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ClosestInteractiveBoundsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosestInteractiveBoundsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ClosestInteractiveBoundsRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreClosestInteractiveBoundsRequested";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f303043a-e8bf-4e8e-ae69-c9dadd57a114";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ClosestInteractiveBoundsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreComponentInputSource,ClosestInteractiveBoundsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ClosestInteractiveBoundsRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreComponentFocusable = extern struct {
    vtable: *const VTable,
    pub fn getHasFocus(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasFocus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addGotFocus(self: *@This(), handler: *TypedEventHandler(IInspectable,CoreWindowEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLostFocus(self: *@This(), handler: *TypedEventHandler(IInspectable,CoreWindowEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LostFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLostFocus(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LostFocus(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreComponentFocusable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52f96fa3-8742-4411-ae69-79a85f29ac8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasFocus: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,CoreWindowEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LostFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,CoreWindowEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LostFocus: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreCursor = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!CoreCursorType {
        var _r: CoreCursorType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreCursor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96893acf-111d-442c-8a77-b87992f8e2d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *CoreCursorType) callconv(.winapi) HRESULT,
    };
};
pub const ICoreCursorFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCursor(self: *@This(), ty: CoreCursorType, id: u32) core.HResult!*CoreCursor {
        var _r: *CoreCursor = undefined;
        const _c = self.vtable.CreateCursor(@ptrCast(self), ty, id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreCursorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6359621-a79d-4ed3-8c32-a9ef9d6b76a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCursor: *const fn(self: *anyopaque, ty: CoreCursorType, id: u32, _r: **CoreCursor) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDispatcher = extern struct {
    vtable: *const VTable,
    pub fn getHasThreadAccess(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasThreadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProcessEvents(self: *@This(), options: CoreProcessEventsOption) core.HResult!void {
        const _c = self.vtable.ProcessEvents(@ptrCast(self), options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RunAsync(self: *@This(), priority: CoreDispatcherPriority, agileCallback: *DispatchedHandler) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RunAsync(@ptrCast(self), priority, agileCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RunIdleAsync(self: *@This(), agileCallback: *IdleDispatchedHandler) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RunIdleAsync(@ptrCast(self), agileCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreDispatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60db2fa8-b705-4fde-a7d6-ebbb1891d39e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasThreadAccess: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ProcessEvents: *const fn(self: *anyopaque, options: CoreProcessEventsOption) callconv(.winapi) HRESULT,
        RunAsync: *const fn(self: *anyopaque, priority: CoreDispatcherPriority, agileCallback: *DispatchedHandler, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RunIdleAsync: *const fn(self: *anyopaque, agileCallback: *IdleDispatchedHandler, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDispatcher2 = extern struct {
    vtable: *const VTable,
    pub fn TryRunAsync(self: *@This(), priority: CoreDispatcherPriority, agileCallback: *DispatchedHandler) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRunAsync(@ptrCast(self), priority, agileCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRunIdleAsync(self: *@This(), agileCallback: *IdleDispatchedHandler) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRunIdleAsync(@ptrCast(self), agileCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreDispatcher2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f5e63c7-e3aa-4eae-b0e0-dcf321ca4b2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryRunAsync: *const fn(self: *anyopaque, priority: CoreDispatcherPriority, agileCallback: *DispatchedHandler, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryRunIdleAsync: *const fn(self: *anyopaque, agileCallback: *IdleDispatchedHandler, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDispatcherWithTaskPriority = extern struct {
    vtable: *const VTable,
    pub fn getCurrentPriority(self: *@This()) core.HResult!CoreDispatcherPriority {
        var _r: CoreDispatcherPriority = undefined;
        const _c = self.vtable.get_CurrentPriority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrentPriority(self: *@This(), value: CoreDispatcherPriority) core.HResult!void {
        const _c = self.vtable.put_CurrentPriority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShouldYield(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShouldYield(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShouldYield(self: *@This(), priority: CoreDispatcherPriority) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShouldYield(@ptrCast(self), priority, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopProcessEvents(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopProcessEvents(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreDispatcherWithTaskPriority";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bafaecad-484d-41be-ba80-1d58c65263ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentPriority: *const fn(self: *anyopaque, _r: *CoreDispatcherPriority) callconv(.winapi) HRESULT,
        put_CurrentPriority: *const fn(self: *anyopaque, value: CoreDispatcherPriority) callconv(.winapi) HRESULT,
        ShouldYield: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShouldYield: *const fn(self: *anyopaque, priority: CoreDispatcherPriority, _r: *bool) callconv(.winapi) HRESULT,
        StopProcessEvents: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICoreIndependentInputSourceController = extern struct {
    vtable: *const VTable,
    pub fn getIsTransparentForUncontrolledInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransparentForUncontrolledInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTransparentForUncontrolledInput(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTransparentForUncontrolledInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPalmRejectionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPalmRejectionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPalmRejectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPalmRejectionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*CoreIndependentInputSource {
        var _r: *CoreIndependentInputSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetControlledInput(self: *@This(), inputTypes: CoreInputDeviceTypes) core.HResult!void {
        const _c = self.vtable.SetControlledInput(@ptrCast(self), inputTypes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetControlledInputWithExcluded(self: *@This(), inputTypes: CoreInputDeviceTypes, required: CoreIndependentInputFilters, excluded: CoreIndependentInputFilters) core.HResult!void {
        const _c = self.vtable.SetControlledInputWithExcluded(@ptrCast(self), inputTypes, required, excluded);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreIndependentInputSourceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0963261c-84fe-578a-83ca-6425309ccde4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTransparentForUncontrolledInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTransparentForUncontrolledInput: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPalmRejectionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPalmRejectionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **CoreIndependentInputSource) callconv(.winapi) HRESULT,
        SetControlledInput: *const fn(self: *anyopaque, inputTypes: CoreInputDeviceTypes) callconv(.winapi) HRESULT,
        SetControlledInputWithExcluded: *const fn(self: *anyopaque, inputTypes: CoreInputDeviceTypes, required: CoreIndependentInputFilters, excluded: CoreIndependentInputFilters) callconv(.winapi) HRESULT,
    };
};
pub const ICoreIndependentInputSourceControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForVisual(self: *@This(), visual: *Visual) core.HResult!*CoreIndependentInputSourceController {
        var _r: *CoreIndependentInputSourceController = undefined;
        const _c = self.vtable.CreateForVisual(@ptrCast(self), visual, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForIVisualElement(self: *@This(), visualElement: *IVisualElement) core.HResult!*CoreIndependentInputSourceController {
        var _r: *CoreIndependentInputSourceController = undefined;
        const _c = self.vtable.CreateForIVisualElement(@ptrCast(self), visualElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreIndependentInputSourceControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3edc4e20-9a8a-5691-8586-fca4cb57526d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForVisual: *const fn(self: *anyopaque, visual: *Visual, _r: **CoreIndependentInputSourceController) callconv(.winapi) HRESULT,
        CreateForIVisualElement: *const fn(self: *anyopaque, visualElement: *IVisualElement, _r: **CoreIndependentInputSourceController) callconv(.winapi) HRESULT,
    };
};
pub const ICoreInputSourceBase = extern struct {
    vtable: *const VTable,
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInputEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInputEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInputEnabled(self: *@This(), handler: *TypedEventHandler(IInspectable,InputEnabledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InputEnabled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInputEnabled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InputEnabled(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreInputSourceBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f488807-4580-4be8-be68-92a9311713bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
        get_IsInputEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInputEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_InputEnabled: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,InputEnabledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InputEnabled: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreKeyboardInputSource = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentKeyState(self: *@This(), virtualKey: VirtualKey) core.HResult!CoreVirtualKeyStates {
        var _r: CoreVirtualKeyStates = undefined;
        const _c = self.vtable.GetCurrentKeyState(@ptrCast(self), virtualKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCharacterReceived(self: *@This(), handler: *TypedEventHandler(IInspectable,CharacterReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CharacterReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCharacterReceived(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CharacterReceived(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyDown(self: *@This(), handler: *TypedEventHandler(IInspectable,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyDown(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyDown(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyDown(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyUp(self: *@This(), handler: *TypedEventHandler(IInspectable,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyUp(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyUp(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyUp(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreKeyboardInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "231c9088-e469-4df1-b208-6e490d71cb90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentKeyState: *const fn(self: *anyopaque, virtualKey: VirtualKey, _r: *CoreVirtualKeyStates) callconv(.winapi) HRESULT,
        add_CharacterReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,CharacterReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CharacterReceived: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyDown: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,KeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyDown: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyUp: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,KeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyUp: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreKeyboardInputSource2 = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentKeyEventDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetCurrentKeyEventDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreKeyboardInputSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa24cb94-f963-47a5-8778-207c482b0afd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentKeyEventDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICorePointerInputSource = extern struct {
    vtable: *const VTable,
    pub fn ReleasePointerCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReleasePointerCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPointerCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetPointerCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHasCapture(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasCapture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_PointerPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn addPointerCaptureLost(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerCaptureLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerCaptureLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerCaptureLost(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerEntered(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerExited(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerMoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerReleased(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerWheelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerWheelChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerWheelChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICorePointerInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbf1bb18-e47a-48eb-8807-f8f8d3ea4551";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReleasePointerCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetPointerCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_HasCapture: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PointerPosition: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_PointerCursor: *const fn(self: *anyopaque, _r: **CoreCursor) callconv(.winapi) HRESULT,
        put_PointerCursor: *const fn(self: *anyopaque, value: *CoreCursor) callconv(.winapi) HRESULT,
        add_PointerCaptureLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerCaptureLost: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerEntered: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerExited: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerMoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerMoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerReleased: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerWheelChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerWheelChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICorePointerInputSource2 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICorePointerInputSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d703708a-4516-4786-b1e5-2751d563f997";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
    };
};
pub const ICorePointerRedirector = extern struct {
    vtable: *const VTable,
    pub fn addPointerRoutedAway(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerRoutedAway(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerRoutedAway(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerRoutedAway(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerRoutedTo(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerRoutedTo(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerRoutedTo(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerRoutedTo(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerRoutedReleased(self: *@This(), handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerRoutedReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerRoutedReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerRoutedReleased(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICorePointerRedirector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f9d0c94-5688-4b0c-a9f1-f931f7fa3dc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PointerRoutedAway: *const fn(self: *anyopaque, handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerRoutedAway: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerRoutedTo: *const fn(self: *anyopaque, handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerRoutedTo: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerRoutedReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(ICorePointerRedirector,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerRoutedReleased: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTouchHitTesting = extern struct {
    vtable: *const VTable,
    pub fn addTouchHitTesting(self: *@This(), handler: *TypedEventHandler(IInspectable,TouchHitTestingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TouchHitTesting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTouchHitTesting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TouchHitTesting(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreTouchHitTesting";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1d8a289-3acf-4124-9fa3-ea8aba353c21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_TouchHitTesting: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,TouchHitTestingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TouchHitTesting: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindow = extern struct {
    vtable: *const VTable,
    pub fn getAutomationHostProvider(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_AutomationHostProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_CustomProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!CoreWindowFlowDirection {
        var _r: CoreWindowFlowDirection = undefined;
        const _c = self.vtable.get_FlowDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlowDirection(self: *@This(), value: CoreWindowFlowDirection) core.HResult!void {
        const _c = self.vtable.put_FlowDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInputEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInputEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getPointerPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_PointerPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Activate(self: *@This()) core.HResult!void {
        const _c = self.vtable.Activate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAsyncKeyState(self: *@This(), virtualKey: VirtualKey) core.HResult!CoreVirtualKeyStates {
        var _r: CoreVirtualKeyStates = undefined;
        const _c = self.vtable.GetAsyncKeyState(@ptrCast(self), virtualKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetKeyState(self: *@This(), virtualKey: VirtualKey) core.HResult!CoreVirtualKeyStates {
        var _r: CoreVirtualKeyStates = undefined;
        const _c = self.vtable.GetKeyState(@ptrCast(self), virtualKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReleasePointerCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReleasePointerCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPointerCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetPointerCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(CoreWindow,WindowActivatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAutomationProviderRequested(self: *@This(), handler: *TypedEventHandler(CoreWindow,AutomationProviderRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AutomationProviderRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAutomationProviderRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AutomationProviderRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCharacterReceived(self: *@This(), handler: *TypedEventHandler(CoreWindow,CharacterReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CharacterReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCharacterReceived(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CharacterReceived(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(CoreWindow,CoreWindowEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInputEnabled(self: *@This(), handler: *TypedEventHandler(CoreWindow,InputEnabledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InputEnabled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInputEnabled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InputEnabled(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyDown(self: *@This(), handler: *TypedEventHandler(CoreWindow,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyDown(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyDown(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyDown(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyUp(self: *@This(), handler: *TypedEventHandler(CoreWindow,KeyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyUp(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyUp(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyUp(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerCaptureLost(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerCaptureLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerCaptureLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerCaptureLost(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerEntered(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerExited(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerMoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerReleased(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTouchHitTesting(self: *@This(), handler: *TypedEventHandler(CoreWindow,TouchHitTestingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TouchHitTesting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTouchHitTesting(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TouchHitTesting(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *TypedEventHandler(CoreWindow,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerWheelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerWheelChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerWheelChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSizeChanged(self: *@This(), handler: *TypedEventHandler(CoreWindow,WindowSizeChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SizeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSizeChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SizeChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVisibilityChanged(self: *@This(), handler: *TypedEventHandler(CoreWindow,VisibilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisibilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisibilityChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisibilityChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79b9d5f2-879e-4b89-b798-79e47598030c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutomationHostProvider: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_CustomProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
        get_FlowDirection: *const fn(self: *anyopaque, _r: *CoreWindowFlowDirection) callconv(.winapi) HRESULT,
        put_FlowDirection: *const fn(self: *anyopaque, value: CoreWindowFlowDirection) callconv(.winapi) HRESULT,
        get_IsInputEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInputEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PointerCursor: *const fn(self: *anyopaque, _r: **CoreCursor) callconv(.winapi) HRESULT,
        put_PointerCursor: *const fn(self: *anyopaque, value: *CoreCursor) callconv(.winapi) HRESULT,
        get_PointerPosition: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Activate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetAsyncKeyState: *const fn(self: *anyopaque, virtualKey: VirtualKey, _r: *CoreVirtualKeyStates) callconv(.winapi) HRESULT,
        GetKeyState: *const fn(self: *anyopaque, virtualKey: VirtualKey, _r: *CoreVirtualKeyStates) callconv(.winapi) HRESULT,
        ReleasePointerCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetPointerCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,WindowActivatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AutomationProviderRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,AutomationProviderRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AutomationProviderRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CharacterReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,CharacterReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CharacterReceived: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,CoreWindowEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_InputEnabled: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,InputEnabledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InputEnabled: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyDown: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,KeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyDown: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyUp: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,KeyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyUp: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerCaptureLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerCaptureLost: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerEntered: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerExited: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerMoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerMoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerReleased: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TouchHitTesting: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,TouchHitTestingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TouchHitTesting: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerWheelChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerWheelChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SizeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,WindowSizeChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SizeChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VisibilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,VisibilityChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisibilityChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindow2 = extern struct {
    vtable: *const VTable,
    pub fn putPointerPosition(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_PointerPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindow2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c2b1b85-6917-4361-9c02-0d9e3a420b95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PointerPosition: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindow3 = extern struct {
    vtable: *const VTable,
    pub fn addClosestInteractiveBoundsRequested(self: *@This(), handler: *TypedEventHandler(CoreWindow,ClosestInteractiveBoundsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ClosestInteractiveBoundsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosestInteractiveBoundsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ClosestInteractiveBoundsRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCurrentKeyEventDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetCurrentKeyEventDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindow3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32c20dd8-faef-4375-a2ab-32640e4815c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ClosestInteractiveBoundsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,ClosestInteractiveBoundsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ClosestInteractiveBoundsRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetCurrentKeyEventDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindow4 = extern struct {
    vtable: *const VTable,
    pub fn addResizeStarted(self: *@This(), handler: *TypedEventHandler(CoreWindow,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResizeStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResizeStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResizeStarted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResizeCompleted(self: *@This(), handler: *TypedEventHandler(CoreWindow,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResizeCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResizeCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResizeCompleted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindow4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35caf0d0-47f0-436c-af97-0dd88f6f5f02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ResizeStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResizeStarted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ResizeCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreWindow,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResizeCompleted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindow5 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivationMode(self: *@This()) core.HResult!CoreWindowActivationMode {
        var _r: CoreWindowActivationMode = undefined;
        const _c = self.vtable.get_ActivationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindow5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b4ae1e1-2e6d-4eaa-bda1-1c5cc1bee141";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
        get_ActivationMode: *const fn(self: *anyopaque, _r: *CoreWindowActivationMode) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowEventArgs = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "272b1ef3-c633-4da5-a26c-c6d0f56b29da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowResizeManager = extern struct {
    vtable: *const VTable,
    pub fn NotifyLayoutCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyLayoutCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowResizeManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8f0b925-b350-48b3-a198-5c1a84700243";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        NotifyLayoutCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowResizeManagerLayoutCapability = extern struct {
    vtable: *const VTable,
    pub fn putShouldWaitForLayoutCompletion(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldWaitForLayoutCompletion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShouldWaitForLayoutCompletion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldWaitForLayoutCompletion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowResizeManagerLayoutCapability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb74f27b-a544-4301-80e6-0ae033ef4536";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ShouldWaitForLayoutCompletion: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShouldWaitForLayoutCompletion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowResizeManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*CoreWindowResizeManager {
        var _r: *CoreWindowResizeManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowResizeManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae4a9045-6d70-49db-8e68-46ffbd17d38d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **CoreWindowResizeManager) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowStatic = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentThread(self: *@This()) core.HResult!*CoreWindow {
        var _r: *CoreWindow = undefined;
        const _c = self.vtable.GetForCurrentThread(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d239005-3c2a-41b1-9022-536bb9cf93b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentThread: *const fn(self: *anyopaque, _r: **CoreWindow) callconv(.winapi) HRESULT,
    };
};
pub const ICoreWindowWithContext = extern struct {
    vtable: *const VTable,
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ICoreWindowWithContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ac40241-3575-4c3b-af66-e8c529d4d06c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UIContext: *const fn(self: *anyopaque, _r: **UIContext) callconv(.winapi) HRESULT,
    };
};
pub const IIdleDispatchedHandlerArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsDispatcherIdle(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDispatcherIdle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IIdleDispatchedHandlerArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98bb6a24-dc1c-43cb-b4ed-d1c0eb2391f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDispatcherIdle: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInitializeWithCoreWindow = extern struct {
    vtable: *const VTable,
    pub fn Initialize(self: *@This(), window: *CoreWindow) core.HResult!void {
        const _c = self.vtable.Initialize(@ptrCast(self), window);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IInitializeWithCoreWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "188f20d6-9873-464a-ace5-57e010f465e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Initialize: *const fn(self: *anyopaque, window: *CoreWindow) callconv(.winapi) HRESULT,
    };
};
pub const IInputEnabledEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInputEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InputEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IInputEnabledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80371d4f-2fd8-4c24-aa86-3163a87b4e5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IKeyEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_VirtualKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IKeyEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ff5e930-2544-4a17-bd78-1f2fdebb106b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VirtualKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
    };
};
pub const IKeyEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IKeyEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "583add98-0790-4571-9b12-645ef9d79e42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPointerEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCurrentPoint(self: *@This()) core.HResult!*PointerPoint {
        var _r: *PointerPoint = undefined;
        const _c = self.vtable.get_CurrentPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_KeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIntermediatePoints(self: *@This()) core.HResult!*IVector(PointerPoint) {
        var _r: *IVector(PointerPoint) = undefined;
        const _c = self.vtable.GetIntermediatePoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IPointerEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "920d9cb1-a5fc-4a21-8c09-49dfe6ffe25f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentPoint: *const fn(self: *anyopaque, _r: **PointerPoint) callconv(.winapi) HRESULT,
        get_KeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        GetIntermediatePoints: *const fn(self: *anyopaque, _r: **IVector(PointerPoint)) callconv(.winapi) HRESULT,
    };
};
pub const ISystemNavigationManager = extern struct {
    vtable: *const VTable,
    pub fn addBackRequested(self: *@This(), handler: *EventHandler(BackRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BackRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBackRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BackRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ISystemNavigationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93023118-cf50-42a6-9706-69107fa122e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BackRequested: *const fn(self: *anyopaque, handler: *EventHandler(BackRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BackRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISystemNavigationManager2 = extern struct {
    vtable: *const VTable,
    pub fn getAppViewBackButtonVisibility(self: *@This()) core.HResult!AppViewBackButtonVisibility {
        var _r: AppViewBackButtonVisibility = undefined;
        const _c = self.vtable.get_AppViewBackButtonVisibility(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppViewBackButtonVisibility(self: *@This(), value: AppViewBackButtonVisibility) core.HResult!void {
        const _c = self.vtable.put_AppViewBackButtonVisibility(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ISystemNavigationManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c510401-67be-49ae-9509-671c1e54a389";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppViewBackButtonVisibility: *const fn(self: *anyopaque, _r: *AppViewBackButtonVisibility) callconv(.winapi) HRESULT,
        put_AppViewBackButtonVisibility: *const fn(self: *anyopaque, value: AppViewBackButtonVisibility) callconv(.winapi) HRESULT,
    };
};
pub const ISystemNavigationManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*SystemNavigationManager {
        var _r: *SystemNavigationManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ISystemNavigationManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc52b5ce-bee0-4305-8c54-68228ed683b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **SystemNavigationManager) callconv(.winapi) HRESULT,
    };
};
pub const ITouchHitTestingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProximityEvaluation(self: *@This()) core.HResult!CoreProximityEvaluation {
        var _r: CoreProximityEvaluation = undefined;
        const _c = self.vtable.get_ProximityEvaluation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProximityEvaluation(self: *@This(), value: CoreProximityEvaluation) core.HResult!void {
        const _c = self.vtable.put_ProximityEvaluation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EvaluateProximity(self: *@This(), controlBoundingBox: Rect) core.HResult!CoreProximityEvaluation {
        var _r: CoreProximityEvaluation = undefined;
        const _c = self.vtable.EvaluateProximity(@ptrCast(self), controlBoundingBox, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EvaluateProximityWithControlVertices(self: *@This(), controlVertices: [*]Point) core.HResult!CoreProximityEvaluation {
        var _r: CoreProximityEvaluation = undefined;
        const _c = self.vtable.EvaluateProximityWithControlVertices(@ptrCast(self), controlVertices, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.ITouchHitTestingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22f3b823-0b7c-424e-9df7-33d4f962931b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProximityEvaluation: *const fn(self: *anyopaque, _r: *CoreProximityEvaluation) callconv(.winapi) HRESULT,
        put_ProximityEvaluation: *const fn(self: *anyopaque, value: CoreProximityEvaluation) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_BoundingBox: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        EvaluateProximity: *const fn(self: *anyopaque, controlBoundingBox: Rect, _r: *CoreProximityEvaluation) callconv(.winapi) HRESULT,
        EvaluateProximityWithControlVertices: *const fn(self: *anyopaque, controlVertices: [*]Point, _r: *CoreProximityEvaluation) callconv(.winapi) HRESULT,
    };
};
pub const IVisibilityChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IVisibilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf9918ea-d801-4564-a495-b1e84f8ad085";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IWindowActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWindowActivationState(self: *@This()) core.HResult!CoreWindowActivationState {
        var _r: CoreWindowActivationState = undefined;
        const _c = self.vtable.get_WindowActivationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IWindowActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "179d65e7-4658-4cb6-aa13-41d094ea255e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WindowActivationState: *const fn(self: *anyopaque, _r: *CoreWindowActivationState) callconv(.winapi) HRESULT,
    };
};
pub const IWindowSizeChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IWindowSizeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a200ec7-0426-47dc-b86c-6f475915e451";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
    };
};
pub const IdleDispatchedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, e: *IdleDispatchedHandlerArgs) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, e: *IdleDispatchedHandlerArgs) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, e: *IdleDispatchedHandlerArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IdleDispatchedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a42b0c24-7f21-4abc-99c1-8f01007f0880";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, e: *IdleDispatchedHandlerArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IdleDispatchedHandlerArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsDispatcherIdle(self: *@This()) core.HResult!bool {
        const this: *IIdleDispatchedHandlerArgs = @ptrCast(self);
        return try this.getIsDispatcherIdle();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.IdleDispatchedHandlerArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIdleDispatchedHandlerArgs.GUID;
    pub const IID: Guid = IIdleDispatchedHandlerArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIdleDispatchedHandlerArgs.SIGNATURE);
};
pub const InputEnabledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputEnabled(self: *@This()) core.HResult!bool {
        const this: *IInputEnabledEventArgs = @ptrCast(self);
        return try this.getInputEnabled();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.InputEnabledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputEnabledEventArgs.GUID;
    pub const IID: Guid = IInputEnabledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputEnabledEventArgs.SIGNATURE);
};
pub const KeyEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IKeyEventArgs = @ptrCast(self);
        return try this.getVirtualKey();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *IKeyEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IKeyEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.KeyEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyEventArgs.GUID;
    pub const IID: Guid = IKeyEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyEventArgs.SIGNATURE);
};
pub const PointerEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentPoint(self: *@This()) core.HResult!*PointerPoint {
        const this: *IPointerEventArgs = @ptrCast(self);
        return try this.getCurrentPoint();
    }
    pub fn getKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IPointerEventArgs = @ptrCast(self);
        return try this.getKeyModifiers();
    }
    pub fn GetIntermediatePoints(self: *@This()) core.HResult!*IVector(PointerPoint) {
        const this: *IPointerEventArgs = @ptrCast(self);
        return try this.GetIntermediatePoints();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.PointerEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerEventArgs.GUID;
    pub const IID: Guid = IPointerEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerEventArgs.SIGNATURE);
};
pub const SystemNavigationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addBackRequested(self: *@This(), handler: *EventHandler(BackRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemNavigationManager = @ptrCast(self);
        return try this.addBackRequested(handler);
    }
    pub fn removeBackRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemNavigationManager = @ptrCast(self);
        return try this.removeBackRequested(token);
    }
    pub fn getAppViewBackButtonVisibility(self: *@This()) core.HResult!AppViewBackButtonVisibility {
        var this: ?*ISystemNavigationManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemNavigationManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppViewBackButtonVisibility();
    }
    pub fn putAppViewBackButtonVisibility(self: *@This(), value: AppViewBackButtonVisibility) core.HResult!void {
        var this: ?*ISystemNavigationManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemNavigationManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAppViewBackButtonVisibility(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*SystemNavigationManager {
        const factory = @This().ISystemNavigationManagerStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.SystemNavigationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemNavigationManager.GUID;
    pub const IID: Guid = ISystemNavigationManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemNavigationManager.SIGNATURE);
    var _ISystemNavigationManagerStaticsCache: FactoryCache(ISystemNavigationManagerStatics, RUNTIME_NAME) = .{};
};
pub const TouchHitTestingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProximityEvaluation(self: *@This()) core.HResult!CoreProximityEvaluation {
        const this: *ITouchHitTestingEventArgs = @ptrCast(self);
        return try this.getProximityEvaluation();
    }
    pub fn putProximityEvaluation(self: *@This(), value: CoreProximityEvaluation) core.HResult!void {
        const this: *ITouchHitTestingEventArgs = @ptrCast(self);
        return try this.putProximityEvaluation(value);
    }
    pub fn getPoint(self: *@This()) core.HResult!Point {
        const this: *ITouchHitTestingEventArgs = @ptrCast(self);
        return try this.getPoint();
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!Rect {
        const this: *ITouchHitTestingEventArgs = @ptrCast(self);
        return try this.getBoundingBox();
    }
    pub fn EvaluateProximity(self: *@This(), controlBoundingBox: Rect) core.HResult!CoreProximityEvaluation {
        const this: *ITouchHitTestingEventArgs = @ptrCast(self);
        return try this.EvaluateProximity(controlBoundingBox);
    }
    pub fn EvaluateProximityWithControlVertices(self: *@This(), controlVertices: [*]Point) core.HResult!CoreProximityEvaluation {
        const this: *ITouchHitTestingEventArgs = @ptrCast(self);
        return try this.EvaluateProximityWithControlVertices(controlVertices);
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.TouchHitTestingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITouchHitTestingEventArgs.GUID;
    pub const IID: Guid = ITouchHitTestingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITouchHitTestingEventArgs.SIGNATURE);
};
pub const VisibilityChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *IVisibilityChangedEventArgs = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.VisibilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisibilityChangedEventArgs.GUID;
    pub const IID: Guid = IVisibilityChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisibilityChangedEventArgs.SIGNATURE);
};
pub const WindowActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWindowActivationState(self: *@This()) core.HResult!CoreWindowActivationState {
        const this: *IWindowActivatedEventArgs = @ptrCast(self);
        return try this.getWindowActivationState();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.WindowActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowActivatedEventArgs.GUID;
    pub const IID: Guid = IWindowActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowActivatedEventArgs.SIGNATURE);
};
pub const WindowSizeChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IWindowSizeChangedEventArgs = @ptrCast(self);
        return try this.getSize();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICoreWindowEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreWindowEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.WindowSizeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowSizeChangedEventArgs.GUID;
    pub const IID: Guid = IWindowSizeChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowSizeChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Size = @import("../Foundation.zig").Size;
const DispatcherQueue = @import("../System.zig").DispatcherQueue;
const Visual = @import("./Composition.zig").Visual;
const IClosable = @import("../Foundation.zig").IClosable;
const UICommandInvokedHandler = @import("./Popups.zig").UICommandInvokedHandler;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVisualElement = @import("./Composition.zig").IVisualElement;
const Point = @import("../Foundation.zig").Point;
const IUICommand = @import("./Popups.zig").IUICommand;
const FactoryCache = @import("../core.zig").FactoryCache;
const PointerPoint = @import("./Input.zig").PointerPoint;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const UIContext = @import("../UI.zig").UIContext;
const IAgileObject = @import("../root.zig").IAgileObject;
const VirtualKey = @import("../System.zig").VirtualKey;
const VirtualKeyModifiers = @import("../System.zig").VirtualKeyModifiers;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
pub const AnimationMetrics = @import("./Core/AnimationMetrics.zig");
pub const Preview = @import("./Core/Preview.zig");
