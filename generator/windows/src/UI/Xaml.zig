pub const DependencyObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetValue(self: *@This(), dp: *DependencyProperty) core.HResult!*IInspectable {
        const this: *IDependencyObject = @ptrCast(self);
        return try this.GetValue(dp);
    }
    pub fn SetValue(self: *@This(), dp: *DependencyProperty, value: *IInspectable) core.HResult!void {
        const this: *IDependencyObject = @ptrCast(self);
        return try this.SetValue(dp, value);
    }
    pub fn ClearValue(self: *@This(), dp: *DependencyProperty) core.HResult!void {
        const this: *IDependencyObject = @ptrCast(self);
        return try this.ClearValue(dp);
    }
    pub fn ReadLocalValue(self: *@This(), dp: *DependencyProperty) core.HResult!*IInspectable {
        const this: *IDependencyObject = @ptrCast(self);
        return try this.ReadLocalValue(dp);
    }
    pub fn GetAnimationBaseValue(self: *@This(), dp: *DependencyProperty) core.HResult!*IInspectable {
        const this: *IDependencyObject = @ptrCast(self);
        return try this.GetAnimationBaseValue(dp);
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *IDependencyObject = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn RegisterPropertyChangedCallback(self: *@This(), dp: *DependencyProperty, callback: *DependencyPropertyChangedCallback) core.HResult!i64 {
        var this: ?*IDependencyObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDependencyObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterPropertyChangedCallback(dp, callback);
    }
    pub fn UnregisterPropertyChangedCallback(self: *@This(), dp: *DependencyProperty, token: i64) core.HResult!void {
        var this: ?*IDependencyObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDependencyObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UnregisterPropertyChangedCallback(dp, token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DependencyObject {
        const factory = @This().IDependencyObjectFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DependencyObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDependencyObject.GUID;
    pub const IID: Guid = IDependencyObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDependencyObject.SIGNATURE);
    var _IDependencyObjectFactoryCache: FactoryCache(IDependencyObjectFactory, RUNTIME_NAME) = .{};
};
pub const StateTriggerBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetActive(self: *@This(), IsActive: bool) core.HResult!void {
        var this: ?*IStateTriggerBaseProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStateTriggerBaseProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetActive(IsActive);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*StateTriggerBase {
        const factory = @This().IStateTriggerBaseFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.StateTriggerBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStateTriggerBase.GUID;
    pub const IID: Guid = IStateTriggerBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStateTriggerBase.SIGNATURE);
    var _IStateTriggerBaseFactoryCache: FactoryCache(IStateTriggerBaseFactory, RUNTIME_NAME) = .{};
};
pub const AdaptiveTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMinWindowWidth(self: *@This()) core.HResult!f64 {
        const this: *IAdaptiveTrigger = @ptrCast(self);
        return try this.getMinWindowWidth();
    }
    pub fn putMinWindowWidth(self: *@This(), value: f64) core.HResult!void {
        const this: *IAdaptiveTrigger = @ptrCast(self);
        return try this.putMinWindowWidth(value);
    }
    pub fn getMinWindowHeight(self: *@This()) core.HResult!f64 {
        const this: *IAdaptiveTrigger = @ptrCast(self);
        return try this.getMinWindowHeight();
    }
    pub fn putMinWindowHeight(self: *@This(), value: f64) core.HResult!void {
        const this: *IAdaptiveTrigger = @ptrCast(self);
        return try this.putMinWindowHeight(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_MinWindowWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAdaptiveTriggerStaticsCache.get();
        return try factory.getMinWindowWidthProperty();
    }
    pub fn get_MinWindowHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAdaptiveTriggerStaticsCache.get();
        return try factory.getMinWindowHeightProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AdaptiveTrigger {
        const factory = @This().IAdaptiveTriggerFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.AdaptiveTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveTrigger.GUID;
    pub const IID: Guid = IAdaptiveTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveTrigger.SIGNATURE);
    var _IAdaptiveTriggerStaticsCache: FactoryCache(IAdaptiveTriggerStatics, RUNTIME_NAME) = .{};
    var _IAdaptiveTriggerFactoryCache: FactoryCache(IAdaptiveTriggerFactory, RUNTIME_NAME) = .{};
};
pub const Application = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResources(self: *@This()) core.HResult!*ResourceDictionary {
        const this: *IApplication = @ptrCast(self);
        return try this.getResources();
    }
    pub fn putResources(self: *@This(), value: *ResourceDictionary) core.HResult!void {
        const this: *IApplication = @ptrCast(self);
        return try this.putResources(value);
    }
    pub fn getDebugSettings(self: *@This()) core.HResult!*DebugSettings {
        const this: *IApplication = @ptrCast(self);
        return try this.getDebugSettings();
    }
    pub fn getRequestedTheme(self: *@This()) core.HResult!ApplicationTheme {
        const this: *IApplication = @ptrCast(self);
        return try this.getRequestedTheme();
    }
    pub fn putRequestedTheme(self: *@This(), value: ApplicationTheme) core.HResult!void {
        const this: *IApplication = @ptrCast(self);
        return try this.putRequestedTheme(value);
    }
    pub fn addUnhandledException(self: *@This(), handler: *UnhandledExceptionEventHandler) core.HResult!EventRegistrationToken {
        const this: *IApplication = @ptrCast(self);
        return try this.addUnhandledException(handler);
    }
    pub fn removeUnhandledException(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IApplication = @ptrCast(self);
        return try this.removeUnhandledException(token);
    }
    pub fn addSuspending(self: *@This(), handler: *SuspendingEventHandler) core.HResult!EventRegistrationToken {
        const this: *IApplication = @ptrCast(self);
        return try this.addSuspending(handler);
    }
    pub fn removeSuspending(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IApplication = @ptrCast(self);
        return try this.removeSuspending(token);
    }
    pub fn addResuming(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IApplication = @ptrCast(self);
        return try this.addResuming(handler);
    }
    pub fn removeResuming(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IApplication = @ptrCast(self);
        return try this.removeResuming(token);
    }
    pub fn Exit(self: *@This()) core.HResult!void {
        const this: *IApplication = @ptrCast(self);
        return try this.Exit();
    }
    pub fn getFocusVisualKind(self: *@This()) core.HResult!FocusVisualKind {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusVisualKind();
    }
    pub fn putFocusVisualKind(self: *@This(), value: FocusVisualKind) core.HResult!void {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusVisualKind(value);
    }
    pub fn getRequiresPointerMode(self: *@This()) core.HResult!ApplicationRequiresPointerMode {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequiresPointerMode();
    }
    pub fn putRequiresPointerMode(self: *@This(), value: ApplicationRequiresPointerMode) core.HResult!void {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequiresPointerMode(value);
    }
    pub fn addLeavingBackground(self: *@This(), handler: *LeavingBackgroundEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLeavingBackground(handler);
    }
    pub fn removeLeavingBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLeavingBackground(token);
    }
    pub fn addEnteredBackground(self: *@This(), handler: *EnteredBackgroundEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addEnteredBackground(handler);
    }
    pub fn removeEnteredBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IApplication2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeEnteredBackground(token);
    }
    pub fn getHighContrastAdjustment(self: *@This()) core.HResult!ApplicationHighContrastAdjustment {
        var this: ?*IApplication3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHighContrastAdjustment();
    }
    pub fn putHighContrastAdjustment(self: *@This(), value: ApplicationHighContrastAdjustment) core.HResult!void {
        var this: ?*IApplication3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplication3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHighContrastAdjustment(value);
    }
    pub fn OnActivated(self: *@This(), args: *IActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnActivated(args);
    }
    pub fn OnLaunched(self: *@This(), args: *LaunchActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnLaunched(args);
    }
    pub fn OnFileActivated(self: *@This(), args: *FileActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnFileActivated(args);
    }
    pub fn OnSearchActivated(self: *@This(), args: *SearchActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnSearchActivated(args);
    }
    pub fn OnShareTargetActivated(self: *@This(), args: *ShareTargetActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnShareTargetActivated(args);
    }
    pub fn OnFileOpenPickerActivated(self: *@This(), args: *FileOpenPickerActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnFileOpenPickerActivated(args);
    }
    pub fn OnFileSavePickerActivated(self: *@This(), args: *FileSavePickerActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnFileSavePickerActivated(args);
    }
    pub fn OnCachedFileUpdaterActivated(self: *@This(), args: *CachedFileUpdaterActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnCachedFileUpdaterActivated(args);
    }
    pub fn OnWindowCreated(self: *@This(), args: *WindowCreatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnWindowCreated(args);
    }
    pub fn OnBackgroundActivated(self: *@This(), args: *BackgroundActivatedEventArgs) core.HResult!void {
        var this: ?*IApplicationOverrides2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationOverrides2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnBackgroundActivated(args);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Current() core.HResult!*Application {
        const factory = @This().IApplicationStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn Start(callback: *ApplicationInitializationCallback) core.HResult!void {
        const factory = @This().IApplicationStaticsCache.get();
        return try factory.Start(callback);
    }
    pub fn LoadComponent(component: *IInspectable, resourceLocator: *Uri) core.HResult!void {
        const factory = @This().IApplicationStaticsCache.get();
        return try factory.LoadComponent(component, resourceLocator);
    }
    pub fn LoadComponentWithComponentResourceLocation(component: *IInspectable, resourceLocator: *Uri, componentResourceLocation: ComponentResourceLocation) core.HResult!void {
        const factory = @This().IApplicationStaticsCache.get();
        return try factory.LoadComponentWithComponentResourceLocation(component, resourceLocator, componentResourceLocation);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Application {
        const factory = @This().IApplicationFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Application";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplication.GUID;
    pub const IID: Guid = IApplication.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplication.SIGNATURE);
    var _IApplicationStaticsCache: FactoryCache(IApplicationStatics, RUNTIME_NAME) = .{};
    var _IApplicationFactoryCache: FactoryCache(IApplicationFactory, RUNTIME_NAME) = .{};
};
pub const ApplicationHighContrastAdjustment = enum(i32) {
    None = 0,
    Auto = -1,
};
pub const ApplicationInitializationCallback = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, p: *ApplicationInitializationCallbackParams) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, p: *ApplicationInitializationCallbackParams) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, p: *ApplicationInitializationCallbackParams) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, p);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ApplicationInitializationCallback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6351c55-c284-46e4-8310-fb0967fab76f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, p: *ApplicationInitializationCallbackParams) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ApplicationInitializationCallbackParams = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ApplicationInitializationCallbackParams";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationInitializationCallbackParams.GUID;
    pub const IID: Guid = IApplicationInitializationCallbackParams.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationInitializationCallbackParams.SIGNATURE);
};
pub const ApplicationRequiresPointerMode = enum(i32) {
    Auto = 0,
    WhenRequested = 1,
};
pub const ApplicationTheme = enum(i32) {
    Light = 0,
    Dark = 1,
};
pub const AutomationTextAttributesEnum = enum(i32) {
    AnimationStyleAttribute = 40000,
    BackgroundColorAttribute = 40001,
    BulletStyleAttribute = 40002,
    CapStyleAttribute = 40003,
    CultureAttribute = 40004,
    FontNameAttribute = 40005,
    FontSizeAttribute = 40006,
    FontWeightAttribute = 40007,
    ForegroundColorAttribute = 40008,
    HorizontalTextAlignmentAttribute = 40009,
    IndentationFirstLineAttribute = 40010,
    IndentationLeadingAttribute = 40011,
    IndentationTrailingAttribute = 40012,
    IsHiddenAttribute = 40013,
    IsItalicAttribute = 40014,
    IsReadOnlyAttribute = 40015,
    IsSubscriptAttribute = 40016,
    IsSuperscriptAttribute = 40017,
    MarginBottomAttribute = 40018,
    MarginLeadingAttribute = 40019,
    MarginTopAttribute = 40020,
    MarginTrailingAttribute = 40021,
    OutlineStylesAttribute = 40022,
    OverlineColorAttribute = 40023,
    OverlineStyleAttribute = 40024,
    StrikethroughColorAttribute = 40025,
    StrikethroughStyleAttribute = 40026,
    TabsAttribute = 40027,
    TextFlowDirectionsAttribute = 40028,
    UnderlineColorAttribute = 40029,
    UnderlineStyleAttribute = 40030,
    AnnotationTypesAttribute = 40031,
    AnnotationObjectsAttribute = 40032,
    StyleNameAttribute = 40033,
    StyleIdAttribute = 40034,
    LinkAttribute = 40035,
    IsActiveAttribute = 40036,
    SelectionActiveEndAttribute = 40037,
    CaretPositionAttribute = 40038,
    CaretBidiModeAttribute = 40039,
};
pub const BindingFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IBindingFailedEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.BindingFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBindingFailedEventArgs.GUID;
    pub const IID: Guid = IBindingFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBindingFailedEventArgs.SIGNATURE);
};
pub const BindingFailedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *BindingFailedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *BindingFailedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *BindingFailedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.BindingFailedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "136b1782-54ba-420d-a1aa-82828721cde6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *BindingFailedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const BringIntoViewOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAnimationDesired(self: *@This()) core.HResult!bool {
        const this: *IBringIntoViewOptions = @ptrCast(self);
        return try this.getAnimationDesired();
    }
    pub fn putAnimationDesired(self: *@This(), value: bool) core.HResult!void {
        const this: *IBringIntoViewOptions = @ptrCast(self);
        return try this.putAnimationDesired(value);
    }
    pub fn getTargetRect(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *IBringIntoViewOptions = @ptrCast(self);
        return try this.getTargetRect();
    }
    pub fn putTargetRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const this: *IBringIntoViewOptions = @ptrCast(self);
        return try this.putTargetRect(value);
    }
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f64 {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalAlignmentRatio();
    }
    pub fn putHorizontalAlignmentRatio(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHorizontalAlignmentRatio(value);
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f64 {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalAlignmentRatio();
    }
    pub fn putVerticalAlignmentRatio(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVerticalAlignmentRatio(value);
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalOffset();
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHorizontalOffset(value);
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalOffset();
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IBringIntoViewOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBringIntoViewOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBringIntoViewOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.BringIntoViewOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBringIntoViewOptions.GUID;
    pub const IID: Guid = IBringIntoViewOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBringIntoViewOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOriginalSource(self: *@This()) core.HResult!*IInspectable {
        const this: *IRoutedEventArgs = @ptrCast(self);
        return try this.getOriginalSource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RoutedEventArgs {
        const factory = @This().IRoutedEventArgsFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.RoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRoutedEventArgs.GUID;
    pub const IID: Guid = IRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRoutedEventArgs.SIGNATURE);
    var _IRoutedEventArgsFactoryCache: FactoryCache(IRoutedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const BringIntoViewRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetElement(self: *@This()) core.HResult!*UIElement {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getTargetElement();
    }
    pub fn putTargetElement(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.putTargetElement(value);
    }
    pub fn getAnimationDesired(self: *@This()) core.HResult!bool {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getAnimationDesired();
    }
    pub fn putAnimationDesired(self: *@This(), value: bool) core.HResult!void {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.putAnimationDesired(value);
    }
    pub fn getTargetRect(self: *@This()) core.HResult!Rect {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getTargetRect();
    }
    pub fn putTargetRect(self: *@This(), value: Rect) core.HResult!void {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.putTargetRect(value);
    }
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f64 {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getHorizontalAlignmentRatio();
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f64 {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getVerticalAlignmentRatio();
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getHorizontalOffset();
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.putHorizontalOffset(value);
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getVerticalOffset();
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.putVerticalOffset(value);
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IBringIntoViewRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.BringIntoViewRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBringIntoViewRequestedEventArgs.GUID;
    pub const IID: Guid = IBringIntoViewRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBringIntoViewRequestedEventArgs.SIGNATURE);
};
pub const BrushTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IBrushTransition = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IBrushTransition = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BrushTransition {
        const factory = @This().IBrushTransitionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.BrushTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBrushTransition.GUID;
    pub const IID: Guid = IBrushTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBrushTransition.SIGNATURE);
    var _IBrushTransitionFactoryCache: FactoryCache(IBrushTransitionFactory, RUNTIME_NAME) = .{};
};
pub const ResourceDictionary = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*Uri {
        const this: *IResourceDictionary = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IResourceDictionary = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getMergedDictionaries(self: *@This()) core.HResult!*IVector(ResourceDictionary) {
        const this: *IResourceDictionary = @ptrCast(self);
        return try this.getMergedDictionaries();
    }
    pub fn getThemeDictionaries(self: *@This()) core.HResult!*IMap(IInspectable,IInspectable) {
        const this: *IResourceDictionary = @ptrCast(self);
        return try this.getThemeDictionaries();
    }
    pub fn Lookup(self: *@This(), key: core.generic(K)) core.HResult!core.generic(V) {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: core.generic(K)) core.HResult!bool {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(K,V) {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Insert(self: *@This(), key: core.generic(K), value: core.generic(V)) core.HResult!bool {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: core.generic(K)) core.HResult!void {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(IInspectable,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IKeyValuePair(IInspectable,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ResourceDictionary {
        const factory = @This().IResourceDictionaryFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ResourceDictionary";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceDictionary.GUID;
    pub const IID: Guid = IResourceDictionary.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceDictionary.SIGNATURE);
    var _IResourceDictionaryFactoryCache: FactoryCache(IResourceDictionaryFactory, RUNTIME_NAME) = .{};
};
pub const ColorPaletteResources = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAltHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getAltHigh();
    }
    pub fn putAltHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putAltHigh(value);
    }
    pub fn getAltLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getAltLow();
    }
    pub fn putAltLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putAltLow(value);
    }
    pub fn getAltMedium(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getAltMedium();
    }
    pub fn putAltMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putAltMedium(value);
    }
    pub fn getAltMediumHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getAltMediumHigh();
    }
    pub fn putAltMediumHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putAltMediumHigh(value);
    }
    pub fn getAltMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getAltMediumLow();
    }
    pub fn putAltMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putAltMediumLow(value);
    }
    pub fn getBaseHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getBaseHigh();
    }
    pub fn putBaseHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putBaseHigh(value);
    }
    pub fn getBaseLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getBaseLow();
    }
    pub fn putBaseLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putBaseLow(value);
    }
    pub fn getBaseMedium(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getBaseMedium();
    }
    pub fn putBaseMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putBaseMedium(value);
    }
    pub fn getBaseMediumHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getBaseMediumHigh();
    }
    pub fn putBaseMediumHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putBaseMediumHigh(value);
    }
    pub fn getBaseMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getBaseMediumLow();
    }
    pub fn putBaseMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putBaseMediumLow(value);
    }
    pub fn getChromeAltLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeAltLow();
    }
    pub fn putChromeAltLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeAltLow(value);
    }
    pub fn getChromeBlackHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeBlackHigh();
    }
    pub fn putChromeBlackHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeBlackHigh(value);
    }
    pub fn getChromeBlackLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeBlackLow();
    }
    pub fn putChromeBlackLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeBlackLow(value);
    }
    pub fn getChromeBlackMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeBlackMediumLow();
    }
    pub fn putChromeBlackMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeBlackMediumLow(value);
    }
    pub fn getChromeBlackMedium(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeBlackMedium();
    }
    pub fn putChromeBlackMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeBlackMedium(value);
    }
    pub fn getChromeDisabledHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeDisabledHigh();
    }
    pub fn putChromeDisabledHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeDisabledHigh(value);
    }
    pub fn getChromeDisabledLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeDisabledLow();
    }
    pub fn putChromeDisabledLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeDisabledLow(value);
    }
    pub fn getChromeHigh(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeHigh();
    }
    pub fn putChromeHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeHigh(value);
    }
    pub fn getChromeLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeLow();
    }
    pub fn putChromeLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeLow(value);
    }
    pub fn getChromeMedium(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeMedium();
    }
    pub fn putChromeMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeMedium(value);
    }
    pub fn getChromeMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeMediumLow();
    }
    pub fn putChromeMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeMediumLow(value);
    }
    pub fn getChromeWhite(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeWhite();
    }
    pub fn putChromeWhite(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeWhite(value);
    }
    pub fn getChromeGray(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getChromeGray();
    }
    pub fn putChromeGray(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putChromeGray(value);
    }
    pub fn getListLow(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getListLow();
    }
    pub fn putListLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putListLow(value);
    }
    pub fn getListMedium(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getListMedium();
    }
    pub fn putListMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putListMedium(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putErrorText(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getAccent(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.getAccent();
    }
    pub fn putAccent(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorPaletteResources = @ptrCast(self);
        return try this.putAccent(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorPaletteResources {
        const factory = @This().IColorPaletteResourcesFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ColorPaletteResources";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorPaletteResources.GUID;
    pub const IID: Guid = IColorPaletteResources.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorPaletteResources.SIGNATURE);
    var _IColorPaletteResourcesFactoryCache: FactoryCache(IColorPaletteResourcesFactory, RUNTIME_NAME) = .{};
};
pub const UIElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredSize(self: *@This()) core.HResult!Size {
        const this: *IUIElement = @ptrCast(self);
        return try this.getDesiredSize();
    }
    pub fn getAllowDrop(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getAllowDrop();
    }
    pub fn putAllowDrop(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putAllowDrop(value);
    }
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        const this: *IUIElement = @ptrCast(self);
        return try this.getOpacity();
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putOpacity(value);
    }
    pub fn getClip(self: *@This()) core.HResult!*RectangleGeometry {
        const this: *IUIElement = @ptrCast(self);
        return try this.getClip();
    }
    pub fn putClip(self: *@This(), value: *RectangleGeometry) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putClip(value);
    }
    pub fn getRenderTransform(self: *@This()) core.HResult!*Transform {
        const this: *IUIElement = @ptrCast(self);
        return try this.getRenderTransform();
    }
    pub fn putRenderTransform(self: *@This(), value: *Transform) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putRenderTransform(value);
    }
    pub fn getProjection(self: *@This()) core.HResult!*Projection {
        const this: *IUIElement = @ptrCast(self);
        return try this.getProjection();
    }
    pub fn putProjection(self: *@This(), value: *Projection) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putProjection(value);
    }
    pub fn getRenderTransformOrigin(self: *@This()) core.HResult!Point {
        const this: *IUIElement = @ptrCast(self);
        return try this.getRenderTransformOrigin();
    }
    pub fn putRenderTransformOrigin(self: *@This(), value: Point) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putRenderTransformOrigin(value);
    }
    pub fn getIsHitTestVisible(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getIsHitTestVisible();
    }
    pub fn putIsHitTestVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putIsHitTestVisible(value);
    }
    pub fn getVisibility(self: *@This()) core.HResult!Visibility {
        const this: *IUIElement = @ptrCast(self);
        return try this.getVisibility();
    }
    pub fn putVisibility(self: *@This(), value: Visibility) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putVisibility(value);
    }
    pub fn getRenderSize(self: *@This()) core.HResult!Size {
        const this: *IUIElement = @ptrCast(self);
        return try this.getRenderSize();
    }
    pub fn getUseLayoutRounding(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getUseLayoutRounding();
    }
    pub fn putUseLayoutRounding(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putUseLayoutRounding(value);
    }
    pub fn getTransitions(self: *@This()) core.HResult!*TransitionCollection {
        const this: *IUIElement = @ptrCast(self);
        return try this.getTransitions();
    }
    pub fn putTransitions(self: *@This(), value: *TransitionCollection) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putTransitions(value);
    }
    pub fn getCacheMode(self: *@This()) core.HResult!*CacheMode {
        const this: *IUIElement = @ptrCast(self);
        return try this.getCacheMode();
    }
    pub fn putCacheMode(self: *@This(), value: *CacheMode) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putCacheMode(value);
    }
    pub fn getIsTapEnabled(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getIsTapEnabled();
    }
    pub fn putIsTapEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putIsTapEnabled(value);
    }
    pub fn getIsDoubleTapEnabled(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getIsDoubleTapEnabled();
    }
    pub fn putIsDoubleTapEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putIsDoubleTapEnabled(value);
    }
    pub fn getIsRightTapEnabled(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getIsRightTapEnabled();
    }
    pub fn putIsRightTapEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putIsRightTapEnabled(value);
    }
    pub fn getIsHoldingEnabled(self: *@This()) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.getIsHoldingEnabled();
    }
    pub fn putIsHoldingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putIsHoldingEnabled(value);
    }
    pub fn getManipulationMode(self: *@This()) core.HResult!ManipulationModes {
        const this: *IUIElement = @ptrCast(self);
        return try this.getManipulationMode();
    }
    pub fn putManipulationMode(self: *@This(), value: ManipulationModes) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.putManipulationMode(value);
    }
    pub fn getPointerCaptures(self: *@This()) core.HResult!*IVectorView(Pointer) {
        const this: *IUIElement = @ptrCast(self);
        return try this.getPointerCaptures();
    }
    pub fn addKeyUp(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addKeyUp(handler);
    }
    pub fn removeKeyUp(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeKeyUp(token);
    }
    pub fn addKeyDown(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addKeyDown(handler);
    }
    pub fn removeKeyDown(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeKeyDown(token);
    }
    pub fn addGotFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addGotFocus(handler);
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeGotFocus(token);
    }
    pub fn addLostFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addLostFocus(handler);
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeLostFocus(token);
    }
    pub fn addDragEnter(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addDragEnter(handler);
    }
    pub fn removeDragEnter(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeDragEnter(token);
    }
    pub fn addDragLeave(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addDragLeave(handler);
    }
    pub fn removeDragLeave(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeDragLeave(token);
    }
    pub fn addDragOver(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addDragOver(handler);
    }
    pub fn removeDragOver(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeDragOver(token);
    }
    pub fn addDrop(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addDrop(handler);
    }
    pub fn removeDrop(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeDrop(token);
    }
    pub fn addPointerPressed(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerPressed(handler);
    }
    pub fn removePointerPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerPressed(token);
    }
    pub fn addPointerMoved(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerMoved(handler);
    }
    pub fn removePointerMoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerMoved(token);
    }
    pub fn addPointerReleased(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerReleased(handler);
    }
    pub fn removePointerReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerReleased(token);
    }
    pub fn addPointerEntered(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerEntered(handler);
    }
    pub fn removePointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerEntered(token);
    }
    pub fn addPointerExited(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerExited(handler);
    }
    pub fn removePointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerExited(token);
    }
    pub fn addPointerCaptureLost(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerCaptureLost(handler);
    }
    pub fn removePointerCaptureLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerCaptureLost(token);
    }
    pub fn addPointerCanceled(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerCanceled(handler);
    }
    pub fn removePointerCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerCanceled(token);
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addPointerWheelChanged(handler);
    }
    pub fn removePointerWheelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removePointerWheelChanged(token);
    }
    pub fn addTapped(self: *@This(), handler: *TappedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addTapped(handler);
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeTapped(token);
    }
    pub fn addDoubleTapped(self: *@This(), handler: *DoubleTappedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addDoubleTapped(handler);
    }
    pub fn removeDoubleTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeDoubleTapped(token);
    }
    pub fn addHolding(self: *@This(), handler: *HoldingEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addHolding(handler);
    }
    pub fn removeHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeHolding(token);
    }
    pub fn addRightTapped(self: *@This(), handler: *RightTappedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addRightTapped(handler);
    }
    pub fn removeRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeRightTapped(token);
    }
    pub fn addManipulationStarting(self: *@This(), handler: *ManipulationStartingEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addManipulationStarting(handler);
    }
    pub fn removeManipulationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeManipulationStarting(token);
    }
    pub fn addManipulationInertiaStarting(self: *@This(), handler: *ManipulationInertiaStartingEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addManipulationInertiaStarting(handler);
    }
    pub fn removeManipulationInertiaStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeManipulationInertiaStarting(token);
    }
    pub fn addManipulationStarted(self: *@This(), handler: *ManipulationStartedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addManipulationStarted(handler);
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeManipulationStarted(token);
    }
    pub fn addManipulationDelta(self: *@This(), handler: *ManipulationDeltaEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addManipulationDelta(handler);
    }
    pub fn removeManipulationDelta(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeManipulationDelta(token);
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *ManipulationCompletedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IUIElement = @ptrCast(self);
        return try this.addManipulationCompleted(handler);
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.removeManipulationCompleted(token);
    }
    pub fn Measure(self: *@This(), availableSize: Size) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.Measure(availableSize);
    }
    pub fn Arrange(self: *@This(), finalRect: Rect) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.Arrange(finalRect);
    }
    pub fn CapturePointer(self: *@This(), value: *Pointer) core.HResult!bool {
        const this: *IUIElement = @ptrCast(self);
        return try this.CapturePointer(value);
    }
    pub fn ReleasePointerCapture(self: *@This(), value: *Pointer) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.ReleasePointerCapture(value);
    }
    pub fn ReleasePointerCaptures(self: *@This()) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.ReleasePointerCaptures();
    }
    pub fn AddHandler(self: *@This(), routedEvent: *RoutedEvent, handler: *IInspectable, handledEventsToo: bool) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.AddHandler(routedEvent, handler, handledEventsToo);
    }
    pub fn RemoveHandler(self: *@This(), routedEvent: *RoutedEvent, handler: *IInspectable) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.RemoveHandler(routedEvent, handler);
    }
    pub fn TransformToVisual(self: *@This(), visual: *UIElement) core.HResult!*GeneralTransform {
        const this: *IUIElement = @ptrCast(self);
        return try this.TransformToVisual(visual);
    }
    pub fn InvalidateMeasure(self: *@This()) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.InvalidateMeasure();
    }
    pub fn InvalidateArrange(self: *@This()) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.InvalidateArrange();
    }
    pub fn UpdateLayout(self: *@This()) core.HResult!void {
        const this: *IUIElement = @ptrCast(self);
        return try this.UpdateLayout();
    }
    pub fn getCompositeMode(self: *@This()) core.HResult!ElementCompositeMode {
        var this: ?*IUIElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompositeMode();
    }
    pub fn putCompositeMode(self: *@This(), value: ElementCompositeMode) core.HResult!void {
        var this: ?*IUIElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompositeMode(value);
    }
    pub fn CancelDirectManipulations(self: *@This()) core.HResult!bool {
        var this: ?*IUIElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CancelDirectManipulations();
    }
    pub fn getTransform3D(self: *@This()) core.HResult!*Transform3D {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransform3D();
    }
    pub fn putTransform3D(self: *@This(), value: *Transform3D) core.HResult!void {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransform3D(value);
    }
    pub fn getCanDrag(self: *@This()) core.HResult!bool {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanDrag();
    }
    pub fn putCanDrag(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanDrag(value);
    }
    pub fn addDragStarting(self: *@This(), handler: *TypedEventHandler(UIElement,DragStartingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addDragStarting(handler);
    }
    pub fn removeDragStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeDragStarting(token);
    }
    pub fn addDropCompleted(self: *@This(), handler: *TypedEventHandler(UIElement,DropCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addDropCompleted(handler);
    }
    pub fn removeDropCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeDropCompleted(token);
    }
    pub fn StartDragAsync(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*IAsyncOperation(DataPackageOperation) {
        var this: ?*IUIElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartDragAsync(pointerPoint);
    }
    pub fn getContextFlyout(self: *@This()) core.HResult!*FlyoutBase {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContextFlyout();
    }
    pub fn putContextFlyout(self: *@This(), value: *FlyoutBase) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContextFlyout(value);
    }
    pub fn getExitDisplayModeOnAccessKeyInvoked(self: *@This()) core.HResult!bool {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExitDisplayModeOnAccessKeyInvoked();
    }
    pub fn putExitDisplayModeOnAccessKeyInvoked(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putExitDisplayModeOnAccessKeyInvoked(value);
    }
    pub fn getIsAccessKeyScope(self: *@This()) core.HResult!bool {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAccessKeyScope();
    }
    pub fn putIsAccessKeyScope(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsAccessKeyScope(value);
    }
    pub fn getAccessKeyScopeOwner(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAccessKeyScopeOwner();
    }
    pub fn putAccessKeyScopeOwner(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAccessKeyScopeOwner(value);
    }
    pub fn getAccessKey(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAccessKey();
    }
    pub fn putAccessKey(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAccessKey(value);
    }
    pub fn addContextRequested(self: *@This(), handler: *TypedEventHandler(UIElement,ContextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContextRequested(handler);
    }
    pub fn removeContextRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContextRequested(token);
    }
    pub fn addContextCanceled(self: *@This(), handler: *TypedEventHandler(UIElement,RoutedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContextCanceled(handler);
    }
    pub fn removeContextCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContextCanceled(token);
    }
    pub fn addAccessKeyDisplayRequested(self: *@This(), handler: *TypedEventHandler(UIElement,AccessKeyDisplayRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccessKeyDisplayRequested(handler);
    }
    pub fn removeAccessKeyDisplayRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccessKeyDisplayRequested(token);
    }
    pub fn addAccessKeyDisplayDismissed(self: *@This(), handler: *TypedEventHandler(UIElement,AccessKeyDisplayDismissedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccessKeyDisplayDismissed(handler);
    }
    pub fn removeAccessKeyDisplayDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccessKeyDisplayDismissed(token);
    }
    pub fn addAccessKeyInvoked(self: *@This(), handler: *TypedEventHandler(UIElement,AccessKeyInvokedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccessKeyInvoked(handler);
    }
    pub fn removeAccessKeyInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccessKeyInvoked(token);
    }
    pub fn getLights(self: *@This()) core.HResult!*IVector(XamlLight) {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLights();
    }
    pub fn getKeyTipPlacementMode(self: *@This()) core.HResult!KeyTipPlacementMode {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipPlacementMode();
    }
    pub fn putKeyTipPlacementMode(self: *@This(), value: KeyTipPlacementMode) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipPlacementMode(value);
    }
    pub fn getKeyTipHorizontalOffset(self: *@This()) core.HResult!f64 {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipHorizontalOffset();
    }
    pub fn putKeyTipHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipHorizontalOffset(value);
    }
    pub fn getKeyTipVerticalOffset(self: *@This()) core.HResult!f64 {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipVerticalOffset();
    }
    pub fn putKeyTipVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipVerticalOffset(value);
    }
    pub fn getXYFocusKeyboardNavigation(self: *@This()) core.HResult!XYFocusKeyboardNavigationMode {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusKeyboardNavigation();
    }
    pub fn putXYFocusKeyboardNavigation(self: *@This(), value: XYFocusKeyboardNavigationMode) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusKeyboardNavigation(value);
    }
    pub fn getXYFocusUpNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusUpNavigationStrategy();
    }
    pub fn putXYFocusUpNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusUpNavigationStrategy(value);
    }
    pub fn getXYFocusDownNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusDownNavigationStrategy();
    }
    pub fn putXYFocusDownNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusDownNavigationStrategy(value);
    }
    pub fn getXYFocusLeftNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusLeftNavigationStrategy();
    }
    pub fn putXYFocusLeftNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusLeftNavigationStrategy(value);
    }
    pub fn getXYFocusRightNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusRightNavigationStrategy();
    }
    pub fn putXYFocusRightNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusRightNavigationStrategy(value);
    }
    pub fn getHighContrastAdjustment(self: *@This()) core.HResult!ElementHighContrastAdjustment {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHighContrastAdjustment();
    }
    pub fn putHighContrastAdjustment(self: *@This(), value: ElementHighContrastAdjustment) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHighContrastAdjustment(value);
    }
    pub fn getTabFocusNavigation(self: *@This()) core.HResult!KeyboardNavigationMode {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTabFocusNavigation();
    }
    pub fn putTabFocusNavigation(self: *@This(), value: KeyboardNavigationMode) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTabFocusNavigation(value);
    }
    pub fn addGettingFocus(self: *@This(), handler: *TypedEventHandler(UIElement,GettingFocusEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addGettingFocus(handler);
    }
    pub fn removeGettingFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeGettingFocus(token);
    }
    pub fn addLosingFocus(self: *@This(), handler: *TypedEventHandler(UIElement,LosingFocusEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLosingFocus(handler);
    }
    pub fn removeLosingFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLosingFocus(token);
    }
    pub fn addNoFocusCandidateFound(self: *@This(), handler: *TypedEventHandler(UIElement,NoFocusCandidateFoundEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addNoFocusCandidateFound(handler);
    }
    pub fn removeNoFocusCandidateFound(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeNoFocusCandidateFound(token);
    }
    pub fn StartBringIntoView(self: *@This()) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartBringIntoView();
    }
    pub fn StartBringIntoViewWithOptions(self: *@This(), options: *BringIntoViewOptions) core.HResult!void {
        var this: ?*IUIElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartBringIntoViewWithOptions(options);
    }
    pub fn getKeyboardAccelerators(self: *@This()) core.HResult!*IVector(KeyboardAccelerator) {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyboardAccelerators();
    }
    pub fn addCharacterReceived(self: *@This(), handler: *TypedEventHandler(UIElement,CharacterReceivedRoutedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCharacterReceived(handler);
    }
    pub fn removeCharacterReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCharacterReceived(token);
    }
    pub fn addProcessKeyboardAccelerators(self: *@This(), handler: *TypedEventHandler(UIElement,ProcessKeyboardAcceleratorEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addProcessKeyboardAccelerators(handler);
    }
    pub fn removeProcessKeyboardAccelerators(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeProcessKeyboardAccelerators(token);
    }
    pub fn addPreviewKeyDown(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPreviewKeyDown(handler);
    }
    pub fn removePreviewKeyDown(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePreviewKeyDown(token);
    }
    pub fn addPreviewKeyUp(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPreviewKeyUp(handler);
    }
    pub fn removePreviewKeyUp(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePreviewKeyUp(token);
    }
    pub fn TryInvokeKeyboardAccelerator(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        var this: ?*IUIElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryInvokeKeyboardAccelerator(args);
    }
    pub fn getKeyTipTarget(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipTarget();
    }
    pub fn putKeyTipTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipTarget(value);
    }
    pub fn getKeyboardAcceleratorPlacementTarget(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyboardAcceleratorPlacementTarget();
    }
    pub fn putKeyboardAcceleratorPlacementTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyboardAcceleratorPlacementTarget(value);
    }
    pub fn getKeyboardAcceleratorPlacementMode(self: *@This()) core.HResult!KeyboardAcceleratorPlacementMode {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyboardAcceleratorPlacementMode();
    }
    pub fn putKeyboardAcceleratorPlacementMode(self: *@This(), value: KeyboardAcceleratorPlacementMode) core.HResult!void {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyboardAcceleratorPlacementMode(value);
    }
    pub fn addBringIntoViewRequested(self: *@This(), handler: *TypedEventHandler(UIElement,BringIntoViewRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBringIntoViewRequested(handler);
    }
    pub fn removeBringIntoViewRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIElement8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBringIntoViewRequested(token);
    }
    pub fn getCanBeScrollAnchor(self: *@This()) core.HResult!bool {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanBeScrollAnchor();
    }
    pub fn putCanBeScrollAnchor(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanBeScrollAnchor(value);
    }
    pub fn getOpacityTransition(self: *@This()) core.HResult!*ScalarTransition {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOpacityTransition();
    }
    pub fn putOpacityTransition(self: *@This(), value: *ScalarTransition) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOpacityTransition(value);
    }
    pub fn getTranslation(self: *@This()) core.HResult!Vector3 {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTranslation();
    }
    pub fn putTranslation(self: *@This(), value: Vector3) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTranslation(value);
    }
    pub fn getTranslationTransition(self: *@This()) core.HResult!*Vector3Transition {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTranslationTransition();
    }
    pub fn putTranslationTransition(self: *@This(), value: *Vector3Transition) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTranslationTransition(value);
    }
    pub fn getRotation(self: *@This()) core.HResult!f32 {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotation();
    }
    pub fn putRotation(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotation(value);
    }
    pub fn getRotationTransition(self: *@This()) core.HResult!*ScalarTransition {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationTransition();
    }
    pub fn putRotationTransition(self: *@This(), value: *ScalarTransition) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotationTransition(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScale(value);
    }
    pub fn getScaleTransition(self: *@This()) core.HResult!*Vector3Transition {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScaleTransition();
    }
    pub fn putScaleTransition(self: *@This(), value: *Vector3Transition) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScaleTransition(value);
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix4x4 {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransformMatrix();
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix4x4) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransformMatrix(value);
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector3 {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCenterPoint();
    }
    pub fn putCenterPoint(self: *@This(), value: Vector3) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCenterPoint(value);
    }
    pub fn getRotationAxis(self: *@This()) core.HResult!Vector3 {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationAxis();
    }
    pub fn putRotationAxis(self: *@This(), value: Vector3) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotationAxis(value);
    }
    pub fn StartAnimation(self: *@This(), animation: *ICompositionAnimationBase) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartAnimation(animation);
    }
    pub fn StopAnimation(self: *@This(), animation: *ICompositionAnimationBase) core.HResult!void {
        var this: ?*IUIElement9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopAnimation(animation);
    }
    pub fn getActualOffset(self: *@This()) core.HResult!Vector3 {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualOffset();
    }
    pub fn getActualSize(self: *@This()) core.HResult!Vector2 {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualSize();
    }
    pub fn getXamlRoot(self: *@This()) core.HResult!*XamlRoot {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXamlRoot();
    }
    pub fn putXamlRoot(self: *@This(), value: *XamlRoot) core.HResult!void {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXamlRoot(value);
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUIContext();
    }
    pub fn getShadow(self: *@This()) core.HResult!*Shadow {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShadow();
    }
    pub fn putShadow(self: *@This(), value: *Shadow) core.HResult!void {
        var this: ?*IUIElement10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElement10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShadow(value);
    }
    pub fn OnCreateAutomationPeer(self: *@This()) core.HResult!*AutomationPeer {
        var this: ?*IUIElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnCreateAutomationPeer();
    }
    pub fn OnDisconnectVisualChildren(self: *@This()) core.HResult!void {
        var this: ?*IUIElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnDisconnectVisualChildren();
    }
    pub fn FindSubElementsForTouchTargeting(self: *@This(), point: Point, boundingRect: Rect) core.HResult!*IIterable(IIterable(Point)) {
        var this: ?*IUIElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindSubElementsForTouchTargeting(point, boundingRect);
    }
    pub fn GetChildrenInTabFocusOrder(self: *@This()) core.HResult!*IIterable(DependencyObject) {
        var this: ?*IUIElementOverrides7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetChildrenInTabFocusOrder();
    }
    pub fn OnProcessKeyboardAccelerators(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        var this: ?*IUIElementOverrides7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnProcessKeyboardAccelerators(args);
    }
    pub fn OnKeyboardAcceleratorInvoked(self: *@This(), args: *KeyboardAcceleratorInvokedEventArgs) core.HResult!void {
        var this: ?*IUIElementOverrides8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnKeyboardAcceleratorInvoked(args);
    }
    pub fn OnBringIntoViewRequested(self: *@This(), e: *BringIntoViewRequestedEventArgs) core.HResult!void {
        var this: ?*IUIElementOverrides8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnBringIntoViewRequested(e);
    }
    pub fn PopulatePropertyInfoOverride(self: *@This(), propertyName: HSTRING, animationPropertyInfo: *AnimationPropertyInfo) core.HResult!void {
        var this: ?*IUIElementOverrides9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIElementOverrides9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PopulatePropertyInfoOverride(propertyName, animationPropertyInfo);
    }
    pub fn PopulatePropertyInfo(self: *@This(), propertyName: HSTRING, propertyInfo: *AnimationPropertyInfo) core.HResult!void {
        var this: ?*IAnimationObject = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAnimationObject.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PopulatePropertyInfo(propertyName, propertyInfo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_KeyDownEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getKeyDownEvent();
    }
    pub fn get_KeyUpEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getKeyUpEvent();
    }
    pub fn get_PointerEnteredEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerEnteredEvent();
    }
    pub fn get_PointerPressedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerPressedEvent();
    }
    pub fn get_PointerMovedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerMovedEvent();
    }
    pub fn get_PointerReleasedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerReleasedEvent();
    }
    pub fn get_PointerExitedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerExitedEvent();
    }
    pub fn get_PointerCaptureLostEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerCaptureLostEvent();
    }
    pub fn get_PointerCanceledEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerCanceledEvent();
    }
    pub fn get_PointerWheelChangedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerWheelChangedEvent();
    }
    pub fn get_TappedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getTappedEvent();
    }
    pub fn get_DoubleTappedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getDoubleTappedEvent();
    }
    pub fn get_HoldingEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getHoldingEvent();
    }
    pub fn get_RightTappedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getRightTappedEvent();
    }
    pub fn get_ManipulationStartingEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getManipulationStartingEvent();
    }
    pub fn get_ManipulationInertiaStartingEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getManipulationInertiaStartingEvent();
    }
    pub fn get_ManipulationStartedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getManipulationStartedEvent();
    }
    pub fn get_ManipulationDeltaEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getManipulationDeltaEvent();
    }
    pub fn get_ManipulationCompletedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getManipulationCompletedEvent();
    }
    pub fn get_DragEnterEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getDragEnterEvent();
    }
    pub fn get_DragLeaveEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getDragLeaveEvent();
    }
    pub fn get_DragOverEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getDragOverEvent();
    }
    pub fn get_DropEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getDropEvent();
    }
    pub fn get_AllowDropProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getAllowDropProperty();
    }
    pub fn get_OpacityProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getOpacityProperty();
    }
    pub fn get_ClipProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getClipProperty();
    }
    pub fn get_RenderTransformProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getRenderTransformProperty();
    }
    pub fn get_ProjectionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getProjectionProperty();
    }
    pub fn get_RenderTransformOriginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getRenderTransformOriginProperty();
    }
    pub fn get_IsHitTestVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getIsHitTestVisibleProperty();
    }
    pub fn get_VisibilityProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getVisibilityProperty();
    }
    pub fn get_UseLayoutRoundingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getUseLayoutRoundingProperty();
    }
    pub fn get_TransitionsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getTransitionsProperty();
    }
    pub fn get_CacheModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getCacheModeProperty();
    }
    pub fn get_IsTapEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getIsTapEnabledProperty();
    }
    pub fn get_IsDoubleTapEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getIsDoubleTapEnabledProperty();
    }
    pub fn get_IsRightTapEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getIsRightTapEnabledProperty();
    }
    pub fn get_IsHoldingEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getIsHoldingEnabledProperty();
    }
    pub fn get_ManipulationModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getManipulationModeProperty();
    }
    pub fn get_PointerCapturesProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStaticsCache.get();
        return try factory.getPointerCapturesProperty();
    }
    pub fn get_Transform3DProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics3Cache.get();
        return try factory.getTransform3DProperty();
    }
    pub fn get_CanDragProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics3Cache.get();
        return try factory.getCanDragProperty();
    }
    pub fn TryStartDirectManipulation(value: *Pointer) core.HResult!bool {
        const factory = @This().IUIElementStatics3Cache.get();
        return try factory.TryStartDirectManipulation(value);
    }
    pub fn get_ShadowProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics10Cache.get();
        return try factory.getShadowProperty();
    }
    pub fn get_LightsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getLightsProperty();
    }
    pub fn get_KeyTipPlacementModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getKeyTipPlacementModeProperty();
    }
    pub fn get_KeyTipHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getKeyTipHorizontalOffsetProperty();
    }
    pub fn get_KeyTipVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getKeyTipVerticalOffsetProperty();
    }
    pub fn get_XYFocusKeyboardNavigationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getXYFocusKeyboardNavigationProperty();
    }
    pub fn get_XYFocusUpNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getXYFocusUpNavigationStrategyProperty();
    }
    pub fn get_XYFocusDownNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getXYFocusDownNavigationStrategyProperty();
    }
    pub fn get_XYFocusLeftNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getXYFocusLeftNavigationStrategyProperty();
    }
    pub fn get_XYFocusRightNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getXYFocusRightNavigationStrategyProperty();
    }
    pub fn get_HighContrastAdjustmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getHighContrastAdjustmentProperty();
    }
    pub fn get_TabFocusNavigationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics5Cache.get();
        return try factory.getTabFocusNavigationProperty();
    }
    pub fn get_ContextFlyoutProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics4Cache.get();
        return try factory.getContextFlyoutProperty();
    }
    pub fn get_ExitDisplayModeOnAccessKeyInvokedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics4Cache.get();
        return try factory.getExitDisplayModeOnAccessKeyInvokedProperty();
    }
    pub fn get_IsAccessKeyScopeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics4Cache.get();
        return try factory.getIsAccessKeyScopeProperty();
    }
    pub fn get_AccessKeyScopeOwnerProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics4Cache.get();
        return try factory.getAccessKeyScopeOwnerProperty();
    }
    pub fn get_AccessKeyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics4Cache.get();
        return try factory.getAccessKeyProperty();
    }
    pub fn get_CompositeModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics2Cache.get();
        return try factory.getCompositeModeProperty();
    }
    pub fn get_BringIntoViewRequestedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics8Cache.get();
        return try factory.getBringIntoViewRequestedEvent();
    }
    pub fn get_ContextRequestedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics8Cache.get();
        return try factory.getContextRequestedEvent();
    }
    pub fn get_KeyTipTargetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics8Cache.get();
        return try factory.getKeyTipTargetProperty();
    }
    pub fn get_KeyboardAcceleratorPlacementTargetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics8Cache.get();
        return try factory.getKeyboardAcceleratorPlacementTargetProperty();
    }
    pub fn get_KeyboardAcceleratorPlacementModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics8Cache.get();
        return try factory.getKeyboardAcceleratorPlacementModeProperty();
    }
    pub fn RegisterAsScrollPort(element: *UIElement) core.HResult!void {
        const factory = @This().IUIElementStatics8Cache.get();
        return try factory.RegisterAsScrollPort(element);
    }
    pub fn get_GettingFocusEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics6Cache.get();
        return try factory.getGettingFocusEvent();
    }
    pub fn get_LosingFocusEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics6Cache.get();
        return try factory.getLosingFocusEvent();
    }
    pub fn get_NoFocusCandidateFoundEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics6Cache.get();
        return try factory.getNoFocusCandidateFoundEvent();
    }
    pub fn get_PreviewKeyDownEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics7Cache.get();
        return try factory.getPreviewKeyDownEvent();
    }
    pub fn get_CharacterReceivedEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics7Cache.get();
        return try factory.getCharacterReceivedEvent();
    }
    pub fn get_PreviewKeyUpEvent() core.HResult!*RoutedEvent {
        const factory = @This().IUIElementStatics7Cache.get();
        return try factory.getPreviewKeyUpEvent();
    }
    pub fn get_CanBeScrollAnchorProperty() core.HResult!*DependencyProperty {
        const factory = @This().IUIElementStatics9Cache.get();
        return try factory.getCanBeScrollAnchorProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.UIElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUIElement.GUID;
    pub const IID: Guid = IUIElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUIElement.SIGNATURE);
    var _IUIElementStaticsCache: FactoryCache(IUIElementStatics, RUNTIME_NAME) = .{};
    var _IUIElementStatics3Cache: FactoryCache(IUIElementStatics3, RUNTIME_NAME) = .{};
    var _IUIElementStatics10Cache: FactoryCache(IUIElementStatics10, RUNTIME_NAME) = .{};
    var _IUIElementStatics5Cache: FactoryCache(IUIElementStatics5, RUNTIME_NAME) = .{};
    var _IUIElementStatics4Cache: FactoryCache(IUIElementStatics4, RUNTIME_NAME) = .{};
    var _IUIElementStatics2Cache: FactoryCache(IUIElementStatics2, RUNTIME_NAME) = .{};
    var _IUIElementStatics8Cache: FactoryCache(IUIElementStatics8, RUNTIME_NAME) = .{};
    var _IUIElementStatics6Cache: FactoryCache(IUIElementStatics6, RUNTIME_NAME) = .{};
    var _IUIElementStatics7Cache: FactoryCache(IUIElementStatics7, RUNTIME_NAME) = .{};
    var _IUIElementStatics9Cache: FactoryCache(IUIElementStatics9, RUNTIME_NAME) = .{};
    var _IUIElementFactoryCache: FactoryCache(IUIElementFactory, RUNTIME_NAME) = .{};
};
pub const FrameworkElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggers(self: *@This()) core.HResult!*TriggerCollection {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getTriggers();
    }
    pub fn getResources(self: *@This()) core.HResult!*ResourceDictionary {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getResources();
    }
    pub fn putResources(self: *@This(), value: *ResourceDictionary) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putResources(value);
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getTag();
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getActualWidth(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getActualWidth();
    }
    pub fn getActualHeight(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getActualHeight();
    }
    pub fn getWidth(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn putWidth(self: *@This(), value: f64) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putWidth(value);
    }
    pub fn getHeight(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn putHeight(self: *@This(), value: f64) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putHeight(value);
    }
    pub fn getMinWidth(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getMinWidth();
    }
    pub fn putMinWidth(self: *@This(), value: f64) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putMinWidth(value);
    }
    pub fn getMaxWidth(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getMaxWidth();
    }
    pub fn putMaxWidth(self: *@This(), value: f64) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putMaxWidth(value);
    }
    pub fn getMinHeight(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getMinHeight();
    }
    pub fn putMinHeight(self: *@This(), value: f64) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putMinHeight(value);
    }
    pub fn getMaxHeight(self: *@This()) core.HResult!f64 {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getMaxHeight();
    }
    pub fn putMaxHeight(self: *@This(), value: f64) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putMaxHeight(value);
    }
    pub fn getHorizontalAlignment(self: *@This()) core.HResult!HorizontalAlignment {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getHorizontalAlignment();
    }
    pub fn putHorizontalAlignment(self: *@This(), value: HorizontalAlignment) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putHorizontalAlignment(value);
    }
    pub fn getVerticalAlignment(self: *@This()) core.HResult!VerticalAlignment {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getVerticalAlignment();
    }
    pub fn putVerticalAlignment(self: *@This(), value: VerticalAlignment) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putVerticalAlignment(value);
    }
    pub fn getMargin(self: *@This()) core.HResult!Thickness {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getMargin();
    }
    pub fn putMargin(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putMargin(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getBaseUri();
    }
    pub fn getDataContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getDataContext();
    }
    pub fn putDataContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putDataContext(value);
    }
    pub fn getStyle(self: *@This()) core.HResult!*Style {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getStyle();
    }
    pub fn putStyle(self: *@This(), value: *Style) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putStyle(value);
    }
    pub fn getParent(self: *@This()) core.HResult!*DependencyObject {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getParent();
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!FlowDirection {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.getFlowDirection();
    }
    pub fn putFlowDirection(self: *@This(), value: FlowDirection) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.putFlowDirection(value);
    }
    pub fn addLoaded(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.addLoaded(handler);
    }
    pub fn removeLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.removeLoaded(token);
    }
    pub fn addUnloaded(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.addUnloaded(handler);
    }
    pub fn removeUnloaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.removeUnloaded(token);
    }
    pub fn addSizeChanged(self: *@This(), handler: *SizeChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.addSizeChanged(handler);
    }
    pub fn removeSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.removeSizeChanged(token);
    }
    pub fn addLayoutUpdated(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.addLayoutUpdated(handler);
    }
    pub fn removeLayoutUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.removeLayoutUpdated(token);
    }
    pub fn FindName(self: *@This(), name: HSTRING) core.HResult!*IInspectable {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.FindName(name);
    }
    pub fn SetBinding(self: *@This(), dp: *DependencyProperty, binding: *BindingBase) core.HResult!void {
        const this: *IFrameworkElement = @ptrCast(self);
        return try this.SetBinding(dp, binding);
    }
    pub fn getRequestedTheme(self: *@This()) core.HResult!ElementTheme {
        var this: ?*IFrameworkElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestedTheme();
    }
    pub fn putRequestedTheme(self: *@This(), value: ElementTheme) core.HResult!void {
        var this: ?*IFrameworkElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequestedTheme(value);
    }
    pub fn addDataContextChanged(self: *@This(), handler: *TypedEventHandler(FrameworkElement,DataContextChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IFrameworkElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addDataContextChanged(handler);
    }
    pub fn removeDataContextChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IFrameworkElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeDataContextChanged(token);
    }
    pub fn GetBindingExpression(self: *@This(), dp: *DependencyProperty) core.HResult!*BindingExpression {
        var this: ?*IFrameworkElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBindingExpression(dp);
    }
    pub fn addLoading(self: *@This(), handler: *TypedEventHandler(FrameworkElement,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IFrameworkElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLoading(handler);
    }
    pub fn removeLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IFrameworkElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLoading(token);
    }
    pub fn getAllowFocusOnInteraction(self: *@This()) core.HResult!bool {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowFocusOnInteraction();
    }
    pub fn putAllowFocusOnInteraction(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowFocusOnInteraction(value);
    }
    pub fn getFocusVisualMargin(self: *@This()) core.HResult!Thickness {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusVisualMargin();
    }
    pub fn putFocusVisualMargin(self: *@This(), value: Thickness) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusVisualMargin(value);
    }
    pub fn getFocusVisualSecondaryThickness(self: *@This()) core.HResult!Thickness {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusVisualSecondaryThickness();
    }
    pub fn putFocusVisualSecondaryThickness(self: *@This(), value: Thickness) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusVisualSecondaryThickness(value);
    }
    pub fn getFocusVisualPrimaryThickness(self: *@This()) core.HResult!Thickness {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusVisualPrimaryThickness();
    }
    pub fn putFocusVisualPrimaryThickness(self: *@This(), value: Thickness) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusVisualPrimaryThickness(value);
    }
    pub fn getFocusVisualSecondaryBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusVisualSecondaryBrush();
    }
    pub fn putFocusVisualSecondaryBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusVisualSecondaryBrush(value);
    }
    pub fn getFocusVisualPrimaryBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusVisualPrimaryBrush();
    }
    pub fn putFocusVisualPrimaryBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusVisualPrimaryBrush(value);
    }
    pub fn getAllowFocusWhenDisabled(self: *@This()) core.HResult!bool {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowFocusWhenDisabled();
    }
    pub fn putAllowFocusWhenDisabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFrameworkElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowFocusWhenDisabled(value);
    }
    pub fn getActualTheme(self: *@This()) core.HResult!ElementTheme {
        var this: ?*IFrameworkElement6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualTheme();
    }
    pub fn addActualThemeChanged(self: *@This(), handler: *TypedEventHandler(FrameworkElement,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IFrameworkElement6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addActualThemeChanged(handler);
    }
    pub fn removeActualThemeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IFrameworkElement6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeActualThemeChanged(token);
    }
    pub fn getIsLoaded(self: *@This()) core.HResult!bool {
        var this: ?*IFrameworkElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLoaded();
    }
    pub fn addEffectiveViewportChanged(self: *@This(), handler: *TypedEventHandler(FrameworkElement,EffectiveViewportChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IFrameworkElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addEffectiveViewportChanged(handler);
    }
    pub fn removeEffectiveViewportChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IFrameworkElement7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElement7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeEffectiveViewportChanged(token);
    }
    pub fn InvalidateViewport(self: *@This()) core.HResult!void {
        var this: ?*IFrameworkElementProtected7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElementProtected7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InvalidateViewport();
    }
    pub fn MeasureOverride(self: *@This(), availableSize: Size) core.HResult!Size {
        var this: ?*IFrameworkElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MeasureOverride(availableSize);
    }
    pub fn ArrangeOverride(self: *@This(), finalSize: Size) core.HResult!Size {
        var this: ?*IFrameworkElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ArrangeOverride(finalSize);
    }
    pub fn OnApplyTemplate(self: *@This()) core.HResult!void {
        var this: ?*IFrameworkElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnApplyTemplate();
    }
    pub fn GoToElementStateCore(self: *@This(), stateName: HSTRING, useTransitions: bool) core.HResult!bool {
        var this: ?*IFrameworkElementOverrides2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameworkElementOverrides2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GoToElementStateCore(stateName, useTransitions);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn DeferTree(element: *DependencyObject) core.HResult!void {
        const factory = @This().IFrameworkElementStatics5Cache.get();
        return try factory.DeferTree(element);
    }
    pub fn get_TagProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getTagProperty();
    }
    pub fn get_LanguageProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getLanguageProperty();
    }
    pub fn get_ActualWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getActualWidthProperty();
    }
    pub fn get_ActualHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getActualHeightProperty();
    }
    pub fn get_WidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getWidthProperty();
    }
    pub fn get_HeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getHeightProperty();
    }
    pub fn get_MinWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getMinWidthProperty();
    }
    pub fn get_MaxWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getMaxWidthProperty();
    }
    pub fn get_MinHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getMinHeightProperty();
    }
    pub fn get_MaxHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getMaxHeightProperty();
    }
    pub fn get_HorizontalAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getHorizontalAlignmentProperty();
    }
    pub fn get_VerticalAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getVerticalAlignmentProperty();
    }
    pub fn get_MarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getMarginProperty();
    }
    pub fn get_NameProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getNameProperty();
    }
    pub fn get_DataContextProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getDataContextProperty();
    }
    pub fn get_StyleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getStyleProperty();
    }
    pub fn get_FlowDirectionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStaticsCache.get();
        return try factory.getFlowDirectionProperty();
    }
    pub fn get_ActualThemeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics6Cache.get();
        return try factory.getActualThemeProperty();
    }
    pub fn get_AllowFocusOnInteractionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getAllowFocusOnInteractionProperty();
    }
    pub fn get_FocusVisualMarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getFocusVisualMarginProperty();
    }
    pub fn get_FocusVisualSecondaryThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getFocusVisualSecondaryThicknessProperty();
    }
    pub fn get_FocusVisualPrimaryThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getFocusVisualPrimaryThicknessProperty();
    }
    pub fn get_FocusVisualSecondaryBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getFocusVisualSecondaryBrushProperty();
    }
    pub fn get_FocusVisualPrimaryBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getFocusVisualPrimaryBrushProperty();
    }
    pub fn get_AllowFocusWhenDisabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics4Cache.get();
        return try factory.getAllowFocusWhenDisabledProperty();
    }
    pub fn get_RequestedThemeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFrameworkElementStatics2Cache.get();
        return try factory.getRequestedThemeProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FrameworkElement {
        const factory = @This().IFrameworkElementFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.FrameworkElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameworkElement.GUID;
    pub const IID: Guid = IFrameworkElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameworkElement.SIGNATURE);
    var _IFrameworkElementStatics5Cache: FactoryCache(IFrameworkElementStatics5, RUNTIME_NAME) = .{};
    var _IFrameworkElementStaticsCache: FactoryCache(IFrameworkElementStatics, RUNTIME_NAME) = .{};
    var _IFrameworkElementStatics6Cache: FactoryCache(IFrameworkElementStatics6, RUNTIME_NAME) = .{};
    var _IFrameworkElementStatics4Cache: FactoryCache(IFrameworkElementStatics4, RUNTIME_NAME) = .{};
    var _IFrameworkElementStatics2Cache: FactoryCache(IFrameworkElementStatics2, RUNTIME_NAME) = .{};
    var _IFrameworkElementFactoryCache: FactoryCache(IFrameworkElementFactory, RUNTIME_NAME) = .{};
};
pub const FrameworkTemplate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FrameworkTemplate {
        const factory = @This().IFrameworkTemplateFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.FrameworkTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameworkTemplate.GUID;
    pub const IID: Guid = IFrameworkTemplate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameworkTemplate.SIGNATURE);
    var _IFrameworkTemplateFactoryCache: FactoryCache(IFrameworkTemplateFactory, RUNTIME_NAME) = .{};
};
pub const CornerRadius = extern struct {
    TopLeft: f64,
    TopRight: f64,
    BottomRight: f64,
    BottomLeft: f64,
};
pub const CornerRadiusHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromRadii(topLeft: f64, topRight: f64, bottomRight: f64, bottomLeft: f64) core.HResult!CornerRadius {
        const factory = @This().ICornerRadiusHelperStaticsCache.get();
        return try factory.FromRadii(topLeft, topRight, bottomRight, bottomLeft);
    }
    pub fn FromUniformRadius(uniformRadius: f64) core.HResult!CornerRadius {
        const factory = @This().ICornerRadiusHelperStaticsCache.get();
        return try factory.FromUniformRadius(uniformRadius);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.CornerRadiusHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICornerRadiusHelper.GUID;
    pub const IID: Guid = ICornerRadiusHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICornerRadiusHelper.SIGNATURE);
    var _ICornerRadiusHelperStaticsCache: FactoryCache(ICornerRadiusHelperStatics, RUNTIME_NAME) = .{};
};
pub const CreateDefaultValueCallback = extern struct {
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.CreateDefaultValueCallback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6ecb12c-15b5-4ec8-b95c-cdd208f08153";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DataContextChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IDataContextChangedEventArgs = @ptrCast(self);
        return try this.getNewValue();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDataContextChangedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDataContextChangedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DataContextChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataContextChangedEventArgs.GUID;
    pub const IID: Guid = IDataContextChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataContextChangedEventArgs.SIGNATURE);
};
pub const DataTemplate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn LoadContent(self: *@This()) core.HResult!*DependencyObject {
        const this: *IDataTemplate = @ptrCast(self);
        return try this.LoadContent();
    }
    pub fn GetElement(self: *@This(), args: *ElementFactoryGetArgs) core.HResult!*UIElement {
        var this: ?*IElementFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IElementFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetElement(args);
    }
    pub fn RecycleElement(self: *@This(), args: *ElementFactoryRecycleArgs) core.HResult!void {
        var this: ?*IElementFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IElementFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RecycleElement(args);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ExtensionInstanceProperty() core.HResult!*DependencyProperty {
        const factory = @This().IDataTemplateStatics2Cache.get();
        return try factory.getExtensionInstanceProperty();
    }
    pub fn GetExtensionInstance(element: *FrameworkElement) core.HResult!*IDataTemplateExtension {
        const factory = @This().IDataTemplateStatics2Cache.get();
        return try factory.GetExtensionInstance(element);
    }
    pub fn SetExtensionInstance(element: *FrameworkElement, value: *IDataTemplateExtension) core.HResult!void {
        const factory = @This().IDataTemplateStatics2Cache.get();
        return try factory.SetExtensionInstance(element, value);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DataTemplate {
        const factory = @This().IDataTemplateFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DataTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataTemplate.GUID;
    pub const IID: Guid = IDataTemplate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataTemplate.SIGNATURE);
    var _IDataTemplateStatics2Cache: FactoryCache(IDataTemplateStatics2, RUNTIME_NAME) = .{};
    var _IDataTemplateFactoryCache: FactoryCache(IDataTemplateFactory, RUNTIME_NAME) = .{};
};
pub const DataTemplateKey = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataType(self: *@This()) core.HResult!*IInspectable {
        const this: *IDataTemplateKey = @ptrCast(self);
        return try this.getDataType();
    }
    pub fn putDataType(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IDataTemplateKey = @ptrCast(self);
        return try this.putDataType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DataTemplateKey {
        const factory = @This().IDataTemplateKeyFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithType(dataType: *IInspectable, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DataTemplateKey {
        const factory = @This().IDataTemplateKeyFactoryCache.get();
        return try factory.CreateInstanceWithType(dataType, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DataTemplateKey";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataTemplateKey.GUID;
    pub const IID: Guid = IDataTemplateKey.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataTemplateKey.SIGNATURE);
    var _IDataTemplateKeyFactoryCache: FactoryCache(IDataTemplateKeyFactory, RUNTIME_NAME) = .{};
};
pub const DebugSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnableFrameRateCounter(self: *@This()) core.HResult!bool {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.getEnableFrameRateCounter();
    }
    pub fn putEnableFrameRateCounter(self: *@This(), value: bool) core.HResult!void {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.putEnableFrameRateCounter(value);
    }
    pub fn getIsBindingTracingEnabled(self: *@This()) core.HResult!bool {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.getIsBindingTracingEnabled();
    }
    pub fn putIsBindingTracingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.putIsBindingTracingEnabled(value);
    }
    pub fn getIsOverdrawHeatMapEnabled(self: *@This()) core.HResult!bool {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.getIsOverdrawHeatMapEnabled();
    }
    pub fn putIsOverdrawHeatMapEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.putIsOverdrawHeatMapEnabled(value);
    }
    pub fn addBindingFailed(self: *@This(), handler: *BindingFailedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.addBindingFailed(handler);
    }
    pub fn removeBindingFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDebugSettings = @ptrCast(self);
        return try this.removeBindingFailed(token);
    }
    pub fn getEnableRedrawRegions(self: *@This()) core.HResult!bool {
        var this: ?*IDebugSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDebugSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEnableRedrawRegions();
    }
    pub fn putEnableRedrawRegions(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDebugSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDebugSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEnableRedrawRegions(value);
    }
    pub fn getIsTextPerformanceVisualizationEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IDebugSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDebugSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTextPerformanceVisualizationEnabled();
    }
    pub fn putIsTextPerformanceVisualizationEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDebugSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDebugSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsTextPerformanceVisualizationEnabled(value);
    }
    pub fn getFailFastOnErrors(self: *@This()) core.HResult!bool {
        var this: ?*IDebugSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDebugSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFailFastOnErrors();
    }
    pub fn putFailFastOnErrors(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDebugSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDebugSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFailFastOnErrors(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DebugSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDebugSettings.GUID;
    pub const IID: Guid = IDebugSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDebugSettings.SIGNATURE);
};
pub const DependencyObjectCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addVectorChanged(self: *@This(), vhnd: *VectorChangedEventHandler(T)) core.HResult!EventRegistrationToken {
        const this: *IObservableVector = @ptrCast(self);
        return try this.addVectorChanged(vhnd);
    }
    pub fn removeVectorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IObservableVector = @ptrCast(self);
        return try this.removeVectorChanged(token);
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
        var this: ?*IVector(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(DependencyObject) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DependencyObjectCollection {
        const factory = @This().IDependencyObjectCollectionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DependencyObjectCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IObservableVector.GUID;
    pub const IID: Guid = IObservableVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IObservableVector.SIGNATURE);
    var _IDependencyObjectCollectionFactoryCache: FactoryCache(IDependencyObjectCollectionFactory, RUNTIME_NAME) = .{};
};
pub const DependencyProperty = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetMetadata(self: *@This(), forType: TypeName) core.HResult!*PropertyMetadata {
        const this: *IDependencyProperty = @ptrCast(self);
        return try this.GetMetadata(forType);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_UnsetValue() core.HResult!*IInspectable {
        const factory = @This().IDependencyPropertyStaticsCache.get();
        return try factory.getUnsetValue();
    }
    pub fn Register(name: HSTRING, propertyType: TypeName, ownerType: TypeName, typeMetadata: *PropertyMetadata) core.HResult!*DependencyProperty {
        const factory = @This().IDependencyPropertyStaticsCache.get();
        return try factory.Register(name, propertyType, ownerType, typeMetadata);
    }
    pub fn RegisterAttached(name: HSTRING, propertyType: TypeName, ownerType: TypeName, defaultMetadata: *PropertyMetadata) core.HResult!*DependencyProperty {
        const factory = @This().IDependencyPropertyStaticsCache.get();
        return try factory.RegisterAttached(name, propertyType, ownerType, defaultMetadata);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DependencyProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDependencyProperty.GUID;
    pub const IID: Guid = IDependencyProperty.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDependencyProperty.SIGNATURE);
    var _IDependencyPropertyStaticsCache: FactoryCache(IDependencyPropertyStatics, RUNTIME_NAME) = .{};
};
pub const DependencyPropertyChangedCallback = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *DependencyObject, dp: *DependencyProperty) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *DependencyObject, dp: *DependencyProperty) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *DependencyObject, dp: *DependencyProperty) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, dp);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DependencyPropertyChangedCallback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45883d16-27bf-4bc1-ac26-94c1601f3a49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *DependencyObject, dp: *DependencyProperty) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DependencyPropertyChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperty(self: *@This()) core.HResult!*DependencyProperty {
        const this: *IDependencyPropertyChangedEventArgs = @ptrCast(self);
        return try this.getProperty();
    }
    pub fn getOldValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IDependencyPropertyChangedEventArgs = @ptrCast(self);
        return try this.getOldValue();
    }
    pub fn getNewValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IDependencyPropertyChangedEventArgs = @ptrCast(self);
        return try this.getNewValue();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DependencyPropertyChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDependencyPropertyChangedEventArgs.GUID;
    pub const IID: Guid = IDependencyPropertyChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDependencyPropertyChangedEventArgs.SIGNATURE);
};
pub const DependencyPropertyChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DependencyPropertyChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09223e5a-75be-4499-8180-1ddc005421c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DispatcherTimer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn putInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.putInterval(value);
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn addTick(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.addTick(handler);
    }
    pub fn removeTick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.removeTick(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IDispatcherTimer = @ptrCast(self);
        return try this.Stop();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DispatcherTimer {
        const factory = @This().IDispatcherTimerFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DispatcherTimer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDispatcherTimer.GUID;
    pub const IID: Guid = IDispatcherTimer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDispatcherTimer.SIGNATURE);
    var _IDispatcherTimerFactoryCache: FactoryCache(IDispatcherTimerFactory, RUNTIME_NAME) = .{};
};
pub const DragEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDragEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDragEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        const this: *IDragEventArgs = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *DataPackage) core.HResult!void {
        const this: *IDragEventArgs = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        const this: *IDragEventArgs = @ptrCast(self);
        return try this.GetPosition(relativeTo);
    }
    pub fn getDataView(self: *@This()) core.HResult!*DataPackageView {
        var this: ?*IDragEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDataView();
    }
    pub fn getDragUIOverride(self: *@This()) core.HResult!*DragUIOverride {
        var this: ?*IDragEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDragUIOverride();
    }
    pub fn getModifiers(self: *@This()) core.HResult!DragDropModifiers {
        var this: ?*IDragEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModifiers();
    }
    pub fn getAcceptedOperation(self: *@This()) core.HResult!DataPackageOperation {
        var this: ?*IDragEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAcceptedOperation();
    }
    pub fn putAcceptedOperation(self: *@This(), value: DataPackageOperation) core.HResult!void {
        var this: ?*IDragEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAcceptedOperation(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DragOperationDeferral {
        var this: ?*IDragEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeferral();
    }
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var this: ?*IDragEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowedOperations();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DragEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragEventArgs.GUID;
    pub const IID: Guid = IDragEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragEventArgs.SIGNATURE);
};
pub const DragEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DragEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DragEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ab1a205-1e73-4bcf-aabc-57b97e21961d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DragEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DragOperationDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IDragOperationDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DragOperationDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragOperationDeferral.GUID;
    pub const IID: Guid = IDragOperationDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragOperationDeferral.SIGNATURE);
};
pub const DragStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IDragStartingEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IDragStartingEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        const this: *IDragStartingEventArgs = @ptrCast(self);
        return try this.getData();
    }
    pub fn getDragUI(self: *@This()) core.HResult!*DragUI {
        const this: *IDragStartingEventArgs = @ptrCast(self);
        return try this.getDragUI();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DragOperationDeferral {
        const this: *IDragStartingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        const this: *IDragStartingEventArgs = @ptrCast(self);
        return try this.GetPosition(relativeTo);
    }
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var this: ?*IDragStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowedOperations();
    }
    pub fn putAllowedOperations(self: *@This(), value: DataPackageOperation) core.HResult!void {
        var this: ?*IDragStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDragStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowedOperations(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DragStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragStartingEventArgs.GUID;
    pub const IID: Guid = IDragStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragStartingEventArgs.SIGNATURE);
};
pub const DragUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetContentFromBitmapImage(self: *@This(), bitmapImage: *BitmapImage) core.HResult!void {
        const this: *IDragUI = @ptrCast(self);
        return try this.SetContentFromBitmapImage(bitmapImage);
    }
    pub fn SetContentFromBitmapImageWithAnchorPoint(self: *@This(), bitmapImage: *BitmapImage, anchorPoint: Point) core.HResult!void {
        const this: *IDragUI = @ptrCast(self);
        return try this.SetContentFromBitmapImageWithAnchorPoint(bitmapImage, anchorPoint);
    }
    pub fn SetContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const this: *IDragUI = @ptrCast(self);
        return try this.SetContentFromSoftwareBitmap(softwareBitmap);
    }
    pub fn SetContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const this: *IDragUI = @ptrCast(self);
        return try this.SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint);
    }
    pub fn SetContentFromDataPackage(self: *@This()) core.HResult!void {
        const this: *IDragUI = @ptrCast(self);
        return try this.SetContentFromDataPackage();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DragUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragUI.GUID;
    pub const IID: Guid = IDragUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragUI.SIGNATURE);
};
pub const DragUIOverride = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.getCaption();
    }
    pub fn putCaption(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.putCaption(value);
    }
    pub fn getIsContentVisible(self: *@This()) core.HResult!bool {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.getIsContentVisible();
    }
    pub fn putIsContentVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.putIsContentVisible(value);
    }
    pub fn getIsCaptionVisible(self: *@This()) core.HResult!bool {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.getIsCaptionVisible();
    }
    pub fn putIsCaptionVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.putIsCaptionVisible(value);
    }
    pub fn getIsGlyphVisible(self: *@This()) core.HResult!bool {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.getIsGlyphVisible();
    }
    pub fn putIsGlyphVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.putIsGlyphVisible(value);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.Clear();
    }
    pub fn SetContentFromBitmapImage(self: *@This(), bitmapImage: *BitmapImage) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.SetContentFromBitmapImage(bitmapImage);
    }
    pub fn SetContentFromBitmapImageWithAnchorPoint(self: *@This(), bitmapImage: *BitmapImage, anchorPoint: Point) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.SetContentFromBitmapImageWithAnchorPoint(bitmapImage, anchorPoint);
    }
    pub fn SetContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.SetContentFromSoftwareBitmap(softwareBitmap);
    }
    pub fn SetContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const this: *IDragUIOverride = @ptrCast(self);
        return try this.SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DragUIOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragUIOverride.GUID;
    pub const IID: Guid = IDragUIOverride.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragUIOverride.SIGNATURE);
};
pub const DropCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDropResult(self: *@This()) core.HResult!DataPackageOperation {
        const this: *IDropCompletedEventArgs = @ptrCast(self);
        return try this.getDropResult();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DropCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDropCompletedEventArgs.GUID;
    pub const IID: Guid = IDropCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDropCompletedEventArgs.SIGNATURE);
};
pub const Duration = extern struct {
    TimeSpan: TimeSpan,
    Type: DurationType,
};
pub const DurationHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Automatic() core.HResult!Duration {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.getAutomatic();
    }
    pub fn get_Forever() core.HResult!Duration {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.getForever();
    }
    pub fn Compare(duration1: Duration, duration2: Duration) core.HResult!i32 {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.Compare(duration1, duration2);
    }
    pub fn FromTimeSpan(timeSpan: TimeSpan) core.HResult!Duration {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.FromTimeSpan(timeSpan);
    }
    pub fn GetHasTimeSpan(target: Duration) core.HResult!bool {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.GetHasTimeSpan(target);
    }
    pub fn Add(target: Duration, duration: Duration) core.HResult!Duration {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.Add(target, duration);
    }
    pub fn Equals(target: Duration, value: Duration) core.HResult!bool {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.Equals(target, value);
    }
    pub fn Subtract(target: Duration, duration: Duration) core.HResult!Duration {
        const factory = @This().IDurationHelperStaticsCache.get();
        return try factory.Subtract(target, duration);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.DurationHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDurationHelper.GUID;
    pub const IID: Guid = IDurationHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDurationHelper.SIGNATURE);
    var _IDurationHelperStaticsCache: FactoryCache(IDurationHelperStatics, RUNTIME_NAME) = .{};
};
pub const DurationType = enum(i32) {
    Automatic = 0,
    TimeSpan = 1,
    Forever = 2,
};
pub const EffectiveViewportChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEffectiveViewport(self: *@This()) core.HResult!Rect {
        const this: *IEffectiveViewportChangedEventArgs = @ptrCast(self);
        return try this.getEffectiveViewport();
    }
    pub fn getMaxViewport(self: *@This()) core.HResult!Rect {
        const this: *IEffectiveViewportChangedEventArgs = @ptrCast(self);
        return try this.getMaxViewport();
    }
    pub fn getBringIntoViewDistanceX(self: *@This()) core.HResult!f64 {
        const this: *IEffectiveViewportChangedEventArgs = @ptrCast(self);
        return try this.getBringIntoViewDistanceX();
    }
    pub fn getBringIntoViewDistanceY(self: *@This()) core.HResult!f64 {
        const this: *IEffectiveViewportChangedEventArgs = @ptrCast(self);
        return try this.getBringIntoViewDistanceY();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.EffectiveViewportChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEffectiveViewportChangedEventArgs.GUID;
    pub const IID: Guid = IEffectiveViewportChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEffectiveViewportChangedEventArgs.SIGNATURE);
};
pub const ElementFactoryGetArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*IInspectable {
        const this: *IElementFactoryGetArgs = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IElementFactoryGetArgs = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn getParent(self: *@This()) core.HResult!*UIElement {
        const this: *IElementFactoryGetArgs = @ptrCast(self);
        return try this.getParent();
    }
    pub fn putParent(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IElementFactoryGetArgs = @ptrCast(self);
        return try this.putParent(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ElementFactoryGetArgs {
        const factory = @This().IElementFactoryGetArgsFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ElementFactoryGetArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IElementFactoryGetArgs.GUID;
    pub const IID: Guid = IElementFactoryGetArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IElementFactoryGetArgs.SIGNATURE);
    var _IElementFactoryGetArgsFactoryCache: FactoryCache(IElementFactoryGetArgsFactory, RUNTIME_NAME) = .{};
};
pub const ElementFactoryRecycleArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getElement(self: *@This()) core.HResult!*UIElement {
        const this: *IElementFactoryRecycleArgs = @ptrCast(self);
        return try this.getElement();
    }
    pub fn putElement(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IElementFactoryRecycleArgs = @ptrCast(self);
        return try this.putElement(value);
    }
    pub fn getParent(self: *@This()) core.HResult!*UIElement {
        const this: *IElementFactoryRecycleArgs = @ptrCast(self);
        return try this.getParent();
    }
    pub fn putParent(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IElementFactoryRecycleArgs = @ptrCast(self);
        return try this.putParent(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ElementFactoryRecycleArgs {
        const factory = @This().IElementFactoryRecycleArgsFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ElementFactoryRecycleArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IElementFactoryRecycleArgs.GUID;
    pub const IID: Guid = IElementFactoryRecycleArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IElementFactoryRecycleArgs.SIGNATURE);
    var _IElementFactoryRecycleArgsFactoryCache: FactoryCache(IElementFactoryRecycleArgsFactory, RUNTIME_NAME) = .{};
};
pub const ElementHighContrastAdjustment = enum(i32) {
    None = 0,
    Application = -2147483648,
    Auto = -1,
};
pub const ElementSoundKind = enum(i32) {
    Focus = 0,
    Invoke = 1,
    Show = 2,
    Hide = 3,
    MovePrevious = 4,
    MoveNext = 5,
    GoBack = 6,
};
pub const ElementSoundMode = enum(i32) {
    Default = 0,
    FocusOnly = 1,
    Off = 2,
};
pub const ElementSoundPlayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Volume() core.HResult!f64 {
        const factory = @This().IElementSoundPlayerStaticsCache.get();
        return try factory.getVolume();
    }
    pub fn put_Volume(value: f64) core.HResult!void {
        const factory = @This().IElementSoundPlayerStaticsCache.get();
        return try factory.putVolume(value);
    }
    pub fn get_State() core.HResult!ElementSoundPlayerState {
        const factory = @This().IElementSoundPlayerStaticsCache.get();
        return try factory.getState();
    }
    pub fn put_State(value: ElementSoundPlayerState) core.HResult!void {
        const factory = @This().IElementSoundPlayerStaticsCache.get();
        return try factory.putState(value);
    }
    pub fn Play(sound: ElementSoundKind) core.HResult!void {
        const factory = @This().IElementSoundPlayerStaticsCache.get();
        return try factory.Play(sound);
    }
    pub fn get_SpatialAudioMode() core.HResult!ElementSpatialAudioMode {
        const factory = @This().IElementSoundPlayerStatics2Cache.get();
        return try factory.getSpatialAudioMode();
    }
    pub fn put_SpatialAudioMode(value: ElementSpatialAudioMode) core.HResult!void {
        const factory = @This().IElementSoundPlayerStatics2Cache.get();
        return try factory.putSpatialAudioMode(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ElementSoundPlayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IElementSoundPlayer.GUID;
    pub const IID: Guid = IElementSoundPlayer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IElementSoundPlayer.SIGNATURE);
    var _IElementSoundPlayerStaticsCache: FactoryCache(IElementSoundPlayerStatics, RUNTIME_NAME) = .{};
    var _IElementSoundPlayerStatics2Cache: FactoryCache(IElementSoundPlayerStatics2, RUNTIME_NAME) = .{};
};
pub const ElementSoundPlayerState = enum(i32) {
    Auto = 0,
    Off = 1,
    On = 2,
};
pub const ElementSpatialAudioMode = enum(i32) {
    Auto = 0,
    Off = 1,
    On = 2,
};
pub const ElementTheme = enum(i32) {
    Default = 0,
    Light = 1,
    Dark = 2,
};
pub const EnteredBackgroundEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *EnteredBackgroundEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *EnteredBackgroundEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *EnteredBackgroundEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.EnteredBackgroundEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93a956ae-1d7f-438b-b7b8-227d96b609c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *EnteredBackgroundEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TriggerBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.TriggerBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITriggerBase.GUID;
    pub const IID: Guid = ITriggerBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITriggerBase.SIGNATURE);
    var _ITriggerBaseFactoryCache: FactoryCache(ITriggerBaseFactory, RUNTIME_NAME) = .{};
};
pub const EventTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRoutedEvent(self: *@This()) core.HResult!*RoutedEvent {
        const this: *IEventTrigger = @ptrCast(self);
        return try this.getRoutedEvent();
    }
    pub fn putRoutedEvent(self: *@This(), value: *RoutedEvent) core.HResult!void {
        const this: *IEventTrigger = @ptrCast(self);
        return try this.putRoutedEvent(value);
    }
    pub fn getActions(self: *@This()) core.HResult!*TriggerActionCollection {
        const this: *IEventTrigger = @ptrCast(self);
        return try this.getActions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEventTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.EventTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEventTrigger.GUID;
    pub const IID: Guid = IEventTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEventTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ExceptionRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IExceptionRoutedEventArgs = @ptrCast(self);
        return try this.getErrorMessage();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ExceptionRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExceptionRoutedEventArgs.GUID;
    pub const IID: Guid = IExceptionRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExceptionRoutedEventArgs.SIGNATURE);
    var _IExceptionRoutedEventArgsFactoryCache: FactoryCache(IExceptionRoutedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const ExceptionRoutedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ExceptionRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ExceptionRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ExceptionRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ExceptionRoutedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68e0e810-f6ea-42bc-855b-5d9b67e6a262";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ExceptionRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const FlowDirection = enum(i32) {
    LeftToRight = 0,
    RightToLeft = 1,
};
pub const FocusState = enum(i32) {
    Unfocused = 0,
    Pointer = 1,
    Keyboard = 2,
    Programmatic = 3,
};
pub const FocusVisualKind = enum(i32) {
    DottedLine = 0,
    HighVisibility = 1,
    Reveal = 2,
};
pub const FontCapitals = enum(i32) {
    Normal = 0,
    AllSmallCaps = 1,
    SmallCaps = 2,
    AllPetiteCaps = 3,
    PetiteCaps = 4,
    Unicase = 5,
    Titling = 6,
};
pub const FontEastAsianLanguage = enum(i32) {
    Normal = 0,
    HojoKanji = 1,
    Jis04 = 2,
    Jis78 = 3,
    Jis83 = 4,
    Jis90 = 5,
    NlcKanji = 6,
    Simplified = 7,
    Traditional = 8,
    TraditionalNames = 9,
};
pub const FontEastAsianWidths = enum(i32) {
    Normal = 0,
    Full = 1,
    Half = 2,
    Proportional = 3,
    Quarter = 4,
    Third = 5,
};
pub const FontFraction = enum(i32) {
    Normal = 0,
    Stacked = 1,
    Slashed = 2,
};
pub const FontNumeralAlignment = enum(i32) {
    Normal = 0,
    Proportional = 1,
    Tabular = 2,
};
pub const FontNumeralStyle = enum(i32) {
    Normal = 0,
    Lining = 1,
    OldStyle = 2,
};
pub const FontVariants = enum(i32) {
    Normal = 0,
    Superscript = 1,
    Subscript = 2,
    Ordinal = 3,
    Inferior = 4,
    Ruby = 5,
};
pub const FrameworkView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Initialize(self: *@This(), applicationView: *CoreApplicationView) core.HResult!void {
        const this: *IFrameworkView = @ptrCast(self);
        return try this.Initialize(applicationView);
    }
    pub fn SetWindow(self: *@This(), window: *CoreWindow) core.HResult!void {
        const this: *IFrameworkView = @ptrCast(self);
        return try this.SetWindow(window);
    }
    pub fn Load(self: *@This(), entryPoint: HSTRING) core.HResult!void {
        const this: *IFrameworkView = @ptrCast(self);
        return try this.Load(entryPoint);
    }
    pub fn Run(self: *@This()) core.HResult!void {
        const this: *IFrameworkView = @ptrCast(self);
        return try this.Run();
    }
    pub fn Uninitialize(self: *@This()) core.HResult!void {
        const this: *IFrameworkView = @ptrCast(self);
        return try this.Uninitialize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFrameworkView.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.FrameworkView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameworkView.GUID;
    pub const IID: Guid = IFrameworkView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameworkView.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FrameworkViewSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateView(self: *@This()) core.HResult!*IFrameworkView {
        const this: *IFrameworkViewSource = @ptrCast(self);
        return try this.CreateView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFrameworkViewSource.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.FrameworkViewSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameworkViewSource.GUID;
    pub const IID: Guid = IFrameworkViewSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameworkViewSource.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GridLength = extern struct {
    Value: f64,
    GridUnitType: GridUnitType,
};
pub const GridLengthHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Auto() core.HResult!GridLength {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.getAuto();
    }
    pub fn FromPixels(pixels: f64) core.HResult!GridLength {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.FromPixels(pixels);
    }
    pub fn FromValueAndType(value: f64, ty: GridUnitType) core.HResult!GridLength {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.FromValueAndType(value, ty);
    }
    pub fn GetIsAbsolute(target: GridLength) core.HResult!bool {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.GetIsAbsolute(target);
    }
    pub fn GetIsAuto(target: GridLength) core.HResult!bool {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.GetIsAuto(target);
    }
    pub fn GetIsStar(target: GridLength) core.HResult!bool {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.GetIsStar(target);
    }
    pub fn Equals(target: GridLength, value: GridLength) core.HResult!bool {
        const factory = @This().IGridLengthHelperStaticsCache.get();
        return try factory.Equals(target, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.GridLengthHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridLengthHelper.GUID;
    pub const IID: Guid = IGridLengthHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridLengthHelper.SIGNATURE);
    var _IGridLengthHelperStaticsCache: FactoryCache(IGridLengthHelperStatics, RUNTIME_NAME) = .{};
};
pub const GridUnitType = enum(i32) {
    Auto = 0,
    Pixel = 1,
    Star = 2,
};
pub const HorizontalAlignment = enum(i32) {
    Left = 0,
    Center = 1,
    Right = 2,
    Stretch = 3,
};
pub const IAdaptiveTrigger = extern struct {
    vtable: *const VTable,
    pub fn getMinWindowWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinWindowWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinWindowWidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MinWindowWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinWindowHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinWindowHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinWindowHeight(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MinWindowHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IAdaptiveTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5f04119-0cd9-49f1-a23f-44e547ab9f1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinWindowWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MinWindowWidth: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MinWindowHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MinWindowHeight: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AdaptiveTrigger {
        var _r: *AdaptiveTrigger = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IAdaptiveTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c966d482-5aeb-4841-9247-c1a0bdd6f59f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **AdaptiveTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveTriggerStatics = extern struct {
    vtable: *const VTable,
    pub fn getMinWindowWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinWindowWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinWindowHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinWindowHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IAdaptiveTriggerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b92e29ea-1615-4350-9c3b-92b2986bf444";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinWindowWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MinWindowHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IApplication = extern struct {
    vtable: *const VTable,
    pub fn getResources(self: *@This()) core.HResult!*ResourceDictionary {
        var _r: *ResourceDictionary = undefined;
        const _c = self.vtable.get_Resources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResources(self: *@This(), value: *ResourceDictionary) core.HResult!void {
        const _c = self.vtable.put_Resources(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDebugSettings(self: *@This()) core.HResult!*DebugSettings {
        var _r: *DebugSettings = undefined;
        const _c = self.vtable.get_DebugSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedTheme(self: *@This()) core.HResult!ApplicationTheme {
        var _r: ApplicationTheme = undefined;
        const _c = self.vtable.get_RequestedTheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestedTheme(self: *@This(), value: ApplicationTheme) core.HResult!void {
        const _c = self.vtable.put_RequestedTheme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnhandledException(self: *@This(), handler: *UnhandledExceptionEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UnhandledException(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnhandledException(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UnhandledException(@ptrCast(self), token);
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
    pub fn addResuming(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Resuming(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResuming(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Resuming(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Exit(self: *@This()) core.HResult!void {
        const _c = self.vtable.Exit(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74b861a1-7487-46a9-9a6e-c78b512726c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Resources: *const fn(self: *anyopaque, _r: **ResourceDictionary) callconv(.winapi) HRESULT,
        put_Resources: *const fn(self: *anyopaque, value: *ResourceDictionary) callconv(.winapi) HRESULT,
        get_DebugSettings: *const fn(self: *anyopaque, _r: **DebugSettings) callconv(.winapi) HRESULT,
        get_RequestedTheme: *const fn(self: *anyopaque, _r: *ApplicationTheme) callconv(.winapi) HRESULT,
        put_RequestedTheme: *const fn(self: *anyopaque, value: ApplicationTheme) callconv(.winapi) HRESULT,
        add_UnhandledException: *const fn(self: *anyopaque, handler: *UnhandledExceptionEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UnhandledException: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Suspending: *const fn(self: *anyopaque, handler: *SuspendingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Suspending: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Resuming: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Resuming: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Exit: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IApplication2 = extern struct {
    vtable: *const VTable,
    pub fn getFocusVisualKind(self: *@This()) core.HResult!FocusVisualKind {
        var _r: FocusVisualKind = undefined;
        const _c = self.vtable.get_FocusVisualKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusVisualKind(self: *@This(), value: FocusVisualKind) core.HResult!void {
        const _c = self.vtable.put_FocusVisualKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequiresPointerMode(self: *@This()) core.HResult!ApplicationRequiresPointerMode {
        var _r: ApplicationRequiresPointerMode = undefined;
        const _c = self.vtable.get_RequiresPointerMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequiresPointerMode(self: *@This(), value: ApplicationRequiresPointerMode) core.HResult!void {
        const _c = self.vtable.put_RequiresPointerMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplication2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "019104be-522a-5904-f52f-de72010429e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusVisualKind: *const fn(self: *anyopaque, _r: *FocusVisualKind) callconv(.winapi) HRESULT,
        put_FocusVisualKind: *const fn(self: *anyopaque, value: FocusVisualKind) callconv(.winapi) HRESULT,
        get_RequiresPointerMode: *const fn(self: *anyopaque, _r: *ApplicationRequiresPointerMode) callconv(.winapi) HRESULT,
        put_RequiresPointerMode: *const fn(self: *anyopaque, value: ApplicationRequiresPointerMode) callconv(.winapi) HRESULT,
        add_LeavingBackground: *const fn(self: *anyopaque, handler: *LeavingBackgroundEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LeavingBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnteredBackground: *const fn(self: *anyopaque, handler: *EnteredBackgroundEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnteredBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IApplication3 = extern struct {
    vtable: *const VTable,
    pub fn getHighContrastAdjustment(self: *@This()) core.HResult!ApplicationHighContrastAdjustment {
        var _r: ApplicationHighContrastAdjustment = undefined;
        const _c = self.vtable.get_HighContrastAdjustment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHighContrastAdjustment(self: *@This(), value: ApplicationHighContrastAdjustment) core.HResult!void {
        const _c = self.vtable.put_HighContrastAdjustment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplication3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b775ad7c-18b8-45ca-a1b0-dc483e4b1028";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HighContrastAdjustment: *const fn(self: *anyopaque, _r: *ApplicationHighContrastAdjustment) callconv(.winapi) HRESULT,
        put_HighContrastAdjustment: *const fn(self: *anyopaque, value: ApplicationHighContrastAdjustment) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Application {
        var _r: *Application = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplicationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93bbe361-be5a-4ee3-b4a3-95118dc97a89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Application) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationInitializationCallbackParams = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplicationInitializationCallbackParams";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "751b792e-5772-4488-8b87-f547faa64474";
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
pub const IApplicationOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnActivated(self: *@This(), args: *IActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnLaunched(self: *@This(), args: *LaunchActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnLaunched(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnFileActivated(self: *@This(), args: *FileActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnFileActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnSearchActivated(self: *@This(), args: *SearchActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnSearchActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnShareTargetActivated(self: *@This(), args: *ShareTargetActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnShareTargetActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnFileOpenPickerActivated(self: *@This(), args: *FileOpenPickerActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnFileOpenPickerActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnFileSavePickerActivated(self: *@This(), args: *FileSavePickerActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnFileSavePickerActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnCachedFileUpdaterActivated(self: *@This(), args: *CachedFileUpdaterActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnCachedFileUpdaterActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnWindowCreated(self: *@This(), args: *WindowCreatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnWindowCreated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplicationOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25f99ff7-9347-459a-9fac-b2d0e11c1a0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnActivated: *const fn(self: *anyopaque, args: *IActivatedEventArgs) callconv(.winapi) HRESULT,
        OnLaunched: *const fn(self: *anyopaque, args: *LaunchActivatedEventArgs) callconv(.winapi) HRESULT,
        OnFileActivated: *const fn(self: *anyopaque, args: *FileActivatedEventArgs) callconv(.winapi) HRESULT,
        OnSearchActivated: *const fn(self: *anyopaque, args: *SearchActivatedEventArgs) callconv(.winapi) HRESULT,
        OnShareTargetActivated: *const fn(self: *anyopaque, args: *ShareTargetActivatedEventArgs) callconv(.winapi) HRESULT,
        OnFileOpenPickerActivated: *const fn(self: *anyopaque, args: *FileOpenPickerActivatedEventArgs) callconv(.winapi) HRESULT,
        OnFileSavePickerActivated: *const fn(self: *anyopaque, args: *FileSavePickerActivatedEventArgs) callconv(.winapi) HRESULT,
        OnCachedFileUpdaterActivated: *const fn(self: *anyopaque, args: *CachedFileUpdaterActivatedEventArgs) callconv(.winapi) HRESULT,
        OnWindowCreated: *const fn(self: *anyopaque, args: *WindowCreatedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationOverrides2 = extern struct {
    vtable: *const VTable,
    pub fn OnBackgroundActivated(self: *@This(), args: *BackgroundActivatedEventArgs) core.HResult!void {
        const _c = self.vtable.OnBackgroundActivated(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplicationOverrides2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db5cd2b9-d3b4-558c-c64e-0434fd1bd889";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnBackgroundActivated: *const fn(self: *anyopaque, args: *BackgroundActivatedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*Application {
        var _r: *Application = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This(), callback: *ApplicationInitializationCallback) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self), callback);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadComponent(self: *@This(), component: *IInspectable, resourceLocator: *Uri) core.HResult!void {
        const _c = self.vtable.LoadComponent(@ptrCast(self), component, resourceLocator);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadComponentWithResourceLocatorWithComponentResourceLocation(self: *@This(), component: *IInspectable, resourceLocator: *Uri, componentResourceLocation: ComponentResourceLocation) core.HResult!void {
        const _c = self.vtable.LoadComponentWithResourceLocatorWithComponentResourceLocation(@ptrCast(self), component, resourceLocator, componentResourceLocation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IApplicationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06499997-f7b4-45fe-b763-7577d1d3cb4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **Application) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque, callback: *ApplicationInitializationCallback) callconv(.winapi) HRESULT,
        LoadComponent: *const fn(self: *anyopaque, component: *IInspectable, resourceLocator: *Uri) callconv(.winapi) HRESULT,
        LoadComponentWithResourceLocatorWithComponentResourceLocation: *const fn(self: *anyopaque, component: *IInspectable, resourceLocator: *Uri, componentResourceLocation: ComponentResourceLocation) callconv(.winapi) HRESULT,
    };
};
pub const IBindingFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IBindingFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32c1d013-4dbd-446d-bbb8-0de35048a449";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBringIntoViewOptions = extern struct {
    vtable: *const VTable,
    pub fn getAnimationDesired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AnimationDesired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAnimationDesired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AnimationDesired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetRect(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_TargetRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const _c = self.vtable.put_TargetRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IBringIntoViewOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19bdd1b5-c7cb-46d9-a4dd-a1bbe83ef2fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnimationDesired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AnimationDesired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TargetRect: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        put_TargetRect: *const fn(self: *anyopaque, value: *IReference(Rect)) callconv(.winapi) HRESULT,
    };
};
pub const IBringIntoViewOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalAlignmentRatio(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_HorizontalAlignmentRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalAlignmentRatio(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_VerticalAlignmentRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_HorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_VerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IBringIntoViewOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e855e08e-64b6-1211-bddb-1fddbb6e8231";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalAlignmentRatio: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalAlignmentRatio: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_VerticalAlignmentRatio: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_VerticalAlignmentRatio: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_HorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_VerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IBringIntoViewRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTargetElement(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_TargetElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetElement(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_TargetElement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAnimationDesired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AnimationDesired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAnimationDesired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AnimationDesired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_TargetRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetRect(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_TargetRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_HorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_VerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.IBringIntoViewRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e629ec4-2206-4c8b-94ae-bdb66a4ebfd1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetElement: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_TargetElement: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
        get_AnimationDesired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AnimationDesired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TargetRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_TargetRect: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_HorizontalAlignmentRatio: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticalAlignmentRatio: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_VerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBrushTransition = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IBrushTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1116972c-9dad-5429-a7dd-b2b7d061ab8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IBrushTransitionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BrushTransition {
        var _r: *BrushTransition = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IBrushTransitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3dbe7368-13d4-510c-a215-7539f4787b52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **BrushTransition) callconv(.winapi) HRESULT,
    };
};
pub const IColorPaletteResources = extern struct {
    vtable: *const VTable,
    pub fn getAltHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_AltHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAltHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_AltHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAltLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_AltLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAltLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_AltLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAltMedium(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_AltMedium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAltMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_AltMedium(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAltMediumHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_AltMediumHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAltMediumHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_AltMediumHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAltMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_AltMediumLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAltMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_AltMediumLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BaseHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BaseHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BaseLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BaseLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseMedium(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BaseMedium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BaseMedium(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseMediumHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BaseMediumHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseMediumHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BaseMediumHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BaseMediumLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BaseMediumLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeAltLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeAltLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeAltLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeAltLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeBlackHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeBlackHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeBlackHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeBlackHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeBlackLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeBlackLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeBlackLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeBlackLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeBlackMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeBlackMediumLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeBlackMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeBlackMediumLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeBlackMedium(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeBlackMedium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeBlackMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeBlackMedium(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeDisabledHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeDisabledHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeDisabledHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeDisabledHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeDisabledLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeDisabledLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeDisabledLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeDisabledLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeHigh(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeHigh(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeMedium(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeMedium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeMedium(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeMediumLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeMediumLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeMediumLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeMediumLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeWhite(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeWhite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeWhite(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeWhite(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChromeGray(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ChromeGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromeGray(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ChromeGray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListLow(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ListLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListLow(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ListLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListMedium(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ListMedium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListMedium(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ListMedium(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getErrorText(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ErrorText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putErrorText(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ErrorText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccent(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_Accent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccent(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_Accent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IColorPaletteResources";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "258088c4-aef2-5d3f-833b-c36db6278ed9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AltHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_AltHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_AltLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_AltLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_AltMedium: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_AltMedium: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_AltMediumHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_AltMediumHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_AltMediumLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_AltMediumLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_BaseHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BaseHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_BaseLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BaseLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_BaseMedium: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BaseMedium: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_BaseMediumHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BaseMediumHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_BaseMediumLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BaseMediumLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeAltLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeAltLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeBlackHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeBlackHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeBlackLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeBlackLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeBlackMediumLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeBlackMediumLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeBlackMedium: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeBlackMedium: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeDisabledHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeDisabledHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeDisabledLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeDisabledLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeHigh: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeHigh: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeMedium: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeMedium: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeMediumLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeMediumLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeWhite: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeWhite: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ChromeGray: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ChromeGray: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ListLow: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ListLow: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ListMedium: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ListMedium: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ErrorText: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ErrorText: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_Accent: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_Accent: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
    };
};
pub const IColorPaletteResourcesFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorPaletteResources {
        var _r: *ColorPaletteResources = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IColorPaletteResourcesFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a57f0783-1876-5cc0-8ea5-bc77b17e0f7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ColorPaletteResources) callconv(.winapi) HRESULT,
    };
};
pub const ICornerRadiusHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ICornerRadiusHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd7be182-1cdb-4288-b8c8-85ee79297bfc";
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
pub const ICornerRadiusHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromRadii(self: *@This(), topLeft: f64, topRight: f64, bottomRight: f64, bottomLeft: f64) core.HResult!CornerRadius {
        var _r: CornerRadius = undefined;
        const _c = self.vtable.FromRadii(@ptrCast(self), topLeft, topRight, bottomRight, bottomLeft, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromUniformRadius(self: *@This(), uniformRadius: f64) core.HResult!CornerRadius {
        var _r: CornerRadius = undefined;
        const _c = self.vtable.FromUniformRadius(@ptrCast(self), uniformRadius, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ICornerRadiusHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4a1f659-d4d4-451f-a387-d6bf4b2451d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromRadii: *const fn(self: *anyopaque, topLeft: f64, topRight: f64, bottomRight: f64, bottomLeft: f64, _r: *CornerRadius) callconv(.winapi) HRESULT,
        FromUniformRadius: *const fn(self: *anyopaque, uniformRadius: f64, _r: *CornerRadius) callconv(.winapi) HRESULT,
    };
};
pub const IDataContextChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataContextChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7da68e21-0b8f-4f9f-a143-f8e7780136a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplate = extern struct {
    vtable: *const VTable,
    pub fn LoadContent(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.LoadContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9910aec7-8ab5-4118-9bc6-09f45a35073d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadContent: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplateExtension = extern struct {
    vtable: *const VTable,
    pub fn ResetTemplate(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetTemplate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessBinding(self: *@This(), phase: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ProcessBinding(@ptrCast(self), phase, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProcessBindings(self: *@This(), arg: *ContainerContentChangingEventArgs) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.ProcessBindings(@ptrCast(self), arg, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataTemplateExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "595e9547-cdff-4b92-b773-ab396878f353";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ResetTemplate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ProcessBinding: *const fn(self: *anyopaque, phase: u32, _r: *bool) callconv(.winapi) HRESULT,
        ProcessBindings: *const fn(self: *anyopaque, arg: *ContainerContentChangingEventArgs, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplateFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DataTemplate {
        var _r: *DataTemplate = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataTemplateFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51ed9d7e-2b53-475b-9c88-0c1832c8351a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DataTemplate) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplateKey = extern struct {
    vtable: *const VTable,
    pub fn getDataType(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_DataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataType(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_DataType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataTemplateKey";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "873b6c28-cceb-4b61-86fa-b2cec39cc2fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataType: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_DataType: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplateKeyFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DataTemplateKey {
        var _r: *DataTemplateKey = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithType(self: *@This(), dataType: *IInspectable, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DataTemplateKey {
        var _r: *DataTemplateKey = undefined;
        const _c = self.vtable.CreateInstanceWithType(@ptrCast(self), dataType, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataTemplateKeyFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e96b2959-d982-4152-91cb-de0e4dfd7693";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DataTemplateKey) callconv(.winapi) HRESULT,
        CreateInstanceWithType: *const fn(self: *anyopaque, dataType: *IInspectable, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DataTemplateKey) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplateStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getExtensionInstanceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExtensionInstanceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetExtensionInstance(self: *@This(), element: *FrameworkElement) core.HResult!*IDataTemplateExtension {
        var _r: *IDataTemplateExtension = undefined;
        const _c = self.vtable.GetExtensionInstance(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetExtensionInstance(self: *@This(), element: *FrameworkElement, value: *IDataTemplateExtension) core.HResult!void {
        const _c = self.vtable.SetExtensionInstance(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDataTemplateStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8af77d73-aa01-471e-bedd-8bad86219b77";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtensionInstanceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetExtensionInstance: *const fn(self: *anyopaque, element: *FrameworkElement, _r: **IDataTemplateExtension) callconv(.winapi) HRESULT,
        SetExtensionInstance: *const fn(self: *anyopaque, element: *FrameworkElement, value: *IDataTemplateExtension) callconv(.winapi) HRESULT,
    };
};
pub const IDebugSettings = extern struct {
    vtable: *const VTable,
    pub fn getEnableFrameRateCounter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableFrameRateCounter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableFrameRateCounter(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableFrameRateCounter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsBindingTracingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBindingTracingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsBindingTracingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsBindingTracingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOverdrawHeatMapEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverdrawHeatMapEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOverdrawHeatMapEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOverdrawHeatMapEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBindingFailed(self: *@This(), handler: *BindingFailedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BindingFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBindingFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BindingFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDebugSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d451f98-c6a7-4d17-8398-d83a067183d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnableFrameRateCounter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableFrameRateCounter: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsBindingTracingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsBindingTracingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsOverdrawHeatMapEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOverdrawHeatMapEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_BindingFailed: *const fn(self: *anyopaque, handler: *BindingFailedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BindingFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDebugSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getEnableRedrawRegions(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableRedrawRegions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableRedrawRegions(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableRedrawRegions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDebugSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48d37585-e1a6-469b-83c8-30825037119e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnableRedrawRegions: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableRedrawRegions: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDebugSettings3 = extern struct {
    vtable: *const VTable,
    pub fn getIsTextPerformanceVisualizationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTextPerformanceVisualizationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTextPerformanceVisualizationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTextPerformanceVisualizationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDebugSettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6bb5022-0625-479f-8e32-4b583d73b7ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTextPerformanceVisualizationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTextPerformanceVisualizationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDebugSettings4 = extern struct {
    vtable: *const VTable,
    pub fn getFailFastOnErrors(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_FailFastOnErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFailFastOnErrors(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_FailFastOnErrors(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDebugSettings4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9001e45-e824-5a5f-866c-e20cec88a8fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FailFastOnErrors: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_FailFastOnErrors: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyObject = extern struct {
    vtable: *const VTable,
    pub fn GetValue(self: *@This(), dp: *DependencyProperty) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetValue(@ptrCast(self), dp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValue(self: *@This(), dp: *DependencyProperty, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetValue(@ptrCast(self), dp, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearValue(self: *@This(), dp: *DependencyProperty) core.HResult!void {
        const _c = self.vtable.ClearValue(@ptrCast(self), dp);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadLocalValue(self: *@This(), dp: *DependencyProperty) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ReadLocalValue(@ptrCast(self), dp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnimationBaseValue(self: *@This(), dp: *DependencyProperty) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetAnimationBaseValue(@ptrCast(self), dp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c526665-f60e-4912-af59-5fe0680f089d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetValue: *const fn(self: *anyopaque, dp: *DependencyProperty, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetValue: *const fn(self: *anyopaque, dp: *DependencyProperty, value: *IInspectable) callconv(.winapi) HRESULT,
        ClearValue: *const fn(self: *anyopaque, dp: *DependencyProperty) callconv(.winapi) HRESULT,
        ReadLocalValue: *const fn(self: *anyopaque, dp: *DependencyProperty, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetAnimationBaseValue: *const fn(self: *anyopaque, dp: *DependencyProperty, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyObject2 = extern struct {
    vtable: *const VTable,
    pub fn RegisterPropertyChangedCallback(self: *@This(), dp: *DependencyProperty, callback: *DependencyPropertyChangedCallback) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.RegisterPropertyChangedCallback(@ptrCast(self), dp, callback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterPropertyChangedCallback(self: *@This(), dp: *DependencyProperty, token: i64) core.HResult!void {
        const _c = self.vtable.UnregisterPropertyChangedCallback(@ptrCast(self), dp, token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyObject2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29fed85d-3d22-43a1-add0-17027c08b212";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterPropertyChangedCallback: *const fn(self: *anyopaque, dp: *DependencyProperty, callback: *DependencyPropertyChangedCallback, _r: *i64) callconv(.winapi) HRESULT,
        UnregisterPropertyChangedCallback: *const fn(self: *anyopaque, dp: *DependencyProperty, token: i64) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyObjectCollectionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DependencyObjectCollection {
        var _r: *DependencyObjectCollection = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyObjectCollectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "051e79ff-b3a8-49ee-b5af-ac8f68b649e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DependencyObjectCollection) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyObjectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyObjectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a03af92-7d8a-4937-884f-ecf34fe02acb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyProperty = extern struct {
    vtable: *const VTable,
    pub fn GetMetadata(self: *@This(), forType: TypeName) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.GetMetadata(@ptrCast(self), forType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85b13970-9bc4-4e96-acf1-30c8fd3d55c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMetadata: *const fn(self: *anyopaque, forType: TypeName, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyPropertyChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_OldValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyPropertyChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81212c2b-24d0-4957-abc3-224470a93a4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OldValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IDependencyPropertyStatics = extern struct {
    vtable: *const VTable,
    pub fn getUnsetValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_UnsetValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Register(self: *@This(), name: HSTRING, propertyType: TypeName, ownerType: TypeName, typeMetadata: *PropertyMetadata) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.Register(@ptrCast(self), name, propertyType, ownerType, typeMetadata, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterAttached(self: *@This(), name: HSTRING, propertyType: TypeName, ownerType: TypeName, defaultMetadata: *PropertyMetadata) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.RegisterAttached(@ptrCast(self), name, propertyType, ownerType, defaultMetadata, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDependencyPropertyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49e5f28f-8259-4d5c-aae0-83d56dbb68d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnsetValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, name: HSTRING, propertyType: TypeName, ownerType: TypeName, typeMetadata: *PropertyMetadata, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        RegisterAttached: *const fn(self: *anyopaque, name: HSTRING, propertyType: TypeName, ownerType: TypeName, defaultMetadata: *PropertyMetadata, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherTimer = extern struct {
    vtable: *const VTable,
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Interval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTick(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Tick(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Tick(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDispatcherTimer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d160ce46-cd22-4f5f-8c97-40e61da3e2dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Interval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_Tick: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Tick: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherTimerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DispatcherTimer {
        var _r: *DispatcherTimer = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDispatcherTimerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9961e6e-3626-403a-afe0-040d58165632";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DispatcherTimer) callconv(.winapi) HRESULT,
    };
};
pub const IDragEventArgs = extern struct {
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
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        var _r: *DataPackage = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *DataPackage) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPosition(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b440c7c3-02b4-4980-9342-25dae1c0f188";
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
        get_Data: *const fn(self: *anyopaque, _r: **DataPackage) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *DataPackage) callconv(.winapi) HRESULT,
        GetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IDragEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getDataView(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.get_DataView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragUIOverride(self: *@This()) core.HResult!*DragUIOverride {
        var _r: *DragUIOverride = undefined;
        const _c = self.vtable.get_DragUIOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModifiers(self: *@This()) core.HResult!DragDropModifiers {
        var _r: DragDropModifiers = undefined;
        const _c = self.vtable.get_Modifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAcceptedOperation(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_AcceptedOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAcceptedOperation(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const _c = self.vtable.put_AcceptedOperation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DragOperationDeferral {
        var _r: *DragOperationDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26336658-2917-411d-bfc3-2f22471cbbe7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataView: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
        get_DragUIOverride: *const fn(self: *anyopaque, _r: **DragUIOverride) callconv(.winapi) HRESULT,
        get_Modifiers: *const fn(self: *anyopaque, _r: *DragDropModifiers) callconv(.winapi) HRESULT,
        get_AcceptedOperation: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
        put_AcceptedOperation: *const fn(self: *anyopaque, value: DataPackageOperation) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **DragOperationDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IDragEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_AllowedOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d04fc3c6-8119-427a-8152-5f9550cc0416";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowedOperations: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
    };
};
pub const IDragOperationDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragOperationDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba73ecba-1b73-4086-b3d3-c223beea1633";
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
pub const IDragStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Cancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Cancel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        var _r: *DataPackage = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragUI(self: *@This()) core.HResult!*DragUI {
        var _r: *DragUI = undefined;
        const _c = self.vtable.get_DragUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DragOperationDeferral {
        var _r: *DragOperationDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPosition(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6800d3fa-90b8-46f9-8e30-5ac25f73f0f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **DataPackage) callconv(.winapi) HRESULT,
        get_DragUI: *const fn(self: *anyopaque, _r: **DragUI) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **DragOperationDeferral) callconv(.winapi) HRESULT,
        GetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IDragStartingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_AllowedOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowedOperations(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const _c = self.vtable.put_AllowedOperations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragStartingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d855e08e-44b6-4211-bd0b-7fddbb6e8231";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowedOperations: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
        put_AllowedOperations: *const fn(self: *anyopaque, value: DataPackageOperation) callconv(.winapi) HRESULT,
    };
};
pub const IDragUI = extern struct {
    vtable: *const VTable,
    pub fn SetContentFromBitmapImage(self: *@This(), bitmapImage: *BitmapImage) core.HResult!void {
        const _c = self.vtable.SetContentFromBitmapImage(@ptrCast(self), bitmapImage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromBitmapImageWithAnchorPoint(self: *@This(), bitmapImage: *BitmapImage, anchorPoint: Point) core.HResult!void {
        const _c = self.vtable.SetContentFromBitmapImageWithAnchorPoint(@ptrCast(self), bitmapImage, anchorPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.SetContentFromSoftwareBitmap(@ptrCast(self), softwareBitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const _c = self.vtable.SetContentFromSoftwareBitmapWithAnchorPoint(@ptrCast(self), softwareBitmap, anchorPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromDataPackage(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetContentFromDataPackage(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d9bd838-7c60-4842-9170-346fe10a226a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetContentFromBitmapImage: *const fn(self: *anyopaque, bitmapImage: *BitmapImage) callconv(.winapi) HRESULT,
        SetContentFromBitmapImageWithAnchorPoint: *const fn(self: *anyopaque, bitmapImage: *BitmapImage, anchorPoint: Point) callconv(.winapi) HRESULT,
        SetContentFromSoftwareBitmap: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
        SetContentFromSoftwareBitmapWithAnchorPoint: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap, anchorPoint: Point) callconv(.winapi) HRESULT,
        SetContentFromDataPackage: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDragUIOverride = extern struct {
    vtable: *const VTable,
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Caption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCaption(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Caption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsContentVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsContentVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsContentVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsContentVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCaptionVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCaptionVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCaptionVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCaptionVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsGlyphVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGlyphVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsGlyphVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsGlyphVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromBitmapImage(self: *@This(), bitmapImage: *BitmapImage) core.HResult!void {
        const _c = self.vtable.SetContentFromBitmapImage(@ptrCast(self), bitmapImage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromBitmapImageWithAnchorPoint(self: *@This(), bitmapImage: *BitmapImage, anchorPoint: Point) core.HResult!void {
        const _c = self.vtable.SetContentFromBitmapImageWithAnchorPoint(@ptrCast(self), bitmapImage, anchorPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.SetContentFromSoftwareBitmap(@ptrCast(self), softwareBitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const _c = self.vtable.SetContentFromSoftwareBitmapWithAnchorPoint(@ptrCast(self), softwareBitmap, anchorPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDragUIOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Caption: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Caption: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsContentVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsContentVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCaptionVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCaptionVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsGlyphVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsGlyphVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetContentFromBitmapImage: *const fn(self: *anyopaque, bitmapImage: *BitmapImage) callconv(.winapi) HRESULT,
        SetContentFromBitmapImageWithAnchorPoint: *const fn(self: *anyopaque, bitmapImage: *BitmapImage, anchorPoint: Point) callconv(.winapi) HRESULT,
        SetContentFromSoftwareBitmap: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
        SetContentFromSoftwareBitmapWithAnchorPoint: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap, anchorPoint: Point) callconv(.winapi) HRESULT,
    };
};
pub const IDropCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDropResult(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_DropResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDropCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c4fc188-95bc-4261-9ec5-21cab677b734";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DropResult: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
    };
};
pub const IDurationHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDurationHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25c1659f-4497-4135-940f-ee96f4d6e934";
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
pub const IDurationHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getAutomatic(self: *@This()) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.get_Automatic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForever(self: *@This()) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.get_Forever(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Compare(self: *@This(), duration1: Duration, duration2: Duration) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Compare(@ptrCast(self), duration1, duration2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromTimeSpan(self: *@This(), timeSpan: TimeSpan) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.FromTimeSpan(@ptrCast(self), timeSpan, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHasTimeSpan(self: *@This(), target: Duration) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetHasTimeSpan(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Add(self: *@This(), target: Duration, duration: Duration) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.Add(@ptrCast(self), target, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), target: Duration, value: Duration) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), target, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Subtract(self: *@This(), target: Duration, duration: Duration) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.Subtract(@ptrCast(self), target, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IDurationHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc88093e-3547-4ec0-b519-ffa8f9c4838c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Automatic: *const fn(self: *anyopaque, _r: *Duration) callconv(.winapi) HRESULT,
        get_Forever: *const fn(self: *anyopaque, _r: *Duration) callconv(.winapi) HRESULT,
        Compare: *const fn(self: *anyopaque, duration1: Duration, duration2: Duration, _r: *i32) callconv(.winapi) HRESULT,
        FromTimeSpan: *const fn(self: *anyopaque, timeSpan: TimeSpan, _r: *Duration) callconv(.winapi) HRESULT,
        GetHasTimeSpan: *const fn(self: *anyopaque, target: Duration, _r: *bool) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, target: Duration, duration: Duration, _r: *Duration) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, target: Duration, value: Duration, _r: *bool) callconv(.winapi) HRESULT,
        Subtract: *const fn(self: *anyopaque, target: Duration, duration: Duration, _r: *Duration) callconv(.winapi) HRESULT,
    };
};
pub const IEffectiveViewportChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEffectiveViewport(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_EffectiveViewport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxViewport(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_MaxViewport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBringIntoViewDistanceX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_BringIntoViewDistanceX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBringIntoViewDistanceY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_BringIntoViewDistanceY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IEffectiveViewportChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55ee2e81-1c18-59ed-bd3d-c4ca8fa7d190";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EffectiveViewport: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_MaxViewport: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_BringIntoViewDistanceX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_BringIntoViewDistanceY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IElementFactory = extern struct {
    vtable: *const VTable,
    pub fn GetElement(self: *@This(), args: *ElementFactoryGetArgs) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.GetElement(@ptrCast(self), args, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RecycleElement(self: *@This(), args: *ElementFactoryRecycleArgs) core.HResult!void {
        const _c = self.vtable.RecycleElement(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17d2ad90-1370-55c8-80e1-78b49004a9e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetElement: *const fn(self: *anyopaque, args: *ElementFactoryGetArgs, _r: **UIElement) callconv(.winapi) HRESULT,
        RecycleElement: *const fn(self: *anyopaque, args: *ElementFactoryRecycleArgs) callconv(.winapi) HRESULT,
    };
};
pub const IElementFactoryGetArgs = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParent(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putParent(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Parent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementFactoryGetArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb508774-41a3-5829-9255-cf452d041df4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Parent: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IElementFactoryGetArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ElementFactoryGetArgs {
        var _r: *ElementFactoryGetArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementFactoryGetArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3b6dae7-883b-5fd7-be80-2059d877e783";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ElementFactoryGetArgs) callconv(.winapi) HRESULT,
    };
};
pub const IElementFactoryRecycleArgs = extern struct {
    vtable: *const VTable,
    pub fn getElement(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Element(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putElement(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Element(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParent(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putParent(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Parent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementFactoryRecycleArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86f16b14-37e8-5dd8-a90c-25d3710318b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Element: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Element: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Parent: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IElementFactoryRecycleArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ElementFactoryRecycleArgs {
        var _r: *ElementFactoryRecycleArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementFactoryRecycleArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d926509-ea0d-541b-8271-f9e9118f5e7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ElementFactoryRecycleArgs) callconv(.winapi) HRESULT,
    };
};
pub const IElementSoundPlayer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementSoundPlayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "387773a5-f036-460c-9b81-f3d6ea43f6f2";
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
pub const IElementSoundPlayerStatics = extern struct {
    vtable: *const VTable,
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Volume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Volume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!ElementSoundPlayerState {
        var _r: ElementSoundPlayerState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putState(self: *@This(), value: ElementSoundPlayerState) core.HResult!void {
        const _c = self.vtable.put_State(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Play(self: *@This(), sound: ElementSoundKind) core.HResult!void {
        const _c = self.vtable.Play(@ptrCast(self), sound);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementSoundPlayerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217a9004-981d-41c9-b152-ada911a4b13a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Volume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Volume: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *ElementSoundPlayerState) callconv(.winapi) HRESULT,
        put_State: *const fn(self: *anyopaque, value: ElementSoundPlayerState) callconv(.winapi) HRESULT,
        Play: *const fn(self: *anyopaque, sound: ElementSoundKind) callconv(.winapi) HRESULT,
    };
};
pub const IElementSoundPlayerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getSpatialAudioMode(self: *@This()) core.HResult!ElementSpatialAudioMode {
        var _r: ElementSpatialAudioMode = undefined;
        const _c = self.vtable.get_SpatialAudioMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpatialAudioMode(self: *@This(), value: ElementSpatialAudioMode) core.HResult!void {
        const _c = self.vtable.put_SpatialAudioMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IElementSoundPlayerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2505956-ed41-48d7-aae8-f2abcb444929";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SpatialAudioMode: *const fn(self: *anyopaque, _r: *ElementSpatialAudioMode) callconv(.winapi) HRESULT,
        put_SpatialAudioMode: *const fn(self: *anyopaque, value: ElementSpatialAudioMode) callconv(.winapi) HRESULT,
    };
};
pub const IEventTrigger = extern struct {
    vtable: *const VTable,
    pub fn getRoutedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_RoutedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoutedEvent(self: *@This(), value: *RoutedEvent) core.HResult!void {
        const _c = self.vtable.put_RoutedEvent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActions(self: *@This()) core.HResult!*TriggerActionCollection {
        var _r: *TriggerActionCollection = undefined;
        const _c = self.vtable.get_Actions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IEventTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "def8f855-0b49-4087-b1a9-b8b38488f786";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RoutedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        put_RoutedEvent: *const fn(self: *anyopaque, value: *RoutedEvent) callconv(.winapi) HRESULT,
        get_Actions: *const fn(self: *anyopaque, _r: **TriggerActionCollection) callconv(.winapi) HRESULT,
    };
};
pub const IExceptionRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IExceptionRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd9ff16a-4b62-4a6c-a49d-0671ef6136be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IExceptionRoutedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IExceptionRoutedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bba9826d-5d7a-44e7-b893-b2ae0dd24273";
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
pub const IFrameworkElement = extern struct {
    vtable: *const VTable,
    pub fn getTriggers(self: *@This()) core.HResult!*TriggerCollection {
        var _r: *TriggerCollection = undefined;
        const _c = self.vtable.get_Triggers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResources(self: *@This()) core.HResult!*ResourceDictionary {
        var _r: *ResourceDictionary = undefined;
        const _c = self.vtable.get_Resources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResources(self: *@This(), value: *ResourceDictionary) core.HResult!void {
        const _c = self.vtable.put_Resources(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActualWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ActualWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActualHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ActualHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Width(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeight(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Height(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinWidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MinWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxWidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MaxWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinHeight(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MinHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxHeight(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MaxHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHorizontalAlignment(self: *@This()) core.HResult!HorizontalAlignment {
        var _r: HorizontalAlignment = undefined;
        const _c = self.vtable.get_HorizontalAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalAlignment(self: *@This(), value: HorizontalAlignment) core.HResult!void {
        const _c = self.vtable.put_HorizontalAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalAlignment(self: *@This()) core.HResult!VerticalAlignment {
        var _r: VerticalAlignment = undefined;
        const _c = self.vtable.get_VerticalAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalAlignment(self: *@This(), value: VerticalAlignment) core.HResult!void {
        const _c = self.vtable.put_VerticalAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_Margin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_Margin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_BaseUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_DataContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_DataContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStyle(self: *@This()) core.HResult!*Style {
        var _r: *Style = undefined;
        const _c = self.vtable.get_Style(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStyle(self: *@This(), value: *Style) core.HResult!void {
        const _c = self.vtable.put_Style(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParent(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!FlowDirection {
        var _r: FlowDirection = undefined;
        const _c = self.vtable.get_FlowDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlowDirection(self: *@This(), value: FlowDirection) core.HResult!void {
        const _c = self.vtable.put_FlowDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLoaded(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Loaded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Loaded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnloaded(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Unloaded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnloaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Unloaded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSizeChanged(self: *@This(), handler: *SizeChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SizeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SizeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLayoutUpdated(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LayoutUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLayoutUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LayoutUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindName(self: *@This(), name: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.FindName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetBinding(self: *@This(), dp: *DependencyProperty, binding: *BindingBase) core.HResult!void {
        const _c = self.vtable.SetBinding(@ptrCast(self), dp, binding);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Triggers: *const fn(self: *anyopaque, _r: **TriggerCollection) callconv(.winapi) HRESULT,
        get_Resources: *const fn(self: *anyopaque, _r: **ResourceDictionary) callconv(.winapi) HRESULT,
        put_Resources: *const fn(self: *anyopaque, value: *ResourceDictionary) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ActualWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ActualHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Width: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Height: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MinWidth: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MaxWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MaxWidth: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MinHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MinHeight: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MaxHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MaxHeight: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_HorizontalAlignment: *const fn(self: *anyopaque, _r: *HorizontalAlignment) callconv(.winapi) HRESULT,
        put_HorizontalAlignment: *const fn(self: *anyopaque, value: HorizontalAlignment) callconv(.winapi) HRESULT,
        get_VerticalAlignment: *const fn(self: *anyopaque, _r: *VerticalAlignment) callconv(.winapi) HRESULT,
        put_VerticalAlignment: *const fn(self: *anyopaque, value: VerticalAlignment) callconv(.winapi) HRESULT,
        get_Margin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_Margin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BaseUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_DataContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_DataContext: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_Style: *const fn(self: *anyopaque, _r: **Style) callconv(.winapi) HRESULT,
        put_Style: *const fn(self: *anyopaque, value: *Style) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        get_FlowDirection: *const fn(self: *anyopaque, _r: *FlowDirection) callconv(.winapi) HRESULT,
        put_FlowDirection: *const fn(self: *anyopaque, value: FlowDirection) callconv(.winapi) HRESULT,
        add_Loaded: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Loaded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Unloaded: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Unloaded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SizeChanged: *const fn(self: *anyopaque, handler: *SizeChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SizeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LayoutUpdated: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LayoutUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        FindName: *const fn(self: *anyopaque, name: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetBinding: *const fn(self: *anyopaque, dp: *DependencyProperty, binding: *BindingBase) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElement2 = extern struct {
    vtable: *const VTable,
    pub fn getRequestedTheme(self: *@This()) core.HResult!ElementTheme {
        var _r: ElementTheme = undefined;
        const _c = self.vtable.get_RequestedTheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestedTheme(self: *@This(), value: ElementTheme) core.HResult!void {
        const _c = self.vtable.put_RequestedTheme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDataContextChanged(self: *@This(), handler: *TypedEventHandler(FrameworkElement,DataContextChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataContextChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataContextChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataContextChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBindingExpression(self: *@This(), dp: *DependencyProperty) core.HResult!*BindingExpression {
        var _r: *BindingExpression = undefined;
        const _c = self.vtable.GetBindingExpression(@ptrCast(self), dp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElement2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f19104be-422a-4904-a52f-ee72010429e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedTheme: *const fn(self: *anyopaque, _r: *ElementTheme) callconv(.winapi) HRESULT,
        put_RequestedTheme: *const fn(self: *anyopaque, value: ElementTheme) callconv(.winapi) HRESULT,
        add_DataContextChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(FrameworkElement,DataContextChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataContextChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetBindingExpression: *const fn(self: *anyopaque, dp: *DependencyProperty, _r: **BindingExpression) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElement3 = extern struct {
    vtable: *const VTable,
    pub fn addLoading(self: *@This(), handler: *TypedEventHandler(FrameworkElement,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Loading(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Loading(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElement3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c81c2720-5c52-4bbe-a199-2b1e34f00f70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Loading: *const fn(self: *anyopaque, handler: *TypedEventHandler(FrameworkElement,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Loading: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElement4 = extern struct {
    vtable: *const VTable,
    pub fn getAllowFocusOnInteraction(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowFocusOnInteraction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowFocusOnInteraction(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowFocusOnInteraction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusVisualMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_FocusVisualMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusVisualMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_FocusVisualMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusVisualSecondaryThickness(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_FocusVisualSecondaryThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusVisualSecondaryThickness(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_FocusVisualSecondaryThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusVisualPrimaryThickness(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_FocusVisualPrimaryThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusVisualPrimaryThickness(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_FocusVisualPrimaryThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusVisualSecondaryBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_FocusVisualSecondaryBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusVisualSecondaryBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_FocusVisualSecondaryBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusVisualPrimaryBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_FocusVisualPrimaryBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusVisualPrimaryBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_FocusVisualPrimaryBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowFocusWhenDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowFocusWhenDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowFocusWhenDisabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowFocusWhenDisabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElement4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b765bb3-fba3-4404-bdee-1a45d1ca5f21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowFocusOnInteraction: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowFocusOnInteraction: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_FocusVisualMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_FocusVisualMargin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_FocusVisualSecondaryThickness: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_FocusVisualSecondaryThickness: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_FocusVisualPrimaryThickness: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_FocusVisualPrimaryThickness: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_FocusVisualSecondaryBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_FocusVisualSecondaryBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_FocusVisualPrimaryBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_FocusVisualPrimaryBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_AllowFocusWhenDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowFocusWhenDisabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElement6 = extern struct {
    vtable: *const VTable,
    pub fn getActualTheme(self: *@This()) core.HResult!ElementTheme {
        var _r: ElementTheme = undefined;
        const _c = self.vtable.get_ActualTheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addActualThemeChanged(self: *@This(), handler: *TypedEventHandler(FrameworkElement,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActualThemeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActualThemeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActualThemeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElement6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "792a5d91-62a1-40bf-a0ce-f9c131fcb7a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActualTheme: *const fn(self: *anyopaque, _r: *ElementTheme) callconv(.winapi) HRESULT,
        add_ActualThemeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(FrameworkElement,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActualThemeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElement7 = extern struct {
    vtable: *const VTable,
    pub fn getIsLoaded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLoaded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addEffectiveViewportChanged(self: *@This(), handler: *TypedEventHandler(FrameworkElement,EffectiveViewportChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EffectiveViewportChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEffectiveViewportChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EffectiveViewportChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElement7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2263886c-c069-570f-b9cc-9e21dd028d8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsLoaded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_EffectiveViewportChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(FrameworkElement,EffectiveViewportChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EffectiveViewportChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FrameworkElement {
        var _r: *FrameworkElement = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "deaee126-03ca-4966-b576-604cce93b5e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FrameworkElement) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementOverrides = extern struct {
    vtable: *const VTable,
    pub fn MeasureOverride(self: *@This(), availableSize: Size) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.MeasureOverride(@ptrCast(self), availableSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ArrangeOverride(self: *@This(), finalSize: Size) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.ArrangeOverride(@ptrCast(self), finalSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OnApplyTemplate(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnApplyTemplate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da007e54-b3c2-4b9a-aa8e-d3f071262b97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MeasureOverride: *const fn(self: *anyopaque, availableSize: Size, _r: *Size) callconv(.winapi) HRESULT,
        ArrangeOverride: *const fn(self: *anyopaque, finalSize: Size, _r: *Size) callconv(.winapi) HRESULT,
        OnApplyTemplate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementOverrides2 = extern struct {
    vtable: *const VTable,
    pub fn GoToElementStateCore(self: *@This(), stateName: HSTRING, useTransitions: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GoToElementStateCore(@ptrCast(self), stateName, useTransitions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementOverrides2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb5cd2b9-e3b4-458c-b64e-1434fd1bd88a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GoToElementStateCore: *const fn(self: *anyopaque, stateName: HSTRING, useTransitions: bool, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementProtected7 = extern struct {
    vtable: *const VTable,
    pub fn InvalidateViewport(self: *@This()) core.HResult!void {
        const _c = self.vtable.InvalidateViewport(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementProtected7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65aa0480-22e3-5103-ad2a-b626f88ca5ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InvalidateViewport: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementStatics = extern struct {
    vtable: *const VTable,
    pub fn getTagProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TagProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguageProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LanguageProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActualWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ActualWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActualHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ActualHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_WidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MaxWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MaxHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HorizontalAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VerticalAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataContextProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DataContextProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StyleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowDirectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FlowDirectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48383032-fbeb-4f8a-aed2-ee21fb27a57b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TagProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LanguageProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ActualWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ActualHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_WidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_HeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MinWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MaxWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MinHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MaxHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_HorizontalAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VerticalAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_NameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DataContextProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StyleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FlowDirectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getRequestedThemeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RequestedThemeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9695db02-c0d8-4fa2-b100-3fa2df8b9538";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedThemeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getAllowFocusOnInteractionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowFocusOnInteractionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusVisualMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusVisualMarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusVisualSecondaryThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusVisualSecondaryThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusVisualPrimaryThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusVisualPrimaryThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusVisualSecondaryBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusVisualSecondaryBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusVisualPrimaryBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusVisualPrimaryBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowFocusWhenDisabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowFocusWhenDisabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c41b155-c5d8-4663-bff2-d8d54fb5dbb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowFocusOnInteractionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusVisualMarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusVisualSecondaryThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusVisualPrimaryThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusVisualSecondaryBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusVisualPrimaryBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AllowFocusWhenDisabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementStatics5 = extern struct {
    vtable: *const VTable,
    pub fn DeferTree(self: *@This(), element: *DependencyObject) core.HResult!void {
        const _c = self.vtable.DeferTree(@ptrCast(self), element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "525d3941-0b3c-4be6-9978-19a8025c09d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DeferTree: *const fn(self: *anyopaque, element: *DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getActualThemeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ActualThemeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkElementStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcc1529a-69db-4582-a7be-cf6a1cfdacd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActualThemeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkTemplate = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1e254d8-a446-4a27-9a9d-a0f59e1258a5";
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
pub const IFrameworkTemplateFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FrameworkTemplate {
        var _r: *FrameworkTemplate = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkTemplateFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a78a0a5-937d-46d4-832b-94ff14dab061";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FrameworkTemplate) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkView = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddba664b-b603-47aa-942d-3833174f0d80";
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
pub const IFrameworkViewSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IFrameworkViewSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3b077da-35ad-4b09-b5b2-27420041ba9f";
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
pub const IGridLengthHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IGridLengthHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a826ce1-07a0-4083-b6d1-b1d917b976ac";
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
pub const IGridLengthHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getAuto(self: *@This()) core.HResult!GridLength {
        var _r: GridLength = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromPixels(self: *@This(), pixels: f64) core.HResult!GridLength {
        var _r: GridLength = undefined;
        const _c = self.vtable.FromPixels(@ptrCast(self), pixels, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromValueAndType(self: *@This(), value: f64, ty: GridUnitType) core.HResult!GridLength {
        var _r: GridLength = undefined;
        const _c = self.vtable.FromValueAndType(@ptrCast(self), value, ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsAbsolute(self: *@This(), target: GridLength) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsAbsolute(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsAuto(self: *@This(), target: GridLength) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsAuto(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsStar(self: *@This(), target: GridLength) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsStar(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), target: GridLength, value: GridLength) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), target, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IGridLengthHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d457b9b-019f-4266-8872-215f198f6a9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *GridLength) callconv(.winapi) HRESULT,
        FromPixels: *const fn(self: *anyopaque, pixels: f64, _r: *GridLength) callconv(.winapi) HRESULT,
        FromValueAndType: *const fn(self: *anyopaque, value: f64, ty: GridUnitType, _r: *GridLength) callconv(.winapi) HRESULT,
        GetIsAbsolute: *const fn(self: *anyopaque, target: GridLength, _r: *bool) callconv(.winapi) HRESULT,
        GetIsAuto: *const fn(self: *anyopaque, target: GridLength, _r: *bool) callconv(.winapi) HRESULT,
        GetIsStar: *const fn(self: *anyopaque, target: GridLength, _r: *bool) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, target: GridLength, value: GridLength, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFailedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getErrorTrace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorTrace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IMediaFailedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46d1fa8d-5149-4153-ba3c-b03e64ee531e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorTrace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPointHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPointHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "727bdd92-64b0-49cf-a321-a9793e73e2e7";
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
pub const IPointHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromCoordinates(self: *@This(), x: f32, y: f32) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.FromCoordinates(@ptrCast(self), x, y, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPointHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "015aca75-76d8-4b7e-8a33-7d79204691ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromCoordinates: *const fn(self: *anyopaque, x: f32, y: f32, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyMetadata = extern struct {
    vtable: *const VTable,
    pub fn getDefaultValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_DefaultValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCreateDefaultValueCallback(self: *@This()) core.HResult!*CreateDefaultValueCallback {
        var _r: *CreateDefaultValueCallback = undefined;
        const _c = self.vtable.get_CreateDefaultValueCallback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPropertyMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "814ef30d-8d18-448a-8644-f2cb51e70380";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_CreateDefaultValueCallback: *const fn(self: *anyopaque, _r: **CreateDefaultValueCallback) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyMetadataFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithDefaultValue(self: *@This(), defaultValue: *IInspectable, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.CreateInstanceWithDefaultValue(@ptrCast(self), defaultValue, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDefaultValueAndCallback(self: *@This(), defaultValue: *IInspectable, propertyChangedCallback: *PropertyChangedCallback, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.CreateInstanceWithDefaultValueAndCallback(@ptrCast(self), defaultValue, propertyChangedCallback, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPropertyMetadataFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1b81cc0-57cd-4f2f-b0a9-e1801b28f76b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithDefaultValue: *const fn(self: *anyopaque, defaultValue: *IInspectable, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
        CreateInstanceWithDefaultValueAndCallback: *const fn(self: *anyopaque, defaultValue: *IInspectable, propertyChangedCallback: *PropertyChangedCallback, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyMetadataStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWithDefaultValue(self: *@This(), defaultValue: *IInspectable) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.CreateWithDefaultValue(@ptrCast(self), defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPropertyChangedCallback(self: *@This(), defaultValue: *IInspectable, propertyChangedCallback: *PropertyChangedCallback) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.CreateWithPropertyChangedCallback(@ptrCast(self), defaultValue, propertyChangedCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Create(self: *@This(), createDefaultValueCallback: *CreateDefaultValueCallback) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.Create(@ptrCast(self), createDefaultValueCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPropertyChangedCallback(self: *@This(), createDefaultValueCallback: *CreateDefaultValueCallback, propertyChangedCallback: *PropertyChangedCallback) core.HResult!*PropertyMetadata {
        var _r: *PropertyMetadata = undefined;
        const _c = self.vtable.CreateWithPropertyChangedCallback(@ptrCast(self), createDefaultValueCallback, propertyChangedCallback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPropertyMetadataStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b01077a-6e06-45e9-8b5c-af243458c062";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithDefaultValue: *const fn(self: *anyopaque, defaultValue: *IInspectable, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
        CreateWithPropertyChangedCallback: *const fn(self: *anyopaque, defaultValue: *IInspectable, propertyChangedCallback: *PropertyChangedCallback, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, createDefaultValueCallback: *CreateDefaultValueCallback, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
        CreateWithPropertyChangedCallback: *const fn(self: *anyopaque, createDefaultValueCallback: *CreateDefaultValueCallback, propertyChangedCallback: *PropertyChangedCallback, _r: **PropertyMetadata) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyPath = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPropertyPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "300e5d8a-1ff3-4d2c-95ec-27f81debacb8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyPathFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), path: HSTRING) core.HResult!*PropertyPath {
        var _r: *PropertyPath = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IPropertyPathFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e4cdf99-9826-4e56-847c-ca055f162905";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, path: HSTRING, _r: **PropertyPath) callconv(.winapi) HRESULT,
    };
};
pub const IRectHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IRectHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a38781e2-4bfb-4ee2-afe5-89f31b37478d";
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
pub const IRectHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getEmpty(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Empty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromCoordinatesAndDimensions(self: *@This(), x: f32, y: f32, width: f32, height: f32) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.FromCoordinatesAndDimensions(@ptrCast(self), x, y, width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromPoints(self: *@This(), point1: Point, point2: Point) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.FromPoints(@ptrCast(self), point1, point2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromLocationAndSize(self: *@This(), location: Point, size: Size) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.FromLocationAndSize(@ptrCast(self), location, size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsEmpty(self: *@This(), target: Rect) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsEmpty(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBottom(self: *@This(), target: Rect) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.GetBottom(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLeft(self: *@This(), target: Rect) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.GetLeft(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRight(self: *@This(), target: Rect) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.GetRight(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTop(self: *@This(), target: Rect) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.GetTop(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Contains(self: *@This(), target: Rect, point: Point) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Contains(@ptrCast(self), target, point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), target: Rect, value: Rect) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), target, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Intersect(self: *@This(), target: Rect, rect: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.Intersect(@ptrCast(self), target, rect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Union(self: *@This(), target: Rect, point: Point) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.Union(@ptrCast(self), target, point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnionWithRect(self: *@This(), target: Rect, rect: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.UnionWithRect(@ptrCast(self), target, rect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IRectHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ee163e4-c17e-494f-b580-2f0574fc3a15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Empty: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        FromCoordinatesAndDimensions: *const fn(self: *anyopaque, x: f32, y: f32, width: f32, height: f32, _r: *Rect) callconv(.winapi) HRESULT,
        FromPoints: *const fn(self: *anyopaque, point1: Point, point2: Point, _r: *Rect) callconv(.winapi) HRESULT,
        FromLocationAndSize: *const fn(self: *anyopaque, location: Point, size: Size, _r: *Rect) callconv(.winapi) HRESULT,
        GetIsEmpty: *const fn(self: *anyopaque, target: Rect, _r: *bool) callconv(.winapi) HRESULT,
        GetBottom: *const fn(self: *anyopaque, target: Rect, _r: *f32) callconv(.winapi) HRESULT,
        GetLeft: *const fn(self: *anyopaque, target: Rect, _r: *f32) callconv(.winapi) HRESULT,
        GetRight: *const fn(self: *anyopaque, target: Rect, _r: *f32) callconv(.winapi) HRESULT,
        GetTop: *const fn(self: *anyopaque, target: Rect, _r: *f32) callconv(.winapi) HRESULT,
        Contains: *const fn(self: *anyopaque, target: Rect, point: Point, _r: *bool) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, target: Rect, value: Rect, _r: *bool) callconv(.winapi) HRESULT,
        Intersect: *const fn(self: *anyopaque, target: Rect, rect: Rect, _r: *Rect) callconv(.winapi) HRESULT,
        Union: *const fn(self: *anyopaque, target: Rect, point: Point, _r: *Rect) callconv(.winapi) HRESULT,
        UnionWithRect: *const fn(self: *anyopaque, target: Rect, rect: Rect, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IResourceDictionary = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMergedDictionaries(self: *@This()) core.HResult!*IVector(ResourceDictionary) {
        var _r: *IVector(ResourceDictionary) = undefined;
        const _c = self.vtable.get_MergedDictionaries(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThemeDictionaries(self: *@This()) core.HResult!*IMap(IInspectable,IInspectable) {
        var _r: *IMap(IInspectable,IInspectable) = undefined;
        const _c = self.vtable.get_ThemeDictionaries(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IResourceDictionary";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1ea4f24-d6de-4191-8e3a-f48601f7489c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_MergedDictionaries: *const fn(self: *anyopaque, _r: **IVector(ResourceDictionary)) callconv(.winapi) HRESULT,
        get_ThemeDictionaries: *const fn(self: *anyopaque, _r: **IMap(IInspectable,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IResourceDictionaryFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ResourceDictionary {
        var _r: *ResourceDictionary = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IResourceDictionaryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea3639b5-31b7-4271-92c9-7c9584a91c22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ResourceDictionary) callconv(.winapi) HRESULT,
    };
};
pub const IRoutedEvent = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IRoutedEvent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6b25818-43c1-4c70-865c-7bdd5a32e327";
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
pub const IRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOriginalSource(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_OriginalSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c985ac6-d802-4b38-a223-bf070c43fedf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OriginalSource: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IRoutedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RoutedEventArgs {
        var _r: *RoutedEventArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IRoutedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b61c4d87-70e5-412e-b520-1a41ee76bbf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RoutedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IScalarTransition = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IScalarTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4cb68238-e15d-524e-a73c-9d4dcfbea226";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IScalarTransitionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ScalarTransition {
        var _r: *ScalarTransition = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IScalarTransitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9b1e9ee-90da-5ddd-be64-3e47977ea280";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ScalarTransition) callconv(.winapi) HRESULT,
    };
};
pub const ISetter = extern struct {
    vtable: *const VTable,
    pub fn getProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProperty(self: *@This(), value: *DependencyProperty) core.HResult!void {
        const _c = self.vtable.put_Property(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISetter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a73ded29-b4ae-4a81-be85-e690ba0d3b6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        put_Property: *const fn(self: *anyopaque, value: *DependencyProperty) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ISetter2 = extern struct {
    vtable: *const VTable,
    pub fn getTarget(self: *@This()) core.HResult!*TargetPropertyPath {
        var _r: *TargetPropertyPath = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTarget(self: *@This(), value: *TargetPropertyPath) core.HResult!void {
        const _c = self.vtable.put_Target(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISetter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70169561-05b1-4fa3-9d53-8e0c8c747afc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: **TargetPropertyPath) callconv(.winapi) HRESULT,
        put_Target: *const fn(self: *anyopaque, value: *TargetPropertyPath) callconv(.winapi) HRESULT,
    };
};
pub const ISetterBase = extern struct {
    vtable: *const VTable,
    pub fn getIsSealed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSealed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISetterBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "418be27c-2ac4-4f22-8097-dea3aeeb2fb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSealed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISetterBaseCollection = extern struct {
    vtable: *const VTable,
    pub fn getIsSealed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSealed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISetterBaseCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03c40ca8-909e-4117-811c-a4529496bdf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSealed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISetterBaseFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISetterBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81f8ad60-1ce8-469d-a667-16e37cef8ba9";
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
pub const ISetterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), targetProperty: *DependencyProperty, value: *IInspectable) core.HResult!*Setter {
        var _r: *Setter = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), targetProperty, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISetterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3ca3d42-09b1-49d5-8891-e7b5648e02a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, targetProperty: *DependencyProperty, value: *IInspectable, _r: **Setter) callconv(.winapi) HRESULT,
    };
};
pub const ISizeChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPreviousSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_PreviousSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_NewSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISizeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5312e60-5cc1-42a1-920c-1af46be2f986";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreviousSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_NewSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
    };
};
pub const ISizeHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISizeHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7225a94-5d03-4a03-ba94-967fc68fcefe";
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
pub const ISizeHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getEmpty(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Empty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromDimensions(self: *@This(), width: f32, height: f32) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.FromDimensions(@ptrCast(self), width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsEmpty(self: *@This(), target: Size) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsEmpty(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), target: Size, value: Size) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), target, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ISizeHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6286c5b2-cf78-4915-aa40-76004a165f5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Empty: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        FromDimensions: *const fn(self: *anyopaque, width: f32, height: f32, _r: *Size) callconv(.winapi) HRESULT,
        GetIsEmpty: *const fn(self: *anyopaque, target: Size, _r: *bool) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, target: Size, value: Size, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStateTrigger = extern struct {
    vtable: *const VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsActive(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsActive(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStateTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67adef2e-d8d9-49f7-a1fd-2e35eedd23cd";
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
        put_IsActive: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStateTriggerBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStateTriggerBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48b20698-af06-466c-8052-93666dde0e49";
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
pub const IStateTriggerBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*StateTriggerBase {
        var _r: *StateTriggerBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStateTriggerBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "970e2c4b-bfaf-47b0-be42-c1d711bb2e9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **StateTriggerBase) callconv(.winapi) HRESULT,
    };
};
pub const IStateTriggerBaseProtected = extern struct {
    vtable: *const VTable,
    pub fn SetActive(self: *@This(), IsActive: bool) core.HResult!void {
        const _c = self.vtable.SetActive(@ptrCast(self), IsActive);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStateTriggerBaseProtected";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c41e253-8d14-4216-994c-f9930429f6e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetActive: *const fn(self: *anyopaque, IsActive: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStateTriggerStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsActiveProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsActiveProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStateTriggerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71e95c90-b3fe-4dd3-a8a8-44a2ce25e0b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsActiveProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IStyle = extern struct {
    vtable: *const VTable,
    pub fn getIsSealed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSealed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSetters(self: *@This()) core.HResult!*SetterBaseCollection {
        var _r: *SetterBaseCollection = undefined;
        const _c = self.vtable.get_Setters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetType(self: *@This()) core.HResult!TypeName {
        var _r: TypeName = undefined;
        const _c = self.vtable.get_TargetType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetType(self: *@This(), value: TypeName) core.HResult!void {
        const _c = self.vtable.put_TargetType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBasedOn(self: *@This()) core.HResult!*Style {
        var _r: *Style = undefined;
        const _c = self.vtable.get_BasedOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBasedOn(self: *@This(), value: *Style) core.HResult!void {
        const _c = self.vtable.put_BasedOn(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Seal(self: *@This()) core.HResult!void {
        const _c = self.vtable.Seal(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStyle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4a9f225-9db7-4a7d-b6d1-f74edb9293c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSealed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Setters: *const fn(self: *anyopaque, _r: **SetterBaseCollection) callconv(.winapi) HRESULT,
        get_TargetType: *const fn(self: *anyopaque, _r: *TypeName) callconv(.winapi) HRESULT,
        put_TargetType: *const fn(self: *anyopaque, value: TypeName) callconv(.winapi) HRESULT,
        get_BasedOn: *const fn(self: *anyopaque, _r: **Style) callconv(.winapi) HRESULT,
        put_BasedOn: *const fn(self: *anyopaque, value: *Style) callconv(.winapi) HRESULT,
        Seal: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IStyleFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), targetType: TypeName) core.HResult!*Style {
        var _r: *Style = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), targetType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IStyleFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a36824e3-3d81-4ce5-aa51-8b410f602fcd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, targetType: TypeName, _r: **Style) callconv(.winapi) HRESULT,
    };
};
pub const ITargetPropertyPath = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!*PropertyPath {
        var _r: *PropertyPath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: *PropertyPath) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTarget(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTarget(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Target(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ITargetPropertyPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40740f8e-085f-4ced-be70-6f47acf15ad0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **PropertyPath) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: *PropertyPath) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Target: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ITargetPropertyPathFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), targetProperty: *DependencyProperty) core.HResult!*TargetPropertyPath {
        var _r: *TargetPropertyPath = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), targetProperty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ITargetPropertyPathFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88eeccc8-99e2-4a44-9907-b44bc86e2bbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, targetProperty: *DependencyProperty, _r: **TargetPropertyPath) callconv(.winapi) HRESULT,
    };
};
pub const IThicknessHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IThicknessHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a86bae4b-1e8f-4eeb-9013-0b2838a97b34";
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
pub const IThicknessHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromLengths(self: *@This(), left: f64, top: f64, right: f64, bottom: f64) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.FromLengths(@ptrCast(self), left, top, right, bottom, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromUniformLength(self: *@This(), uniformLength: f64) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.FromUniformLength(@ptrCast(self), uniformLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IThicknessHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0991a7c-070c-4da6-8784-01ca800eb73a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromLengths: *const fn(self: *anyopaque, left: f64, top: f64, right: f64, bottom: f64, _r: *Thickness) callconv(.winapi) HRESULT,
        FromUniformLength: *const fn(self: *anyopaque, uniformLength: f64, _r: *Thickness) callconv(.winapi) HRESULT,
    };
};
pub const ITriggerAction = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ITriggerAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2c0df02-63d5-4b46-9b83-0868d3079621";
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
pub const ITriggerActionFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ITriggerActionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68d2c0b9-3289-414f-8f6e-c6b97aedda03";
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
pub const ITriggerBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ITriggerBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7ea222f-dee6-4393-a8b2-8923d641f395";
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
pub const ITriggerBaseFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.ITriggerBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a3b9e57-fc5d-42d0-8cb9-ca50667af746";
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
pub const IUIElement = extern struct {
    vtable: *const VTable,
    pub fn getDesiredSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_DesiredSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowDrop(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowDrop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowDrop(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowDrop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Opacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Opacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClip(self: *@This()) core.HResult!*RectangleGeometry {
        var _r: *RectangleGeometry = undefined;
        const _c = self.vtable.get_Clip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClip(self: *@This(), value: *RectangleGeometry) core.HResult!void {
        const _c = self.vtable.put_Clip(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRenderTransform(self: *@This()) core.HResult!*Transform {
        var _r: *Transform = undefined;
        const _c = self.vtable.get_RenderTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRenderTransform(self: *@This(), value: *Transform) core.HResult!void {
        const _c = self.vtable.put_RenderTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProjection(self: *@This()) core.HResult!*Projection {
        var _r: *Projection = undefined;
        const _c = self.vtable.get_Projection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProjection(self: *@This(), value: *Projection) core.HResult!void {
        const _c = self.vtable.put_Projection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRenderTransformOrigin(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_RenderTransformOrigin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRenderTransformOrigin(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_RenderTransformOrigin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsHitTestVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHitTestVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHitTestVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHitTestVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisibility(self: *@This()) core.HResult!Visibility {
        var _r: Visibility = undefined;
        const _c = self.vtable.get_Visibility(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVisibility(self: *@This(), value: Visibility) core.HResult!void {
        const _c = self.vtable.put_Visibility(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRenderSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_RenderSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUseLayoutRounding(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseLayoutRounding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseLayoutRounding(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseLayoutRounding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransitions(self: *@This()) core.HResult!*TransitionCollection {
        var _r: *TransitionCollection = undefined;
        const _c = self.vtable.get_Transitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransitions(self: *@This(), value: *TransitionCollection) core.HResult!void {
        const _c = self.vtable.put_Transitions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCacheMode(self: *@This()) core.HResult!*CacheMode {
        var _r: *CacheMode = undefined;
        const _c = self.vtable.get_CacheMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCacheMode(self: *@This(), value: *CacheMode) core.HResult!void {
        const _c = self.vtable.put_CacheMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsTapEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTapEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTapEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTapEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDoubleTapEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDoubleTapEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDoubleTapEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDoubleTapEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRightTapEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRightTapEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRightTapEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRightTapEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsHoldingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHoldingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHoldingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHoldingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getManipulationMode(self: *@This()) core.HResult!ManipulationModes {
        var _r: ManipulationModes = undefined;
        const _c = self.vtable.get_ManipulationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putManipulationMode(self: *@This(), value: ManipulationModes) core.HResult!void {
        const _c = self.vtable.put_ManipulationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerCaptures(self: *@This()) core.HResult!*IVectorView(Pointer) {
        var _r: *IVectorView(Pointer) = undefined;
        const _c = self.vtable.get_PointerCaptures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addKeyUp(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyUp(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyUp(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyUp(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyDown(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyDown(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyDown(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyDown(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGotFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLostFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LostFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LostFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragEnter(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragEnter(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragEnter(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragEnter(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragLeave(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragLeave(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragLeave(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragLeave(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragOver(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragOver(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragOver(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragOver(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDrop(self: *@This(), handler: *DragEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Drop(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDrop(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Drop(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerPressed(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerMoved(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerMoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerMoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerReleased(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerReleased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerEntered(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerExited(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerCaptureLost(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerCaptureLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerCaptureLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerCaptureLost(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerCanceled(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerCanceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerWheelChanged(self: *@This(), handler: *PointerEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerWheelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerWheelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerWheelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTapped(self: *@This(), handler: *TappedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Tapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Tapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDoubleTapped(self: *@This(), handler: *DoubleTappedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DoubleTapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDoubleTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DoubleTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHolding(self: *@This(), handler: *HoldingEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Holding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Holding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRightTapped(self: *@This(), handler: *RightTappedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RightTapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RightTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationStarting(self: *@This(), handler: *ManipulationStartingEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationInertiaStarting(self: *@This(), handler: *ManipulationInertiaStartingEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationInertiaStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationInertiaStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationInertiaStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationStarted(self: *@This(), handler: *ManipulationStartedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationDelta(self: *@This(), handler: *ManipulationDeltaEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationDelta(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationDelta(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationDelta(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *ManipulationCompletedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Measure(self: *@This(), availableSize: Size) core.HResult!void {
        const _c = self.vtable.Measure(@ptrCast(self), availableSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Arrange(self: *@This(), finalRect: Rect) core.HResult!void {
        const _c = self.vtable.Arrange(@ptrCast(self), finalRect);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CapturePointer(self: *@This(), value: *Pointer) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CapturePointer(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReleasePointerCapture(self: *@This(), value: *Pointer) core.HResult!void {
        const _c = self.vtable.ReleasePointerCapture(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReleasePointerCaptures(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReleasePointerCaptures(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddHandler(self: *@This(), routedEvent: *RoutedEvent, handler: *IInspectable, handledEventsToo: bool) core.HResult!void {
        const _c = self.vtable.AddHandler(@ptrCast(self), routedEvent, handler, handledEventsToo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveHandler(self: *@This(), routedEvent: *RoutedEvent, handler: *IInspectable) core.HResult!void {
        const _c = self.vtable.RemoveHandler(@ptrCast(self), routedEvent, handler);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransformToVisual(self: *@This(), visual: *UIElement) core.HResult!*GeneralTransform {
        var _r: *GeneralTransform = undefined;
        const _c = self.vtable.TransformToVisual(@ptrCast(self), visual, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InvalidateMeasure(self: *@This()) core.HResult!void {
        const _c = self.vtable.InvalidateMeasure(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InvalidateArrange(self: *@This()) core.HResult!void {
        const _c = self.vtable.InvalidateArrange(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateLayout(self: *@This()) core.HResult!void {
        const _c = self.vtable.UpdateLayout(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "676d0be9-b65c-41c6-ba40-58cf87f201c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_AllowDrop: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowDrop: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Opacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Opacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Clip: *const fn(self: *anyopaque, _r: **RectangleGeometry) callconv(.winapi) HRESULT,
        put_Clip: *const fn(self: *anyopaque, value: *RectangleGeometry) callconv(.winapi) HRESULT,
        get_RenderTransform: *const fn(self: *anyopaque, _r: **Transform) callconv(.winapi) HRESULT,
        put_RenderTransform: *const fn(self: *anyopaque, value: *Transform) callconv(.winapi) HRESULT,
        get_Projection: *const fn(self: *anyopaque, _r: **Projection) callconv(.winapi) HRESULT,
        put_Projection: *const fn(self: *anyopaque, value: *Projection) callconv(.winapi) HRESULT,
        get_RenderTransformOrigin: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_RenderTransformOrigin: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_IsHitTestVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHitTestVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Visibility: *const fn(self: *anyopaque, _r: *Visibility) callconv(.winapi) HRESULT,
        put_Visibility: *const fn(self: *anyopaque, value: Visibility) callconv(.winapi) HRESULT,
        get_RenderSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_UseLayoutRounding: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseLayoutRounding: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Transitions: *const fn(self: *anyopaque, _r: **TransitionCollection) callconv(.winapi) HRESULT,
        put_Transitions: *const fn(self: *anyopaque, value: *TransitionCollection) callconv(.winapi) HRESULT,
        get_CacheMode: *const fn(self: *anyopaque, _r: **CacheMode) callconv(.winapi) HRESULT,
        put_CacheMode: *const fn(self: *anyopaque, value: *CacheMode) callconv(.winapi) HRESULT,
        get_IsTapEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTapEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDoubleTapEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDoubleTapEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRightTapEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRightTapEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsHoldingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHoldingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ManipulationMode: *const fn(self: *anyopaque, _r: *ManipulationModes) callconv(.winapi) HRESULT,
        put_ManipulationMode: *const fn(self: *anyopaque, value: ManipulationModes) callconv(.winapi) HRESULT,
        get_PointerCaptures: *const fn(self: *anyopaque, _r: **IVectorView(Pointer)) callconv(.winapi) HRESULT,
        add_KeyUp: *const fn(self: *anyopaque, handler: *KeyEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyUp: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyDown: *const fn(self: *anyopaque, handler: *KeyEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyDown: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LostFocus: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LostFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DragEnter: *const fn(self: *anyopaque, handler: *DragEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragEnter: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DragLeave: *const fn(self: *anyopaque, handler: *DragEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragLeave: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DragOver: *const fn(self: *anyopaque, handler: *DragEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragOver: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Drop: *const fn(self: *anyopaque, handler: *DragEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Drop: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerPressed: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerMoved: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerMoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerReleased: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerReleased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerEntered: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerExited: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerCaptureLost: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerCaptureLost: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerCanceled: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerCanceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerWheelChanged: *const fn(self: *anyopaque, handler: *PointerEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerWheelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Tapped: *const fn(self: *anyopaque, handler: *TappedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Tapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DoubleTapped: *const fn(self: *anyopaque, handler: *DoubleTappedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DoubleTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Holding: *const fn(self: *anyopaque, handler: *HoldingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Holding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RightTapped: *const fn(self: *anyopaque, handler: *RightTappedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RightTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationStarting: *const fn(self: *anyopaque, handler: *ManipulationStartingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationInertiaStarting: *const fn(self: *anyopaque, handler: *ManipulationInertiaStartingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationInertiaStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationStarted: *const fn(self: *anyopaque, handler: *ManipulationStartedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationDelta: *const fn(self: *anyopaque, handler: *ManipulationDeltaEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationDelta: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationCompleted: *const fn(self: *anyopaque, handler: *ManipulationCompletedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Measure: *const fn(self: *anyopaque, availableSize: Size) callconv(.winapi) HRESULT,
        Arrange: *const fn(self: *anyopaque, finalRect: Rect) callconv(.winapi) HRESULT,
        CapturePointer: *const fn(self: *anyopaque, value: *Pointer, _r: *bool) callconv(.winapi) HRESULT,
        ReleasePointerCapture: *const fn(self: *anyopaque, value: *Pointer) callconv(.winapi) HRESULT,
        ReleasePointerCaptures: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        AddHandler: *const fn(self: *anyopaque, routedEvent: *RoutedEvent, handler: *IInspectable, handledEventsToo: bool) callconv(.winapi) HRESULT,
        RemoveHandler: *const fn(self: *anyopaque, routedEvent: *RoutedEvent, handler: *IInspectable) callconv(.winapi) HRESULT,
        TransformToVisual: *const fn(self: *anyopaque, visual: *UIElement, _r: **GeneralTransform) callconv(.winapi) HRESULT,
        InvalidateMeasure: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        InvalidateArrange: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        UpdateLayout: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement10 = extern struct {
    vtable: *const VTable,
    pub fn getActualOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_ActualOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActualSize(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_ActualSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXamlRoot(self: *@This()) core.HResult!*XamlRoot {
        var _r: *XamlRoot = undefined;
        const _c = self.vtable.get_XamlRoot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXamlRoot(self: *@This(), value: *XamlRoot) core.HResult!void {
        const _c = self.vtable.put_XamlRoot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShadow(self: *@This()) core.HResult!*Shadow {
        var _r: *Shadow = undefined;
        const _c = self.vtable.get_Shadow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShadow(self: *@This(), value: *Shadow) core.HResult!void {
        const _c = self.vtable.put_Shadow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement10";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d531c629-ad2c-5f6b-adcf-fb87287d18d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActualOffset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_ActualSize: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        get_XamlRoot: *const fn(self: *anyopaque, _r: **XamlRoot) callconv(.winapi) HRESULT,
        put_XamlRoot: *const fn(self: *anyopaque, value: *XamlRoot) callconv(.winapi) HRESULT,
        get_UIContext: *const fn(self: *anyopaque, _r: **UIContext) callconv(.winapi) HRESULT,
        get_Shadow: *const fn(self: *anyopaque, _r: **Shadow) callconv(.winapi) HRESULT,
        put_Shadow: *const fn(self: *anyopaque, value: *Shadow) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement2 = extern struct {
    vtable: *const VTable,
    pub fn getCompositeMode(self: *@This()) core.HResult!ElementCompositeMode {
        var _r: ElementCompositeMode = undefined;
        const _c = self.vtable.get_CompositeMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompositeMode(self: *@This(), value: ElementCompositeMode) core.HResult!void {
        const _c = self.vtable.put_CompositeMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CancelDirectManipulations(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CancelDirectManipulations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "676d0bf9-b66c-41d6-ba50-58cf87f201d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompositeMode: *const fn(self: *anyopaque, _r: *ElementCompositeMode) callconv(.winapi) HRESULT,
        put_CompositeMode: *const fn(self: *anyopaque, value: ElementCompositeMode) callconv(.winapi) HRESULT,
        CancelDirectManipulations: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement3 = extern struct {
    vtable: *const VTable,
    pub fn getTransform3D(self: *@This()) core.HResult!*Transform3D {
        var _r: *Transform3D = undefined;
        const _c = self.vtable.get_Transform3D(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransform3D(self: *@This(), value: *Transform3D) core.HResult!void {
        const _c = self.vtable.put_Transform3D(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanDrag(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDrag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanDrag(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanDrag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragStarting(self: *@This(), handler: *TypedEventHandler(UIElement,DragStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDropCompleted(self: *@This(), handler: *TypedEventHandler(UIElement,DropCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DropCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDropCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DropCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartDragAsync(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*IAsyncOperation(DataPackageOperation) {
        var _r: *IAsyncOperation(DataPackageOperation) = undefined;
        const _c = self.vtable.StartDragAsync(@ptrCast(self), pointerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc2b28f1-26f2-4aab-b256-3b5350881e37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Transform3D: *const fn(self: *anyopaque, _r: **Transform3D) callconv(.winapi) HRESULT,
        put_Transform3D: *const fn(self: *anyopaque, value: *Transform3D) callconv(.winapi) HRESULT,
        get_CanDrag: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanDrag: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_DragStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,DragStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DropCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,DropCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DropCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        StartDragAsync: *const fn(self: *anyopaque, pointerPoint: *PointerPoint, _r: **IAsyncOperation(DataPackageOperation)) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement4 = extern struct {
    vtable: *const VTable,
    pub fn getContextFlyout(self: *@This()) core.HResult!*FlyoutBase {
        var _r: *FlyoutBase = undefined;
        const _c = self.vtable.get_ContextFlyout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContextFlyout(self: *@This(), value: *FlyoutBase) core.HResult!void {
        const _c = self.vtable.put_ContextFlyout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitDisplayModeOnAccessKeyInvoked(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExitDisplayModeOnAccessKeyInvoked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitDisplayModeOnAccessKeyInvoked(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExitDisplayModeOnAccessKeyInvoked(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAccessKeyScope(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAccessKeyScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAccessKeyScope(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAccessKeyScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccessKeyScopeOwner(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_AccessKeyScopeOwner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccessKeyScopeOwner(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_AccessKeyScopeOwner(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccessKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccessKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccessKey(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AccessKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addContextRequested(self: *@This(), handler: *TypedEventHandler(UIElement,ContextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContextRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContextRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContextRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addContextCanceled(self: *@This(), handler: *TypedEventHandler(UIElement,RoutedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContextCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContextCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContextCanceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccessKeyDisplayRequested(self: *@This(), handler: *TypedEventHandler(UIElement,AccessKeyDisplayRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessKeyDisplayRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessKeyDisplayRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessKeyDisplayRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccessKeyDisplayDismissed(self: *@This(), handler: *TypedEventHandler(UIElement,AccessKeyDisplayDismissedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessKeyDisplayDismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessKeyDisplayDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessKeyDisplayDismissed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccessKeyInvoked(self: *@This(), handler: *TypedEventHandler(UIElement,AccessKeyInvokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessKeyInvoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessKeyInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessKeyInvoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69145cd4-199a-4657-9e57-e99e8f136712";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContextFlyout: *const fn(self: *anyopaque, _r: **FlyoutBase) callconv(.winapi) HRESULT,
        put_ContextFlyout: *const fn(self: *anyopaque, value: *FlyoutBase) callconv(.winapi) HRESULT,
        get_ExitDisplayModeOnAccessKeyInvoked: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ExitDisplayModeOnAccessKeyInvoked: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAccessKeyScope: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAccessKeyScope: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AccessKeyScopeOwner: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_AccessKeyScopeOwner: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_AccessKey: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AccessKey: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        add_ContextRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,ContextRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContextRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ContextCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,RoutedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContextCanceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccessKeyDisplayRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,AccessKeyDisplayRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessKeyDisplayRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccessKeyDisplayDismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,AccessKeyDisplayDismissedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessKeyDisplayDismissed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccessKeyInvoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,AccessKeyInvokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessKeyInvoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement5 = extern struct {
    vtable: *const VTable,
    pub fn getLights(self: *@This()) core.HResult!*IVector(XamlLight) {
        var _r: *IVector(XamlLight) = undefined;
        const _c = self.vtable.get_Lights(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipPlacementMode(self: *@This()) core.HResult!KeyTipPlacementMode {
        var _r: KeyTipPlacementMode = undefined;
        const _c = self.vtable.get_KeyTipPlacementMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipPlacementMode(self: *@This(), value: KeyTipPlacementMode) core.HResult!void {
        const _c = self.vtable.put_KeyTipPlacementMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTipHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyTipHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_KeyTipHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTipVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyTipVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_KeyTipVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusKeyboardNavigation(self: *@This()) core.HResult!XYFocusKeyboardNavigationMode {
        var _r: XYFocusKeyboardNavigationMode = undefined;
        const _c = self.vtable.get_XYFocusKeyboardNavigation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusKeyboardNavigation(self: *@This(), value: XYFocusKeyboardNavigationMode) core.HResult!void {
        const _c = self.vtable.put_XYFocusKeyboardNavigation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusUpNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusUpNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusUpNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusUpNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusDownNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusDownNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusDownNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusDownNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusLeftNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusLeftNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusLeftNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusLeftNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusRightNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusRightNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusRightNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusRightNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHighContrastAdjustment(self: *@This()) core.HResult!ElementHighContrastAdjustment {
        var _r: ElementHighContrastAdjustment = undefined;
        const _c = self.vtable.get_HighContrastAdjustment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHighContrastAdjustment(self: *@This(), value: ElementHighContrastAdjustment) core.HResult!void {
        const _c = self.vtable.put_HighContrastAdjustment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTabFocusNavigation(self: *@This()) core.HResult!KeyboardNavigationMode {
        var _r: KeyboardNavigationMode = undefined;
        const _c = self.vtable.get_TabFocusNavigation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTabFocusNavigation(self: *@This(), value: KeyboardNavigationMode) core.HResult!void {
        const _c = self.vtable.put_TabFocusNavigation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGettingFocus(self: *@This(), handler: *TypedEventHandler(UIElement,GettingFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GettingFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGettingFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GettingFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLosingFocus(self: *@This(), handler: *TypedEventHandler(UIElement,LosingFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LosingFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLosingFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LosingFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNoFocusCandidateFound(self: *@This(), handler: *TypedEventHandler(UIElement,NoFocusCandidateFoundEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NoFocusCandidateFound(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNoFocusCandidateFound(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NoFocusCandidateFound(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartBringIntoView(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartBringIntoView(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartBringIntoView(self: *@This(), options: *BringIntoViewOptions) core.HResult!void {
        const _c = self.vtable.StartBringIntoView(@ptrCast(self), options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8eed9bc2-a58c-4453-af0f-a92ee06d0317";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Lights: *const fn(self: *anyopaque, _r: **IVector(XamlLight)) callconv(.winapi) HRESULT,
        get_KeyTipPlacementMode: *const fn(self: *anyopaque, _r: *KeyTipPlacementMode) callconv(.winapi) HRESULT,
        put_KeyTipPlacementMode: *const fn(self: *anyopaque, value: KeyTipPlacementMode) callconv(.winapi) HRESULT,
        get_KeyTipHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_KeyTipHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_KeyTipVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_KeyTipVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_XYFocusKeyboardNavigation: *const fn(self: *anyopaque, _r: *XYFocusKeyboardNavigationMode) callconv(.winapi) HRESULT,
        put_XYFocusKeyboardNavigation: *const fn(self: *anyopaque, value: XYFocusKeyboardNavigationMode) callconv(.winapi) HRESULT,
        get_XYFocusUpNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusUpNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusDownNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusDownNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusLeftNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusLeftNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusRightNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusRightNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_HighContrastAdjustment: *const fn(self: *anyopaque, _r: *ElementHighContrastAdjustment) callconv(.winapi) HRESULT,
        put_HighContrastAdjustment: *const fn(self: *anyopaque, value: ElementHighContrastAdjustment) callconv(.winapi) HRESULT,
        get_TabFocusNavigation: *const fn(self: *anyopaque, _r: *KeyboardNavigationMode) callconv(.winapi) HRESULT,
        put_TabFocusNavigation: *const fn(self: *anyopaque, value: KeyboardNavigationMode) callconv(.winapi) HRESULT,
        add_GettingFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,GettingFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GettingFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LosingFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,LosingFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LosingFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NoFocusCandidateFound: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,NoFocusCandidateFoundEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NoFocusCandidateFound: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        StartBringIntoView: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartBringIntoView: *const fn(self: *anyopaque, options: *BringIntoViewOptions) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement7 = extern struct {
    vtable: *const VTable,
    pub fn getKeyboardAccelerators(self: *@This()) core.HResult!*IVector(KeyboardAccelerator) {
        var _r: *IVector(KeyboardAccelerator) = undefined;
        const _c = self.vtable.get_KeyboardAccelerators(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCharacterReceived(self: *@This(), handler: *TypedEventHandler(UIElement,CharacterReceivedRoutedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CharacterReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCharacterReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CharacterReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProcessKeyboardAccelerators(self: *@This(), handler: *TypedEventHandler(UIElement,ProcessKeyboardAcceleratorEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProcessKeyboardAccelerators(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProcessKeyboardAccelerators(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProcessKeyboardAccelerators(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPreviewKeyDown(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PreviewKeyDown(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreviewKeyDown(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PreviewKeyDown(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPreviewKeyUp(self: *@This(), handler: *KeyEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PreviewKeyUp(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreviewKeyUp(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PreviewKeyUp(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryInvokeKeyboardAccelerator(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        const _c = self.vtable.TryInvokeKeyboardAccelerator(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cafc4968-6369-4249-80f9-3d656319e811";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyboardAccelerators: *const fn(self: *anyopaque, _r: **IVector(KeyboardAccelerator)) callconv(.winapi) HRESULT,
        add_CharacterReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,CharacterReceivedRoutedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CharacterReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProcessKeyboardAccelerators: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,ProcessKeyboardAcceleratorEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProcessKeyboardAccelerators: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PreviewKeyDown: *const fn(self: *anyopaque, handler: *KeyEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PreviewKeyDown: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PreviewKeyUp: *const fn(self: *anyopaque, handler: *KeyEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PreviewKeyUp: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryInvokeKeyboardAccelerator: *const fn(self: *anyopaque, args: *ProcessKeyboardAcceleratorEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement8 = extern struct {
    vtable: *const VTable,
    pub fn getKeyTipTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_KeyTipTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_KeyTipTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyboardAcceleratorPlacementTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorPlacementTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyboardAcceleratorPlacementTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_KeyboardAcceleratorPlacementTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyboardAcceleratorPlacementMode(self: *@This()) core.HResult!KeyboardAcceleratorPlacementMode {
        var _r: KeyboardAcceleratorPlacementMode = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorPlacementMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyboardAcceleratorPlacementMode(self: *@This(), value: KeyboardAcceleratorPlacementMode) core.HResult!void {
        const _c = self.vtable.put_KeyboardAcceleratorPlacementMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBringIntoViewRequested(self: *@This(), handler: *TypedEventHandler(UIElement,BringIntoViewRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BringIntoViewRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBringIntoViewRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BringIntoViewRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ab70e85-d508-4477-b6f8-0e435701c836";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyTipTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_KeyTipTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorPlacementTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_KeyboardAcceleratorPlacementTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorPlacementMode: *const fn(self: *anyopaque, _r: *KeyboardAcceleratorPlacementMode) callconv(.winapi) HRESULT,
        put_KeyboardAcceleratorPlacementMode: *const fn(self: *anyopaque, value: KeyboardAcceleratorPlacementMode) callconv(.winapi) HRESULT,
        add_BringIntoViewRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIElement,BringIntoViewRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BringIntoViewRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUIElement9 = extern struct {
    vtable: *const VTable,
    pub fn getCanBeScrollAnchor(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanBeScrollAnchor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanBeScrollAnchor(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanBeScrollAnchor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpacityTransition(self: *@This()) core.HResult!*ScalarTransition {
        var _r: *ScalarTransition = undefined;
        const _c = self.vtable.get_OpacityTransition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacityTransition(self: *@This(), value: *ScalarTransition) core.HResult!void {
        const _c = self.vtable.put_OpacityTransition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslation(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Translation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslation(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Translation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslationTransition(self: *@This()) core.HResult!*Vector3Transition {
        var _r: *Vector3Transition = undefined;
        const _c = self.vtable.get_TranslationTransition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslationTransition(self: *@This(), value: *Vector3Transition) core.HResult!void {
        const _c = self.vtable.put_TranslationTransition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Rotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationTransition(self: *@This()) core.HResult!*ScalarTransition {
        var _r: *ScalarTransition = undefined;
        const _c = self.vtable.get_RotationTransition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationTransition(self: *@This(), value: *ScalarTransition) core.HResult!void {
        const _c = self.vtable.put_RotationTransition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleTransition(self: *@This()) core.HResult!*Vector3Transition {
        var _r: *Vector3Transition = undefined;
        const _c = self.vtable.get_ScaleTransition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleTransition(self: *@This(), value: *Vector3Transition) core.HResult!void {
        const _c = self.vtable.put_ScaleTransition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix4x4 {
        var _r: Matrix4x4 = undefined;
        const _c = self.vtable.get_TransformMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix4x4) core.HResult!void {
        const _c = self.vtable.put_TransformMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_CenterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterPoint(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_CenterPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAxis(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_RotationAxis(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAxis(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_RotationAxis(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAnimation(self: *@This(), animation: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.StartAnimation(@ptrCast(self), animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAnimation(self: *@This(), animation: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.StopAnimation(@ptrCast(self), animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElement9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4a04776-4e88-50ca-8f2b-08940d6c5f94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanBeScrollAnchor: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanBeScrollAnchor: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OpacityTransition: *const fn(self: *anyopaque, _r: **ScalarTransition) callconv(.winapi) HRESULT,
        put_OpacityTransition: *const fn(self: *anyopaque, value: *ScalarTransition) callconv(.winapi) HRESULT,
        get_Translation: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Translation: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_TranslationTransition: *const fn(self: *anyopaque, _r: **Vector3Transition) callconv(.winapi) HRESULT,
        put_TranslationTransition: *const fn(self: *anyopaque, value: *Vector3Transition) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Rotation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationTransition: *const fn(self: *anyopaque, _r: **ScalarTransition) callconv(.winapi) HRESULT,
        put_RotationTransition: *const fn(self: *anyopaque, value: *ScalarTransition) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_ScaleTransition: *const fn(self: *anyopaque, _r: **Vector3Transition) callconv(.winapi) HRESULT,
        put_ScaleTransition: *const fn(self: *anyopaque, value: *Vector3Transition) callconv(.winapi) HRESULT,
        get_TransformMatrix: *const fn(self: *anyopaque, _r: *Matrix4x4) callconv(.winapi) HRESULT,
        put_TransformMatrix: *const fn(self: *anyopaque, value: Matrix4x4) callconv(.winapi) HRESULT,
        get_CenterPoint: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_CenterPoint: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_RotationAxis: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_RotationAxis: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        StartAnimation: *const fn(self: *anyopaque, animation: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
        StopAnimation: *const fn(self: *anyopaque, animation: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9ee93fe-a338-419f-ac32-91dcaadf5d08";
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
pub const IUIElementOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnCreateAutomationPeer(self: *@This()) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.OnCreateAutomationPeer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OnDisconnectVisualChildren(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnDisconnectVisualChildren(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindSubElementsForTouchTargeting(self: *@This(), point: Point, boundingRect: Rect) core.HResult!*IIterable(IIterable(Point)) {
        var _r: *IIterable(IIterable(Point)) = undefined;
        const _c = self.vtable.FindSubElementsForTouchTargeting(@ptrCast(self), point, boundingRect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnCreateAutomationPeer: *const fn(self: *anyopaque, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        OnDisconnectVisualChildren: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        FindSubElementsForTouchTargeting: *const fn(self: *anyopaque, point: Point, boundingRect: Rect, _r: **IIterable(IIterable(Point))) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementOverrides7 = extern struct {
    vtable: *const VTable,
    pub fn GetChildrenInTabFocusOrder(self: *@This()) core.HResult!*IIterable(DependencyObject) {
        var _r: *IIterable(DependencyObject) = undefined;
        const _c = self.vtable.GetChildrenInTabFocusOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OnProcessKeyboardAccelerators(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        const _c = self.vtable.OnProcessKeyboardAccelerators(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementOverrides7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b97f7f68-c29b-4c99-a1c3-952619d6e720";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetChildrenInTabFocusOrder: *const fn(self: *anyopaque, _r: **IIterable(DependencyObject)) callconv(.winapi) HRESULT,
        OnProcessKeyboardAccelerators: *const fn(self: *anyopaque, args: *ProcessKeyboardAcceleratorEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementOverrides8 = extern struct {
    vtable: *const VTable,
    pub fn OnKeyboardAcceleratorInvoked(self: *@This(), args: *KeyboardAcceleratorInvokedEventArgs) core.HResult!void {
        const _c = self.vtable.OnKeyboardAcceleratorInvoked(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnBringIntoViewRequested(self: *@This(), e: *BringIntoViewRequestedEventArgs) core.HResult!void {
        const _c = self.vtable.OnBringIntoViewRequested(@ptrCast(self), e);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementOverrides8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a5a645c-548d-48cf-b998-7844d6e235a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnKeyboardAcceleratorInvoked: *const fn(self: *anyopaque, args: *KeyboardAcceleratorInvokedEventArgs) callconv(.winapi) HRESULT,
        OnBringIntoViewRequested: *const fn(self: *anyopaque, e: *BringIntoViewRequestedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementOverrides9 = extern struct {
    vtable: *const VTable,
    pub fn PopulatePropertyInfoOverride(self: *@This(), propertyName: HSTRING, animationPropertyInfo: *AnimationPropertyInfo) core.HResult!void {
        const _c = self.vtable.PopulatePropertyInfoOverride(@ptrCast(self), propertyName, animationPropertyInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementOverrides9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a6e5973-6d63-54f2-90fa-62813b20b7b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PopulatePropertyInfoOverride: *const fn(self: *anyopaque, propertyName: HSTRING, animationPropertyInfo: *AnimationPropertyInfo) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics = extern struct {
    vtable: *const VTable,
    pub fn getKeyDownEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_KeyDownEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyUpEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_KeyUpEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerEnteredEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerEnteredEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerPressedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerPressedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerMovedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerMovedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerReleasedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerReleasedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerExitedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerExitedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerCaptureLostEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerCaptureLostEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerCanceledEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerCanceledEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerWheelChangedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PointerWheelChangedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTappedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_TappedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDoubleTappedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_DoubleTappedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHoldingEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_HoldingEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRightTappedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_RightTappedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManipulationStartingEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_ManipulationStartingEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManipulationInertiaStartingEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_ManipulationInertiaStartingEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManipulationStartedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_ManipulationStartedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManipulationDeltaEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_ManipulationDeltaEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManipulationCompletedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_ManipulationCompletedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragEnterEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_DragEnterEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragLeaveEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_DragLeaveEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragOverEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_DragOverEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_DropEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowDropProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowDropProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClipProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClipProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRenderTransformProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RenderTransformProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProjectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ProjectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRenderTransformOriginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RenderTransformOriginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHitTestVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsHitTestVisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisibilityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VisibilityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUseLayoutRoundingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_UseLayoutRoundingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitionsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TransitionsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCacheModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CacheModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTapEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsTapEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDoubleTapEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsDoubleTapEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRightTapEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsRightTapEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHoldingEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsHoldingEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManipulationModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ManipulationModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerCapturesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerCapturesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58d3573b-f52c-45be-988b-a5869564873c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyDownEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_KeyUpEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerEnteredEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerPressedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerMovedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerReleasedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerExitedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerCaptureLostEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerCanceledEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PointerWheelChangedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_TappedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_DoubleTappedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_HoldingEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_RightTappedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_ManipulationStartingEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_ManipulationInertiaStartingEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_ManipulationStartedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_ManipulationDeltaEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_ManipulationCompletedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_DragEnterEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_DragLeaveEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_DragOverEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_DropEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_AllowDropProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClipProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RenderTransformProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ProjectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RenderTransformOriginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsHitTestVisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VisibilityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_UseLayoutRoundingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TransitionsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CacheModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsTapEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsDoubleTapEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsRightTapEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsHoldingEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ManipulationModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerCapturesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics10 = extern struct {
    vtable: *const VTable,
    pub fn getShadowProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ShadowProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics10";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60d25362-4b3e-53da-8b78-38db94ae8f26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShadowProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getCompositeModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CompositeModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58d3574b-f53c-45be-989b-a5869564874c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompositeModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getTransform3DProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Transform3DProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDragProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CanDragProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStartDirectManipulation(self: *@This(), value: *Pointer) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryStartDirectManipulation(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1f87ade-eca1-4561-a32b-64601b4e0597";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Transform3DProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CanDragProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        TryStartDirectManipulation: *const fn(self: *anyopaque, value: *Pointer, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getContextFlyoutProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContextFlyoutProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitDisplayModeOnAccessKeyInvokedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitDisplayModeOnAccessKeyInvokedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAccessKeyScopeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsAccessKeyScopeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessKeyScopeOwnerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessKeyScopeOwnerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessKeyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d157d61-16af-411f-b774-272375a4ac2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContextFlyoutProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ExitDisplayModeOnAccessKeyInvokedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsAccessKeyScopeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AccessKeyScopeOwnerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AccessKeyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getLightsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LightsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipPlacementModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipPlacementModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusKeyboardNavigationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusKeyboardNavigationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusUpNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusDownNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusDownNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusLeftNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusLeftNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusRightNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusRightNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighContrastAdjustmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HighContrastAdjustmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTabFocusNavigationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TabFocusNavigationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59bd7d91-8fa3-4c65-ba1b-40df38556cbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LightsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTipPlacementModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTipHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTipVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusKeyboardNavigationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusUpNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusDownNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusLeftNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusRightNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_HighContrastAdjustmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TabFocusNavigationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getGettingFocusEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_GettingFocusEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLosingFocusEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_LosingFocusEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNoFocusCandidateFoundEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_NoFocusCandidateFoundEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "647e03b7-036a-4dea-9540-1dd7fd1266f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GettingFocusEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_LosingFocusEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_NoFocusCandidateFoundEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics7 = extern struct {
    vtable: *const VTable,
    pub fn getPreviewKeyDownEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PreviewKeyDownEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacterReceivedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_CharacterReceivedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviewKeyUpEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_PreviewKeyUpEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da9b4493-a695-4145-ae93-888024396a0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreviewKeyDownEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_CharacterReceivedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_PreviewKeyUpEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics8 = extern struct {
    vtable: *const VTable,
    pub fn getBringIntoViewRequestedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_BringIntoViewRequestedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContextRequestedEvent(self: *@This()) core.HResult!*RoutedEvent {
        var _r: *RoutedEvent = undefined;
        const _c = self.vtable.get_ContextRequestedEvent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyboardAcceleratorPlacementTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorPlacementTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyboardAcceleratorPlacementModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorPlacementModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterAsScrollPort(self: *@This(), element: *UIElement) core.HResult!void {
        const _c = self.vtable.RegisterAsScrollPort(@ptrCast(self), element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17be3487-4875-4915-b0b1-a4c0f851df3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BringIntoViewRequestedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_ContextRequestedEvent: *const fn(self: *anyopaque, _r: **RoutedEvent) callconv(.winapi) HRESULT,
        get_KeyTipTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorPlacementTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorPlacementModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        RegisterAsScrollPort: *const fn(self: *anyopaque, element: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementStatics9 = extern struct {
    vtable: *const VTable,
    pub fn getCanBeScrollAnchorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CanBeScrollAnchorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementStatics9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71467e77-8ca3-5ed7-95db-d51cdad77f81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanBeScrollAnchorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IUIElementWeakCollection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementWeakCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10341223-e66d-519e-acf8-556bd244eac3";
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
pub const IUIElementWeakCollectionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*UIElementWeakCollection {
        var _r: *UIElementWeakCollection = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUIElementWeakCollectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57242561-188a-5304-8792-a43f35d90f99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **UIElementWeakCollection) callconv(.winapi) HRESULT,
    };
};
pub const IUnhandledExceptionEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getException(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_Exception(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.IUnhandledExceptionEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7230269c-054e-4cf3-86c5-be90eb6863d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exception: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IVector3Transition = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComponents(self: *@This()) core.HResult!Vector3TransitionComponents {
        var _r: Vector3TransitionComponents = undefined;
        const _c = self.vtable.get_Components(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComponents(self: *@This(), value: Vector3TransitionComponents) core.HResult!void {
        const _c = self.vtable.put_Components(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVector3Transition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2e209dc-c4a2-5101-9a68-fa0150505589";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Components: *const fn(self: *anyopaque, _r: *Vector3TransitionComponents) callconv(.winapi) HRESULT,
        put_Components: *const fn(self: *anyopaque, value: Vector3TransitionComponents) callconv(.winapi) HRESULT,
    };
};
pub const IVector3TransitionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Vector3Transition {
        var _r: *Vector3Transition = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVector3TransitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3706699-ee9b-50dc-8807-f51d5a759495";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Vector3Transition) callconv(.winapi) HRESULT,
    };
};
pub const IVisualState = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStoryboard(self: *@This()) core.HResult!*Storyboard {
        var _r: *Storyboard = undefined;
        const _c = self.vtable.get_Storyboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStoryboard(self: *@This(), value: *Storyboard) core.HResult!void {
        const _c = self.vtable.put_Storyboard(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6320affc-c31a-4450-afde-f6ea7bd1f586";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Storyboard: *const fn(self: *anyopaque, _r: **Storyboard) callconv(.winapi) HRESULT,
        put_Storyboard: *const fn(self: *anyopaque, value: *Storyboard) callconv(.winapi) HRESULT,
    };
};
pub const IVisualState2 = extern struct {
    vtable: *const VTable,
    pub fn getSetters(self: *@This()) core.HResult!*SetterBaseCollection {
        var _r: *SetterBaseCollection = undefined;
        const _c = self.vtable.get_Setters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStateTriggers(self: *@This()) core.HResult!*IVector(StateTriggerBase) {
        var _r: *IVector(StateTriggerBase) = undefined;
        const _c = self.vtable.get_StateTriggers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualState2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fa0f896-64c0-45fb-8d24-fb83298c0d93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Setters: *const fn(self: *anyopaque, _r: **SetterBaseCollection) callconv(.winapi) HRESULT,
        get_StateTriggers: *const fn(self: *anyopaque, _r: **IVector(StateTriggerBase)) callconv(.winapi) HRESULT,
    };
};
pub const IVisualStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldState(self: *@This()) core.HResult!*VisualState {
        var _r: *VisualState = undefined;
        const _c = self.vtable.get_OldState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOldState(self: *@This(), value: *VisualState) core.HResult!void {
        const _c = self.vtable.put_OldState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNewState(self: *@This()) core.HResult!*VisualState {
        var _r: *VisualState = undefined;
        const _c = self.vtable.get_NewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNewState(self: *@This(), value: *VisualState) core.HResult!void {
        const _c = self.vtable.put_NewState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControl(self: *@This()) core.HResult!*Control {
        var _r: *Control = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putControl(self: *@This(), value: *Control) core.HResult!void {
        const _c = self.vtable.put_Control(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe216ab1-f31f-4791-8989-c70e1d9b59ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldState: *const fn(self: *anyopaque, _r: **VisualState) callconv(.winapi) HRESULT,
        put_OldState: *const fn(self: *anyopaque, value: *VisualState) callconv(.winapi) HRESULT,
        get_NewState: *const fn(self: *anyopaque, _r: **VisualState) callconv(.winapi) HRESULT,
        put_NewState: *const fn(self: *anyopaque, value: *VisualState) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **Control) callconv(.winapi) HRESULT,
        put_Control: *const fn(self: *anyopaque, value: *Control) callconv(.winapi) HRESULT,
    };
};
pub const IVisualStateGroup = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitions(self: *@This()) core.HResult!*IVector(VisualTransition) {
        var _r: *IVector(VisualTransition) = undefined;
        const _c = self.vtable.get_Transitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStates(self: *@This()) core.HResult!*IVector(VisualState) {
        var _r: *IVector(VisualState) = undefined;
        const _c = self.vtable.get_States(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentState(self: *@This()) core.HResult!*VisualState {
        var _r: *VisualState = undefined;
        const _c = self.vtable.get_CurrentState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCurrentStateChanged(self: *@This(), handler: *VisualStateChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCurrentStateChanging(self: *@This(), handler: *VisualStateChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentStateChanging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentStateChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentStateChanging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4f9d9a4-e028-44de-9b15-4929ae0a26c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Transitions: *const fn(self: *anyopaque, _r: **IVector(VisualTransition)) callconv(.winapi) HRESULT,
        get_States: *const fn(self: *anyopaque, _r: **IVector(VisualState)) callconv(.winapi) HRESULT,
        get_CurrentState: *const fn(self: *anyopaque, _r: **VisualState) callconv(.winapi) HRESULT,
        add_CurrentStateChanged: *const fn(self: *anyopaque, handler: *VisualStateChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CurrentStateChanging: *const fn(self: *anyopaque, handler: *VisualStateChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentStateChanging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IVisualStateManager = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fda9f9a-6fab-4112-9258-1006a3c3476e";
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
pub const IVisualStateManagerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*VisualStateManager {
        var _r: *VisualStateManager = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateManagerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85e598fd-a575-47b6-9e30-383cd08585f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **VisualStateManager) callconv(.winapi) HRESULT,
    };
};
pub const IVisualStateManagerOverrides = extern struct {
    vtable: *const VTable,
    pub fn GoToStateCore(self: *@This(), control: *Control, templateRoot: *FrameworkElement, stateName: HSTRING, group: *VisualStateGroup, state: *VisualState, useTransitions: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GoToStateCore(@ptrCast(self), control, templateRoot, stateName, group, state, useTransitions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateManagerOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a66910e-7979-43c8-8ff4-ec6122750006";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GoToStateCore: *const fn(self: *anyopaque, control: *Control, templateRoot: *FrameworkElement, stateName: HSTRING, group: *VisualStateGroup, state: *VisualState, useTransitions: bool, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVisualStateManagerProtected = extern struct {
    vtable: *const VTable,
    pub fn RaiseCurrentStateChanging(self: *@This(), stateGroup: *VisualStateGroup, oldState: *VisualState, newState: *VisualState, control: *Control) core.HResult!void {
        const _c = self.vtable.RaiseCurrentStateChanging(@ptrCast(self), stateGroup, oldState, newState, control);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RaiseCurrentStateChanged(self: *@This(), stateGroup: *VisualStateGroup, oldState: *VisualState, newState: *VisualState, control: *Control) core.HResult!void {
        const _c = self.vtable.RaiseCurrentStateChanged(@ptrCast(self), stateGroup, oldState, newState, control);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateManagerProtected";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b3b8640-b0b7-404c-9ef4-d949640e245d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RaiseCurrentStateChanging: *const fn(self: *anyopaque, stateGroup: *VisualStateGroup, oldState: *VisualState, newState: *VisualState, control: *Control) callconv(.winapi) HRESULT,
        RaiseCurrentStateChanged: *const fn(self: *anyopaque, stateGroup: *VisualStateGroup, oldState: *VisualState, newState: *VisualState, control: *Control) callconv(.winapi) HRESULT,
    };
};
pub const IVisualStateManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetVisualStateGroups(self: *@This(), obj: *FrameworkElement) core.HResult!*IVector(VisualStateGroup) {
        var _r: *IVector(VisualStateGroup) = undefined;
        const _c = self.vtable.GetVisualStateGroups(@ptrCast(self), obj, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomVisualStateManagerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CustomVisualStateManagerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCustomVisualStateManager(self: *@This(), obj: *FrameworkElement) core.HResult!*VisualStateManager {
        var _r: *VisualStateManager = undefined;
        const _c = self.vtable.GetCustomVisualStateManager(@ptrCast(self), obj, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCustomVisualStateManager(self: *@This(), obj: *FrameworkElement, value: *VisualStateManager) core.HResult!void {
        const _c = self.vtable.SetCustomVisualStateManager(@ptrCast(self), obj, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GoToState(self: *@This(), control: *Control, stateName: HSTRING, useTransitions: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GoToState(@ptrCast(self), control, stateName, useTransitions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualStateManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01d0e9e0-d713-414e-a74e-e63ec7ac8c3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetVisualStateGroups: *const fn(self: *anyopaque, obj: *FrameworkElement, _r: **IVector(VisualStateGroup)) callconv(.winapi) HRESULT,
        get_CustomVisualStateManagerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetCustomVisualStateManager: *const fn(self: *anyopaque, obj: *FrameworkElement, _r: **VisualStateManager) callconv(.winapi) HRESULT,
        SetCustomVisualStateManager: *const fn(self: *anyopaque, obj: *FrameworkElement, value: *VisualStateManager) callconv(.winapi) HRESULT,
        GoToState: *const fn(self: *anyopaque, control: *Control, stateName: HSTRING, useTransitions: bool, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVisualTransition = extern struct {
    vtable: *const VTable,
    pub fn getGeneratedDuration(self: *@This()) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.get_GeneratedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGeneratedDuration(self: *@This(), value: Duration) core.HResult!void {
        const _c = self.vtable.put_GeneratedDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGeneratedEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_GeneratedEasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGeneratedEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_GeneratedEasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTo(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_To(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_From(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStoryboard(self: *@This()) core.HResult!*Storyboard {
        var _r: *Storyboard = undefined;
        const _c = self.vtable.get_Storyboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStoryboard(self: *@This(), value: *Storyboard) core.HResult!void {
        const _c = self.vtable.put_Storyboard(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55c5905e-2bc7-400d-aaa4-1a2981491ee0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GeneratedDuration: *const fn(self: *anyopaque, _r: *Duration) callconv(.winapi) HRESULT,
        put_GeneratedDuration: *const fn(self: *anyopaque, value: Duration) callconv(.winapi) HRESULT,
        get_GeneratedEasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_GeneratedEasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Storyboard: *const fn(self: *anyopaque, _r: **Storyboard) callconv(.winapi) HRESULT,
        put_Storyboard: *const fn(self: *anyopaque, value: *Storyboard) callconv(.winapi) HRESULT,
    };
};
pub const IVisualTransitionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*VisualTransition {
        var _r: *VisualTransition = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IVisualTransitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea75864f-d1e0-4dae-b429-89fc322724f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **VisualTransition) callconv(.winapi) HRESULT,
    };
};
pub const IWindow = extern struct {
    vtable: *const VTable,
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContent(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCoreWindow(self: *@This()) core.HResult!*CoreWindow {
        var _r: *CoreWindow = undefined;
        const _c = self.vtable.get_CoreWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addActivated(self: *@This(), handler: *WindowActivatedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *WindowClosedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSizeChanged(self: *@This(), handler: *WindowSizeChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SizeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SizeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVisibilityChanged(self: *@This(), handler: *WindowVisibilityChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisibilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisibilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Activate(self: *@This()) core.HResult!void {
        const _c = self.vtable.Activate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3276167d-c9f6-462d-9de2-ae4c1fd8c2e5";
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
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
        get_CoreWindow: *const fn(self: *anyopaque, _r: **CoreWindow) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *WindowActivatedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *WindowClosedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SizeChanged: *const fn(self: *anyopaque, handler: *WindowSizeChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SizeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VisibilityChanged: *const fn(self: *anyopaque, handler: *WindowVisibilityChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisibilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Activate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWindow2 = extern struct {
    vtable: *const VTable,
    pub fn SetTitleBar(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.SetTitleBar(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IWindow2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d384759f-34f6-4482-8435-f552f9b24cc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetTitleBar: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IWindow3 = extern struct {
    vtable: *const VTable,
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        var _r: *Compositor = undefined;
        const _c = self.vtable.get_Compositor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IWindow3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b70bdc9d-1c35-462a-9b97-808d5af9f28e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Compositor: *const fn(self: *anyopaque, _r: **Compositor) callconv(.winapi) HRESULT,
    };
};
pub const IWindow4 = extern struct {
    vtable: *const VTable,
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IWindow4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfe1b8ce-6c40-50f9-854c-7021d2bc9de6";
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
pub const IWindowCreatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWindow(self: *@This()) core.HResult!*Window {
        var _r: *Window = undefined;
        const _c = self.vtable.get_Window(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IWindowCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31b71470-feff-4654-af48-9b398ab5772b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Window: *const fn(self: *anyopaque, _r: **Window) callconv(.winapi) HRESULT,
    };
};
pub const IWindowStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*Window {
        var _r: *Window = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IWindowStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93328409-4ea1-4afa-83dc-0c4e73e88bb1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **Window) callconv(.winapi) HRESULT,
    };
};
pub const IXamlRoot = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRasterizationScale(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RasterizationScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHostVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHostVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(XamlRoot,XamlRootChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.IXamlRoot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34b50756-1696-5b6d-8e9b-c71464ccad5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_RasterizationScale: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsHostVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UIContext: *const fn(self: *anyopaque, _r: **UIContext) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(XamlRoot,XamlRootChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IXamlRootChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.IXamlRootChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92d71c21-d23c-5a17-bcb8-001504b6bb19";
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
pub const LeavingBackgroundEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *LeavingBackgroundEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *LeavingBackgroundEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *LeavingBackgroundEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.LeavingBackgroundEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaad5dad-4fc6-4aa4-b7cf-877e36ada4f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *LeavingBackgroundEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const LineStackingStrategy = enum(i32) {
    MaxHeight = 0,
    BlockLineHeight = 1,
    BaselineToBaseline = 2,
};
pub const TriggerAction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.TriggerAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITriggerAction.GUID;
    pub const IID: Guid = ITriggerAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITriggerAction.SIGNATURE);
    var _ITriggerActionFactoryCache: FactoryCache(ITriggerActionFactory, RUNTIME_NAME) = .{};
};
pub const MediaFailedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorTrace(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaFailedRoutedEventArgs = @ptrCast(self);
        return try this.getErrorTrace();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.MediaFailedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFailedRoutedEventArgs.GUID;
    pub const IID: Guid = IMediaFailedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFailedRoutedEventArgs.SIGNATURE);
};
pub const OpticalMarginAlignment = enum(i32) {
    None = 0,
    TrimSideBearings = 1,
};
pub const PointHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromCoordinates(x: f32, y: f32) core.HResult!Point {
        const factory = @This().IPointHelperStaticsCache.get();
        return try factory.FromCoordinates(x, y);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.PointHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointHelper.GUID;
    pub const IID: Guid = IPointHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointHelper.SIGNATURE);
    var _IPointHelperStaticsCache: FactoryCache(IPointHelperStatics, RUNTIME_NAME) = .{};
};
pub const PropertyChangedCallback = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, d: *DependencyObject, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, d: *DependencyObject, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, d: *DependencyObject, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, d, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.PropertyChangedCallback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a9f8a25-d142-44a4-8231-fd676724f29b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, d: *DependencyObject, e: *DependencyPropertyChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PropertyMetadata = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDefaultValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPropertyMetadata = @ptrCast(self);
        return try this.getDefaultValue();
    }
    pub fn getCreateDefaultValueCallback(self: *@This()) core.HResult!*CreateDefaultValueCallback {
        const this: *IPropertyMetadata = @ptrCast(self);
        return try this.getCreateDefaultValueCallback();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithDefaultValue(defaultValue: *IInspectable) core.HResult!*PropertyMetadata {
        const factory = @This().IPropertyMetadataStaticsCache.get();
        return try factory.CreateWithDefaultValue(defaultValue);
    }
    pub fn CreateWithPropertyChangedCallback(defaultValue: *IInspectable, propertyChangedCallback: *PropertyChangedCallback) core.HResult!*PropertyMetadata {
        const factory = @This().IPropertyMetadataStaticsCache.get();
        return try factory.CreateWithPropertyChangedCallback(defaultValue, propertyChangedCallback);
    }
    pub fn Create(createDefaultValueCallback: *CreateDefaultValueCallback) core.HResult!*PropertyMetadata {
        const factory = @This().IPropertyMetadataStaticsCache.get();
        return try factory.Create(createDefaultValueCallback);
    }
    pub fn CreateWithPropertyChangedCallback(createDefaultValueCallback: *CreateDefaultValueCallback, propertyChangedCallback: *PropertyChangedCallback) core.HResult!*PropertyMetadata {
        const factory = @This().IPropertyMetadataStaticsCache.get();
        return try factory.CreateWithPropertyChangedCallback(createDefaultValueCallback, propertyChangedCallback);
    }
    pub fn CreateInstanceWithDefaultValue(defaultValue: *IInspectable, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PropertyMetadata {
        const factory = @This().IPropertyMetadataFactoryCache.get();
        return try factory.CreateInstanceWithDefaultValue(defaultValue, baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithDefaultValueAndCallback(defaultValue: *IInspectable, propertyChangedCallback: *PropertyChangedCallback, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PropertyMetadata {
        const factory = @This().IPropertyMetadataFactoryCache.get();
        return try factory.CreateInstanceWithDefaultValueAndCallback(defaultValue, propertyChangedCallback, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.PropertyMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertyMetadata.GUID;
    pub const IID: Guid = IPropertyMetadata.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertyMetadata.SIGNATURE);
    var _IPropertyMetadataStaticsCache: FactoryCache(IPropertyMetadataStatics, RUNTIME_NAME) = .{};
    var _IPropertyMetadataFactoryCache: FactoryCache(IPropertyMetadataFactory, RUNTIME_NAME) = .{};
};
pub const PropertyPath = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *IPropertyPath = @ptrCast(self);
        return try this.getPath();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(path: HSTRING) core.HResult!*PropertyPath {
        const factory = @This().IPropertyPathFactoryCache.get();
        return try factory.CreateInstance(path);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.PropertyPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertyPath.GUID;
    pub const IID: Guid = IPropertyPath.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertyPath.SIGNATURE);
    var _IPropertyPathFactoryCache: FactoryCache(IPropertyPathFactory, RUNTIME_NAME) = .{};
};
pub const RectHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Empty() core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.getEmpty();
    }
    pub fn FromCoordinatesAndDimensions(x: f32, y: f32, width: f32, height: f32) core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.FromCoordinatesAndDimensions(x, y, width, height);
    }
    pub fn FromPoints(point1: Point, point2: Point) core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.FromPoints(point1, point2);
    }
    pub fn FromLocationAndSize(location: Point, size: Size) core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.FromLocationAndSize(location, size);
    }
    pub fn GetIsEmpty(target: Rect) core.HResult!bool {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.GetIsEmpty(target);
    }
    pub fn GetBottom(target: Rect) core.HResult!f32 {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.GetBottom(target);
    }
    pub fn GetLeft(target: Rect) core.HResult!f32 {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.GetLeft(target);
    }
    pub fn GetRight(target: Rect) core.HResult!f32 {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.GetRight(target);
    }
    pub fn GetTop(target: Rect) core.HResult!f32 {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.GetTop(target);
    }
    pub fn Contains(target: Rect, point: Point) core.HResult!bool {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.Contains(target, point);
    }
    pub fn Equals(target: Rect, value: Rect) core.HResult!bool {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.Equals(target, value);
    }
    pub fn Intersect(target: Rect, rect: Rect) core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.Intersect(target, rect);
    }
    pub fn Union(target: Rect, point: Point) core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.Union(target, point);
    }
    pub fn UnionWithRect(target: Rect, rect: Rect) core.HResult!Rect {
        const factory = @This().IRectHelperStaticsCache.get();
        return try factory.UnionWithRect(target, rect);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.RectHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRectHelper.GUID;
    pub const IID: Guid = IRectHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRectHelper.SIGNATURE);
    var _IRectHelperStaticsCache: FactoryCache(IRectHelperStatics, RUNTIME_NAME) = .{};
};
pub const RoutedEvent = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.RoutedEvent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRoutedEvent.GUID;
    pub const IID: Guid = IRoutedEvent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRoutedEvent.SIGNATURE);
};
pub const RoutedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *RoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.RoutedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a856e674-b0b6-4bc3-bba8-1ba06e40d4b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *RoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ScalarTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IScalarTransition = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IScalarTransition = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ScalarTransition {
        const factory = @This().IScalarTransitionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ScalarTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScalarTransition.GUID;
    pub const IID: Guid = IScalarTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScalarTransition.SIGNATURE);
    var _IScalarTransitionFactoryCache: FactoryCache(IScalarTransitionFactory, RUNTIME_NAME) = .{};
};
pub const SetterBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSealed(self: *@This()) core.HResult!bool {
        const this: *ISetterBase = @ptrCast(self);
        return try this.getIsSealed();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.SetterBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISetterBase.GUID;
    pub const IID: Guid = ISetterBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISetterBase.SIGNATURE);
    var _ISetterBaseFactoryCache: FactoryCache(ISetterBaseFactory, RUNTIME_NAME) = .{};
};
pub const Setter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperty(self: *@This()) core.HResult!*DependencyProperty {
        const this: *ISetter = @ptrCast(self);
        return try this.getProperty();
    }
    pub fn putProperty(self: *@This(), value: *DependencyProperty) core.HResult!void {
        const this: *ISetter = @ptrCast(self);
        return try this.putProperty(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *ISetter = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ISetter = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getTarget(self: *@This()) core.HResult!*TargetPropertyPath {
        var this: ?*ISetter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISetter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTarget();
    }
    pub fn putTarget(self: *@This(), value: *TargetPropertyPath) core.HResult!void {
        var this: ?*ISetter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISetter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTarget(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISetter.IID)));
    }
    pub fn CreateInstance(targetProperty: *DependencyProperty, value: *IInspectable) core.HResult!*Setter {
        const factory = @This().ISetterFactoryCache.get();
        return try factory.CreateInstance(targetProperty, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Setter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISetter.GUID;
    pub const IID: Guid = ISetter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISetter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISetterFactoryCache: FactoryCache(ISetterFactory, RUNTIME_NAME) = .{};
};
pub const SetterBaseCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSealed(self: *@This()) core.HResult!bool {
        const this: *ISetterBaseCollection = @ptrCast(self);
        return try this.getIsSealed();
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
        var this: ?*IVector(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(SetterBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISetterBaseCollection.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.SetterBaseCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISetterBaseCollection.GUID;
    pub const IID: Guid = ISetterBaseCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISetterBaseCollection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SizeChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreviousSize(self: *@This()) core.HResult!Size {
        const this: *ISizeChangedEventArgs = @ptrCast(self);
        return try this.getPreviousSize();
    }
    pub fn getNewSize(self: *@This()) core.HResult!Size {
        const this: *ISizeChangedEventArgs = @ptrCast(self);
        return try this.getNewSize();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.SizeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISizeChangedEventArgs.GUID;
    pub const IID: Guid = ISizeChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISizeChangedEventArgs.SIGNATURE);
};
pub const SizeChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *SizeChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *SizeChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *SizeChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.SizeChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1115b13c-25d2-480b-89dc-eb3dcbd6b7fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *SizeChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SizeHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Empty() core.HResult!Size {
        const factory = @This().ISizeHelperStaticsCache.get();
        return try factory.getEmpty();
    }
    pub fn FromDimensions(width: f32, height: f32) core.HResult!Size {
        const factory = @This().ISizeHelperStaticsCache.get();
        return try factory.FromDimensions(width, height);
    }
    pub fn GetIsEmpty(target: Size) core.HResult!bool {
        const factory = @This().ISizeHelperStaticsCache.get();
        return try factory.GetIsEmpty(target);
    }
    pub fn Equals(target: Size, value: Size) core.HResult!bool {
        const factory = @This().ISizeHelperStaticsCache.get();
        return try factory.Equals(target, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.SizeHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISizeHelper.GUID;
    pub const IID: Guid = ISizeHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISizeHelper.SIGNATURE);
    var _ISizeHelperStaticsCache: FactoryCache(ISizeHelperStatics, RUNTIME_NAME) = .{};
};
pub const StateTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IStateTrigger = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn putIsActive(self: *@This(), value: bool) core.HResult!void {
        const this: *IStateTrigger = @ptrCast(self);
        return try this.putIsActive(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStateTrigger.IID)));
    }
    pub fn get_IsActiveProperty() core.HResult!*DependencyProperty {
        const factory = @This().IStateTriggerStaticsCache.get();
        return try factory.getIsActiveProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.StateTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStateTrigger.GUID;
    pub const IID: Guid = IStateTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStateTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IStateTriggerStaticsCache: FactoryCache(IStateTriggerStatics, RUNTIME_NAME) = .{};
};
pub const Style = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSealed(self: *@This()) core.HResult!bool {
        const this: *IStyle = @ptrCast(self);
        return try this.getIsSealed();
    }
    pub fn getSetters(self: *@This()) core.HResult!*SetterBaseCollection {
        const this: *IStyle = @ptrCast(self);
        return try this.getSetters();
    }
    pub fn getTargetType(self: *@This()) core.HResult!TypeName {
        const this: *IStyle = @ptrCast(self);
        return try this.getTargetType();
    }
    pub fn putTargetType(self: *@This(), value: TypeName) core.HResult!void {
        const this: *IStyle = @ptrCast(self);
        return try this.putTargetType(value);
    }
    pub fn getBasedOn(self: *@This()) core.HResult!*Style {
        const this: *IStyle = @ptrCast(self);
        return try this.getBasedOn();
    }
    pub fn putBasedOn(self: *@This(), value: *Style) core.HResult!void {
        const this: *IStyle = @ptrCast(self);
        return try this.putBasedOn(value);
    }
    pub fn Seal(self: *@This()) core.HResult!void {
        const this: *IStyle = @ptrCast(self);
        return try this.Seal();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStyle.IID)));
    }
    pub fn CreateInstance(targetType: TypeName) core.HResult!*Style {
        const factory = @This().IStyleFactoryCache.get();
        return try factory.CreateInstance(targetType);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Style";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStyle.GUID;
    pub const IID: Guid = IStyle.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStyle.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IStyleFactoryCache: FactoryCache(IStyleFactory, RUNTIME_NAME) = .{};
};
pub const StyleTypedPropertyAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.StyleTypedPropertyAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const SuspendingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *SuspendingEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *SuspendingEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *SuspendingEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.SuspendingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23429465-e36a-40e2-b139-a4704602a6e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *SuspendingEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TargetPropertyPath = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!*PropertyPath {
        const this: *ITargetPropertyPath = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: *PropertyPath) core.HResult!void {
        const this: *ITargetPropertyPath = @ptrCast(self);
        return try this.putPath(value);
    }
    pub fn getTarget(self: *@This()) core.HResult!*IInspectable {
        const this: *ITargetPropertyPath = @ptrCast(self);
        return try this.getTarget();
    }
    pub fn putTarget(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ITargetPropertyPath = @ptrCast(self);
        return try this.putTarget(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITargetPropertyPath.IID)));
    }
    pub fn CreateInstance(targetProperty: *DependencyProperty) core.HResult!*TargetPropertyPath {
        const factory = @This().ITargetPropertyPathFactoryCache.get();
        return try factory.CreateInstance(targetProperty);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.TargetPropertyPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetPropertyPath.GUID;
    pub const IID: Guid = ITargetPropertyPath.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetPropertyPath.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ITargetPropertyPathFactoryCache: FactoryCache(ITargetPropertyPathFactory, RUNTIME_NAME) = .{};
};
pub const TemplatePartAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.TemplatePartAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const TemplateVisualStateAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.TemplateVisualStateAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const TextAlignment = enum(i32) {
    Center = 0,
    Left = 1,
    Start = 1,
    Right = 2,
    End = 2,
    Justify = 3,
    DetectFromContent = 4,
};
pub const TextLineBounds = enum(i32) {
    Full = 0,
    TrimToCapHeight = 1,
    TrimToBaseline = 2,
    Tight = 3,
};
pub const TextReadingOrder = enum(i32) {
    Default = 0,
    UseFlowDirection = 0,
    DetectFromContent = 1,
};
pub const TextTrimming = enum(i32) {
    None = 0,
    CharacterEllipsis = 1,
    WordEllipsis = 2,
    Clip = 3,
};
pub const TextWrapping = enum(i32) {
    NoWrap = 1,
    Wrap = 2,
    WrapWholeWords = 3,
};
pub const Thickness = extern struct {
    Left: f64,
    Top: f64,
    Right: f64,
    Bottom: f64,
};
pub const ThicknessHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromLengths(left: f64, top: f64, right: f64, bottom: f64) core.HResult!Thickness {
        const factory = @This().IThicknessHelperStaticsCache.get();
        return try factory.FromLengths(left, top, right, bottom);
    }
    pub fn FromUniformLength(uniformLength: f64) core.HResult!Thickness {
        const factory = @This().IThicknessHelperStaticsCache.get();
        return try factory.FromUniformLength(uniformLength);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.ThicknessHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IThicknessHelper.GUID;
    pub const IID: Guid = IThicknessHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IThicknessHelper.SIGNATURE);
    var _IThicknessHelperStaticsCache: FactoryCache(IThicknessHelperStatics, RUNTIME_NAME) = .{};
};
pub const TriggerActionCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        const this: *IVector = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        const this: *IVector = @ptrCast(self);
        return try this.GetView();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        const this: *IVector = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(TriggerAction) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.TriggerActionCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TriggerCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        const this: *IVector = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        const this: *IVector = @ptrCast(self);
        return try this.GetView();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        const this: *IVector = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(TriggerBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.TriggerCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const UIElementWeakCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
        var this: ?*IVector(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(UIElement) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*UIElementWeakCollection {
        const factory = @This().IUIElementWeakCollectionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.UIElementWeakCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUIElementWeakCollection.GUID;
    pub const IID: Guid = IUIElementWeakCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUIElementWeakCollection.SIGNATURE);
    var _IUIElementWeakCollectionFactoryCache: FactoryCache(IUIElementWeakCollectionFactory, RUNTIME_NAME) = .{};
};
pub const UnhandledExceptionEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getException(self: *@This()) core.HResult!HResult {
        const this: *IUnhandledExceptionEventArgs = @ptrCast(self);
        return try this.getException();
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IUnhandledExceptionEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IUnhandledExceptionEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IUnhandledExceptionEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.UnhandledExceptionEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnhandledExceptionEventArgs.GUID;
    pub const IID: Guid = IUnhandledExceptionEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnhandledExceptionEventArgs.SIGNATURE);
};
pub const UnhandledExceptionEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *UnhandledExceptionEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *UnhandledExceptionEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *UnhandledExceptionEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.UnhandledExceptionEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9274e6bd-49a1-4958-beee-d0e19587b6e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *UnhandledExceptionEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const Vector3Transition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IVector3Transition = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IVector3Transition = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getComponents(self: *@This()) core.HResult!Vector3TransitionComponents {
        const this: *IVector3Transition = @ptrCast(self);
        return try this.getComponents();
    }
    pub fn putComponents(self: *@This(), value: Vector3TransitionComponents) core.HResult!void {
        const this: *IVector3Transition = @ptrCast(self);
        return try this.putComponents(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Vector3Transition {
        const factory = @This().IVector3TransitionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Vector3Transition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector3Transition.GUID;
    pub const IID: Guid = IVector3Transition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector3Transition.SIGNATURE);
    var _IVector3TransitionFactoryCache: FactoryCache(IVector3TransitionFactory, RUNTIME_NAME) = .{};
};
pub const Vector3TransitionComponents = enum(i32) {
    X = 1,
    Y = 2,
    Z = 4,
};
pub const VerticalAlignment = enum(i32) {
    Top = 0,
    Center = 1,
    Bottom = 2,
    Stretch = 3,
};
pub const Visibility = enum(i32) {
    Visible = 0,
    Collapsed = 1,
};
pub const VisualState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IVisualState = @ptrCast(self);
        return try this.getName();
    }
    pub fn getStoryboard(self: *@This()) core.HResult!*Storyboard {
        const this: *IVisualState = @ptrCast(self);
        return try this.getStoryboard();
    }
    pub fn putStoryboard(self: *@This(), value: *Storyboard) core.HResult!void {
        const this: *IVisualState = @ptrCast(self);
        return try this.putStoryboard(value);
    }
    pub fn getSetters(self: *@This()) core.HResult!*SetterBaseCollection {
        var this: ?*IVisualState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSetters();
    }
    pub fn getStateTriggers(self: *@This()) core.HResult!*IVector(StateTriggerBase) {
        var this: ?*IVisualState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStateTriggers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVisualState.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.VisualState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualState.GUID;
    pub const IID: Guid = IVisualState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualState.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VisualStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldState(self: *@This()) core.HResult!*VisualState {
        const this: *IVisualStateChangedEventArgs = @ptrCast(self);
        return try this.getOldState();
    }
    pub fn putOldState(self: *@This(), value: *VisualState) core.HResult!void {
        const this: *IVisualStateChangedEventArgs = @ptrCast(self);
        return try this.putOldState(value);
    }
    pub fn getNewState(self: *@This()) core.HResult!*VisualState {
        const this: *IVisualStateChangedEventArgs = @ptrCast(self);
        return try this.getNewState();
    }
    pub fn putNewState(self: *@This(), value: *VisualState) core.HResult!void {
        const this: *IVisualStateChangedEventArgs = @ptrCast(self);
        return try this.putNewState(value);
    }
    pub fn getControl(self: *@This()) core.HResult!*Control {
        const this: *IVisualStateChangedEventArgs = @ptrCast(self);
        return try this.getControl();
    }
    pub fn putControl(self: *@This(), value: *Control) core.HResult!void {
        const this: *IVisualStateChangedEventArgs = @ptrCast(self);
        return try this.putControl(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVisualStateChangedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.VisualStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualStateChangedEventArgs.GUID;
    pub const IID: Guid = IVisualStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualStateChangedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VisualStateChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *VisualStateChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *VisualStateChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *VisualStateChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.VisualStateChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6d5bbd5-e029-43a6-b36d-84a81042d774";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *VisualStateChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const VisualStateGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.getName();
    }
    pub fn getTransitions(self: *@This()) core.HResult!*IVector(VisualTransition) {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.getTransitions();
    }
    pub fn getStates(self: *@This()) core.HResult!*IVector(VisualState) {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.getStates();
    }
    pub fn getCurrentState(self: *@This()) core.HResult!*VisualState {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.getCurrentState();
    }
    pub fn addCurrentStateChanged(self: *@This(), handler: *VisualStateChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.addCurrentStateChanged(handler);
    }
    pub fn removeCurrentStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.removeCurrentStateChanged(token);
    }
    pub fn addCurrentStateChanging(self: *@This(), handler: *VisualStateChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.addCurrentStateChanging(handler);
    }
    pub fn removeCurrentStateChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVisualStateGroup = @ptrCast(self);
        return try this.removeCurrentStateChanging(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVisualStateGroup.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.VisualStateGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualStateGroup.GUID;
    pub const IID: Guid = IVisualStateGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualStateGroup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VisualStateManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RaiseCurrentStateChanging(self: *@This(), stateGroup: *VisualStateGroup, oldState: *VisualState, newState: *VisualState, control: *Control) core.HResult!void {
        var this: ?*IVisualStateManagerProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualStateManagerProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RaiseCurrentStateChanging(stateGroup, oldState, newState, control);
    }
    pub fn RaiseCurrentStateChanged(self: *@This(), stateGroup: *VisualStateGroup, oldState: *VisualState, newState: *VisualState, control: *Control) core.HResult!void {
        var this: ?*IVisualStateManagerProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualStateManagerProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RaiseCurrentStateChanged(stateGroup, oldState, newState, control);
    }
    pub fn GoToStateCore(self: *@This(), control: *Control, templateRoot: *FrameworkElement, stateName: HSTRING, group: *VisualStateGroup, state: *VisualState, useTransitions: bool) core.HResult!bool {
        var this: ?*IVisualStateManagerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisualStateManagerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GoToStateCore(control, templateRoot, stateName, group, state, useTransitions);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetVisualStateGroups(obj: *FrameworkElement) core.HResult!*IVector(VisualStateGroup) {
        const factory = @This().IVisualStateManagerStaticsCache.get();
        return try factory.GetVisualStateGroups(obj);
    }
    pub fn get_CustomVisualStateManagerProperty() core.HResult!*DependencyProperty {
        const factory = @This().IVisualStateManagerStaticsCache.get();
        return try factory.getCustomVisualStateManagerProperty();
    }
    pub fn GetCustomVisualStateManager(obj: *FrameworkElement) core.HResult!*VisualStateManager {
        const factory = @This().IVisualStateManagerStaticsCache.get();
        return try factory.GetCustomVisualStateManager(obj);
    }
    pub fn SetCustomVisualStateManager(obj: *FrameworkElement, value: *VisualStateManager) core.HResult!void {
        const factory = @This().IVisualStateManagerStaticsCache.get();
        return try factory.SetCustomVisualStateManager(obj, value);
    }
    pub fn GoToState(control: *Control, stateName: HSTRING, useTransitions: bool) core.HResult!bool {
        const factory = @This().IVisualStateManagerStaticsCache.get();
        return try factory.GoToState(control, stateName, useTransitions);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*VisualStateManager {
        const factory = @This().IVisualStateManagerFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.VisualStateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualStateManager.GUID;
    pub const IID: Guid = IVisualStateManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualStateManager.SIGNATURE);
    var _IVisualStateManagerStaticsCache: FactoryCache(IVisualStateManagerStatics, RUNTIME_NAME) = .{};
    var _IVisualStateManagerFactoryCache: FactoryCache(IVisualStateManagerFactory, RUNTIME_NAME) = .{};
};
pub const VisualTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGeneratedDuration(self: *@This()) core.HResult!Duration {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.getGeneratedDuration();
    }
    pub fn putGeneratedDuration(self: *@This(), value: Duration) core.HResult!void {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.putGeneratedDuration(value);
    }
    pub fn getGeneratedEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.getGeneratedEasingFunction();
    }
    pub fn putGeneratedEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.putGeneratedEasingFunction(value);
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.putFrom(value);
    }
    pub fn getStoryboard(self: *@This()) core.HResult!*Storyboard {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.getStoryboard();
    }
    pub fn putStoryboard(self: *@This(), value: *Storyboard) core.HResult!void {
        const this: *IVisualTransition = @ptrCast(self);
        return try this.putStoryboard(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*VisualTransition {
        const factory = @This().IVisualTransitionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.VisualTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualTransition.GUID;
    pub const IID: Guid = IVisualTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualTransition.SIGNATURE);
    var _IVisualTransitionFactoryCache: FactoryCache(IVisualTransitionFactory, RUNTIME_NAME) = .{};
};
pub const Window = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        const this: *IWindow = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *IWindow = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn getContent(self: *@This()) core.HResult!*UIElement {
        const this: *IWindow = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getCoreWindow(self: *@This()) core.HResult!*CoreWindow {
        const this: *IWindow = @ptrCast(self);
        return try this.getCoreWindow();
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *IWindow = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn addActivated(self: *@This(), handler: *WindowActivatedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IWindow = @ptrCast(self);
        return try this.addActivated(handler);
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.removeActivated(token);
    }
    pub fn addClosed(self: *@This(), handler: *WindowClosedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IWindow = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn addSizeChanged(self: *@This(), handler: *WindowSizeChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IWindow = @ptrCast(self);
        return try this.addSizeChanged(handler);
    }
    pub fn removeSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.removeSizeChanged(token);
    }
    pub fn addVisibilityChanged(self: *@This(), handler: *WindowVisibilityChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IWindow = @ptrCast(self);
        return try this.addVisibilityChanged(handler);
    }
    pub fn removeVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.removeVisibilityChanged(token);
    }
    pub fn Activate(self: *@This()) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.Activate();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *IWindow = @ptrCast(self);
        return try this.Close();
    }
    pub fn SetTitleBar(self: *@This(), value: *UIElement) core.HResult!void {
        var this: ?*IWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetTitleBar(value);
    }
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        var this: ?*IWindow3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindow3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompositor();
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var this: ?*IWindow4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindow4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUIContext();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Current() core.HResult!*Window {
        const factory = @This().IWindowStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Window";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindow.GUID;
    pub const IID: Guid = IWindow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindow.SIGNATURE);
    var _IWindowStaticsCache: FactoryCache(IWindowStatics, RUNTIME_NAME) = .{};
};
pub const WindowActivatedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *WindowActivatedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *WindowActivatedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *WindowActivatedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.WindowActivatedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18026348-8619-4c7b-b534-ced45d9de219";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *WindowActivatedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WindowClosedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *CoreWindowEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *CoreWindowEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *CoreWindowEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.WindowClosedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0db89161-20d7-45df-9122-ba89576703ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *CoreWindowEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WindowCreatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWindow(self: *@This()) core.HResult!*Window {
        const this: *IWindowCreatedEventArgs = @ptrCast(self);
        return try this.getWindow();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.WindowCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowCreatedEventArgs.GUID;
    pub const IID: Guid = IWindowCreatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowCreatedEventArgs.SIGNATURE);
};
pub const WindowSizeChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *WindowSizeChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *WindowSizeChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *WindowSizeChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.WindowSizeChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c21c742-2ced-4fd9-ba38-7118d40e966b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *WindowSizeChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WindowVisibilityChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *VisibilityChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *VisibilityChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *VisibilityChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.WindowVisibilityChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10406ad6-b090-4a4a-b2ad-d682df27130f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *VisibilityChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const XamlRoot = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*UIElement {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.getSize();
    }
    pub fn getRasterizationScale(self: *@This()) core.HResult!f64 {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.getRasterizationScale();
    }
    pub fn getIsHostVisible(self: *@This()) core.HResult!bool {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.getIsHostVisible();
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.getUIContext();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(XamlRoot,XamlRootChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IXamlRoot = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.XamlRoot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlRoot.GUID;
    pub const IID: Guid = IXamlRoot.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlRoot.SIGNATURE);
};
pub const XamlRootChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.XamlRootChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlRootChangedEventArgs.GUID;
    pub const IID: Guid = IXamlRootChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlRootChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const RectangleGeometry = @import("./Media.zig").RectangleGeometry;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const GettingFocusEventArgs = @import("./Input.zig").GettingFocusEventArgs;
const ManipulationCompletedEventHandler = @import("./Input.zig").ManipulationCompletedEventHandler;
const CoreWindow = @import("./Core.zig").CoreWindow;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const RightTappedEventHandler = @import("./Input.zig").RightTappedEventHandler;
const FileSavePickerActivatedEventArgs = @import("../ApplicationModel/Activation.zig").FileSavePickerActivatedEventArgs;
const ElementCompositeMode = @import("./Media.zig").ElementCompositeMode;
const AccessKeyDisplayRequestedEventArgs = @import("./Input.zig").AccessKeyDisplayRequestedEventArgs;
const VisibilityChangedEventArgs = @import("./Core.zig").VisibilityChangedEventArgs;
const FlyoutBase = @import("./Controls/Primitives.zig").FlyoutBase;
const Control = @import("./Controls.zig").Control;
const CachedFileUpdaterActivatedEventArgs = @import("../ApplicationModel/Activation.zig").CachedFileUpdaterActivatedEventArgs;
const PointerEventHandler = @import("./Input.zig").PointerEventHandler;
const ProcessKeyboardAcceleratorEventArgs = @import("./Input.zig").ProcessKeyboardAcceleratorEventArgs;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const ICompositionAnimationBase = @import("./Composition.zig").ICompositionAnimationBase;
const KeyboardAccelerator = @import("./Input.zig").KeyboardAccelerator;
const ManipulationStartingEventHandler = @import("./Input.zig").ManipulationStartingEventHandler;
const Uri = @import("../Foundation.zig").Uri;
const Pointer = @import("./Input.zig").Pointer;
const Projection = @import("./Media.zig").Projection;
const WindowSizeChangedEventArgs = @import("./Core.zig").WindowSizeChangedEventArgs;
const KeyEventHandler = @import("./Input.zig").KeyEventHandler;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const ComponentResourceLocation = @import("./Controls/Primitives.zig").ComponentResourceLocation;
const ManipulationStartedEventHandler = @import("./Input.zig").ManipulationStartedEventHandler;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const LosingFocusEventArgs = @import("./Input.zig").LosingFocusEventArgs;
const IVisualElement = @import("./Composition.zig").IVisualElement;
const BindingBase = @import("./Data.zig").BindingBase;
const IReference = @import("../Foundation.zig").IReference;
const BindingExpression = @import("./Data.zig").BindingExpression;
const Point = @import("../Foundation.zig").Point;
const BitmapImage = @import("./Media/Imaging.zig").BitmapImage;
const BackgroundActivatedEventArgs = @import("../ApplicationModel/Activation.zig").BackgroundActivatedEventArgs;
const FactoryCache = @import("../core.zig").FactoryCache;
const CacheMode = @import("./Media.zig").CacheMode;
const IAnimationObject = @import("./Composition.zig").IAnimationObject;
const FileActivatedEventArgs = @import("../ApplicationModel/Activation.zig").FileActivatedEventArgs;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const AnimationPropertyInfo = @import("./Composition.zig").AnimationPropertyInfo;
const XYFocusKeyboardNavigationMode = @import("./Input.zig").XYFocusKeyboardNavigationMode;
const CoreWindowEventArgs = @import("./Core.zig").CoreWindowEventArgs;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAgileObject = @import("../root.zig").IAgileObject;
const Matrix4x4 = @import("../Foundation/Numerics.zig").Matrix4x4;
const KeyboardNavigationMode = @import("./Input.zig").KeyboardNavigationMode;
const DataPackageView = @import("../ApplicationModel/DataTransfer.zig").DataPackageView;
const HResult = @import("../Foundation.zig").HResult;
const KeyboardAcceleratorPlacementMode = @import("./Input.zig").KeyboardAcceleratorPlacementMode;
const IObservableVector = @import("../Foundation/Collections.zig").IObservableVector;
const IActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IActivatedEventArgs;
const EasingFunctionBase = @import("./Media/Animation.zig").EasingFunctionBase;
const ContainerContentChangingEventArgs = @import("./Controls.zig").ContainerContentChangingEventArgs;
const Compositor = @import("./Composition.zig").Compositor;
const HoldingEventHandler = @import("./Input.zig").HoldingEventHandler;
const Guid = @import("../root.zig").Guid;
const KeyTipPlacementMode = @import("./Input.zig").KeyTipPlacementMode;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Size = @import("../Foundation.zig").Size;
const ManipulationModes = @import("./Input.zig").ManipulationModes;
const EnteredBackgroundEventArgs = @import("../ApplicationModel.zig").EnteredBackgroundEventArgs;
const Storyboard = @import("./Media/Animation.zig").Storyboard;
const TransitionCollection = @import("./Media/Animation.zig").TransitionCollection;
const XYFocusNavigationStrategy = @import("./Input.zig").XYFocusNavigationStrategy;
const CharacterReceivedRoutedEventArgs = @import("./Input.zig").CharacterReceivedRoutedEventArgs;
const XamlLight = @import("./Media.zig").XamlLight;
const ContextRequestedEventArgs = @import("./Input.zig").ContextRequestedEventArgs;
const SoftwareBitmap = @import("../Graphics/Imaging.zig").SoftwareBitmap;
const KeyboardAcceleratorInvokedEventArgs = @import("./Input.zig").KeyboardAcceleratorInvokedEventArgs;
const DragDropModifiers = @import("../ApplicationModel/DataTransfer/DragDrop.zig").DragDropModifiers;
const ShareTargetActivatedEventArgs = @import("../ApplicationModel/Activation.zig").ShareTargetActivatedEventArgs;
const TypeName = @import("./Interop.zig").TypeName;
const CoreApplicationView = @import("../ApplicationModel/Core.zig").CoreApplicationView;
const WindowActivatedEventArgs = @import("./Core.zig").WindowActivatedEventArgs;
const HRESULT = @import("../root.zig").HRESULT;
const CoreDispatcher = @import("./Core.zig").CoreDispatcher;
const Brush = @import("./Media.zig").Brush;
const DataPackage = @import("../ApplicationModel/DataTransfer.zig").DataPackage;
const Transform3D = @import("./Media/Media3D.zig").Transform3D;
const AutomationPeer = @import("./Automation/Peers.zig").AutomationPeer;
const DoubleTappedEventHandler = @import("./Input.zig").DoubleTappedEventHandler;
const IMap = @import("../Foundation/Collections.zig").IMap;
const ManipulationInertiaStartingEventHandler = @import("./Input.zig").ManipulationInertiaStartingEventHandler;
const AccessKeyInvokedEventArgs = @import("./Input.zig").AccessKeyInvokedEventArgs;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const Vector2 = @import("../Foundation/Numerics.zig").Vector2;
const PointerPoint = @import("./Input.zig").PointerPoint;
const GeneralTransform = @import("./Media.zig").GeneralTransform;
const SuspendingEventArgs = @import("../ApplicationModel.zig").SuspendingEventArgs;
const Shadow = @import("./Media.zig").Shadow;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const SearchActivatedEventArgs = @import("../ApplicationModel/Activation.zig").SearchActivatedEventArgs;
const UIContext = @import("../UI.zig").UIContext;
const HSTRING = @import("../root.zig").HSTRING;
const VectorChangedEventHandler = @import("../Foundation/Collections.zig").VectorChangedEventHandler;
const Color = @import("../UI.zig").Color;
const Transform = @import("./Media.zig").Transform;
const FileOpenPickerActivatedEventArgs = @import("../ApplicationModel/Activation.zig").FileOpenPickerActivatedEventArgs;
const TappedEventHandler = @import("./Input.zig").TappedEventHandler;
const DataPackageOperation = @import("../ApplicationModel/DataTransfer.zig").DataPackageOperation;
const LeavingBackgroundEventArgs = @import("../ApplicationModel.zig").LeavingBackgroundEventArgs;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const LaunchActivatedEventArgs = @import("../ApplicationModel/Activation.zig").LaunchActivatedEventArgs;
const NoFocusCandidateFoundEventArgs = @import("./Input.zig").NoFocusCandidateFoundEventArgs;
const AccessKeyDisplayDismissedEventArgs = @import("./Input.zig").AccessKeyDisplayDismissedEventArgs;
const ManipulationDeltaEventHandler = @import("./Input.zig").ManipulationDeltaEventHandler;
pub const Automation = @import("./Xaml/Automation.zig");
pub const Controls = @import("./Xaml/Controls.zig");
pub const Data = @import("./Xaml/Data.zig");
pub const Documents = @import("./Xaml/Documents.zig");
pub const Hosting = @import("./Xaml/Hosting.zig");
pub const Input = @import("./Xaml/Input.zig");
pub const Interop = @import("./Xaml/Interop.zig");
pub const Markup = @import("./Xaml/Markup.zig");
pub const Media = @import("./Xaml/Media.zig");
pub const Navigation = @import("./Xaml/Navigation.zig");
pub const Printing = @import("./Xaml/Printing.zig");
pub const Resources = @import("./Xaml/Resources.zig");
pub const Shapes = @import("./Xaml/Shapes.zig");
