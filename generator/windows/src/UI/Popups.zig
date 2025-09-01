pub const IMessageDialog = extern struct {
    vtable: *const VTable,
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
    pub fn getContent(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncOperation(IUICommand) {
        var _r: *IAsyncOperation(IUICommand) = undefined;
        const _c = self.vtable.ShowAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!MessageDialogOptions {
        var _r: MessageDialogOptions = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOptions(self: *@This(), value: MessageDialogOptions) core.HResult!void {
        const _c = self.vtable.put_Options(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.IMessageDialog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33f59b01-5325-43ab-9ab3-bdae440e4121";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Commands: *const fn(self: *anyopaque, _r: **IVector(IUICommand)) callconv(.winapi) HRESULT,
        get_DefaultCommandIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DefaultCommandIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CancelCommandIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CancelCommandIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        ShowAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IUICommand)) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: *MessageDialogOptions) callconv(.winapi) HRESULT,
        put_Options: *const fn(self: *anyopaque, value: MessageDialogOptions) callconv(.winapi) HRESULT,
    };
};
pub const IMessageDialogFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), content: HSTRING) core.HResult!*MessageDialog {
        var _r: *MessageDialog = undefined;
        const _c = self.vtable.Create(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTitle(self: *@This(), content: HSTRING, title: HSTRING) core.HResult!*MessageDialog {
        var _r: *MessageDialog = undefined;
        const _c = self.vtable.CreateWithTitle(@ptrCast(self), content, title, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.IMessageDialogFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d161777-a66f-4ea5-bb87-793ffa4941f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, content: HSTRING, _r: **MessageDialog) callconv(.winapi) HRESULT,
        CreateWithTitle: *const fn(self: *anyopaque, content: HSTRING, title: HSTRING, _r: **MessageDialog) callconv(.winapi) HRESULT,
    };
};
pub const IPopupMenu = extern struct {
    vtable: *const VTable,
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        var _r: *IVector(IUICommand) = undefined;
        const _c = self.vtable.get_Commands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAsync(self: *@This(), invocationPoint: Point) core.HResult!*IAsyncOperation(IUICommand) {
        var _r: *IAsyncOperation(IUICommand) = undefined;
        const _c = self.vtable.ShowAsync(@ptrCast(self), invocationPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowForSelectionAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(IUICommand) {
        var _r: *IAsyncOperation(IUICommand) = undefined;
        const _c = self.vtable.ShowForSelectionAsync(@ptrCast(self), selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowForSelectionAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(IUICommand) {
        var _r: *IAsyncOperation(IUICommand) = undefined;
        const _c = self.vtable.ShowForSelectionAsyncWithPreferredPlacement(@ptrCast(self), selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.IPopupMenu";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e9bc6dc-880d-47fc-a0a1-72b639e62559";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Commands: *const fn(self: *anyopaque, _r: **IVector(IUICommand)) callconv(.winapi) HRESULT,
        ShowAsync: *const fn(self: *anyopaque, invocationPoint: Point, _r: **IAsyncOperation(IUICommand)) callconv(.winapi) HRESULT,
        ShowForSelectionAsync: *const fn(self: *anyopaque, selection: Rect, _r: **IAsyncOperation(IUICommand)) callconv(.winapi) HRESULT,
        ShowForSelectionAsyncWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(IUICommand)) callconv(.winapi) HRESULT,
    };
};
pub const IUICommand = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInvoked(self: *@This()) core.HResult!*UICommandInvokedHandler {
        var _r: *UICommandInvokedHandler = undefined;
        const _c = self.vtable.get_Invoked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInvoked(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const _c = self.vtable.put_Invoked(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.IUICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Invoked: *const fn(self: *anyopaque, _r: **UICommandInvokedHandler) callconv(.winapi) HRESULT,
        put_Invoked: *const fn(self: *anyopaque, value: *UICommandInvokedHandler) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IUICommandFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), label: HSTRING) core.HResult!*UICommand {
        var _r: *UICommand = undefined;
        const _c = self.vtable.Create(@ptrCast(self), label, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithHandler(self: *@This(), label: HSTRING, action: *UICommandInvokedHandler) core.HResult!*UICommand {
        var _r: *UICommand = undefined;
        const _c = self.vtable.CreateWithHandler(@ptrCast(self), label, action, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithHandlerAndId(self: *@This(), label: HSTRING, action: *UICommandInvokedHandler, commandId: *IInspectable) core.HResult!*UICommand {
        var _r: *UICommand = undefined;
        const _c = self.vtable.CreateWithHandlerAndId(@ptrCast(self), label, action, commandId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.IUICommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a21a8189-26b0-4676-ae94-54041bc125e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, label: HSTRING, _r: **UICommand) callconv(.winapi) HRESULT,
        CreateWithHandler: *const fn(self: *anyopaque, label: HSTRING, action: *UICommandInvokedHandler, _r: **UICommand) callconv(.winapi) HRESULT,
        CreateWithHandlerAndId: *const fn(self: *anyopaque, label: HSTRING, action: *UICommandInvokedHandler, commandId: *IInspectable, _r: **UICommand) callconv(.winapi) HRESULT,
    };
};
pub const MessageDialog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.getCommands();
    }
    pub fn getDefaultCommandIndex(self: *@This()) core.HResult!u32 {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.getDefaultCommandIndex();
    }
    pub fn putDefaultCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.putDefaultCommandIndex(value);
    }
    pub fn getCancelCommandIndex(self: *@This()) core.HResult!u32 {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.getCancelCommandIndex();
    }
    pub fn putCancelCommandIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.putCancelCommandIndex(value);
    }
    pub fn getContent(self: *@This()) core.HResult!HSTRING {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncOperation(IUICommand) {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.ShowAsync();
    }
    pub fn getOptions(self: *@This()) core.HResult!MessageDialogOptions {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn putOptions(self: *@This(), value: MessageDialogOptions) core.HResult!void {
        const this: *IMessageDialog = @ptrCast(self);
        return try this.putOptions(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(content: HSTRING) core.HResult!*MessageDialog {
        const _f = @This().IMessageDialogFactoryCache.get();
        return try _f.Create(content);
    }
    pub fn CreateWithTitle(content: HSTRING, title: HSTRING) core.HResult!*MessageDialog {
        const _f = @This().IMessageDialogFactoryCache.get();
        return try _f.CreateWithTitle(content, title);
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.MessageDialog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMessageDialog.GUID;
    pub const IID: Guid = IMessageDialog.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMessageDialog.SIGNATURE);
    var _IMessageDialogFactoryCache: FactoryCache(IMessageDialogFactory, RUNTIME_NAME) = .{};
};
pub const MessageDialogOptions = enum(i32) {
    None = 0,
    AcceptUserInputAfterDelay = 1,
};
pub const Placement = enum(i32) {
    Default = 0,
    Above = 1,
    Below = 2,
    Left = 3,
    Right = 4,
};
pub const PopupMenu = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommands(self: *@This()) core.HResult!*IVector(IUICommand) {
        const this: *IPopupMenu = @ptrCast(self);
        return try this.getCommands();
    }
    pub fn ShowAsync(self: *@This(), invocationPoint: Point) core.HResult!*IAsyncOperation(IUICommand) {
        const this: *IPopupMenu = @ptrCast(self);
        return try this.ShowAsync(invocationPoint);
    }
    pub fn ShowForSelectionAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(IUICommand) {
        const this: *IPopupMenu = @ptrCast(self);
        return try this.ShowForSelectionAsync(selection);
    }
    pub fn ShowForSelectionAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(IUICommand) {
        const this: *IPopupMenu = @ptrCast(self);
        return try this.ShowForSelectionAsyncWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPopupMenu.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.PopupMenu";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPopupMenu.GUID;
    pub const IID: Guid = IPopupMenu.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPopupMenu.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UICommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IUICommand = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getInvoked(self: *@This()) core.HResult!*UICommandInvokedHandler {
        const this: *IUICommand = @ptrCast(self);
        return try this.getInvoked();
    }
    pub fn putInvoked(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putInvoked(value);
    }
    pub fn getId(self: *@This()) core.HResult!*IInspectable {
        const this: *IUICommand = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUICommand.IID)));
    }
    pub fn Create(label: HSTRING) core.HResult!*UICommand {
        const _f = @This().IUICommandFactoryCache.get();
        return try _f.Create(label);
    }
    pub fn CreateWithHandler(label: HSTRING, action: *UICommandInvokedHandler) core.HResult!*UICommand {
        const _f = @This().IUICommandFactoryCache.get();
        return try _f.CreateWithHandler(label, action);
    }
    pub fn CreateWithHandlerAndId(label: HSTRING, action: *UICommandInvokedHandler, commandId: *IInspectable) core.HResult!*UICommand {
        const _f = @This().IUICommandFactoryCache.get();
        return try _f.CreateWithHandlerAndId(label, action, commandId);
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.UICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUICommand.GUID;
    pub const IID: Guid = IUICommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUICommand.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IUICommandFactoryCache: FactoryCache(IUICommandFactory, RUNTIME_NAME) = .{};
};
pub const UICommandInvokedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, command: *IUICommand) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, command: *IUICommand) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, command: *IUICommand) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, command);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.UICommandInvokedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "daf77a4f-c27a-4298-9ac6-2922c45e7da6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, command: *IUICommand) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const UICommandSeparator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IUICommand = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getInvoked(self: *@This()) core.HResult!*UICommandInvokedHandler {
        const this: *IUICommand = @ptrCast(self);
        return try this.getInvoked();
    }
    pub fn putInvoked(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putInvoked(value);
    }
    pub fn getId(self: *@This()) core.HResult!*IInspectable {
        const this: *IUICommand = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUICommand.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Popups.UICommandSeparator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUICommand.GUID;
    pub const IID: Guid = IUICommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUICommand.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Rect = @import("../Foundation.zig").Rect;
const IAgileObject = @import("../root.zig").IAgileObject;
const Point = @import("../Foundation.zig").Point;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
