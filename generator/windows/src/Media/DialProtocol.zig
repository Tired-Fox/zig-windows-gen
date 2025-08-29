pub const DialApp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppName(self: *@This()) core.HResult!HSTRING {
        const this: *IDialApp = @ptrCast(self);
        return try this.getAppName();
    }
    pub fn RequestLaunchAsync(self: *@This(), appArgument: HSTRING) core.HResult!*IAsyncOperation(DialAppLaunchResult) {
        const this: *IDialApp = @ptrCast(self);
        return try this.RequestLaunchAsync(appArgument);
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncOperation(DialAppStopResult) {
        const this: *IDialApp = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn GetAppStateAsync(self: *@This()) core.HResult!*IAsyncOperation(DialAppStateDetails) {
        const this: *IDialApp = @ptrCast(self);
        return try this.GetAppStateAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialApp.GUID;
    pub const IID: Guid = IDialApp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialApp.SIGNATURE);
};
pub const DialAppLaunchResult = enum(i32) {
    Launched = 0,
    FailedToLaunch = 1,
    NotFound = 2,
    NetworkFailure = 3,
};
pub const DialAppState = enum(i32) {
    Unknown = 0,
    Stopped = 1,
    Running = 2,
    NetworkFailure = 3,
};
pub const DialAppStateDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!DialAppState {
        const this: *IDialAppStateDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getFullXml(self: *@This()) core.HResult!HSTRING {
        const this: *IDialAppStateDetails = @ptrCast(self);
        return try this.getFullXml();
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialAppStateDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialAppStateDetails.GUID;
    pub const IID: Guid = IDialAppStateDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialAppStateDetails.SIGNATURE);
};
pub const DialAppStopResult = enum(i32) {
    Stopped = 0,
    StopFailed = 1,
    OperationNotSupported = 2,
    NetworkFailure = 3,
};
pub const DialDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDialDevice = @ptrCast(self);
        return try this.getId();
    }
    pub fn GetDialApp(self: *@This(), appName: HSTRING) core.HResult!*DialApp {
        const this: *IDialDevice = @ptrCast(self);
        return try this.GetDialApp(appName);
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDialDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDialDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFriendlyName();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IDialDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDialDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getThumbnail();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector(appName: HSTRING) core.HResult!HSTRING {
        const factory = @This().IDialDeviceStaticsCache.get();
        return try factory.GetDeviceSelector(appName);
    }
    pub fn FromIdAsync(value: HSTRING) core.HResult!*IAsyncOperation(DialDevice) {
        const factory = @This().IDialDeviceStaticsCache.get();
        return try factory.FromIdAsync(value);
    }
    pub fn DeviceInfoSupportsDialAsync(device: *DeviceInformation) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IDialDeviceStaticsCache.get();
        return try factory.DeviceInfoSupportsDialAsync(device);
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialDevice.GUID;
    pub const IID: Guid = IDialDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialDevice.SIGNATURE);
    var _IDialDeviceStaticsCache: FactoryCache(IDialDeviceStatics, RUNTIME_NAME) = .{};
};
pub const DialDeviceDisplayStatus = enum(i32) {
    None = 0,
    Connecting = 1,
    Connected = 2,
    Disconnecting = 3,
    Disconnected = 4,
    Error = 5,
};
pub const DialDevicePicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFilter(self: *@This()) core.HResult!*DialDevicePickerFilter {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.getFilter();
    }
    pub fn getAppearance(self: *@This()) core.HResult!*DevicePickerAppearance {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.getAppearance();
    }
    pub fn addDialDeviceSelected(self: *@This(), handler: *TypedEventHandler(DialDevicePicker,DialDeviceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.addDialDeviceSelected(handler);
    }
    pub fn removeDialDeviceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.removeDialDeviceSelected(token);
    }
    pub fn addDisconnectButtonClicked(self: *@This(), handler: *TypedEventHandler(DialDevicePicker,DialDisconnectButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.addDisconnectButtonClicked(handler);
    }
    pub fn removeDisconnectButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.removeDisconnectButtonClicked(token);
    }
    pub fn addDialDevicePickerDismissed(self: *@This(), handler: *TypedEventHandler(DialDevicePicker,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.addDialDevicePickerDismissed(handler);
    }
    pub fn removeDialDevicePickerDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.removeDialDevicePickerDismissed(token);
    }
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.Show(selection);
    }
    pub fn ShowWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.ShowWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn PickSingleDialDeviceAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(DialDevice) {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.PickSingleDialDeviceAsync(selection);
    }
    pub fn PickSingleDialDeviceAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(DialDevice) {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.PickSingleDialDeviceAsyncWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.Hide();
    }
    pub fn SetDisplayStatus(self: *@This(), device: *DialDevice, status: DialDeviceDisplayStatus) core.HResult!void {
        const this: *IDialDevicePicker = @ptrCast(self);
        return try this.SetDisplayStatus(device, status);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDialDevicePicker.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialDevicePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialDevicePicker.GUID;
    pub const IID: Guid = IDialDevicePicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialDevicePicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DialDevicePickerFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedAppNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IDialDevicePickerFilter = @ptrCast(self);
        return try this.getSupportedAppNames();
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialDevicePickerFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialDevicePickerFilter.GUID;
    pub const IID: Guid = IDialDevicePickerFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialDevicePickerFilter.SIGNATURE);
};
pub const DialDeviceSelectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectedDialDevice(self: *@This()) core.HResult!*DialDevice {
        const this: *IDialDeviceSelectedEventArgs = @ptrCast(self);
        return try this.getSelectedDialDevice();
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialDeviceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialDeviceSelectedEventArgs.GUID;
    pub const IID: Guid = IDialDeviceSelectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialDeviceSelectedEventArgs.SIGNATURE);
};
pub const DialDisconnectButtonClickedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DialDevice {
        const this: *IDialDisconnectButtonClickedEventArgs = @ptrCast(self);
        return try this.getDevice();
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialDisconnectButtonClickedEventArgs.GUID;
    pub const IID: Guid = IDialDisconnectButtonClickedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialDisconnectButtonClickedEventArgs.SIGNATURE);
};
pub const DialReceiverApp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAdditionalDataAsync(self: *@This()) core.HResult!*IAsyncOperation(IMap(HSTRING,HSTRING)) {
        const this: *IDialReceiverApp = @ptrCast(self);
        return try this.GetAdditionalDataAsync();
    }
    pub fn SetAdditionalDataAsync(self: *@This(), additionalData: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncAction {
        const this: *IDialReceiverApp = @ptrCast(self);
        return try this.SetAdditionalDataAsync(additionalData);
    }
    pub fn GetUniqueDeviceNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var this: ?*IDialReceiverApp2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDialReceiverApp2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetUniqueDeviceNameAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Current() core.HResult!*DialReceiverApp {
        const factory = @This().IDialReceiverAppStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.DialReceiverApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialReceiverApp.GUID;
    pub const IID: Guid = IDialReceiverApp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialReceiverApp.SIGNATURE);
    var _IDialReceiverAppStaticsCache: FactoryCache(IDialReceiverAppStatics, RUNTIME_NAME) = .{};
};
pub const IDialApp = extern struct {
    vtable: *const VTable,
    pub fn getAppName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestLaunchAsync(self: *@This(), appArgument: HSTRING) core.HResult!*IAsyncOperation(DialAppLaunchResult) {
        var _r: *IAsyncOperation(DialAppLaunchResult) = undefined;
        const _c = self.vtable.RequestLaunchAsync(@ptrCast(self), appArgument, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncOperation(DialAppStopResult) {
        var _r: *IAsyncOperation(DialAppStopResult) = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppStateAsync(self: *@This()) core.HResult!*IAsyncOperation(DialAppStateDetails) {
        var _r: *IAsyncOperation(DialAppStateDetails) = undefined;
        const _c = self.vtable.GetAppStateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "555ffbd3-45b7-49f3-bbd7-302db6084646";
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
        RequestLaunchAsync: *const fn(self: *anyopaque, appArgument: HSTRING, _r: **IAsyncOperation(DialAppLaunchResult)) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DialAppStopResult)) callconv(.winapi) HRESULT,
        GetAppStateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DialAppStateDetails)) callconv(.winapi) HRESULT,
    };
};
pub const IDialAppStateDetails = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!DialAppState {
        var _r: DialAppState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullXml(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullXml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialAppStateDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddc4a4a1-f5de-400d-bea4-8c8466bb2961";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *DialAppState) callconv(.winapi) HRESULT,
        get_FullXml: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDialDevice = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDialApp(self: *@This(), appName: HSTRING) core.HResult!*DialApp {
        var _r: *DialApp = undefined;
        const _c = self.vtable.GetDialApp(@ptrCast(self), appName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fff0edaf-759f-41d2-a20a-7f29ce0b3784";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDialApp: *const fn(self: *anyopaque, appName: HSTRING, _r: **DialApp) callconv(.winapi) HRESULT,
    };
};
pub const IDialDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bab7f3d5-5bfb-4eba-8b32-b57c5c5ee5c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IDialDevicePicker = extern struct {
    vtable: *const VTable,
    pub fn getFilter(self: *@This()) core.HResult!*DialDevicePickerFilter {
        var _r: *DialDevicePickerFilter = undefined;
        const _c = self.vtable.get_Filter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppearance(self: *@This()) core.HResult!*DevicePickerAppearance {
        var _r: *DevicePickerAppearance = undefined;
        const _c = self.vtable.get_Appearance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDialDeviceSelected(self: *@This(), handler: *TypedEventHandler(DialDevicePicker,DialDeviceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DialDeviceSelected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDialDeviceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DialDeviceSelected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisconnectButtonClicked(self: *@This(), handler: *TypedEventHandler(DialDevicePicker,DialDisconnectButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisconnectButtonClicked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisconnectButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisconnectButtonClicked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDialDevicePickerDismissed(self: *@This(), handler: *TypedEventHandler(DialDevicePicker,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DialDevicePickerDismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDialDevicePickerDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DialDevicePickerDismissed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self), selection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const _c = self.vtable.ShowWithPreferredPlacement(@ptrCast(self), selection, preferredPlacement);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PickSingleDialDeviceAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(DialDevice) {
        var _r: *IAsyncOperation(DialDevice) = undefined;
        const _c = self.vtable.PickSingleDialDeviceAsync(@ptrCast(self), selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSingleDialDeviceAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(DialDevice) {
        var _r: *IAsyncOperation(DialDevice) = undefined;
        const _c = self.vtable.PickSingleDialDeviceAsyncWithPreferredPlacement(@ptrCast(self), selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const _c = self.vtable.Hide(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDisplayStatus(self: *@This(), device: *DialDevice, status: DialDeviceDisplayStatus) core.HResult!void {
        const _c = self.vtable.SetDisplayStatus(@ptrCast(self), device, status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDevicePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba7e520a-ff59-4f4b-bdac-d89f495ad6e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Filter: *const fn(self: *anyopaque, _r: **DialDevicePickerFilter) callconv(.winapi) HRESULT,
        get_Appearance: *const fn(self: *anyopaque, _r: **DevicePickerAppearance) callconv(.winapi) HRESULT,
        add_DialDeviceSelected: *const fn(self: *anyopaque, handler: *TypedEventHandler(DialDevicePicker,DialDeviceSelectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DialDeviceSelected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DisconnectButtonClicked: *const fn(self: *anyopaque, handler: *TypedEventHandler(DialDevicePicker,DialDisconnectButtonClickedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisconnectButtonClicked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DialDevicePickerDismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DialDevicePicker,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DialDevicePickerDismissed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque, selection: Rect) callconv(.winapi) HRESULT,
        ShowWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement) callconv(.winapi) HRESULT,
        PickSingleDialDeviceAsync: *const fn(self: *anyopaque, selection: Rect, _r: **IAsyncOperation(DialDevice)) callconv(.winapi) HRESULT,
        PickSingleDialDeviceAsyncWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(DialDevice)) callconv(.winapi) HRESULT,
        Hide: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetDisplayStatus: *const fn(self: *anyopaque, device: *DialDevice, status: DialDeviceDisplayStatus) callconv(.winapi) HRESULT,
    };
};
pub const IDialDevicePickerFilter = extern struct {
    vtable: *const VTable,
    pub fn getSupportedAppNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedAppNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDevicePickerFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c17c93ba-86c0-485d-b8d6-0f9a8f641590";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedAppNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IDialDeviceSelectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSelectedDialDevice(self: *@This()) core.HResult!*DialDevice {
        var _r: *DialDevice = undefined;
        const _c = self.vtable.get_SelectedDialDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDeviceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "480b92ad-ac76-47eb-9c06-a19304da0247";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedDialDevice: *const fn(self: *anyopaque, _r: **DialDevice) callconv(.winapi) HRESULT,
    };
};
pub const IDialDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), appName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), appName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), value: HSTRING) core.HResult!*IAsyncOperation(DialDevice) {
        var _r: *IAsyncOperation(DialDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeviceInfoSupportsDialAsync(self: *@This(), device: *DeviceInformation) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.DeviceInfoSupportsDialAsync(@ptrCast(self), device, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa69cc95-01f8-4758-8461-2bbd1cdc3cf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, appName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, value: HSTRING, _r: **IAsyncOperation(DialDevice)) callconv(.winapi) HRESULT,
        DeviceInfoSupportsDialAsync: *const fn(self: *anyopaque, device: *DeviceInformation, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IDialDisconnectButtonClickedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DialDevice {
        var _r: *DialDevice = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialDisconnectButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52765152-9c81-4e55-adc2-0ebe99cde3b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **DialDevice) callconv(.winapi) HRESULT,
    };
};
pub const IDialReceiverApp = extern struct {
    vtable: *const VTable,
    pub fn GetAdditionalDataAsync(self: *@This()) core.HResult!*IAsyncOperation(IMap(HSTRING,HSTRING)) {
        var _r: *IAsyncOperation(IMap(HSTRING,HSTRING)) = undefined;
        const _c = self.vtable.GetAdditionalDataAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAdditionalDataAsync(self: *@This(), additionalData: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAdditionalDataAsync(@ptrCast(self), additionalData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialReceiverApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd3e7c57-5045-470e-b304-4dd9b13e7d11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAdditionalDataAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IMap(HSTRING,HSTRING))) callconv(.winapi) HRESULT,
        SetAdditionalDataAsync: *const fn(self: *anyopaque, additionalData: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IDialReceiverApp2 = extern struct {
    vtable: *const VTable,
    pub fn GetUniqueDeviceNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetUniqueDeviceNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialReceiverApp2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "530c5805-9130-42ac-a504-1977dcb2ea8a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUniqueDeviceNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IDialReceiverAppStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*DialReceiverApp {
        var _r: *DialReceiverApp = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.DialProtocol.IDialReceiverAppStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53183a3c-4c36-4d02-b28a-f2a9da38ec52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **DialReceiverApp) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const Placement = @import("../UI/Popups.zig").Placement;
const DevicePickerAppearance = @import("../Devices/Enumeration.zig").DevicePickerAppearance;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const HSTRING = @import("../root.zig").HSTRING;
