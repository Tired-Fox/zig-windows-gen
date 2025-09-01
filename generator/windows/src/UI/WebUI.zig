pub const SuspendingOperation = @import("../ApplicationModel.zig").SuspendingOperation;
pub const SuspendingDeferral = @import("../ApplicationModel.zig").SuspendingDeferral;
pub const WebUILockScreenCallActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCallUI(self: *@This()) core.HResult!*LockScreenCallUI {
        const this: *ILockScreenCallActivatedEventArgs = @ptrCast(self);
        return try this.getCallUI();
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILaunchActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILaunchActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getArguments();
    }
    pub fn getTileId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILaunchActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILaunchActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTileId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUILockScreenCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenCallActivatedEventArgs.GUID;
    pub const IID: Guid = ILockScreenCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenCallActivatedEventArgs.SIGNATURE);
};
pub const WebUIPrint3DWorkflowActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWorkflow(self: *@This()) core.HResult!*Print3DWorkflow {
        const this: *IPrint3DWorkflowActivatedEventArgs = @ptrCast(self);
        return try this.getWorkflow();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIPrint3DWorkflowActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DWorkflowActivatedEventArgs.GUID;
    pub const IID: Guid = IPrint3DWorkflowActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DWorkflowActivatedEventArgs.SIGNATURE);
};
pub const WebUIPrintTaskSettingsActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintTaskConfiguration {
        const this: *IPrintTaskSettingsActivatedEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIPrintTaskSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskSettingsActivatedEventArgs.GUID;
    pub const IID: Guid = IPrintTaskSettingsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskSettingsActivatedEventArgs.SIGNATURE);
};
pub const WebUISearchActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchActivatedEventArgs = @ptrCast(self);
        return try this.getQueryText();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchActivatedEventArgs = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var this: ?*ISearchActivatedEventArgsWithLinguisticDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISearchActivatedEventArgsWithLinguisticDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLinguisticDetails();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUISearchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchActivatedEventArgs.GUID;
    pub const IID: Guid = ISearchActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchActivatedEventArgs.SIGNATURE);
};
pub const WebUICameraSettingsActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoDeviceController(self: *@This()) core.HResult!*IInspectable {
        const this: *ICameraSettingsActivatedEventArgs = @ptrCast(self);
        return try this.getVideoDeviceController();
    }
    pub fn getVideoDeviceExtension(self: *@This()) core.HResult!*IInspectable {
        const this: *ICameraSettingsActivatedEventArgs = @ptrCast(self);
        return try this.getVideoDeviceExtension();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUICameraSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraSettingsActivatedEventArgs.GUID;
    pub const IID: Guid = ICameraSettingsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraSettingsActivatedEventArgs.SIGNATURE);
};
pub const WebUIWalletActionActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItemId(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletActionActivatedEventArgs = @ptrCast(self);
        return try this.getItemId();
    }
    pub fn getActionKind(self: *@This()) core.HResult!WalletActionKind {
        const this: *IWalletActionActivatedEventArgs = @ptrCast(self);
        return try this.getActionKind();
    }
    pub fn getActionId(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletActionActivatedEventArgs = @ptrCast(self);
        return try this.getActionId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIWalletActionActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletActionActivatedEventArgs.GUID;
    pub const IID: Guid = IWalletActionActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletActionActivatedEventArgs.SIGNATURE);
};
pub const ActivatedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IActivatedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.ActivatedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivatedDeferral.GUID;
    pub const IID: Guid = IActivatedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivatedDeferral.SIGNATURE);
};
pub const ActivatedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, eventArgs: *IActivatedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, eventArgs: *IActivatedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, eventArgs: *IActivatedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, eventArgs);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.ActivatedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50f1e730-c5d1-4b6b-9adb-8a11756be29c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, eventArgs: *IActivatedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ActivatedOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*ActivatedDeferral {
        const this: *IActivatedOperation = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.ActivatedOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivatedOperation.GUID;
    pub const IID: Guid = IActivatedOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivatedOperation.SIGNATURE);
};
pub const BackgroundActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskInstance(self: *@This()) core.HResult!*IBackgroundTaskInstance {
        const this: *IBackgroundActivatedEventArgs = @ptrCast(self);
        return try this.getTaskInstance();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.BackgroundActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundActivatedEventArgs.GUID;
    pub const IID: Guid = IBackgroundActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundActivatedEventArgs.SIGNATURE);
};
pub const BackgroundActivatedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, eventArgs: *IBackgroundActivatedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, eventArgs: *IBackgroundActivatedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, eventArgs: *IBackgroundActivatedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, eventArgs);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.BackgroundActivatedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "edb19fbb-0761-47cc-9a77-24d7072965ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, eventArgs: *IBackgroundActivatedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const EnteredBackgroundEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEnteredBackgroundEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.EnteredBackgroundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEnteredBackgroundEventArgs.GUID;
    pub const IID: Guid = IEnteredBackgroundEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEnteredBackgroundEventArgs.SIGNATURE);
};
pub const EnteredBackgroundEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *IEnteredBackgroundEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *IEnteredBackgroundEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *IEnteredBackgroundEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.EnteredBackgroundEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b09a173-b68e-4def-88c1-8de84e5aab2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *IEnteredBackgroundEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const HtmlPrintDocumentSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!PrintContent {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: PrintContent) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getLeftMargin(self: *@This()) core.HResult!f32 {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getLeftMargin();
    }
    pub fn putLeftMargin(self: *@This(), value: f32) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putLeftMargin(value);
    }
    pub fn getTopMargin(self: *@This()) core.HResult!f32 {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getTopMargin();
    }
    pub fn putTopMargin(self: *@This(), value: f32) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putTopMargin(value);
    }
    pub fn getRightMargin(self: *@This()) core.HResult!f32 {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getRightMargin();
    }
    pub fn putRightMargin(self: *@This(), value: f32) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putRightMargin(value);
    }
    pub fn getBottomMargin(self: *@This()) core.HResult!f32 {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getBottomMargin();
    }
    pub fn putBottomMargin(self: *@This(), value: f32) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putBottomMargin(value);
    }
    pub fn getEnableHeaderFooter(self: *@This()) core.HResult!bool {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getEnableHeaderFooter();
    }
    pub fn putEnableHeaderFooter(self: *@This(), value: bool) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putEnableHeaderFooter(value);
    }
    pub fn getShrinkToFit(self: *@This()) core.HResult!bool {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getShrinkToFit();
    }
    pub fn putShrinkToFit(self: *@This(), value: bool) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putShrinkToFit(value);
    }
    pub fn getPercentScale(self: *@This()) core.HResult!f32 {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getPercentScale();
    }
    pub fn putPercentScale(self: *@This(), scalePercent: f32) core.HResult!void {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.putPercentScale(scalePercent);
    }
    pub fn getPageRange(self: *@This()) core.HResult!HSTRING {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.getPageRange();
    }
    pub fn TrySetPageRange(self: *@This(), strPageRange: HSTRING) core.HResult!bool {
        const this: *IHtmlPrintDocumentSource = @ptrCast(self);
        return try this.TrySetPageRange(strPageRange);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.HtmlPrintDocumentSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHtmlPrintDocumentSource.GUID;
    pub const IID: Guid = IHtmlPrintDocumentSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHtmlPrintDocumentSource.SIGNATURE);
};
pub const IActivatedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IActivatedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3bd1978-a431-49d8-a76a-395a4e03dcf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IActivatedEventArgsDeferral = extern struct {
    vtable: *const VTable,
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var _r: *ActivatedOperation = undefined;
        const _c = self.vtable.get_ActivatedOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IActivatedEventArgsDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivatedOperation: *const fn(self: *anyopaque, _r: **ActivatedOperation) callconv(.winapi) HRESULT,
    };
};
pub const IActivatedOperation = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*ActivatedDeferral {
        var _r: *ActivatedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IActivatedOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6a0b4bc-c6ca-42fd-9818-71904e45fed7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **ActivatedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IHtmlPrintDocumentSource = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!PrintContent {
        var _r: PrintContent = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: PrintContent) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftMargin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LeftMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftMargin(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LeftMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTopMargin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TopMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTopMargin(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TopMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightMargin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RightMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightMargin(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RightMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBottomMargin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BottomMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottomMargin(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BottomMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnableHeaderFooter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableHeaderFooter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableHeaderFooter(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableHeaderFooter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShrinkToFit(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShrinkToFit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShrinkToFit(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShrinkToFit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPercentScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PercentScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPercentScale(self: *@This(), scalePercent: f32) core.HResult!void {
        const _c = self.vtable.put_PercentScale(@ptrCast(self), scalePercent);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageRange(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PageRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetPageRange(self: *@This(), strPageRange: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetPageRange(@ptrCast(self), strPageRange, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IHtmlPrintDocumentSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cea6469a-0e05-467a-abc9-36ec1d4cdcb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: *PrintContent) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: PrintContent) callconv(.winapi) HRESULT,
        get_LeftMargin: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LeftMargin: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_TopMargin: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TopMargin: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RightMargin: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RightMargin: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_BottomMargin: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BottomMargin: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_EnableHeaderFooter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableHeaderFooter: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShrinkToFit: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShrinkToFit: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PercentScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PercentScale: *const fn(self: *anyopaque, scalePercent: f32) callconv(.winapi) HRESULT,
        get_PageRange: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TrySetPageRange: *const fn(self: *anyopaque, strPageRange: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const INewWebUIViewCreatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWebUIView(self: *@This()) core.HResult!*WebUIView {
        var _r: *WebUIView = undefined;
        const _c = self.vtable.get_WebUIView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivatedEventArgs(self: *@This()) core.HResult!*IActivatedEventArgs {
        var _r: *IActivatedEventArgs = undefined;
        const _c = self.vtable.get_ActivatedEventArgs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasPendingNavigate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasPendingNavigate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.INewWebUIViewCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8e1b216-be2b-4c9e-85e7-083143ec4be7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebUIView: *const fn(self: *anyopaque, _r: **WebUIView) callconv(.winapi) HRESULT,
        get_ActivatedEventArgs: *const fn(self: *anyopaque, _r: **IActivatedEventArgs) callconv(.winapi) HRESULT,
        get_HasPendingNavigate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIActivationStatics = extern struct {
    vtable: *const VTable,
    pub fn addActivated(self: *@This(), handler: *ActivatedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSuspending(self: *@This(), handler: *SuspendingEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Suspending(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSuspending(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Suspending(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResuming(self: *@This(), handler: *ResumingEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Resuming(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResuming(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Resuming(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigated(self: *@This(), handler: *NavigatedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Navigated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Navigated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIActivationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "351b86bd-43b3-482b-85db-35d87b517ad9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *ActivatedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Suspending: *const fn(self: *anyopaque, handler: *SuspendingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Suspending: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Resuming: *const fn(self: *anyopaque, handler: *ResumingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Resuming: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Navigated: *const fn(self: *anyopaque, handler: *NavigatedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Navigated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIActivationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn addLeavingBackground(self: *@This(), handler: *LeavingBackgroundEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LeavingBackground(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLeavingBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LeavingBackground(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnteredBackground(self: *@This(), handler: *EnteredBackgroundEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnteredBackground(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnteredBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnteredBackground(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnablePrelaunch(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.EnablePrelaunch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIActivationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8e88696-4d78-4aa4-8f06-2a9eadc6c40a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_LeavingBackground: *const fn(self: *anyopaque, handler: *LeavingBackgroundEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LeavingBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnteredBackground: *const fn(self: *anyopaque, handler: *EnteredBackgroundEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnteredBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        EnablePrelaunch: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIActivationStatics3 = extern struct {
    vtable: *const VTable,
    pub fn RequestRestartAsync(self: *@This(), launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        var _r: *IAsyncOperation(AppRestartFailureReason) = undefined;
        const _c = self.vtable.RequestRestartAsync(@ptrCast(self), launchArguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestRestartForUserAsync(self: *@This(), user: *User, launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        var _r: *IAsyncOperation(AppRestartFailureReason) = undefined;
        const _c = self.vtable.RequestRestartForUserAsync(@ptrCast(self), user, launchArguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIActivationStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91abb686-1af5-4445-b49f-9459f40fc8de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestRestartAsync: *const fn(self: *anyopaque, launchArguments: HSTRING, _r: **IAsyncOperation(AppRestartFailureReason)) callconv(.winapi) HRESULT,
        RequestRestartForUserAsync: *const fn(self: *anyopaque, user: *User, launchArguments: HSTRING, _r: **IAsyncOperation(AppRestartFailureReason)) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIActivationStatics4 = extern struct {
    vtable: *const VTable,
    pub fn addNewWebUIViewCreated(self: *@This(), handler: *EventHandler(NewWebUIViewCreatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NewWebUIViewCreated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNewWebUIViewCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NewWebUIViewCreated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBackgroundActivated(self: *@This(), handler: *BackgroundActivatedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BackgroundActivated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBackgroundActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BackgroundActivated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIActivationStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e391429-183f-478d-8a25-67f80d03935b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_NewWebUIViewCreated: *const fn(self: *anyopaque, handler: *EventHandler(NewWebUIViewCreatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NewWebUIViewCreated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BackgroundActivated: *const fn(self: *anyopaque, handler: *BackgroundActivatedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BackgroundActivated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIBackgroundTaskInstance = extern struct {
    vtable: *const VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSucceeded(self: *@This(), succeeded: bool) core.HResult!void {
        const _c = self.vtable.put_Succeeded(@ptrCast(self), succeeded);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIBackgroundTaskInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23f12c25-e2f7-4741-bc9c-394595de24dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Succeeded: *const fn(self: *anyopaque, succeeded: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIBackgroundTaskInstanceStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IWebUIBackgroundTaskInstance {
        var _r: *IWebUIBackgroundTaskInstance = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIBackgroundTaskInstanceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c7a5291-19ae-4ca3-b94b-fe4ec744a740";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **IWebUIBackgroundTaskInstance) callconv(.winapi) HRESULT,
    };
};
pub const IWebUINavigatedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUINavigatedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d804204d-831f-46e2-b432-3afce211f962";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWebUINavigatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNavigatedOperation(self: *@This()) core.HResult!*WebUINavigatedOperation {
        var _r: *WebUINavigatedOperation = undefined;
        const _c = self.vtable.get_NavigatedOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUINavigatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a75841b8-2499-4030-a69d-15d2d9cfe524";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NavigatedOperation: *const fn(self: *anyopaque, _r: **WebUINavigatedOperation) callconv(.winapi) HRESULT,
    };
};
pub const IWebUINavigatedOperation = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*WebUINavigatedDeferral {
        var _r: *WebUINavigatedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUINavigatedOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a965f08-8182-4a89-ab67-8492e8750d4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **WebUINavigatedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIView = extern struct {
    vtable: *const VTable,
    pub fn getApplicationViewId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ApplicationViewId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(WebUIView,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(WebUIView,IActivatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIgnoreApplicationContentUriRulesNavigationRestrictions(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IgnoreApplicationContentUriRulesNavigationRestrictions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIgnoreApplicationContentUriRulesNavigationRestrictions(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IgnoreApplicationContentUriRulesNavigationRestrictions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6783f64f-52da-4fd7-be69-8ef6284b423c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ApplicationViewId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebUIView,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebUIView,IActivatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IgnoreApplicationContentUriRulesNavigationRestrictions: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IgnoreApplicationContentUriRulesNavigationRestrictions: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebUIViewStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This()) core.HResult!*IAsyncOperation(WebUIView) {
        var _r: *IAsyncOperation(WebUIView) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsyncWithUri(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(WebUIView) {
        var _r: *IAsyncOperation(WebUIView) = undefined;
        const _c = self.vtable.CreateAsyncWithUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.IWebUIViewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b591e668-8e59-44f9-8803-1b24c9149d30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WebUIView)) callconv(.winapi) HRESULT,
        CreateAsyncWithUri: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(WebUIView)) callconv(.winapi) HRESULT,
    };
};
pub const LeavingBackgroundEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ILeavingBackgroundEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.LeavingBackgroundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILeavingBackgroundEventArgs.GUID;
    pub const IID: Guid = ILeavingBackgroundEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILeavingBackgroundEventArgs.SIGNATURE);
};
pub const LeavingBackgroundEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ILeavingBackgroundEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ILeavingBackgroundEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ILeavingBackgroundEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.LeavingBackgroundEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00b4ccd9-7a9c-4b6b-9ac4-13474f268bc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ILeavingBackgroundEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const NavigatedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *IWebUINavigatedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *IWebUINavigatedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *IWebUINavigatedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.NavigatedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7af46fe6-40ca-4e49-a7d6-dbdb330cd1a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *IWebUINavigatedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const NewWebUIViewCreatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebUIView(self: *@This()) core.HResult!*WebUIView {
        const this: *INewWebUIViewCreatedEventArgs = @ptrCast(self);
        return try this.getWebUIView();
    }
    pub fn getActivatedEventArgs(self: *@This()) core.HResult!*IActivatedEventArgs {
        const this: *INewWebUIViewCreatedEventArgs = @ptrCast(self);
        return try this.getActivatedEventArgs();
    }
    pub fn getHasPendingNavigate(self: *@This()) core.HResult!bool {
        const this: *INewWebUIViewCreatedEventArgs = @ptrCast(self);
        return try this.getHasPendingNavigate();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *INewWebUIViewCreatedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.NewWebUIViewCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INewWebUIViewCreatedEventArgs.GUID;
    pub const IID: Guid = INewWebUIViewCreatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INewWebUIViewCreatedEventArgs.SIGNATURE);
};
pub const PrintContent = enum(i32) {
    AllPages = 0,
    CurrentPage = 1,
    CustomPageRange = 2,
    CurrentSelection = 3,
};
pub const ResumingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.ResumingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26599ba9-a22d-4806-a728-acadc1d075fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SuspendingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSuspendingOperation(self: *@This()) core.HResult!*SuspendingOperation {
        const this: *ISuspendingEventArgs = @ptrCast(self);
        return try this.getSuspendingOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.SuspendingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISuspendingEventArgs.GUID;
    pub const IID: Guid = ISuspendingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISuspendingEventArgs.SIGNATURE);
};
pub const SuspendingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ISuspendingEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ISuspendingEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ISuspendingEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.SuspendingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "509c429c-78e2-4883-abc8-8960dcde1b5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ISuspendingEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WebUIApplication = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addNewWebUIViewCreated(handler: *EventHandler(NewWebUIViewCreatedEventArgs)) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStatics4Cache.get();
        return try _f.addNewWebUIViewCreated(handler);
    }
    pub fn removeNewWebUIViewCreated(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStatics4Cache.get();
        return try _f.removeNewWebUIViewCreated(token);
    }
    pub fn addBackgroundActivated(handler: *BackgroundActivatedEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStatics4Cache.get();
        return try _f.addBackgroundActivated(handler);
    }
    pub fn removeBackgroundActivated(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStatics4Cache.get();
        return try _f.removeBackgroundActivated(token);
    }
    pub fn addLeavingBackground(handler: *LeavingBackgroundEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStatics2Cache.get();
        return try _f.addLeavingBackground(handler);
    }
    pub fn removeLeavingBackground(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStatics2Cache.get();
        return try _f.removeLeavingBackground(token);
    }
    pub fn addEnteredBackground(handler: *EnteredBackgroundEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStatics2Cache.get();
        return try _f.addEnteredBackground(handler);
    }
    pub fn removeEnteredBackground(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStatics2Cache.get();
        return try _f.removeEnteredBackground(token);
    }
    pub fn EnablePrelaunch(value: bool) core.HResult!void {
        const _f = @This().IWebUIActivationStatics2Cache.get();
        return try _f.EnablePrelaunch(value);
    }
    pub fn addActivated(handler: *ActivatedEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.addActivated(handler);
    }
    pub fn removeActivated(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.removeActivated(token);
    }
    pub fn addSuspending(handler: *SuspendingEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.addSuspending(handler);
    }
    pub fn removeSuspending(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.removeSuspending(token);
    }
    pub fn addResuming(handler: *ResumingEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.addResuming(handler);
    }
    pub fn removeResuming(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.removeResuming(token);
    }
    pub fn addNavigated(handler: *NavigatedEventHandler) core.HResult!EventRegistrationToken {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.addNavigated(handler);
    }
    pub fn removeNavigated(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IWebUIActivationStaticsCache.get();
        return try _f.removeNavigated(token);
    }
    pub fn RequestRestartAsync(launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        const _f = @This().IWebUIActivationStatics3Cache.get();
        return try _f.RequestRestartAsync(launchArguments);
    }
    pub fn RequestRestartForUserAsync(user: *User, launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        const _f = @This().IWebUIActivationStatics3Cache.get();
        return try _f.RequestRestartForUserAsync(user, launchArguments);
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIApplication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebUIActivationStatics4Cache: FactoryCache(IWebUIActivationStatics4, RUNTIME_NAME) = .{};
    var _IWebUIActivationStatics2Cache: FactoryCache(IWebUIActivationStatics2, RUNTIME_NAME) = .{};
    var _IWebUIActivationStaticsCache: FactoryCache(IWebUIActivationStatics, RUNTIME_NAME) = .{};
    var _IWebUIActivationStatics3Cache: FactoryCache(IWebUIActivationStatics3, RUNTIME_NAME) = .{};
};
pub const WebUIAppointmentsProviderAddAppointmentActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAddAppointmentOperation(self: *@This()) core.HResult!*AddAppointmentOperation {
        const this: *IAppointmentsProviderAddAppointmentActivatedEventArgs = @ptrCast(self);
        return try this.getAddAppointmentOperation();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentsProviderActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentsProviderActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIAppointmentsProviderAddAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderAddAppointmentActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderAddAppointmentActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderAddAppointmentActivatedEventArgs.SIGNATURE);
};
pub const WebUIAppointmentsProviderRemoveAppointmentActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoveAppointmentOperation(self: *@This()) core.HResult!*RemoveAppointmentOperation {
        const this: *IAppointmentsProviderRemoveAppointmentActivatedEventArgs = @ptrCast(self);
        return try this.getRemoveAppointmentOperation();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentsProviderActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentsProviderActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIAppointmentsProviderRemoveAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderRemoveAppointmentActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderRemoveAppointmentActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderRemoveAppointmentActivatedEventArgs.SIGNATURE);
};
pub const WebUIAppointmentsProviderReplaceAppointmentActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReplaceAppointmentOperation(self: *@This()) core.HResult!*ReplaceAppointmentOperation {
        const this: *IAppointmentsProviderReplaceAppointmentActivatedEventArgs = @ptrCast(self);
        return try this.getReplaceAppointmentOperation();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentsProviderActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentsProviderActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIAppointmentsProviderReplaceAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderReplaceAppointmentActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderReplaceAppointmentActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderReplaceAppointmentActivatedEventArgs.SIGNATURE);
};
pub const WebUIAppointmentsProviderShowAppointmentDetailsActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInstanceStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs = @ptrCast(self);
        return try this.getInstanceStartDate();
    }
    pub fn getLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs = @ptrCast(self);
        return try this.getLocalId();
    }
    pub fn getRoamingId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs = @ptrCast(self);
        return try this.getRoamingId();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentsProviderActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentsProviderActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIAppointmentsProviderShowAppointmentDetailsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs.SIGNATURE);
};
pub const WebUIAppointmentsProviderShowTimeFrameActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimeToShow(self: *@This()) core.HResult!DateTime {
        const this: *IAppointmentsProviderShowTimeFrameActivatedEventArgs = @ptrCast(self);
        return try this.getTimeToShow();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppointmentsProviderShowTimeFrameActivatedEventArgs = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentsProviderActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentsProviderActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIAppointmentsProviderShowTimeFrameActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderShowTimeFrameActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderShowTimeFrameActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderShowTimeFrameActivatedEventArgs.SIGNATURE);
};
pub const WebUIBackgroundTaskInstance = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*IWebUIBackgroundTaskInstance {
        const _f = @This().IWebUIBackgroundTaskInstanceStaticsCache.get();
        return try _f.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIBackgroundTaskInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebUIBackgroundTaskInstanceStaticsCache: FactoryCache(IWebUIBackgroundTaskInstanceStatics, RUNTIME_NAME) = .{};
};
pub const WebUIBackgroundTaskInstanceRuntimeClass = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IWebUIBackgroundTaskInstance = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn putSucceeded(self: *@This(), succeeded: bool) core.HResult!void {
        const this: *IWebUIBackgroundTaskInstance = @ptrCast(self);
        return try this.putSucceeded(succeeded);
    }
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstanceId();
    }
    pub fn getTask(self: *@This()) core.HResult!*BackgroundTaskRegistration {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTask();
    }
    pub fn getProgress(self: *@This()) core.HResult!u32 {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProgress();
    }
    pub fn putProgress(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProgress(value);
    }
    pub fn getTriggerDetails(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTriggerDetails();
    }
    pub fn addCanceled(self: *@This(), cancelHandler: *BackgroundTaskCanceledEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCanceled(cancelHandler);
    }
    pub fn removeCanceled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCanceled(cookie);
    }
    pub fn getSuspendedCount(self: *@This()) core.HResult!u32 {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuspendedCount();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*BackgroundTaskDeferral {
        var this: ?*IBackgroundTaskInstance = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskInstance.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIBackgroundTaskInstanceRuntimeClass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebUIBackgroundTaskInstance.GUID;
    pub const IID: Guid = IWebUIBackgroundTaskInstance.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebUIBackgroundTaskInstance.SIGNATURE);
};
pub const WebUIBarcodeScannerPreviewActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionId(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScannerPreviewActivatedEventArgs = @ptrCast(self);
        return try this.getConnectionId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIBarcodeScannerPreviewActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerPreviewActivatedEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerPreviewActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerPreviewActivatedEventArgs.SIGNATURE);
};
pub const WebUICachedFileUpdaterActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCachedFileUpdaterUI(self: *@This()) core.HResult!*CachedFileUpdaterUI {
        const this: *ICachedFileUpdaterActivatedEventArgs = @ptrCast(self);
        return try this.getCachedFileUpdaterUI();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUICachedFileUpdaterActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICachedFileUpdaterActivatedEventArgs.GUID;
    pub const IID: Guid = ICachedFileUpdaterActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICachedFileUpdaterActivatedEventArgs.SIGNATURE);
};
pub const WebUICommandLineActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!*CommandLineActivationOperation {
        const this: *ICommandLineActivatedEventArgs = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUICommandLineActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommandLineActivatedEventArgs.GUID;
    pub const IID: Guid = ICommandLineActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommandLineActivatedEventArgs.SIGNATURE);
};
pub const WebUIContactPanelActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactPanel(self: *@This()) core.HResult!*ContactPanel {
        const this: *IContactPanelActivatedEventArgs = @ptrCast(self);
        return try this.getContactPanel();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactPanelActivatedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactPanelActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPanelActivatedEventArgs.GUID;
    pub const IID: Guid = IContactPanelActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPanelActivatedEventArgs.SIGNATURE);
};
pub const WebUIDeviceActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceInformationId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceActivatedEventArgs = @ptrCast(self);
        return try this.getDeviceInformationId();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceActivatedEventArgs = @ptrCast(self);
        return try this.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIDeviceActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceActivatedEventArgs.GUID;
    pub const IID: Guid = IDeviceActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceActivatedEventArgs.SIGNATURE);
};
pub const WebUIDevicePairingActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IDevicePairingActivatedEventArgs = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIDevicePairingActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePairingActivatedEventArgs.GUID;
    pub const IID: Guid = IDevicePairingActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePairingActivatedEventArgs.SIGNATURE);
};
pub const WebUIDialReceiverActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppName(self: *@This()) core.HResult!HSTRING {
        const this: *IDialReceiverActivatedEventArgs = @ptrCast(self);
        return try this.getAppName();
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILaunchActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILaunchActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getArguments();
    }
    pub fn getTileId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILaunchActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILaunchActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTileId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIDialReceiverActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialReceiverActivatedEventArgs.GUID;
    pub const IID: Guid = IDialReceiverActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialReceiverActivatedEventArgs.SIGNATURE);
};
pub const WebUIFileActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFiles(self: *@This()) core.HResult!*IVectorView(IStorageItem) {
        const this: *IFileActivatedEventArgs = @ptrCast(self);
        return try this.getFiles();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        const this: *IFileActivatedEventArgs = @ptrCast(self);
        return try this.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getNeighboringFilesQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var this: ?*IFileActivatedEventArgsWithNeighboringFiles = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileActivatedEventArgsWithNeighboringFiles.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNeighboringFilesQuery();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIFileActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileActivatedEventArgs.GUID;
    pub const IID: Guid = IFileActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileActivatedEventArgs.SIGNATURE);
};
pub const WebUIFileOpenPickerActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFileOpenPickerUI(self: *@This()) core.HResult!*FileOpenPickerUI {
        const this: *IFileOpenPickerActivatedEventArgs = @ptrCast(self);
        return try this.getFileOpenPickerUI();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IFileOpenPickerActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileOpenPickerActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCallerPackageFamilyName();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIFileOpenPickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileOpenPickerActivatedEventArgs.GUID;
    pub const IID: Guid = IFileOpenPickerActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileOpenPickerActivatedEventArgs.SIGNATURE);
};
pub const WebUIFileOpenPickerContinuationEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFiles(self: *@This()) core.HResult!*IVectorView(StorageFile) {
        const this: *IFileOpenPickerContinuationEventArgs = @ptrCast(self);
        return try this.getFiles();
    }
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IContinuationActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContinuationActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIFileOpenPickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileOpenPickerContinuationEventArgs.GUID;
    pub const IID: Guid = IFileOpenPickerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileOpenPickerContinuationEventArgs.SIGNATURE);
};
pub const WebUIFileSavePickerActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFileSavePickerUI(self: *@This()) core.HResult!*FileSavePickerUI {
        const this: *IFileSavePickerActivatedEventArgs = @ptrCast(self);
        return try this.getFileSavePickerUI();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IFileSavePickerActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePickerActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCallerPackageFamilyName();
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IFileSavePickerActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePickerActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEnterpriseId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIFileSavePickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileSavePickerActivatedEventArgs.GUID;
    pub const IID: Guid = IFileSavePickerActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileSavePickerActivatedEventArgs.SIGNATURE);
};
pub const WebUIFileSavePickerContinuationEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IFileSavePickerContinuationEventArgs = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IContinuationActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContinuationActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIFileSavePickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileSavePickerContinuationEventArgs.GUID;
    pub const IID: Guid = IFileSavePickerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileSavePickerContinuationEventArgs.SIGNATURE);
};
pub const WebUIFolderPickerContinuationEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IFolderPickerContinuationEventArgs = @ptrCast(self);
        return try this.getFolder();
    }
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IContinuationActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContinuationActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIFolderPickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFolderPickerContinuationEventArgs.GUID;
    pub const IID: Guid = IFolderPickerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFolderPickerContinuationEventArgs.SIGNATURE);
};
pub const WebUILaunchActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *ILaunchActivatedEventArgs = @ptrCast(self);
        return try this.getArguments();
    }
    pub fn getTileId(self: *@This()) core.HResult!HSTRING {
        const this: *ILaunchActivatedEventArgs = @ptrCast(self);
        return try this.getTileId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getPrelaunchActivated(self: *@This()) core.HResult!bool {
        var this: ?*IPrelaunchActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrelaunchActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrelaunchActivated();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getTileActivatedInfo(self: *@This()) core.HResult!*TileActivatedInfo {
        var this: ?*ILaunchActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILaunchActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTileActivatedInfo();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUILaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILaunchActivatedEventArgs.GUID;
    pub const IID: Guid = ILaunchActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILaunchActivatedEventArgs.SIGNATURE);
};
pub const WebUILockScreenActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInfo(self: *@This()) core.HResult!*IInspectable {
        const this: *ILockScreenActivatedEventArgs = @ptrCast(self);
        return try this.getInfo();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUILockScreenActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenActivatedEventArgs.GUID;
    pub const IID: Guid = ILockScreenActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenActivatedEventArgs.SIGNATURE);
};
pub const WebUILockScreenComponentActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        const this: *IActivatedEventArgs = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        const this: *IActivatedEventArgs = @ptrCast(self);
        return try this.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        const this: *IActivatedEventArgs = @ptrCast(self);
        return try this.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUILockScreenComponentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivatedEventArgs.GUID;
    pub const IID: Guid = IActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivatedEventArgs.SIGNATURE);
};
pub const WebUINavigatedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IWebUINavigatedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUINavigatedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebUINavigatedDeferral.GUID;
    pub const IID: Guid = IWebUINavigatedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebUINavigatedDeferral.SIGNATURE);
};
pub const WebUINavigatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNavigatedOperation(self: *@This()) core.HResult!*WebUINavigatedOperation {
        const this: *IWebUINavigatedEventArgs = @ptrCast(self);
        return try this.getNavigatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUINavigatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebUINavigatedEventArgs.GUID;
    pub const IID: Guid = IWebUINavigatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebUINavigatedEventArgs.SIGNATURE);
};
pub const WebUINavigatedOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*WebUINavigatedDeferral {
        const this: *IWebUINavigatedOperation = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUINavigatedOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebUINavigatedOperation.GUID;
    pub const IID: Guid = IWebUINavigatedOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebUINavigatedOperation.SIGNATURE);
};
pub const WebUIPhoneCallActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneCallActivatedEventArgs = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIPhoneCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallActivatedEventArgs.GUID;
    pub const IID: Guid = IPhoneCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallActivatedEventArgs.SIGNATURE);
};
pub const WebUIPrintWorkflowForegroundTaskActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        const this: *IActivatedEventArgs = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        const this: *IActivatedEventArgs = @ptrCast(self);
        return try this.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        const this: *IActivatedEventArgs = @ptrCast(self);
        return try this.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIPrintWorkflowForegroundTaskActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivatedEventArgs.GUID;
    pub const IID: Guid = IActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivatedEventArgs.SIGNATURE);
};
pub const WebUIProtocolActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IProtocolActivatedEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCallerPackageFamilyName();
    }
    pub fn getData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getData();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIProtocolActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtocolActivatedEventArgs.GUID;
    pub const IID: Guid = IProtocolActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtocolActivatedEventArgs.SIGNATURE);
};
pub const WebUIProtocolForResultsActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProtocolForResultsOperation(self: *@This()) core.HResult!*ProtocolForResultsOperation {
        const this: *IProtocolForResultsActivatedEventArgs = @ptrCast(self);
        return try this.getProtocolForResultsOperation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IProtocolActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtocolActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCallerPackageFamilyName();
    }
    pub fn getData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getData();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIProtocolForResultsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtocolForResultsActivatedEventArgs.GUID;
    pub const IID: Guid = IProtocolForResultsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtocolForResultsActivatedEventArgs.SIGNATURE);
};
pub const WebUIRestrictedLaunchActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSharedContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IRestrictedLaunchActivatedEventArgs = @ptrCast(self);
        return try this.getSharedContext();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIRestrictedLaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRestrictedLaunchActivatedEventArgs.GUID;
    pub const IID: Guid = IRestrictedLaunchActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRestrictedLaunchActivatedEventArgs.SIGNATURE);
};
pub const WebUIShareTargetActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShareOperation(self: *@This()) core.HResult!*ShareOperation {
        const this: *IShareTargetActivatedEventArgs = @ptrCast(self);
        return try this.getShareOperation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIShareTargetActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareTargetActivatedEventArgs.GUID;
    pub const IID: Guid = IShareTargetActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareTargetActivatedEventArgs.SIGNATURE);
};
pub const WebUIStartupTaskActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        const this: *IStartupTaskActivatedEventArgs = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIStartupTaskActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStartupTaskActivatedEventArgs.GUID;
    pub const IID: Guid = IStartupTaskActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStartupTaskActivatedEventArgs.SIGNATURE);
};
pub const WebUIToastNotificationActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArgument(self: *@This()) core.HResult!HSTRING {
        const this: *IToastNotificationActivatedEventArgs = @ptrCast(self);
        return try this.getArgument();
    }
    pub fn getUserInput(self: *@This()) core.HResult!*ValueSet {
        const this: *IToastNotificationActivatedEventArgs = @ptrCast(self);
        return try this.getUserInput();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIToastNotificationActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotificationActivatedEventArgs.GUID;
    pub const IID: Guid = IToastNotificationActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotificationActivatedEventArgs.SIGNATURE);
};
pub const WebUIUserDataAccountProviderActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!*IUserDataAccountProviderOperation {
        const this: *IUserDataAccountProviderActivatedEventArgs = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIUserDataAccountProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountProviderActivatedEventArgs.GUID;
    pub const IID: Guid = IUserDataAccountProviderActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountProviderActivatedEventArgs.SIGNATURE);
};
pub const WebUIView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getApplicationViewId(self: *@This()) core.HResult!i32 {
        const this: *IWebUIView = @ptrCast(self);
        return try this.getApplicationViewId();
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(WebUIView,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWebUIView = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebUIView = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(WebUIView,IActivatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebUIView = @ptrCast(self);
        return try this.addActivated(handler);
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebUIView = @ptrCast(self);
        return try this.removeActivated(token);
    }
    pub fn getIgnoreApplicationContentUriRulesNavigationRestrictions(self: *@This()) core.HResult!bool {
        const this: *IWebUIView = @ptrCast(self);
        return try this.getIgnoreApplicationContentUriRulesNavigationRestrictions();
    }
    pub fn putIgnoreApplicationContentUriRulesNavigationRestrictions(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebUIView = @ptrCast(self);
        return try this.putIgnoreApplicationContentUriRulesNavigationRestrictions(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*Uri {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSource();
    }
    pub fn putSource(self: *@This(), source: *Uri) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSource(source);
    }
    pub fn getDocumentTitle(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDocumentTitle();
    }
    pub fn getCanGoBack(self: *@This()) core.HResult!bool {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanGoBack();
    }
    pub fn getCanGoForward(self: *@This()) core.HResult!bool {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanGoForward();
    }
    pub fn putDefaultBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDefaultBackgroundColor(value);
    }
    pub fn getDefaultBackgroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultBackgroundColor();
    }
    pub fn getContainsFullScreenElement(self: *@This()) core.HResult!bool {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContainsFullScreenElement();
    }
    pub fn getSettings(self: *@This()) core.HResult!*WebViewControlSettings {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSettings();
    }
    pub fn getDeferredPermissionRequests(self: *@This()) core.HResult!*IVectorView(WebViewControlDeferredPermissionRequest) {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeferredPermissionRequests();
    }
    pub fn GoForward(self: *@This()) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GoForward();
    }
    pub fn GoBack(self: *@This()) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GoBack();
    }
    pub fn Refresh(self: *@This()) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Refresh();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn Navigate(self: *@This(), source: *Uri) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Navigate(source);
    }
    pub fn NavigateToString(self: *@This(), text: HSTRING) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NavigateToString(text);
    }
    pub fn NavigateToLocalStreamUri(self: *@This(), source: *Uri, streamResolver: *IUriToStreamResolver) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NavigateToLocalStreamUri(source, streamResolver);
    }
    pub fn NavigateWithHttpRequestMessage(self: *@This(), requestMessage: *HttpRequestMessage) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NavigateWithHttpRequestMessage(requestMessage);
    }
    pub fn InvokeScriptAsync(self: *@This(), scriptName: HSTRING, arguments: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InvokeScriptAsync(scriptName, arguments);
    }
    pub fn CapturePreviewToStreamAsync(self: *@This(), stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CapturePreviewToStreamAsync(stream);
    }
    pub fn CaptureSelectedContentToDataPackageAsync(self: *@This()) core.HResult!*IAsyncOperation(DataPackage) {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CaptureSelectedContentToDataPackageAsync();
    }
    pub fn BuildLocalStreamUri(self: *@This(), contentIdentifier: HSTRING, relativePath: HSTRING) core.HResult!*Uri {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BuildLocalStreamUri(contentIdentifier, relativePath);
    }
    pub fn GetDeferredPermissionRequestById(self: *@This(), id: u32, result: *WebViewControlDeferredPermissionRequest) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeferredPermissionRequestById(id, result);
    }
    pub fn addNavigationStarting(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addNavigationStarting(handler);
    }
    pub fn removeNavigationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeNavigationStarting(token);
    }
    pub fn addContentLoading(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContentLoading(handler);
    }
    pub fn removeContentLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContentLoading(token);
    }
    pub fn addDOMContentLoaded(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addDOMContentLoaded(handler);
    }
    pub fn removeDOMContentLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeDOMContentLoaded(token);
    }
    pub fn addNavigationCompleted(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addNavigationCompleted(handler);
    }
    pub fn removeNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeNavigationCompleted(token);
    }
    pub fn addFrameNavigationStarting(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addFrameNavigationStarting(handler);
    }
    pub fn removeFrameNavigationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeFrameNavigationStarting(token);
    }
    pub fn addFrameContentLoading(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addFrameContentLoading(handler);
    }
    pub fn removeFrameContentLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeFrameContentLoading(token);
    }
    pub fn addFrameDOMContentLoaded(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addFrameDOMContentLoaded(handler);
    }
    pub fn removeFrameDOMContentLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeFrameDOMContentLoaded(token);
    }
    pub fn addFrameNavigationCompleted(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addFrameNavigationCompleted(handler);
    }
    pub fn removeFrameNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeFrameNavigationCompleted(token);
    }
    pub fn addScriptNotify(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlScriptNotifyEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addScriptNotify(handler);
    }
    pub fn removeScriptNotify(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeScriptNotify(token);
    }
    pub fn addLongRunningScriptDetected(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlLongRunningScriptDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLongRunningScriptDetected(handler);
    }
    pub fn removeLongRunningScriptDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLongRunningScriptDetected(token);
    }
    pub fn addUnsafeContentWarningDisplaying(self: *@This(), handler: *TypedEventHandler(IWebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUnsafeContentWarningDisplaying(handler);
    }
    pub fn removeUnsafeContentWarningDisplaying(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUnsafeContentWarningDisplaying(token);
    }
    pub fn addUnviewableContentIdentified(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlUnviewableContentIdentifiedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUnviewableContentIdentified(handler);
    }
    pub fn removeUnviewableContentIdentified(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUnviewableContentIdentified(token);
    }
    pub fn addPermissionRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlPermissionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPermissionRequested(handler);
    }
    pub fn removePermissionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePermissionRequested(token);
    }
    pub fn addUnsupportedUriSchemeIdentified(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlUnsupportedUriSchemeIdentifiedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUnsupportedUriSchemeIdentified(handler);
    }
    pub fn removeUnsupportedUriSchemeIdentified(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUnsupportedUriSchemeIdentified(token);
    }
    pub fn addNewWindowRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNewWindowRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addNewWindowRequested(handler);
    }
    pub fn removeNewWindowRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeNewWindowRequested(token);
    }
    pub fn addContainsFullScreenElementChanged(self: *@This(), handler: *TypedEventHandler(IWebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContainsFullScreenElementChanged(handler);
    }
    pub fn removeContainsFullScreenElementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContainsFullScreenElementChanged(token);
    }
    pub fn addWebResourceRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlWebResourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addWebResourceRequested(handler);
    }
    pub fn removeWebResourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeWebResourceRequested(token);
    }
    pub fn AddInitializeScript(self: *@This(), script: HSTRING) core.HResult!void {
        var this: ?*IWebViewControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddInitializeScript(script);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync() core.HResult!*IAsyncOperation(WebUIView) {
        const _f = @This().IWebUIViewStaticsCache.get();
        return try _f.CreateAsync();
    }
    pub fn CreateAsyncWithUri(uri: *Uri) core.HResult!*IAsyncOperation(WebUIView) {
        const _f = @This().IWebUIViewStaticsCache.get();
        return try _f.CreateAsyncWithUri(uri);
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebUIView.GUID;
    pub const IID: Guid = IWebUIView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebUIView.SIGNATURE);
    var _IWebUIViewStaticsCache: FactoryCache(IWebUIViewStatics, RUNTIME_NAME) = .{};
};
pub const WebUIVoiceCommandActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResult(self: *@This()) core.HResult!*SpeechRecognitionResult {
        const this: *IVoiceCommandActivatedEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIVoiceCommandActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandActivatedEventArgs.GUID;
    pub const IID: Guid = IVoiceCommandActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandActivatedEventArgs.SIGNATURE);
};
pub const WebUIWebAccountProviderActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!*IWebAccountProviderOperation {
        const this: *IWebAccountProviderActivatedEventArgs = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIWebAccountProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderActivatedEventArgs.GUID;
    pub const IID: Guid = IWebAccountProviderActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderActivatedEventArgs.SIGNATURE);
};
pub const WebUIWebAuthenticationBrokerContinuationEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAuthenticationResult(self: *@This()) core.HResult!*WebAuthenticationResult {
        const this: *IWebAuthenticationBrokerContinuationEventArgs = @ptrCast(self);
        return try this.getWebAuthenticationResult();
    }
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IContinuationActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContinuationActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIWebAuthenticationBrokerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAuthenticationBrokerContinuationEventArgs.GUID;
    pub const IID: Guid = IWebAuthenticationBrokerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAuthenticationBrokerContinuationEventArgs.SIGNATURE);
};
pub const WebUIContactCallActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactCallActivatedEventArgs = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactCallActivatedEventArgs = @ptrCast(self);
        return try this.getServiceUserId();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactCallActivatedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactCallActivatedEventArgs.GUID;
    pub const IID: Guid = IContactCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactCallActivatedEventArgs.SIGNATURE);
};
pub const WebUIContactMapActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAddress(self: *@This()) core.HResult!*ContactAddress {
        const this: *IContactMapActivatedEventArgs = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactMapActivatedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactMapActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactMapActivatedEventArgs.GUID;
    pub const IID: Guid = IContactMapActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactMapActivatedEventArgs.SIGNATURE);
};
pub const WebUIContactMessageActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactMessageActivatedEventArgs = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactMessageActivatedEventArgs = @ptrCast(self);
        return try this.getServiceUserId();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactMessageActivatedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactMessageActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactMessageActivatedEventArgs.GUID;
    pub const IID: Guid = IContactMessageActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactMessageActivatedEventArgs.SIGNATURE);
};
pub const WebUIContactPickerActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactPickerUI(self: *@This()) core.HResult!*ContactPickerUI {
        const this: *IContactPickerActivatedEventArgs = @ptrCast(self);
        return try this.getContactPickerUI();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactPickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPickerActivatedEventArgs.GUID;
    pub const IID: Guid = IContactPickerActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPickerActivatedEventArgs.SIGNATURE);
};
pub const WebUIContactPostActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactPostActivatedEventArgs = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactPostActivatedEventArgs = @ptrCast(self);
        return try this.getServiceUserId();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactPostActivatedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactPostActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPostActivatedEventArgs.GUID;
    pub const IID: Guid = IContactPostActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPostActivatedEventArgs.SIGNATURE);
};
pub const WebUIContactVideoCallActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactVideoCallActivatedEventArgs = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactVideoCallActivatedEventArgs = @ptrCast(self);
        return try this.getServiceUserId();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactVideoCallActivatedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerb();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getActivatedOperation(self: *@This()) core.HResult!*ActivatedOperation {
        var this: ?*IActivatedEventArgsDeferral = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsDeferral.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivatedOperation();
    }
    pub const NAME: []const u8 = "Windows.UI.WebUI.WebUIContactVideoCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactVideoCallActivatedEventArgs.GUID;
    pub const IID: Guid = IContactVideoCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactVideoCallActivatedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IContactMapActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactMapActivatedEventArgs;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const ILeavingBackgroundEventArgs = @import("../ApplicationModel.zig").ILeavingBackgroundEventArgs;
const IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = @import("../ApplicationModel/Activation.zig").IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData;
const WalletActionKind = @import("../ApplicationModel/Wallet.zig").WalletActionKind;
const IAppointmentsProviderAddAppointmentActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IAppointmentsProviderAddAppointmentActivatedEventArgs;
const FileOpenPickerUI = @import("../Storage/Pickers/Provider.zig").FileOpenPickerUI;
const IFileOpenPickerActivatedEventArgs2 = @import("../ApplicationModel/Activation.zig").IFileOpenPickerActivatedEventArgs2;
const IStartupTaskActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IStartupTaskActivatedEventArgs;
const IProtocolForResultsActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IProtocolForResultsActivatedEventArgs;
const WebViewControlDOMContentLoadedEventArgs = @import("../Web/UI.zig").WebViewControlDOMContentLoadedEventArgs;
const WebViewControlUnsupportedUriSchemeIdentifiedEventArgs = @import("../Web/UI.zig").WebViewControlUnsupportedUriSchemeIdentifiedEventArgs;
const WebViewControlNewWindowRequestedEventArgs = @import("../Web/UI.zig").WebViewControlNewWindowRequestedEventArgs;
const IPrintTaskSettingsActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IPrintTaskSettingsActivatedEventArgs;
const WebAuthenticationResult = @import("../Security/Authentication/Web.zig").WebAuthenticationResult;
const SearchPaneQueryLinguisticDetails = @import("../ApplicationModel/Search.zig").SearchPaneQueryLinguisticDetails;
const IWebViewControl2 = @import("../Web/UI.zig").IWebViewControl2;
const IEnteredBackgroundEventArgs = @import("../ApplicationModel.zig").IEnteredBackgroundEventArgs;
const IWebAccountProviderActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IWebAccountProviderActivatedEventArgs;
const IFolderPickerContinuationEventArgs = @import("../ApplicationModel/Activation.zig").IFolderPickerContinuationEventArgs;
const IPrint3DWorkflowActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IPrint3DWorkflowActivatedEventArgs;
const ILaunchActivatedEventArgs2 = @import("../ApplicationModel/Activation.zig").ILaunchActivatedEventArgs2;
const ILockScreenActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ILockScreenActivatedEventArgs;
const ContactAddress = @import("../ApplicationModel/Contacts.zig").ContactAddress;
const IBackgroundTaskInstance = @import("../ApplicationModel/Background.zig").IBackgroundTaskInstance;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const AddAppointmentOperation = @import("../ApplicationModel/Appointments/AppointmentsProvider.zig").AddAppointmentOperation;
const TileActivatedInfo = @import("../ApplicationModel/Activation.zig").TileActivatedInfo;
const WebViewControlContentLoadingEventArgs = @import("../Web/UI.zig").WebViewControlContentLoadingEventArgs;
const IWalletActionActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IWalletActionActivatedEventArgs;
const BackgroundTaskCanceledEventHandler = @import("../ApplicationModel/Background.zig").BackgroundTaskCanceledEventHandler;
const IContactPickerActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactPickerActivatedEventArgs;
const IWebViewControl = @import("../Web/UI.zig").IWebViewControl;
const IClosable = @import("../Foundation.zig").IClosable;
const IActivatedEventArgsWithUser = @import("../ApplicationModel/Activation.zig").IActivatedEventArgsWithUser;
const IDialReceiverActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IDialReceiverActivatedEventArgs;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IFileOpenPickerContinuationEventArgs = @import("../ApplicationModel/Activation.zig").IFileOpenPickerContinuationEventArgs;
const IDevicePairingActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IDevicePairingActivatedEventArgs;
const IShareTargetActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IShareTargetActivatedEventArgs;
const IPrelaunchActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IPrelaunchActivatedEventArgs;
const RemoveAppointmentOperation = @import("../ApplicationModel/Appointments/AppointmentsProvider.zig").RemoveAppointmentOperation;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const ISuspendingEventArgs = @import("../ApplicationModel.zig").ISuspendingEventArgs;
const ICameraSettingsActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ICameraSettingsActivatedEventArgs;
const ICachedFileUpdaterActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ICachedFileUpdaterActivatedEventArgs;
const IPhoneCallActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IPhoneCallActivatedEventArgs;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const SpeechRecognitionResult = @import("../Media/SpeechRecognition.zig").SpeechRecognitionResult;
const IWebAccountProviderOperation = @import("../Security/Authentication/Web/Provider.zig").IWebAccountProviderOperation;
const Uri = @import("../Foundation.zig").Uri;
const IContactCallActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactCallActivatedEventArgs;
const IUserDataAccountProviderOperation = @import("../ApplicationModel/UserDataAccounts/Provider.zig").IUserDataAccountProviderOperation;
const IContinuationActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContinuationActivatedEventArgs;
const IVoiceCommandActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IVoiceCommandActivatedEventArgs;
const IUriToStreamResolver = @import("../Web.zig").IUriToStreamResolver;
const ILaunchActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ILaunchActivatedEventArgs;
const HRESULT = @import("../root.zig").HRESULT;
const ISearchActivatedEventArgsWithLinguisticDetails = @import("../ApplicationModel/Activation.zig").ISearchActivatedEventArgsWithLinguisticDetails;
const IFileOpenPickerActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IFileOpenPickerActivatedEventArgs;
const DataPackage = @import("../ApplicationModel/DataTransfer.zig").DataPackage;
const BackgroundTaskRegistration = @import("../ApplicationModel/Background.zig").BackgroundTaskRegistration;
const ProtocolForResultsOperation = @import("../System.zig").ProtocolForResultsOperation;
const IAppointmentsProviderActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IAppointmentsProviderActivatedEventArgs;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const ApplicationExecutionState = @import("../ApplicationModel/Activation.zig").ApplicationExecutionState;
const WebViewControlDeferredPermissionRequest = @import("../Web/UI.zig").WebViewControlDeferredPermissionRequest;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
const IAppointmentsProviderReplaceAppointmentActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IAppointmentsProviderReplaceAppointmentActivatedEventArgs;
const IBarcodeScannerPreviewActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IBarcodeScannerPreviewActivatedEventArgs;
const CommandLineActivationOperation = @import("../ApplicationModel/Activation.zig").CommandLineActivationOperation;
const IContactPanelActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactPanelActivatedEventArgs;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const ContactPickerUI = @import("../ApplicationModel/Contacts/Provider.zig").ContactPickerUI;
const IContactPostActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactPostActivatedEventArgs;
const IProtocolActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IProtocolActivatedEventArgs;
const IToastNotificationActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IToastNotificationActivatedEventArgs;
const IReference = @import("../Foundation.zig").IReference;
const IAppointmentsProviderRemoveAppointmentActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IAppointmentsProviderRemoveAppointmentActivatedEventArgs;
const IFileActivatedEventArgsWithNeighboringFiles = @import("../ApplicationModel/Activation.zig").IFileActivatedEventArgsWithNeighboringFiles;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const AppRestartFailureReason = @import("../ApplicationModel/Core.zig").AppRestartFailureReason;
const CachedFileUpdaterUI = @import("../Storage/Provider.zig").CachedFileUpdaterUI;
const IAppointmentsProviderShowTimeFrameActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IAppointmentsProviderShowTimeFrameActivatedEventArgs;
const DateTime = @import("../Foundation.zig").DateTime;
const StorageFileQueryResult = @import("../Storage/Search.zig").StorageFileQueryResult;
const IRestrictedLaunchActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IRestrictedLaunchActivatedEventArgs;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const PrintTaskConfiguration = @import("../Devices/Printers/Extensions.zig").PrintTaskConfiguration;
const FactoryCache = @import("../core.zig").FactoryCache;
const IDeviceActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IDeviceActivatedEventArgs;
const IContactActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactActivatedEventArgs;
const IContactMessageActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactMessageActivatedEventArgs;
const WebViewControlNavigationStartingEventArgs = @import("../Web/UI.zig").WebViewControlNavigationStartingEventArgs;
const IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs;
const WebViewControlUnviewableContentIdentifiedEventArgs = @import("../Web/UI.zig").WebViewControlUnviewableContentIdentifiedEventArgs;
const TrustLevel = @import("../root.zig").TrustLevel;
const LockScreenCallUI = @import("../ApplicationModel/Calls.zig").LockScreenCallUI;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const ActivationKind = @import("../ApplicationModel/Activation.zig").ActivationKind;
const IPrintDocumentSource = @import("../Graphics/Printing.zig").IPrintDocumentSource;
const HSTRING = @import("../root.zig").HSTRING;
const ContactPanel = @import("../ApplicationModel/Contacts.zig").ContactPanel;
const IBackgroundActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IBackgroundActivatedEventArgs;
const Color = @import("../UI.zig").Color;
const IApplicationViewActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IApplicationViewActivatedEventArgs;
const IFileSavePickerContinuationEventArgs = @import("../ApplicationModel/Activation.zig").IFileSavePickerContinuationEventArgs;
const IWebAuthenticationBrokerContinuationEventArgs = @import("../ApplicationModel/Activation.zig").IWebAuthenticationBrokerContinuationEventArgs;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAgileObject = @import("../root.zig").IAgileObject;
const ShareOperation = @import("../ApplicationModel/DataTransfer/ShareTarget.zig").ShareOperation;
const WebViewControlNavigationCompletedEventArgs = @import("../Web/UI.zig").WebViewControlNavigationCompletedEventArgs;
const IContactVideoCallActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IContactVideoCallActivatedEventArgs;
const WebViewControlPermissionRequestedEventArgs = @import("../Web/UI.zig").WebViewControlPermissionRequestedEventArgs;
const IFileSavePickerActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IFileSavePickerActivatedEventArgs;
const WebViewControlSettings = @import("../Web/UI.zig").WebViewControlSettings;
const Contact = @import("../ApplicationModel/Contacts.zig").Contact;
const IUserDataAccountProviderActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IUserDataAccountProviderActivatedEventArgs;
const EventHandler = @import("../Foundation.zig").EventHandler;
const WebViewControlScriptNotifyEventArgs = @import("../Web/UI.zig").WebViewControlScriptNotifyEventArgs;
const FileSavePickerUI = @import("../Storage/Pickers/Provider.zig").FileSavePickerUI;
const WebViewControlLongRunningScriptDetectedEventArgs = @import("../Web/UI.zig").WebViewControlLongRunningScriptDetectedEventArgs;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const ISearchActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ISearchActivatedEventArgs;
const ILockScreenCallActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ILockScreenCallActivatedEventArgs;
const ICommandLineActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ICommandLineActivatedEventArgs;
const SplashScreen = @import("../ApplicationModel/Activation.zig").SplashScreen;
const BackgroundTaskDeferral = @import("../ApplicationModel/Background.zig").BackgroundTaskDeferral;
const IActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IActivatedEventArgs;
const IFileSavePickerActivatedEventArgs2 = @import("../ApplicationModel/Activation.zig").IFileSavePickerActivatedEventArgs2;
const HttpRequestMessage = @import("../Web/Http.zig").HttpRequestMessage;
const ReplaceAppointmentOperation = @import("../ApplicationModel/Appointments/AppointmentsProvider.zig").ReplaceAppointmentOperation;
const IFileActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IFileActivatedEventArgs;
const User = @import("../System.zig").User;
const WebViewControlWebResourceRequestedEventArgs = @import("../Web/UI.zig").WebViewControlWebResourceRequestedEventArgs;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const Print3DWorkflow = @import("../Devices/Printers/Extensions.zig").Print3DWorkflow;
