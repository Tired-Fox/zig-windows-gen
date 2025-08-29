pub const CastingConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!CastingConnectionState {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.getState();
    }
    pub fn getDevice(self: *@This()) core.HResult!*CastingDevice {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.getDevice();
    }
    pub fn getSource(self: *@This()) core.HResult!*CastingSource {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *CastingSource) core.HResult!void {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(CastingConnection,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(CastingConnection,CastingConnectionErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.addErrorOccurred(handler);
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.removeErrorOccurred(token);
    }
    pub fn RequestStartCastingAsync(self: *@This(), value: *CastingSource) core.HResult!*IAsyncOperation(CastingConnectionErrorStatus) {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.RequestStartCastingAsync(value);
    }
    pub fn DisconnectAsync(self: *@This()) core.HResult!*IAsyncOperation(CastingConnectionErrorStatus) {
        const this: *ICastingConnection = @ptrCast(self);
        return try this.DisconnectAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingConnection.GUID;
    pub const IID: Guid = ICastingConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingConnection.SIGNATURE);
};
pub const CastingConnectionErrorOccurredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorStatus(self: *@This()) core.HResult!CastingConnectionErrorStatus {
        const this: *ICastingConnectionErrorOccurredEventArgs = @ptrCast(self);
        return try this.getErrorStatus();
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *ICastingConnectionErrorOccurredEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingConnectionErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingConnectionErrorOccurredEventArgs.GUID;
    pub const IID: Guid = ICastingConnectionErrorOccurredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingConnectionErrorOccurredEventArgs.SIGNATURE);
};
pub const CastingConnectionErrorStatus = enum(i32) {
    Succeeded = 0,
    DeviceDidNotRespond = 1,
    DeviceError = 2,
    DeviceLocked = 3,
    ProtectedPlaybackFailed = 4,
    InvalidCastingSource = 5,
    Unknown = 6,
};
pub const CastingConnectionState = enum(i32) {
    Disconnected = 0,
    Connected = 1,
    Rendering = 2,
    Disconnecting = 3,
    Connecting = 4,
};
pub const CastingDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ICastingDevice = @ptrCast(self);
        return try this.getId();
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *ICastingDevice = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getIcon(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        const this: *ICastingDevice = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn GetSupportedCastingPlaybackTypesAsync(self: *@This()) core.HResult!*IAsyncOperation(CastingPlaybackTypes) {
        const this: *ICastingDevice = @ptrCast(self);
        return try this.GetSupportedCastingPlaybackTypesAsync();
    }
    pub fn CreateCastingConnection(self: *@This()) core.HResult!*CastingConnection {
        const this: *ICastingDevice = @ptrCast(self);
        return try this.CreateCastingConnection();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector(ty: CastingPlaybackTypes) core.HResult!HSTRING {
        const factory = @This().ICastingDeviceStaticsCache.get();
        return try factory.GetDeviceSelector(ty);
    }
    pub fn GetDeviceSelectorFromCastingSourceAsync(castingSource: *CastingSource) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().ICastingDeviceStaticsCache.get();
        return try factory.GetDeviceSelectorFromCastingSourceAsync(castingSource);
    }
    pub fn FromIdAsync(value: HSTRING) core.HResult!*IAsyncOperation(CastingDevice) {
        const factory = @This().ICastingDeviceStaticsCache.get();
        return try factory.FromIdAsync(value);
    }
    pub fn DeviceInfoSupportsCastingAsync(device: *DeviceInformation) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ICastingDeviceStaticsCache.get();
        return try factory.DeviceInfoSupportsCastingAsync(device);
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingDevice.GUID;
    pub const IID: Guid = ICastingDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingDevice.SIGNATURE);
    var _ICastingDeviceStaticsCache: FactoryCache(ICastingDeviceStatics, RUNTIME_NAME) = .{};
};
pub const CastingDevicePicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFilter(self: *@This()) core.HResult!*CastingDevicePickerFilter {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.getFilter();
    }
    pub fn getAppearance(self: *@This()) core.HResult!*DevicePickerAppearance {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.getAppearance();
    }
    pub fn addCastingDeviceSelected(self: *@This(), handler: *TypedEventHandler(CastingDevicePicker,CastingDeviceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.addCastingDeviceSelected(handler);
    }
    pub fn removeCastingDeviceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.removeCastingDeviceSelected(token);
    }
    pub fn addCastingDevicePickerDismissed(self: *@This(), handler: *TypedEventHandler(CastingDevicePicker,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.addCastingDevicePickerDismissed(handler);
    }
    pub fn removeCastingDevicePickerDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.removeCastingDevicePickerDismissed(token);
    }
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.Show(selection);
    }
    pub fn ShowWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.ShowWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const this: *ICastingDevicePicker = @ptrCast(self);
        return try this.Hide();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICastingDevicePicker.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingDevicePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingDevicePicker.GUID;
    pub const IID: Guid = ICastingDevicePicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingDevicePicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CastingDevicePickerFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportsAudio(self: *@This()) core.HResult!bool {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.getSupportsAudio();
    }
    pub fn putSupportsAudio(self: *@This(), value: bool) core.HResult!void {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.putSupportsAudio(value);
    }
    pub fn getSupportsVideo(self: *@This()) core.HResult!bool {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.getSupportsVideo();
    }
    pub fn putSupportsVideo(self: *@This(), value: bool) core.HResult!void {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.putSupportsVideo(value);
    }
    pub fn getSupportsPictures(self: *@This()) core.HResult!bool {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.getSupportsPictures();
    }
    pub fn putSupportsPictures(self: *@This(), value: bool) core.HResult!void {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.putSupportsPictures(value);
    }
    pub fn getSupportedCastingSources(self: *@This()) core.HResult!*IVector(CastingSource) {
        const this: *ICastingDevicePickerFilter = @ptrCast(self);
        return try this.getSupportedCastingSources();
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingDevicePickerFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingDevicePickerFilter.GUID;
    pub const IID: Guid = ICastingDevicePickerFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingDevicePickerFilter.SIGNATURE);
};
pub const CastingDeviceSelectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectedCastingDevice(self: *@This()) core.HResult!*CastingDevice {
        const this: *ICastingDeviceSelectedEventArgs = @ptrCast(self);
        return try this.getSelectedCastingDevice();
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingDeviceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingDeviceSelectedEventArgs.GUID;
    pub const IID: Guid = ICastingDeviceSelectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingDeviceSelectedEventArgs.SIGNATURE);
};
pub const CastingPlaybackTypes = enum(i32) {
    None = 0,
    Audio = 1,
    Video = 2,
    Picture = 4,
};
pub const CastingSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreferredSourceUri(self: *@This()) core.HResult!*Uri {
        const this: *ICastingSource = @ptrCast(self);
        return try this.getPreferredSourceUri();
    }
    pub fn putPreferredSourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ICastingSource = @ptrCast(self);
        return try this.putPreferredSourceUri(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.CastingSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICastingSource.GUID;
    pub const IID: Guid = ICastingSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICastingSource.SIGNATURE);
};
pub const ICastingConnection = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!CastingConnectionState {
        var _r: CastingConnectionState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDevice(self: *@This()) core.HResult!*CastingDevice {
        var _r: *CastingDevice = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!*CastingSource {
        var _r: *CastingSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *CastingSource) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(CastingConnection,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(CastingConnection,CastingConnectionErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ErrorOccurred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ErrorOccurred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestStartCastingAsync(self: *@This(), value: *CastingSource) core.HResult!*IAsyncOperation(CastingConnectionErrorStatus) {
        var _r: *IAsyncOperation(CastingConnectionErrorStatus) = undefined;
        const _c = self.vtable.RequestStartCastingAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisconnectAsync(self: *@This()) core.HResult!*IAsyncOperation(CastingConnectionErrorStatus) {
        var _r: *IAsyncOperation(CastingConnectionErrorStatus) = undefined;
        const _c = self.vtable.DisconnectAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd951653-c2f1-4498-8b78-5fb4cd3640dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *CastingConnectionState) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **CastingDevice) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **CastingSource) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *CastingSource) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CastingConnection,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ErrorOccurred: *const fn(self: *anyopaque, handler: *TypedEventHandler(CastingConnection,CastingConnectionErrorOccurredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ErrorOccurred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RequestStartCastingAsync: *const fn(self: *anyopaque, value: *CastingSource, _r: **IAsyncOperation(CastingConnectionErrorStatus)) callconv(.winapi) HRESULT,
        DisconnectAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(CastingConnectionErrorStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ICastingConnectionErrorOccurredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getErrorStatus(self: *@This()) core.HResult!CastingConnectionErrorStatus {
        var _r: CastingConnectionErrorStatus = undefined;
        const _c = self.vtable.get_ErrorStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingConnectionErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7fb3c69-8719-4f00-81fb-961863c79a32";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorStatus: *const fn(self: *anyopaque, _r: *CastingConnectionErrorStatus) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICastingDevice = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIcon(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedCastingPlaybackTypesAsync(self: *@This()) core.HResult!*IAsyncOperation(CastingPlaybackTypes) {
        var _r: *IAsyncOperation(CastingPlaybackTypes) = undefined;
        const _c = self.vtable.GetSupportedCastingPlaybackTypesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCastingConnection(self: *@This()) core.HResult!*CastingConnection {
        var _r: *CastingConnection = undefined;
        const _c = self.vtable.CreateCastingConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de721c83-4a43-4ad1-a6d2-2492a796c3f2";
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
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Icon: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        GetSupportedCastingPlaybackTypesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(CastingPlaybackTypes)) callconv(.winapi) HRESULT,
        CreateCastingConnection: *const fn(self: *anyopaque, _r: **CastingConnection) callconv(.winapi) HRESULT,
    };
};
pub const ICastingDevicePicker = extern struct {
    vtable: *const VTable,
    pub fn getFilter(self: *@This()) core.HResult!*CastingDevicePickerFilter {
        var _r: *CastingDevicePickerFilter = undefined;
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
    pub fn addCastingDeviceSelected(self: *@This(), handler: *TypedEventHandler(CastingDevicePicker,CastingDeviceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CastingDeviceSelected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCastingDeviceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CastingDeviceSelected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCastingDevicePickerDismissed(self: *@This(), handler: *TypedEventHandler(CastingDevicePicker,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CastingDevicePickerDismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCastingDevicePickerDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CastingDevicePickerDismissed(@ptrCast(self), token);
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
    pub fn Hide(self: *@This()) core.HResult!void {
        const _c = self.vtable.Hide(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingDevicePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcd39924-0591-49be-aacb-4b82ee756a95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Filter: *const fn(self: *anyopaque, _r: **CastingDevicePickerFilter) callconv(.winapi) HRESULT,
        get_Appearance: *const fn(self: *anyopaque, _r: **DevicePickerAppearance) callconv(.winapi) HRESULT,
        add_CastingDeviceSelected: *const fn(self: *anyopaque, handler: *TypedEventHandler(CastingDevicePicker,CastingDeviceSelectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CastingDeviceSelected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CastingDevicePickerDismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(CastingDevicePicker,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CastingDevicePickerDismissed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque, selection: Rect) callconv(.winapi) HRESULT,
        ShowWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement) callconv(.winapi) HRESULT,
        Hide: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICastingDevicePickerFilter = extern struct {
    vtable: *const VTable,
    pub fn getSupportsAudio(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsAudio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportsAudio(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsAudio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportsVideo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsVideo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportsVideo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsVideo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportsPictures(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsPictures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportsPictures(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsPictures(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportedCastingSources(self: *@This()) core.HResult!*IVector(CastingSource) {
        var _r: *IVector(CastingSource) = undefined;
        const _c = self.vtable.get_SupportedCastingSources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingDevicePickerFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be8c619c-b563-4354-ae33-9fdaad8c6291";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportsAudio: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SupportsAudio: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportsVideo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SupportsVideo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportsPictures: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SupportsPictures: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportedCastingSources: *const fn(self: *anyopaque, _r: **IVector(CastingSource)) callconv(.winapi) HRESULT,
    };
};
pub const ICastingDeviceSelectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSelectedCastingDevice(self: *@This()) core.HResult!*CastingDevice {
        var _r: *CastingDevice = undefined;
        const _c = self.vtable.get_SelectedCastingDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingDeviceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc439e86-dd57-4d0d-9400-af45e4fb3663";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedCastingDevice: *const fn(self: *anyopaque, _r: **CastingDevice) callconv(.winapi) HRESULT,
    };
};
pub const ICastingDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), ty: CastingPlaybackTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromCastingSourceAsync(self: *@This(), castingSource: *CastingSource) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetDeviceSelectorFromCastingSourceAsync(@ptrCast(self), castingSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), value: HSTRING) core.HResult!*IAsyncOperation(CastingDevice) {
        var _r: *IAsyncOperation(CastingDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeviceInfoSupportsCastingAsync(self: *@This(), device: *DeviceInformation) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.DeviceInfoSupportsCastingAsync(@ptrCast(self), device, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7d958d7-4d13-4237-a365-4c4f6a4cfd2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, ty: CastingPlaybackTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromCastingSourceAsync: *const fn(self: *anyopaque, castingSource: *CastingSource, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, value: HSTRING, _r: **IAsyncOperation(CastingDevice)) callconv(.winapi) HRESULT,
        DeviceInfoSupportsCastingAsync: *const fn(self: *anyopaque, device: *DeviceInformation, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ICastingSource = extern struct {
    vtable: *const VTable,
    pub fn getPreferredSourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_PreferredSourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredSourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_PreferredSourceUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Casting.ICastingSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f429ea72-3467-47e6-a027-522923e9d727";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferredSourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_PreferredSourceUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IInspectable = @import("../Foundation.zig").IInspectable;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const DevicePickerAppearance = @import("../Devices/Enumeration.zig").DevicePickerAppearance;
const Placement = @import("../UI/Popups.zig").Placement;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
