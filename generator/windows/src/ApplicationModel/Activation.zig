pub const ILockScreenCallActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCallUI(self: *@This()) core.HResult!*LockScreenCallUI {
        var _r: *LockScreenCallUI = undefined;
        const _c = self.vtable.get_CallUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06f37fbe-b5f2-448b-b13e-e328ac1c516a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CallUI: *const fn(self: *anyopaque, _r: **LockScreenCallUI) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DWorkflowActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWorkflow(self: *@This()) core.HResult!*Print3DWorkflow {
        var _r: *Print3DWorkflow = undefined;
        const _c = self.vtable.get_Workflow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f57e78b-f2ac-4619-8302-ef855e1c9b90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Workflow: *const fn(self: *anyopaque, _r: **Print3DWorkflow) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskSettingsActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintTaskConfiguration {
        var _r: *PrintTaskConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee30a0c9-ce56-4865-ba8e-8954ac271107";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintTaskConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const LockScreenCallActivatedEventArgs = extern struct {
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
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.LockScreenCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenCallActivatedEventArgs.GUID;
    pub const IID: Guid = ILockScreenCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenCallActivatedEventArgs.SIGNATURE);
};
pub const Print3DWorkflowActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.Print3DWorkflowActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DWorkflowActivatedEventArgs.GUID;
    pub const IID: Guid = IPrint3DWorkflowActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DWorkflowActivatedEventArgs.SIGNATURE);
};
pub const PrintTaskSettingsActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.PrintTaskSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskSettingsActivatedEventArgs.GUID;
    pub const IID: Guid = IPrintTaskSettingsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskSettingsActivatedEventArgs.SIGNATURE);
};
pub const CameraSettingsActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.CameraSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraSettingsActivatedEventArgs.GUID;
    pub const IID: Guid = ICameraSettingsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraSettingsActivatedEventArgs.SIGNATURE);
};
pub const ICameraSettingsActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVideoDeviceController(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_VideoDeviceController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoDeviceExtension(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_VideoDeviceExtension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb67a508-2dad-490a-9170-dca036eb114b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoDeviceController: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_VideoDeviceExtension: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IWalletActionActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getItemId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ItemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActionKind(self: *@This()) core.HResult!WalletActionKind {
        var _r: WalletActionKind = undefined;
        const _c = self.vtable.get_ActionKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcfc027b-1a1a-4d22-923f-ae6f45fa52d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ItemId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ActionKind: *const fn(self: *anyopaque, _r: *WalletActionKind) callconv(.winapi) HRESULT,
        get_ActionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const WalletActionActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.WalletActionActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletActionActivatedEventArgs.GUID;
    pub const IID: Guid = IWalletActionActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletActionActivatedEventArgs.SIGNATURE);
};
pub const ActivationKind = enum(i32) {
    Launch = 0,
    Search = 1,
    ShareTarget = 2,
    File = 3,
    Protocol = 4,
    FileOpenPicker = 5,
    FileSavePicker = 6,
    CachedFileUpdater = 7,
    ContactPicker = 8,
    Device = 9,
    PrintTaskSettings = 10,
    CameraSettings = 11,
    RestrictedLaunch = 12,
    AppointmentsProvider = 13,
    Contact = 14,
    LockScreenCall = 15,
    VoiceCommand = 16,
    LockScreen = 17,
    PickerReturned = 1000,
    WalletAction = 1001,
    PickFileContinuation = 1002,
    PickSaveFileContinuation = 1003,
    PickFolderContinuation = 1004,
    WebAuthenticationBrokerContinuation = 1005,
    WebAccountProvider = 1006,
    ComponentUI = 1007,
    ProtocolForResults = 1009,
    ToastNotification = 1010,
    Print3DWorkflow = 1011,
    DialReceiver = 1012,
    DevicePairing = 1013,
    UserDataAccountsProvider = 1014,
    FilePickerExperience = 1015,
    LockScreenComponent = 1016,
    ContactPanel = 1017,
    PrintWorkflowForegroundTask = 1018,
    GameUIProvider = 1019,
    StartupTask = 1020,
    CommandLineLaunch = 1021,
    BarcodeScannerProvider = 1022,
    PrintSupportJobUI = 1023,
    PrintSupportSettingsUI = 1024,
    PhoneCallActivation = 1025,
    VpnForeground = 1026,
    PrintSupportEnterpriseManagementUI = 1027,
};
pub const ApplicationExecutionState = enum(i32) {
    NotRunning = 0,
    Running = 1,
    Suspended = 2,
    Terminated = 3,
    ClosedByUser = 4,
};
pub const AppointmentsProviderAddAppointmentActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.AppointmentsProviderAddAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderAddAppointmentActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderAddAppointmentActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderAddAppointmentActivatedEventArgs.SIGNATURE);
};
pub const AppointmentsProviderRemoveAppointmentActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.AppointmentsProviderRemoveAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderRemoveAppointmentActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderRemoveAppointmentActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderRemoveAppointmentActivatedEventArgs.SIGNATURE);
};
pub const AppointmentsProviderReplaceAppointmentActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.AppointmentsProviderReplaceAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderReplaceAppointmentActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderReplaceAppointmentActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderReplaceAppointmentActivatedEventArgs.SIGNATURE);
};
pub const AppointmentsProviderShowAppointmentDetailsActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.AppointmentsProviderShowAppointmentDetailsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs.SIGNATURE);
};
pub const AppointmentsProviderShowTimeFrameActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.AppointmentsProviderShowTimeFrameActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentsProviderShowTimeFrameActivatedEventArgs.GUID;
    pub const IID: Guid = IAppointmentsProviderShowTimeFrameActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentsProviderShowTimeFrameActivatedEventArgs.SIGNATURE);
};
pub const BackgroundActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskInstance(self: *@This()) core.HResult!*IBackgroundTaskInstance {
        const this: *IBackgroundActivatedEventArgs = @ptrCast(self);
        return try this.getTaskInstance();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundActivatedEventArgs.GUID;
    pub const IID: Guid = IBackgroundActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundActivatedEventArgs.SIGNATURE);
};
pub const BarcodeScannerPreviewActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.BarcodeScannerPreviewActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerPreviewActivatedEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerPreviewActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerPreviewActivatedEventArgs.SIGNATURE);
};
pub const CachedFileUpdaterActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.CachedFileUpdaterActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICachedFileUpdaterActivatedEventArgs.GUID;
    pub const IID: Guid = ICachedFileUpdaterActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICachedFileUpdaterActivatedEventArgs.SIGNATURE);
};
pub const CommandLineActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.CommandLineActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommandLineActivatedEventArgs.GUID;
    pub const IID: Guid = ICommandLineActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommandLineActivatedEventArgs.SIGNATURE);
};
pub const CommandLineActivationOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *ICommandLineActivationOperation = @ptrCast(self);
        return try this.getArguments();
    }
    pub fn getCurrentDirectoryPath(self: *@This()) core.HResult!HSTRING {
        const this: *ICommandLineActivationOperation = @ptrCast(self);
        return try this.getCurrentDirectoryPath();
    }
    pub fn putExitCode(self: *@This(), value: i32) core.HResult!void {
        const this: *ICommandLineActivationOperation = @ptrCast(self);
        return try this.putExitCode(value);
    }
    pub fn getExitCode(self: *@This()) core.HResult!i32 {
        const this: *ICommandLineActivationOperation = @ptrCast(self);
        return try this.getExitCode();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICommandLineActivationOperation = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.CommandLineActivationOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommandLineActivationOperation.GUID;
    pub const IID: Guid = ICommandLineActivationOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommandLineActivationOperation.SIGNATURE);
};
pub const ContactPanelActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactPanelActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPanelActivatedEventArgs.GUID;
    pub const IID: Guid = IContactPanelActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPanelActivatedEventArgs.SIGNATURE);
};
pub const DeviceActivatedEventArgs = extern struct {
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
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.DeviceActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceActivatedEventArgs.GUID;
    pub const IID: Guid = IDeviceActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceActivatedEventArgs.SIGNATURE);
};
pub const DevicePairingActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.DevicePairingActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePairingActivatedEventArgs.GUID;
    pub const IID: Guid = IDevicePairingActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePairingActivatedEventArgs.SIGNATURE);
};
pub const DialReceiverActivatedEventArgs = extern struct {
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
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.DialReceiverActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialReceiverActivatedEventArgs.GUID;
    pub const IID: Guid = IDialReceiverActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialReceiverActivatedEventArgs.SIGNATURE);
};
pub const FileActivatedEventArgs = extern struct {
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
    pub fn getNeighboringFilesQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var this: ?*IFileActivatedEventArgsWithNeighboringFiles = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileActivatedEventArgsWithNeighboringFiles.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNeighboringFilesQuery();
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IFileActivatedEventArgsWithCallerPackageFamilyName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileActivatedEventArgsWithCallerPackageFamilyName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCallerPackageFamilyName();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.FileActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileActivatedEventArgs.GUID;
    pub const IID: Guid = IFileActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileActivatedEventArgs.SIGNATURE);
};
pub const FileOpenPickerActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.FileOpenPickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileOpenPickerActivatedEventArgs.GUID;
    pub const IID: Guid = IFileOpenPickerActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileOpenPickerActivatedEventArgs.SIGNATURE);
};
pub const FileOpenPickerContinuationEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.FileOpenPickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileOpenPickerContinuationEventArgs.GUID;
    pub const IID: Guid = IFileOpenPickerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileOpenPickerContinuationEventArgs.SIGNATURE);
};
pub const FileSavePickerActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.FileSavePickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileSavePickerActivatedEventArgs.GUID;
    pub const IID: Guid = IFileSavePickerActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileSavePickerActivatedEventArgs.SIGNATURE);
};
pub const FileSavePickerContinuationEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.FileSavePickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileSavePickerContinuationEventArgs.GUID;
    pub const IID: Guid = IFileSavePickerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileSavePickerContinuationEventArgs.SIGNATURE);
};
pub const FolderPickerContinuationEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.FolderPickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFolderPickerContinuationEventArgs.GUID;
    pub const IID: Guid = IFolderPickerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFolderPickerContinuationEventArgs.SIGNATURE);
};
pub const IActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var _r: ActivationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var _r: ApplicationExecutionState = undefined;
        const _c = self.vtable.get_PreviousExecutionState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var _r: *SplashScreen = undefined;
        const _c = self.vtable.get_SplashScreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf651713-cd08-4fd8-b697-a281b6544e2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ActivationKind) callconv(.winapi) HRESULT,
        get_PreviousExecutionState: *const fn(self: *anyopaque, _r: *ApplicationExecutionState) callconv(.winapi) HRESULT,
        get_SplashScreen: *const fn(self: *anyopaque, _r: **SplashScreen) callconv(.winapi) HRESULT,
    };
};
pub const IActivatedEventArgsWithUser = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cf09b9e-9962-4936-80ff-afc8e8ae5c8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CurrentlyShownApplicationViewId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "930cef4b-b829-40fc-88f4-8513e8a64738";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentlyShownApplicationViewId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Verb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3364c405-933c-4e7d-a034-500fb8dcd9f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Verb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderAddAppointmentActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAddAppointmentOperation(self: *@This()) core.HResult!*AddAppointmentOperation {
        var _r: *AddAppointmentOperation = undefined;
        const _c = self.vtable.get_AddAppointmentOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2861367-cee5-4e4d-9ed7-41c34ec18b02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AddAppointmentOperation: *const fn(self: *anyopaque, _r: **AddAppointmentOperation) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderRemoveAppointmentActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRemoveAppointmentOperation(self: *@This()) core.HResult!*RemoveAppointmentOperation {
        var _r: *RemoveAppointmentOperation = undefined;
        const _c = self.vtable.get_RemoveAppointmentOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "751f3ab8-0b8e-451c-9f15-966e699bac25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoveAppointmentOperation: *const fn(self: *anyopaque, _r: **RemoveAppointmentOperation) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderReplaceAppointmentActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReplaceAppointmentOperation(self: *@This()) core.HResult!*ReplaceAppointmentOperation {
        var _r: *ReplaceAppointmentOperation = undefined;
        const _c = self.vtable.get_ReplaceAppointmentOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1551b7d4-a981-4067-8a62-0524e4ade121";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReplaceAppointmentOperation: *const fn(self: *anyopaque, _r: **ReplaceAppointmentOperation) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInstanceStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_InstanceStartDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoamingId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoamingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3958f065-9841-4ca5-999b-885198b9ef2a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InstanceStartDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_LocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoamingId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderShowTimeFrameActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimeToShow(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_TimeToShow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9baeaba6-0e0b-49aa-babc-12b1dc774986";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TimeToShow: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTaskInstance(self: *@This()) core.HResult!*IBackgroundTaskInstance {
        var _r: *IBackgroundTaskInstance = undefined;
        const _c = self.vtable.get_TaskInstance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IBackgroundActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab14bee0-e760-440e-a91c-44796de3a92d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskInstance: *const fn(self: *anyopaque, _r: **IBackgroundTaskInstance) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerPreviewActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConnectionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConnectionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IBarcodeScannerPreviewActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6772797c-99bf-4349-af22-e4123560371c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICachedFileUpdaterActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCachedFileUpdaterUI(self: *@This()) core.HResult!*CachedFileUpdaterUI {
        var _r: *CachedFileUpdaterUI = undefined;
        const _c = self.vtable.get_CachedFileUpdaterUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d06eb1c7-3805-4ecb-b757-6cf15e26fef3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CachedFileUpdaterUI: *const fn(self: *anyopaque, _r: **CachedFileUpdaterUI) callconv(.winapi) HRESULT,
    };
};
pub const ICommandLineActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!*CommandLineActivationOperation {
        var _r: *CommandLineActivationOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ICommandLineActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4506472c-006a-48eb-8afb-d07ab25e3366";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: **CommandLineActivationOperation) callconv(.winapi) HRESULT,
    };
};
pub const ICommandLineActivationOperation = extern struct {
    vtable: *const VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentDirectoryPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrentDirectoryPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitCode(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ExitCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ExitCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ICommandLineActivationOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "994b2841-c59e-4f69-bcfd-b61ed4e622eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CurrentDirectoryPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ExitCode: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ExitCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IContactPanelActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContactPanel(self: *@This()) core.HResult!*ContactPanel {
        var _r: *ContactPanel = undefined;
        const _c = self.vtable.get_ContactPanel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52bb63e4-d3d4-4b63-8051-4af2082cab80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactPanel: *const fn(self: *anyopaque, _r: **ContactPanel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContinuationActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_ContinuationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e58106b5-155f-4a94-a742-c7e08f4e188c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContinuationData: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceInformationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Verb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd50b9a9-ce10-44d2-8234-c355a073ef33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceInformationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Verb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eba0d1e4-ecc6-4148-94ed-f4b37ec05b3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IDialReceiverActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb777ed7-85ee-456e-a44d-85d730e70aed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFiles(self: *@This()) core.HResult!*IVectorView(IStorageItem) {
        var _r: *IVectorView(IStorageItem) = undefined;
        const _c = self.vtable.get_Files(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Verb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb2afc33-93b1-42ed-8b26-236dd9c78496";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Files: *const fn(self: *anyopaque, _r: **IVectorView(IStorageItem)) callconv(.winapi) HRESULT,
        get_Verb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileActivatedEventArgsWithCallerPackageFamilyName = extern struct {
    vtable: *const VTable,
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallerPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithCallerPackageFamilyName";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d60f06b-d25f-4d25-8653-e1c5e1108309";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CallerPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileActivatedEventArgsWithNeighboringFiles = extern struct {
    vtable: *const VTable,
    pub fn getNeighboringFilesQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var _r: *StorageFileQueryResult = undefined;
        const _c = self.vtable.get_NeighboringFilesQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "433ba1a4-e1e2-48fd-b7fc-b5d6eee65033";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NeighboringFilesQuery: *const fn(self: *anyopaque, _r: **StorageFileQueryResult) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPickerActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFileOpenPickerUI(self: *@This()) core.HResult!*FileOpenPickerUI {
        var _r: *FileOpenPickerUI = undefined;
        const _c = self.vtable.get_FileOpenPickerUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72827082-5525-4bf2-bc09-1f5095d4964d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileOpenPickerUI: *const fn(self: *anyopaque, _r: **FileOpenPickerUI) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPickerActivatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallerPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e731f66-8d1f-45fb-af1d-73205c8fc7a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CallerPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPickerContinuationEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFiles(self: *@This()) core.HResult!*IVectorView(StorageFile) {
        var _r: *IVectorView(StorageFile) = undefined;
        const _c = self.vtable.get_Files(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0fa3f3a-d4e8-4ad3-9c34-2308f32fcec9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Files: *const fn(self: *anyopaque, _r: **IVectorView(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePickerActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFileSavePickerUI(self: *@This()) core.HResult!*FileSavePickerUI {
        var _r: *FileSavePickerUI = undefined;
        const _c = self.vtable.get_FileSavePickerUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81c19cf1-74e6-4387-82eb-bb8fd64b4346";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileSavePickerUI: *const fn(self: *anyopaque, _r: **FileSavePickerUI) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePickerActivatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallerPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b73fe13-2cf2-4d48-8cbc-af67d23f1ce7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CallerPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EnterpriseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePickerContinuationEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c846fe1-3bad-4f33-8c8b-e46fae824b4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IFolderPickerContinuationEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Folder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51882366-9f4b-498f-beb0-42684f6e1c29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Folder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const ILaunchActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc93e26-a14a-4b4f-82b0-33bed920af52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILaunchActivatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getTileActivatedInfo(self: *@This()) core.HResult!*TileActivatedInfo {
        var _r: *TileActivatedInfo = undefined;
        const _c = self.vtable.get_TileActivatedInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fd37ebc-9dc9-46b5-9ace-bd95d4565345";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TileActivatedInfo: *const fn(self: *anyopaque, _r: **TileActivatedInfo) callconv(.winapi) HRESULT,
    };
};
pub const ILockScreenActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInfo(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Info(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ca77966-6108-4a41-8220-ee7d133c8532";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Info: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IPhoneCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54615221-a3c1-4ced-b62f-8c60523619ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPickerReturnedActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPickerOperationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PickerOperationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IPickerReturnedActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "360defb9-a9d3-4984-a4ed-9ec734604921";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PickerOperationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrelaunchActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPrelaunchActivated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PrelaunchActivated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c44717b-19f7-48d6-b046-cf22826eaa74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrelaunchActivated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProtocolActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6095f4dd-b7c0-46ab-81fe-d90f36d00d24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = extern struct {
    vtable: *const VTable,
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallerPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d84a0c12-5c8f-438c-83cb-c28fcc0b2fdb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CallerPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IProtocolForResultsActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProtocolForResultsOperation(self: *@This()) core.HResult!*ProtocolForResultsOperation {
        var _r: *ProtocolForResultsOperation = undefined;
        const _c = self.vtable.get_ProtocolForResultsOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e75132c2-7ae7-4517-80ac-dbe8d7cc5b9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtocolForResultsOperation: *const fn(self: *anyopaque, _r: **ProtocolForResultsOperation) callconv(.winapi) HRESULT,
    };
};
pub const IRestrictedLaunchActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSharedContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SharedContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0b7ac81-bfc3-4344-a5da-19fd5a27baae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SharedContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ISearchActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ISearchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8cb36951-58c8-43e3-94bc-41d33f8b630e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QueryText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISearchActivatedEventArgsWithLinguisticDetails = extern struct {
    vtable: *const VTable,
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var _r: *SearchPaneQueryLinguisticDetails = undefined;
        const _c = self.vtable.get_LinguisticDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c09f33da-08ab-4931-9b7c-451025f21f81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LinguisticDetails: *const fn(self: *anyopaque, _r: **SearchPaneQueryLinguisticDetails) callconv(.winapi) HRESULT,
    };
};
pub const IShareTargetActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getShareOperation(self: *@This()) core.HResult!*ShareOperation {
        var _r: *ShareOperation = undefined;
        const _c = self.vtable.get_ShareOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bdaf9c8-cdb2-4acb-bfc3-6648563378ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShareOperation: *const fn(self: *anyopaque, _r: **ShareOperation) callconv(.winapi) HRESULT,
    };
};
pub const ISplashScreen = extern struct {
    vtable: *const VTable,
    pub fn getImageLocation(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ImageLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDismissed(self: *@This(), handler: *TypedEventHandler(SplashScreen,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Dismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDismissed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Dismissed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ISplashScreen";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca4d975c-d4d6-43f0-97c0-0833c6391c24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ImageLocation: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        add_Dismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SplashScreen,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Dismissed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStartupTaskActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IStartupTaskActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03b11a58-5276-4d91-8621-54611864d5fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITileActivatedInfo = extern struct {
    vtable: *const VTable,
    pub fn getRecentlyShownNotifications(self: *@This()) core.HResult!*IVectorView(ShownTileNotification) {
        var _r: *IVectorView(ShownTileNotification) = undefined;
        const _c = self.vtable.get_RecentlyShownNotifications(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ITileActivatedInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80e4a3b1-3980-4f17-b738-89194e0b8f65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecentlyShownNotifications: *const fn(self: *anyopaque, _r: **IVectorView(ShownTileNotification)) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getArgument(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Argument(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserInput(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_UserInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92a86f82-5290-431d-be85-c4aaeeb8685f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Argument: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserInput: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountProviderActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!*IUserDataAccountProviderOperation {
        var _r: *IUserDataAccountProviderOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bc9f723-8ef1-4a51-a63a-fe711eeab607";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: **IUserDataAccountProviderOperation) callconv(.winapi) HRESULT,
    };
};
pub const IViewSwitcherProvider = extern struct {
    vtable: *const VTable,
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var _r: *ActivationViewSwitcher = undefined;
        const _c = self.vtable.get_ViewSwitcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IViewSwitcherProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33f288a6-5c2c-4d27-bac7-7536088f1219";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewSwitcher: *const fn(self: *anyopaque, _r: **ActivationViewSwitcher) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResult(self: *@This()) core.HResult!*SpeechRecognitionResult {
        var _r: *SpeechRecognitionResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab92dcfd-8d43-4de6-9775-20704b581b00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **SpeechRecognitionResult) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!*IWebAccountProviderOperation {
        var _r: *IWebAccountProviderOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72b71774-98ea-4ccf-9752-46d9051004f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: **IWebAccountProviderOperation) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationBrokerContinuationEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWebAuthenticationResult(self: *@This()) core.HResult!*WebAuthenticationResult {
        var _r: *WebAuthenticationResult = undefined;
        const _c = self.vtable.get_WebAuthenticationResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75dda3d4-7714-453d-b7ff-b95e3a1709da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAuthenticationResult: *const fn(self: *anyopaque, _r: **WebAuthenticationResult) callconv(.winapi) HRESULT,
    };
};
pub const LaunchActivatedEventArgs = extern struct {
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
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getPrelaunchActivated(self: *@This()) core.HResult!bool {
        var this: ?*IPrelaunchActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrelaunchActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrelaunchActivated();
    }
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getTileActivatedInfo(self: *@This()) core.HResult!*TileActivatedInfo {
        var this: ?*ILaunchActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILaunchActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTileActivatedInfo();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.LaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILaunchActivatedEventArgs.GUID;
    pub const IID: Guid = ILaunchActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILaunchActivatedEventArgs.SIGNATURE);
};
pub const LockScreenActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.LockScreenActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenActivatedEventArgs.GUID;
    pub const IID: Guid = ILockScreenActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenActivatedEventArgs.SIGNATURE);
};
pub const LockScreenComponentActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.LockScreenComponentActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivatedEventArgs.GUID;
    pub const IID: Guid = IActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivatedEventArgs.SIGNATURE);
};
pub const PhoneCallActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.PhoneCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallActivatedEventArgs.GUID;
    pub const IID: Guid = IPhoneCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallActivatedEventArgs.SIGNATURE);
};
pub const PickerReturnedActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPickerOperationId(self: *@This()) core.HResult!HSTRING {
        const this: *IPickerReturnedActivatedEventArgs = @ptrCast(self);
        return try this.getPickerOperationId();
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.PickerReturnedActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPickerReturnedActivatedEventArgs.GUID;
    pub const IID: Guid = IPickerReturnedActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPickerReturnedActivatedEventArgs.SIGNATURE);
};
pub const ProtocolActivatedEventArgs = extern struct {
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
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ProtocolActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtocolActivatedEventArgs.GUID;
    pub const IID: Guid = IProtocolActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtocolActivatedEventArgs.SIGNATURE);
};
pub const ProtocolForResultsActivatedEventArgs = extern struct {
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
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ProtocolForResultsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtocolForResultsActivatedEventArgs.GUID;
    pub const IID: Guid = IProtocolForResultsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtocolForResultsActivatedEventArgs.SIGNATURE);
};
pub const RestrictedLaunchActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.RestrictedLaunchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRestrictedLaunchActivatedEventArgs.GUID;
    pub const IID: Guid = IRestrictedLaunchActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRestrictedLaunchActivatedEventArgs.SIGNATURE);
};
pub const SearchActivatedEventArgs = extern struct {
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
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var this: ?*ISearchActivatedEventArgsWithLinguisticDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISearchActivatedEventArgsWithLinguisticDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLinguisticDetails();
    }
    pub fn getViewSwitcher(self: *@This()) core.HResult!*ActivationViewSwitcher {
        var this: ?*IViewSwitcherProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IViewSwitcherProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewSwitcher();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.SearchActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchActivatedEventArgs.GUID;
    pub const IID: Guid = ISearchActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchActivatedEventArgs.SIGNATURE);
};
pub const ShareTargetActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ShareTargetActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareTargetActivatedEventArgs.GUID;
    pub const IID: Guid = IShareTargetActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareTargetActivatedEventArgs.SIGNATURE);
};
pub const SplashScreen = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getImageLocation(self: *@This()) core.HResult!Rect {
        const this: *ISplashScreen = @ptrCast(self);
        return try this.getImageLocation();
    }
    pub fn addDismissed(self: *@This(), handler: *TypedEventHandler(SplashScreen,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ISplashScreen = @ptrCast(self);
        return try this.addDismissed(handler);
    }
    pub fn removeDismissed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISplashScreen = @ptrCast(self);
        return try this.removeDismissed(cookie);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.SplashScreen";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplashScreen.GUID;
    pub const IID: Guid = ISplashScreen.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplashScreen.SIGNATURE);
};
pub const StartupTaskActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.StartupTaskActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStartupTaskActivatedEventArgs.GUID;
    pub const IID: Guid = IStartupTaskActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStartupTaskActivatedEventArgs.SIGNATURE);
};
pub const TileActivatedInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecentlyShownNotifications(self: *@This()) core.HResult!*IVectorView(ShownTileNotification) {
        const this: *ITileActivatedInfo = @ptrCast(self);
        return try this.getRecentlyShownNotifications();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.TileActivatedInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileActivatedInfo.GUID;
    pub const IID: Guid = ITileActivatedInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileActivatedInfo.SIGNATURE);
};
pub const ToastNotificationActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getCurrentlyShownApplicationViewId(self: *@This()) core.HResult!i32 {
        var this: ?*IApplicationViewActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentlyShownApplicationViewId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ToastNotificationActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotificationActivatedEventArgs.GUID;
    pub const IID: Guid = IToastNotificationActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotificationActivatedEventArgs.SIGNATURE);
};
pub const UserDataAccountProviderActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.UserDataAccountProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountProviderActivatedEventArgs.GUID;
    pub const IID: Guid = IUserDataAccountProviderActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountProviderActivatedEventArgs.SIGNATURE);
};
pub const VoiceCommandActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.VoiceCommandActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandActivatedEventArgs.GUID;
    pub const IID: Guid = IVoiceCommandActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandActivatedEventArgs.SIGNATURE);
};
pub const WebAccountProviderActivatedEventArgs = extern struct {
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
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.WebAccountProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderActivatedEventArgs.GUID;
    pub const IID: Guid = IWebAccountProviderActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderActivatedEventArgs.SIGNATURE);
};
pub const WebAuthenticationBrokerContinuationEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.WebAuthenticationBrokerContinuationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAuthenticationBrokerContinuationEventArgs.GUID;
    pub const IID: Guid = IWebAuthenticationBrokerContinuationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAuthenticationBrokerContinuationEventArgs.SIGNATURE);
};
pub const ContactCallActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactCallActivatedEventArgs.GUID;
    pub const IID: Guid = IContactCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactCallActivatedEventArgs.SIGNATURE);
};
pub const ContactMapActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactMapActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactMapActivatedEventArgs.GUID;
    pub const IID: Guid = IContactMapActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactMapActivatedEventArgs.SIGNATURE);
};
pub const ContactMessageActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactMessageActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactMessageActivatedEventArgs.GUID;
    pub const IID: Guid = IContactMessageActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactMessageActivatedEventArgs.SIGNATURE);
};
pub const ContactPickerActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactPickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPickerActivatedEventArgs.GUID;
    pub const IID: Guid = IContactPickerActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPickerActivatedEventArgs.SIGNATURE);
};
pub const ContactPostActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactPostActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPostActivatedEventArgs.GUID;
    pub const IID: Guid = IContactPostActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPostActivatedEventArgs.SIGNATURE);
};
pub const ContactVideoCallActivatedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.ContactVideoCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactVideoCallActivatedEventArgs.GUID;
    pub const IID: Guid = IContactVideoCallActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactVideoCallActivatedEventArgs.SIGNATURE);
};
pub const IContactActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Verb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d627a1c4-c025-4c41-9def-f1eafad075e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Verb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactCallActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceUserId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2df14c7-30eb-41c6-b3bc-5b1694f9dab3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceUserId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactMapActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAddress(self: *@This()) core.HResult!*ContactAddress {
        var _r: *ContactAddress = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b32bf870-eee7-4ad2-aaf1-a87effcf00a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: **ContactAddress) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactMessageActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceUserId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de598db2-0e03-43b0-bf56-bcc40b3162df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceUserId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactPickerActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContactPickerUI(self: *@This()) core.HResult!*ContactPickerUI {
        var _r: *ContactPickerUI = undefined;
        const _c = self.vtable.get_ContactPickerUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce57aae7-6449-45a7-971f-d113be7a8936";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactPickerUI: *const fn(self: *anyopaque, _r: **ContactPickerUI) callconv(.winapi) HRESULT,
    };
};
pub const IContactPostActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceUserId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b35a3c67-f1e7-4655-ad6e-4857588f552f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceUserId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactVideoCallActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getServiceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceUserId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceUserId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61079db8-e3e7-4b4f-858d-5c63a96ef684";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceUserId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactsProviderActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVerb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Verb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Activation.IContactsProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4580dca8-5750-4916-aa52-c0829521eb94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Verb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const WalletActionKind = @import("./Wallet.zig").WalletActionKind;
const FileOpenPickerUI = @import("../Storage/Pickers/Provider.zig").FileOpenPickerUI;
const WebAuthenticationResult = @import("../Security/Authentication/Web.zig").WebAuthenticationResult;
const SearchPaneQueryLinguisticDetails = @import("./Search.zig").SearchPaneQueryLinguisticDetails;
const ContactAddress = @import("./Contacts.zig").ContactAddress;
const IBackgroundTaskInstance = @import("./Background.zig").IBackgroundTaskInstance;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const AddAppointmentOperation = @import("./Appointments/AppointmentsProvider.zig").AddAppointmentOperation;
const ActivationViewSwitcher = @import("../UI/ViewManagement.zig").ActivationViewSwitcher;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SpeechRecognitionResult = @import("../Media/SpeechRecognition.zig").SpeechRecognitionResult;
const RemoveAppointmentOperation = @import("./Appointments/AppointmentsProvider.zig").RemoveAppointmentOperation;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const IWebAccountProviderOperation = @import("../Security/Authentication/Web/Provider.zig").IWebAccountProviderOperation;
const Uri = @import("../Foundation.zig").Uri;
const IUserDataAccountProviderOperation = @import("./UserDataAccounts/Provider.zig").IUserDataAccountProviderOperation;
const HRESULT = @import("../root.zig").HRESULT;
const ProtocolForResultsOperation = @import("../System.zig").ProtocolForResultsOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const StorageFile = @import("../Storage.zig").StorageFile;
const ContactPickerUI = @import("./Contacts/Provider.zig").ContactPickerUI;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const CachedFileUpdaterUI = @import("../Storage/Provider.zig").CachedFileUpdaterUI;
const DateTime = @import("../Foundation.zig").DateTime;
const StorageFileQueryResult = @import("../Storage/Search.zig").StorageFileQueryResult;
const PrintTaskConfiguration = @import("../Devices/Printers/Extensions.zig").PrintTaskConfiguration;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const LockScreenCallUI = @import("./Calls.zig").LockScreenCallUI;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const ContactPanel = @import("./Contacts.zig").ContactPanel;
const ShownTileNotification = @import("../UI/Notifications.zig").ShownTileNotification;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const ShareOperation = @import("./DataTransfer/ShareTarget.zig").ShareOperation;
const Contact = @import("./Contacts.zig").Contact;
const FileSavePickerUI = @import("../Storage/Pickers/Provider.zig").FileSavePickerUI;
const core = @import("../root.zig").core;
const ReplaceAppointmentOperation = @import("./Appointments/AppointmentsProvider.zig").ReplaceAppointmentOperation;
const User = @import("../System.zig").User;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const Print3DWorkflow = @import("../Devices/Printers/Extensions.zig").Print3DWorkflow;
