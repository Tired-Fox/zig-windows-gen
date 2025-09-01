pub const DeleteSmsMessageOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncActionCompletedHandler) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncActionCompletedHandler {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.DeleteSmsMessageOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncAction.GUID;
    pub const IID: Guid = IAsyncAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncAction.SIGNATURE);
};
pub const DeleteSmsMessagesOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncActionCompletedHandler) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncActionCompletedHandler {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.DeleteSmsMessagesOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncAction.GUID;
    pub const IID: Guid = IAsyncAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncAction.SIGNATURE);
};
pub const GetSmsDeviceOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncOperationCompletedHandler(SmsDevice)) core.HResult!void {
        const this: *IAsyncOperation(SmsDevice) = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationCompletedHandler(SmsDevice) {
        const this: *IAsyncOperation(SmsDevice) = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.GetSmsDeviceOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncOperation.GUID;
    pub const IID: Guid = IAsyncOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncOperation.SIGNATURE);
};
pub const GetSmsMessageOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncOperationCompletedHandler(ISmsMessage)) core.HResult!void {
        const this: *IAsyncOperation(ISmsMessage) = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationCompletedHandler(ISmsMessage) {
        const this: *IAsyncOperation(ISmsMessage) = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.GetSmsMessageOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncOperation.GUID;
    pub const IID: Guid = IAsyncOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncOperation.SIGNATURE);
};
pub const GetSmsMessagesOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putProgress(self: *@This(), handler: *AsyncOperationProgressHandler(IVectorView(ISmsMessage),i32)) core.HResult!void {
        const this: *IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) = @ptrCast(self);
        return try this.putProgress(handler);
    }
    pub fn getProgress(self: *@This()) core.HResult!*AsyncOperationProgressHandler(IVectorView(ISmsMessage),i32) {
        const this: *IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn putCompleted(self: *@This(), handler: *AsyncOperationWithProgressCompletedHandler(IVectorView(ISmsMessage),i32)) core.HResult!void {
        const this: *IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationWithProgressCompletedHandler(IVectorView(ISmsMessage),i32) {
        const this: *IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.GetSmsMessagesOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncOperationWithProgress.GUID;
    pub const IID: Guid = IAsyncOperationWithProgress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncOperationWithProgress.SIGNATURE);
};
pub const ISmsBinaryMessage = extern struct {
    vtable: *const VTable,
    pub fn getFormat(self: *@This()) core.HResult!SmsDataFormat {
        var _r: SmsDataFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormat(self: *@This(), value: SmsDataFormat) core.HResult!void {
        const _c = self.vtable.put_Format(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetData(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetData(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsBinaryMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bf4e813-3b53-4c6e-b61a-d86a63755650";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *SmsDataFormat) callconv(.winapi) HRESULT,
        put_Format: *const fn(self: *anyopaque, value: SmsDataFormat) callconv(.winapi) HRESULT,
        GetData: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        SetData: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const ISmsDevice = extern struct {
    vtable: *const VTable,
    pub fn SendMessageAsync(self: *@This(), message: *ISmsMessage) core.HResult!*SendSmsMessageOperation {
        var _r: *SendSmsMessageOperation = undefined;
        const _c = self.vtable.SendMessageAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CalculateLength(self: *@This(), message: *SmsTextMessage) core.HResult!SmsEncodedLength {
        var _r: SmsEncodedLength = undefined;
        const _c = self.vtable.CalculateLength(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountPhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var _r: CellularClass = undefined;
        const _c = self.vtable.get_CellularClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageStore(self: *@This()) core.HResult!*SmsDeviceMessageStore {
        var _r: *SmsDeviceMessageStore = undefined;
        const _c = self.vtable.get_MessageStore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceStatus(self: *@This()) core.HResult!SmsDeviceStatus {
        var _r: SmsDeviceStatus = undefined;
        const _c = self.vtable.get_DeviceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSmsMessageReceived(self: *@This(), eventHandler: *SmsMessageReceivedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SmsMessageReceived(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSmsMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SmsMessageReceived(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSmsDeviceStatusChanged(self: *@This(), eventHandler: *SmsDeviceStatusChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SmsDeviceStatusChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSmsDeviceStatusChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SmsDeviceStatusChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "091791ed-872b-4eec-9c72-ab11627b34ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendMessageAsync: *const fn(self: *anyopaque, message: *ISmsMessage, _r: **SendSmsMessageOperation) callconv(.winapi) HRESULT,
        CalculateLength: *const fn(self: *anyopaque, message: *SmsTextMessage, _r: *SmsEncodedLength) callconv(.winapi) HRESULT,
        get_AccountPhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CellularClass: *const fn(self: *anyopaque, _r: *CellularClass) callconv(.winapi) HRESULT,
        get_MessageStore: *const fn(self: *anyopaque, _r: **SmsDeviceMessageStore) callconv(.winapi) HRESULT,
        get_DeviceStatus: *const fn(self: *anyopaque, _r: *SmsDeviceStatus) callconv(.winapi) HRESULT,
        add_SmsMessageReceived: *const fn(self: *anyopaque, eventHandler: *SmsMessageReceivedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SmsMessageReceived: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SmsDeviceStatusChanged: *const fn(self: *anyopaque, eventHandler: *SmsDeviceStatusChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SmsDeviceStatusChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISmsDeviceMessageStore = extern struct {
    vtable: *const VTable,
    pub fn DeleteMessageAsync(self: *@This(), messageId: u32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteMessageAsync(@ptrCast(self), messageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteMessagesAsync(self: *@This(), messageFilter: SmsMessageFilter) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteMessagesAsync(@ptrCast(self), messageFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageAsync(self: *@This(), messageId: u32) core.HResult!*IAsyncOperation(ISmsMessage) {
        var _r: *IAsyncOperation(ISmsMessage) = undefined;
        const _c = self.vtable.GetMessageAsync(@ptrCast(self), messageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessagesAsync(self: *@This(), messageFilter: SmsMessageFilter) core.HResult!*IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) {
        var _r: *IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) = undefined;
        const _c = self.vtable.GetMessagesAsync(@ptrCast(self), messageFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxMessages(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxMessages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsDeviceMessageStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9889f253-f188-4427-8d54-ce0c2423c5c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DeleteMessageAsync: *const fn(self: *anyopaque, messageId: u32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteMessagesAsync: *const fn(self: *anyopaque, messageFilter: SmsMessageFilter, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetMessageAsync: *const fn(self: *anyopaque, messageId: u32, _r: **IAsyncOperation(ISmsMessage)) callconv(.winapi) HRESULT,
        GetMessagesAsync: *const fn(self: *anyopaque, messageFilter: SmsMessageFilter, _r: **IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32)) callconv(.winapi) HRESULT,
        get_MaxMessages: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ISmsDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(SmsDevice) {
        var _r: *IAsyncOperation(SmsDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(SmsDevice) {
        var _r: *IAsyncOperation(SmsDevice) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f88d07ea-d815-4dd1-a234-4520ce4604a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(SmsDevice)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmsDevice)) callconv(.winapi) HRESULT,
    };
};
pub const ISmsDeviceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromNetworkAccountIdAsync(self: *@This(), networkAccountId: HSTRING) core.HResult!*IAsyncOperation(SmsDevice) {
        var _r: *IAsyncOperation(SmsDevice) = undefined;
        const _c = self.vtable.FromNetworkAccountIdAsync(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsDeviceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ca11c87-0873-4caf-8a7d-bd471e8586d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromNetworkAccountIdAsync: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: **IAsyncOperation(SmsDevice)) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessage = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var _r: SmsMessageClass = undefined;
        const _c = self.vtable.get_MessageClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed3c5e28-6984-4b07-811d-8d5906ed3cea";
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
        get_MessageClass: *const fn(self: *anyopaque, _r: *SmsMessageClass) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessageReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTextMessage(self: *@This()) core.HResult!*SmsTextMessage {
        var _r: *SmsTextMessage = undefined;
        const _c = self.vtable.get_TextMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBinaryMessage(self: *@This()) core.HResult!*SmsBinaryMessage {
        var _r: *SmsBinaryMessage = undefined;
        const _c = self.vtable.get_BinaryMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08e80a98-b8e5-41c1-a3d8-d3abfae22675";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextMessage: *const fn(self: *anyopaque, _r: **SmsTextMessage) callconv(.winapi) HRESULT,
        get_BinaryMessage: *const fn(self: *anyopaque, _r: **SmsBinaryMessage) callconv(.winapi) HRESULT,
    };
};
pub const ISmsReceivedEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MessageIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsReceivedEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bb50f15-e46d-4c82-847d-5a0304c1d53d";
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
        get_MessageIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ISmsReceivedEventDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var _r: SmsMessageClass = undefined;
        const _c = self.vtable.get_MessageClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBinaryMessage(self: *@This()) core.HResult!*SmsBinaryMessage {
        var _r: *SmsBinaryMessage = undefined;
        const _c = self.vtable.get_BinaryMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsReceivedEventDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40e05c86-a7b4-4771-9ae7-0b5ffb12c03a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageClass: *const fn(self: *anyopaque, _r: *SmsMessageClass) callconv(.winapi) HRESULT,
        get_BinaryMessage: *const fn(self: *anyopaque, _r: **SmsBinaryMessage) callconv(.winapi) HRESULT,
    };
};
pub const ISmsTextMessage = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPartReferenceId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PartReferenceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPartNumber(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PartNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPartCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PartCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Body(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEncoding(self: *@This()) core.HResult!SmsEncoding {
        var _r: SmsEncoding = undefined;
        const _c = self.vtable.get_Encoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEncoding(self: *@This(), value: SmsEncoding) core.HResult!void {
        const _c = self.vtable.put_Encoding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ToBinaryMessages(self: *@This(), format: SmsDataFormat) core.HResult!*IVectorView(ISmsBinaryMessage) {
        var _r: *IVectorView(ISmsBinaryMessage) = undefined;
        const _c = self.vtable.ToBinaryMessages(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsTextMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d61c904c-a495-487f-9a6f-971548c5bc9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_PartReferenceId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PartNumber: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PartCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Body: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Encoding: *const fn(self: *anyopaque, _r: *SmsEncoding) callconv(.winapi) HRESULT,
        put_Encoding: *const fn(self: *anyopaque, value: SmsEncoding) callconv(.winapi) HRESULT,
        ToBinaryMessages: *const fn(self: *anyopaque, format: SmsDataFormat, _r: **IVectorView(ISmsBinaryMessage)) callconv(.winapi) HRESULT,
    };
};
pub const ISmsTextMessageStatics = extern struct {
    vtable: *const VTable,
    pub fn FromBinaryMessage(self: *@This(), binaryMessage: *SmsBinaryMessage) core.HResult!*SmsTextMessage {
        var _r: *SmsTextMessage = undefined;
        const _c = self.vtable.FromBinaryMessage(@ptrCast(self), binaryMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromBinaryData(self: *@This(), format: SmsDataFormat, value: [*]u8) core.HResult!*SmsTextMessage {
        var _r: *SmsTextMessage = undefined;
        const _c = self.vtable.FromBinaryData(@ptrCast(self), format, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsTextMessageStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f68c5ed-3ccc-47a3-8c55-380d3b010892";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromBinaryMessage: *const fn(self: *anyopaque, binaryMessage: *SmsBinaryMessage, _r: **SmsTextMessage) callconv(.winapi) HRESULT,
        FromBinaryData: *const fn(self: *anyopaque, format: SmsDataFormat, value: [*]u8, _r: **SmsTextMessage) callconv(.winapi) HRESULT,
    };
};
pub const SendSmsMessageOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncActionCompletedHandler) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncActionCompletedHandler {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SendSmsMessageOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncAction.GUID;
    pub const IID: Guid = IAsyncAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncAction.SIGNATURE);
};
pub const SmsBinaryMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormat(self: *@This()) core.HResult!SmsDataFormat {
        const this: *ISmsBinaryMessage = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: SmsDataFormat) core.HResult!void {
        const this: *ISmsBinaryMessage = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn GetData(self: *@This()) core.HResult![*]u8 {
        const this: *ISmsBinaryMessage = @ptrCast(self);
        return try this.GetData();
    }
    pub fn SetData(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *ISmsBinaryMessage = @ptrCast(self);
        return try this.SetData(value);
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*ISmsMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmsBinaryMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsBinaryMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsBinaryMessage.GUID;
    pub const IID: Guid = ISmsBinaryMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsBinaryMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmsDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendMessageAsync(self: *@This(), message: *ISmsMessage) core.HResult!*SendSmsMessageOperation {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.SendMessageAsync(message);
    }
    pub fn CalculateLength(self: *@This(), message: *SmsTextMessage) core.HResult!SmsEncodedLength {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.CalculateLength(message);
    }
    pub fn getAccountPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.getAccountPhoneNumber();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.getCellularClass();
    }
    pub fn getMessageStore(self: *@This()) core.HResult!*SmsDeviceMessageStore {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.getMessageStore();
    }
    pub fn getDeviceStatus(self: *@This()) core.HResult!SmsDeviceStatus {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.getDeviceStatus();
    }
    pub fn addSmsMessageReceived(self: *@This(), eventHandler: *SmsMessageReceivedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.addSmsMessageReceived(eventHandler);
    }
    pub fn removeSmsMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.removeSmsMessageReceived(eventCookie);
    }
    pub fn addSmsDeviceStatusChanged(self: *@This(), eventHandler: *SmsDeviceStatusChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.addSmsDeviceStatusChanged(eventHandler);
    }
    pub fn removeSmsDeviceStatusChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *ISmsDevice = @ptrCast(self);
        return try this.removeSmsDeviceStatusChanged(eventCookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromNetworkAccountIdAsync(networkAccountId: HSTRING) core.HResult!*IAsyncOperation(SmsDevice) {
        const _f = @This().ISmsDeviceStatics2Cache.get();
        return try _f.FromNetworkAccountIdAsync(networkAccountId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().ISmsDeviceStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(SmsDevice) {
        const _f = @This().ISmsDeviceStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(SmsDevice) {
        const _f = @This().ISmsDeviceStaticsCache.get();
        return try _f.GetDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsDevice.GUID;
    pub const IID: Guid = ISmsDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsDevice.SIGNATURE);
    var _ISmsDeviceStatics2Cache: FactoryCache(ISmsDeviceStatics2, RUNTIME_NAME) = .{};
    var _ISmsDeviceStaticsCache: FactoryCache(ISmsDeviceStatics, RUNTIME_NAME) = .{};
};
pub const SmsDeviceMessageStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn DeleteMessageAsync(self: *@This(), messageId: u32) core.HResult!*IAsyncAction {
        const this: *ISmsDeviceMessageStore = @ptrCast(self);
        return try this.DeleteMessageAsync(messageId);
    }
    pub fn DeleteMessagesAsync(self: *@This(), messageFilter: SmsMessageFilter) core.HResult!*IAsyncAction {
        const this: *ISmsDeviceMessageStore = @ptrCast(self);
        return try this.DeleteMessagesAsync(messageFilter);
    }
    pub fn GetMessageAsync(self: *@This(), messageId: u32) core.HResult!*IAsyncOperation(ISmsMessage) {
        const this: *ISmsDeviceMessageStore = @ptrCast(self);
        return try this.GetMessageAsync(messageId);
    }
    pub fn GetMessagesAsync(self: *@This(), messageFilter: SmsMessageFilter) core.HResult!*IAsyncOperationWithProgress(IVectorView(ISmsMessage),i32) {
        const this: *ISmsDeviceMessageStore = @ptrCast(self);
        return try this.GetMessagesAsync(messageFilter);
    }
    pub fn getMaxMessages(self: *@This()) core.HResult!u32 {
        const this: *ISmsDeviceMessageStore = @ptrCast(self);
        return try this.getMaxMessages();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsDeviceMessageStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsDeviceMessageStore.GUID;
    pub const IID: Guid = ISmsDeviceMessageStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsDeviceMessageStore.SIGNATURE);
};
pub const SmsDeviceStatusChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *SmsDevice) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *SmsDevice) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *SmsDevice) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsDeviceStatusChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "982b1162-3dd7-4618-af89-0c272d5d06d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *SmsDevice) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SmsMessageFilter = enum(i32) {
    All = 0,
    Unread = 1,
    Read = 2,
    Sent = 3,
    Draft = 4,
};
pub const SmsMessageReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextMessage(self: *@This()) core.HResult!*SmsTextMessage {
        const this: *ISmsMessageReceivedEventArgs = @ptrCast(self);
        return try this.getTextMessage();
    }
    pub fn getBinaryMessage(self: *@This()) core.HResult!*SmsBinaryMessage {
        const this: *ISmsMessageReceivedEventArgs = @ptrCast(self);
        return try this.getBinaryMessage();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsMessageReceivedEventArgs.GUID;
    pub const IID: Guid = ISmsMessageReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsMessageReceivedEventArgs.SIGNATURE);
};
pub const SmsMessageReceivedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *SmsDevice, e: *SmsMessageReceivedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *SmsDevice, e: *SmsMessageReceivedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *SmsDevice, e: *SmsMessageReceivedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsMessageReceivedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b7ad409-ec2d-47ce-a253-732beeebcacd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *SmsDevice, e: *SmsMessageReceivedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SmsReceivedEventDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsReceivedEventDetails = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getMessageIndex(self: *@This()) core.HResult!u32 {
        const this: *ISmsReceivedEventDetails = @ptrCast(self);
        return try this.getMessageIndex();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsReceivedEventDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsReceivedEventDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getBinaryMessage(self: *@This()) core.HResult!*SmsBinaryMessage {
        var this: ?*ISmsReceivedEventDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsReceivedEventDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBinaryMessage();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsReceivedEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsReceivedEventDetails.GUID;
    pub const IID: Guid = ISmsReceivedEventDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsReceivedEventDetails.SIGNATURE);
};
pub const SmsTextMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getPartReferenceId(self: *@This()) core.HResult!u32 {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getPartReferenceId();
    }
    pub fn getPartNumber(self: *@This()) core.HResult!u32 {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getPartNumber();
    }
    pub fn getPartCount(self: *@This()) core.HResult!u32 {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getPartCount();
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.putFrom(value);
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.putBody(value);
    }
    pub fn getEncoding(self: *@This()) core.HResult!SmsEncoding {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.getEncoding();
    }
    pub fn putEncoding(self: *@This(), value: SmsEncoding) core.HResult!void {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.putEncoding(value);
    }
    pub fn ToBinaryMessages(self: *@This(), format: SmsDataFormat) core.HResult!*IVectorView(ISmsBinaryMessage) {
        const this: *ISmsTextMessage = @ptrCast(self);
        return try this.ToBinaryMessages(format);
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*ISmsMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmsTextMessage.IID)));
    }
    pub fn FromBinaryMessage(binaryMessage: *SmsBinaryMessage) core.HResult!*SmsTextMessage {
        const _f = @This().ISmsTextMessageStaticsCache.get();
        return try _f.FromBinaryMessage(binaryMessage);
    }
    pub fn FromBinaryData(format: SmsDataFormat, value: [*]u8) core.HResult!*SmsTextMessage {
        const _f = @This().ISmsTextMessageStaticsCache.get();
        return try _f.FromBinaryData(format, value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsTextMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsTextMessage.GUID;
    pub const IID: Guid = ISmsTextMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsTextMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISmsTextMessageStaticsCache: FactoryCache(ISmsTextMessageStatics, RUNTIME_NAME) = .{};
};
pub const CellularClass = enum(i32) {
    None = 0,
    Gsm = 1,
    Cdma = 2,
};
pub const ISmsAppMessage = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Body(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallbackNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallbackNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCallbackNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CallbackNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDeliveryNotificationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDeliveryNotificationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDeliveryNotificationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDeliveryNotificationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRetryAttemptCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RetryAttemptCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRetryAttemptCount(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_RetryAttemptCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEncoding(self: *@This()) core.HResult!SmsEncoding {
        var _r: SmsEncoding = undefined;
        const _c = self.vtable.get_Encoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEncoding(self: *@This(), value: SmsEncoding) core.HResult!void {
        const _c = self.vtable.put_Encoding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPortNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PortNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPortNumber(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_PortNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTeleserviceId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TeleserviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTeleserviceId(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TeleserviceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProtocolId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProtocolId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtocolId(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ProtocolId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBinaryBody(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_BinaryBody(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBinaryBody(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_BinaryBody(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsAppMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8bb8494-d3a0-4a0a-86d7-291033a8cf54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Body: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CallbackNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CallbackNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsDeliveryNotificationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDeliveryNotificationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RetryAttemptCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_RetryAttemptCount: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Encoding: *const fn(self: *anyopaque, _r: *SmsEncoding) callconv(.winapi) HRESULT,
        put_Encoding: *const fn(self: *anyopaque, value: SmsEncoding) callconv(.winapi) HRESULT,
        get_PortNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_PortNumber: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_TeleserviceId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TeleserviceId: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ProtocolId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ProtocolId: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_BinaryBody: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_BinaryBody: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISmsBroadcastMessage = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannel(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeographicalScope(self: *@This()) core.HResult!SmsGeographicalScope {
        var _r: SmsGeographicalScope = undefined;
        const _c = self.vtable.get_GeographicalScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MessageCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_UpdateNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBroadcastType(self: *@This()) core.HResult!SmsBroadcastType {
        var _r: SmsBroadcastType = undefined;
        const _c = self.vtable.get_BroadcastType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEmergencyAlert(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEmergencyAlert(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUserPopupRequested(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUserPopupRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsBroadcastMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75aebbf1-e4b7-4874-a09c-2956e592f957";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_GeographicalScope: *const fn(self: *anyopaque, _r: *SmsGeographicalScope) callconv(.winapi) HRESULT,
        get_MessageCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_UpdateNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_BroadcastType: *const fn(self: *anyopaque, _r: *SmsBroadcastType) callconv(.winapi) HRESULT,
        get_IsEmergencyAlert: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUserPopupRequested: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmsDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getSmscAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SmscAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmscAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SmscAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ParentDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountPhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var _r: CellularClass = undefined;
        const _c = self.vtable.get_CellularClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceStatus(self: *@This()) core.HResult!SmsDeviceStatus {
        var _r: SmsDeviceStatus = undefined;
        const _c = self.vtable.get_DeviceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CalculateLength(self: *@This(), message: *ISmsMessageBase) core.HResult!SmsEncodedLength {
        var _r: SmsEncodedLength = undefined;
        const _c = self.vtable.CalculateLength(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendMessageAndGetResultAsync(self: *@This(), message: *ISmsMessageBase) core.HResult!*IAsyncOperation(SmsSendMessageResult) {
        var _r: *IAsyncOperation(SmsSendMessageResult) = undefined;
        const _c = self.vtable.SendMessageAndGetResultAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDeviceStatusChanged(self: *@This(), eventHandler: *TypedEventHandler(SmsDevice2,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeviceStatusChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeviceStatusChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeviceStatusChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd8a5c13-e522-46cb-b8d5-9ead30fb6c47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmscAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SmscAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ParentDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AccountPhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CellularClass: *const fn(self: *anyopaque, _r: *CellularClass) callconv(.winapi) HRESULT,
        get_DeviceStatus: *const fn(self: *anyopaque, _r: *SmsDeviceStatus) callconv(.winapi) HRESULT,
        CalculateLength: *const fn(self: *anyopaque, message: *ISmsMessageBase, _r: *SmsEncodedLength) callconv(.winapi) HRESULT,
        SendMessageAndGetResultAsync: *const fn(self: *anyopaque, message: *ISmsMessageBase, _r: **IAsyncOperation(SmsSendMessageResult)) callconv(.winapi) HRESULT,
        add_DeviceStatusChanged: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(SmsDevice2,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeviceStatusChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISmsDevice2Statics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*SmsDevice2 {
        var _r: *SmsDevice2 = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*SmsDevice2 {
        var _r: *SmsDevice2 = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromParentId(self: *@This(), parentDeviceId: HSTRING) core.HResult!*SmsDevice2 {
        var _r: *SmsDevice2 = undefined;
        const _c = self.vtable.FromParentId(@ptrCast(self), parentDeviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsDevice2Statics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65c78325-1031-491e-8fb6-ef9991afe363";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **SmsDevice2) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SmsDevice2) callconv(.winapi) HRESULT,
        FromParentId: *const fn(self: *anyopaque, parentDeviceId: HSTRING, _r: **SmsDevice2) callconv(.winapi) HRESULT,
    };
};
pub const ISmsFilterRule = extern struct {
    vtable: *const VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var _r: SmsMessageType = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImsiPrefixes(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ImsiPrefixes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DeviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSenderNumbers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SenderNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextMessagePrefixes(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_TextMessagePrefixes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPortNumbers(self: *@This()) core.HResult!*IVector(i32) {
        var _r: *IVector(i32) = undefined;
        const _c = self.vtable.get_PortNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var _r: CellularClass = undefined;
        const _c = self.vtable.get_CellularClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCellularClass(self: *@This(), value: CellularClass) core.HResult!void {
        const _c = self.vtable.put_CellularClass(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProtocolIds(self: *@This()) core.HResult!*IVector(i32) {
        var _r: *IVector(i32) = undefined;
        const _c = self.vtable.get_ProtocolIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTeleserviceIds(self: *@This()) core.HResult!*IVector(i32) {
        var _r: *IVector(i32) = undefined;
        const _c = self.vtable.get_TeleserviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWapApplicationIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_WapApplicationIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWapContentTypes(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_WapContentTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBroadcastTypes(self: *@This()) core.HResult!*IVector(SmsBroadcastType) {
        var _r: *IVector(SmsBroadcastType) = undefined;
        const _c = self.vtable.get_BroadcastTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBroadcastChannels(self: *@This()) core.HResult!*IVector(i32) {
        var _r: *IVector(i32) = undefined;
        const _c = self.vtable.get_BroadcastChannels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsFilterRule";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40e32fae-b049-4fbc-afe9-e2a610eff55c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *SmsMessageType) callconv(.winapi) HRESULT,
        get_ImsiPrefixes: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_DeviceIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_SenderNumbers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_TextMessagePrefixes: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_PortNumbers: *const fn(self: *anyopaque, _r: **IVector(i32)) callconv(.winapi) HRESULT,
        get_CellularClass: *const fn(self: *anyopaque, _r: *CellularClass) callconv(.winapi) HRESULT,
        put_CellularClass: *const fn(self: *anyopaque, value: CellularClass) callconv(.winapi) HRESULT,
        get_ProtocolIds: *const fn(self: *anyopaque, _r: **IVector(i32)) callconv(.winapi) HRESULT,
        get_TeleserviceIds: *const fn(self: *anyopaque, _r: **IVector(i32)) callconv(.winapi) HRESULT,
        get_WapApplicationIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_WapContentTypes: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_BroadcastTypes: *const fn(self: *anyopaque, _r: **IVector(SmsBroadcastType)) callconv(.winapi) HRESULT,
        get_BroadcastChannels: *const fn(self: *anyopaque, _r: **IVector(i32)) callconv(.winapi) HRESULT,
    };
};
pub const ISmsFilterRuleFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFilterRule(self: *@This(), messageType: SmsMessageType) core.HResult!*SmsFilterRule {
        var _r: *SmsFilterRule = undefined;
        const _c = self.vtable.CreateFilterRule(@ptrCast(self), messageType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsFilterRuleFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00c36508-6296-4f29-9aad-8920ceba3ce8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFilterRule: *const fn(self: *anyopaque, messageType: SmsMessageType, _r: **SmsFilterRule) callconv(.winapi) HRESULT,
    };
};
pub const ISmsFilterRules = extern struct {
    vtable: *const VTable,
    pub fn getActionType(self: *@This()) core.HResult!SmsFilterActionType {
        var _r: SmsFilterActionType = undefined;
        const _c = self.vtable.get_ActionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRules(self: *@This()) core.HResult!*IVector(SmsFilterRule) {
        var _r: *IVector(SmsFilterRule) = undefined;
        const _c = self.vtable.get_Rules(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsFilterRules";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e47eafb-79cd-4881-9894-55a4135b23fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActionType: *const fn(self: *anyopaque, _r: *SmsFilterActionType) callconv(.winapi) HRESULT,
        get_Rules: *const fn(self: *anyopaque, _r: **IVector(SmsFilterRule)) callconv(.winapi) HRESULT,
    };
};
pub const ISmsFilterRulesFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFilterRules(self: *@This(), actionType: SmsFilterActionType) core.HResult!*SmsFilterRules {
        var _r: *SmsFilterRules = undefined;
        const _c = self.vtable.CreateFilterRules(@ptrCast(self), actionType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsFilterRulesFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a09924ed-6e2e-4530-9fde-465d02eed00e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFilterRules: *const fn(self: *anyopaque, actionType: SmsFilterActionType, _r: **SmsFilterRules) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessageBase = extern struct {
    vtable: *const VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var _r: SmsMessageType = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var _r: CellularClass = undefined;
        const _c = self.vtable.get_CellularClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var _r: SmsMessageClass = undefined;
        const _c = self.vtable.get_MessageClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SimIccId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsMessageBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *SmsMessageType) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CellularClass: *const fn(self: *anyopaque, _r: *CellularClass) callconv(.winapi) HRESULT,
        get_MessageClass: *const fn(self: *anyopaque, _r: *SmsMessageClass) callconv(.winapi) HRESULT,
        get_SimIccId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessageReceivedTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var _r: SmsMessageType = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextMessage(self: *@This()) core.HResult!*SmsTextMessage2 {
        var _r: *SmsTextMessage2 = undefined;
        const _c = self.vtable.get_TextMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWapMessage(self: *@This()) core.HResult!*SmsWapMessage {
        var _r: *SmsWapMessage = undefined;
        const _c = self.vtable.get_WapMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppMessage(self: *@This()) core.HResult!*SmsAppMessage {
        var _r: *SmsAppMessage = undefined;
        const _c = self.vtable.get_AppMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBroadcastMessage(self: *@This()) core.HResult!*SmsBroadcastMessage {
        var _r: *SmsBroadcastMessage = undefined;
        const _c = self.vtable.get_BroadcastMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVoicemailMessage(self: *@This()) core.HResult!*SmsVoicemailMessage {
        var _r: *SmsVoicemailMessage = undefined;
        const _c = self.vtable.get_VoicemailMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatusMessage(self: *@This()) core.HResult!*SmsStatusMessage {
        var _r: *SmsStatusMessage = undefined;
        const _c = self.vtable.get_StatusMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Drop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Drop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Accept(self: *@This()) core.HResult!void {
        const _c = self.vtable.Accept(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bcfcbd4-2657-4128-ad5f-e3877132bdb1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *SmsMessageType) callconv(.winapi) HRESULT,
        get_TextMessage: *const fn(self: *anyopaque, _r: **SmsTextMessage2) callconv(.winapi) HRESULT,
        get_WapMessage: *const fn(self: *anyopaque, _r: **SmsWapMessage) callconv(.winapi) HRESULT,
        get_AppMessage: *const fn(self: *anyopaque, _r: **SmsAppMessage) callconv(.winapi) HRESULT,
        get_BroadcastMessage: *const fn(self: *anyopaque, _r: **SmsBroadcastMessage) callconv(.winapi) HRESULT,
        get_VoicemailMessage: *const fn(self: *anyopaque, _r: **SmsVoicemailMessage) callconv(.winapi) HRESULT,
        get_StatusMessage: *const fn(self: *anyopaque, _r: **SmsStatusMessage) callconv(.winapi) HRESULT,
        Drop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Accept: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessageRegistration = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Unregister(self: *@This()) core.HResult!void {
        const _c = self.vtable.Unregister(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMessageReceived(self: *@This(), eventHandler: *TypedEventHandler(SmsMessageRegistration,SmsMessageReceivedTriggerDetails)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceived(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceived(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsMessageRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1720503e-f34f-446b-83b3-0ff19923b409";
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
        Unregister: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_MessageReceived: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(SmsMessageRegistration,SmsMessageReceivedTriggerDetails), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceived: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessageRegistrationStatics = extern struct {
    vtable: *const VTable,
    pub fn getAllRegistrations(self: *@This()) core.HResult!*IVectorView(SmsMessageRegistration) {
        var _r: *IVectorView(SmsMessageRegistration) = undefined;
        const _c = self.vtable.get_AllRegistrations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Register(self: *@This(), id: HSTRING, filterRules: *SmsFilterRules) core.HResult!*SmsMessageRegistration {
        var _r: *SmsMessageRegistration = undefined;
        const _c = self.vtable.Register(@ptrCast(self), id, filterRules, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsMessageRegistrationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63a05464-2898-4778-a03c-6f994907d63a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllRegistrations: *const fn(self: *anyopaque, _r: **IVectorView(SmsMessageRegistration)) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, id: HSTRING, filterRules: *SmsFilterRules, _r: **SmsMessageRegistration) callconv(.winapi) HRESULT,
    };
};
pub const ISmsSendMessageResult = extern struct {
    vtable: *const VTable,
    pub fn getIsSuccessful(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuccessful(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageReferenceNumbers(self: *@This()) core.HResult!*IVectorView(i32) {
        var _r: *IVectorView(i32) = undefined;
        const _c = self.vtable.get_MessageReferenceNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var _r: CellularClass = undefined;
        const _c = self.vtable.get_CellularClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModemErrorCode(self: *@This()) core.HResult!SmsModemErrorCode {
        var _r: SmsModemErrorCode = undefined;
        const _c = self.vtable.get_ModemErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsErrorTransient(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsErrorTransient(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkCauseCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NetworkCauseCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportFailureCause(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TransportFailureCause(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsSendMessageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db139af2-78c9-4feb-9622-452328088d62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSuccessful: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MessageReferenceNumbers: *const fn(self: *anyopaque, _r: **IVectorView(i32)) callconv(.winapi) HRESULT,
        get_CellularClass: *const fn(self: *anyopaque, _r: *CellularClass) callconv(.winapi) HRESULT,
        get_ModemErrorCode: *const fn(self: *anyopaque, _r: *SmsModemErrorCode) callconv(.winapi) HRESULT,
        get_IsErrorTransient: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NetworkCauseCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_TransportFailureCause: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ISmsStatusMessage = extern struct {
    vtable: *const VTable,
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageReferenceNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MessageReferenceNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceCenterTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ServiceCenterTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDischargeTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DischargeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsStatusMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6d28342-b70b-4677-9379-c9783fdff8f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MessageReferenceNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ServiceCenterTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_DischargeTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const ISmsTextMessage2 = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Body(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEncoding(self: *@This()) core.HResult!SmsEncoding {
        var _r: SmsEncoding = undefined;
        const _c = self.vtable.get_Encoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEncoding(self: *@This(), value: SmsEncoding) core.HResult!void {
        const _c = self.vtable.put_Encoding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallbackNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallbackNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCallbackNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CallbackNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDeliveryNotificationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDeliveryNotificationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDeliveryNotificationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDeliveryNotificationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRetryAttemptCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RetryAttemptCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRetryAttemptCount(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_RetryAttemptCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTeleserviceId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TeleserviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProtocolId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsTextMessage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22a0d893-4555-4755-b5a1-e7fd84955f8d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Body: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Encoding: *const fn(self: *anyopaque, _r: *SmsEncoding) callconv(.winapi) HRESULT,
        put_Encoding: *const fn(self: *anyopaque, value: SmsEncoding) callconv(.winapi) HRESULT,
        get_CallbackNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CallbackNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsDeliveryNotificationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDeliveryNotificationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RetryAttemptCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_RetryAttemptCount: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_TeleserviceId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ProtocolId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ISmsVoicemailMessage = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageCount(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MessageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsVoicemailMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MessageCount: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const ISmsWapMessage = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBinaryBody(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_BinaryBody(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaders(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.ISmsWapMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd937743-7a55-4d3b-9021-f22e022d09c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ApplicationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BinaryBody: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const SmsAppMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putBody(value);
    }
    pub fn getCallbackNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getCallbackNumber();
    }
    pub fn putCallbackNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putCallbackNumber(value);
    }
    pub fn getIsDeliveryNotificationEnabled(self: *@This()) core.HResult!bool {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getIsDeliveryNotificationEnabled();
    }
    pub fn putIsDeliveryNotificationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putIsDeliveryNotificationEnabled(value);
    }
    pub fn getRetryAttemptCount(self: *@This()) core.HResult!i32 {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getRetryAttemptCount();
    }
    pub fn putRetryAttemptCount(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putRetryAttemptCount(value);
    }
    pub fn getEncoding(self: *@This()) core.HResult!SmsEncoding {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getEncoding();
    }
    pub fn putEncoding(self: *@This(), value: SmsEncoding) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putEncoding(value);
    }
    pub fn getPortNumber(self: *@This()) core.HResult!i32 {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getPortNumber();
    }
    pub fn putPortNumber(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putPortNumber(value);
    }
    pub fn getTeleserviceId(self: *@This()) core.HResult!i32 {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getTeleserviceId();
    }
    pub fn putTeleserviceId(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putTeleserviceId(value);
    }
    pub fn getProtocolId(self: *@This()) core.HResult!i32 {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getProtocolId();
    }
    pub fn putProtocolId(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putProtocolId(value);
    }
    pub fn getBinaryBody(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.getBinaryBody();
    }
    pub fn putBinaryBody(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ISmsAppMessage = @ptrCast(self);
        return try this.putBinaryBody(value);
    }
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCellularClass();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimIccId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmsAppMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsAppMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsAppMessage.GUID;
    pub const IID: Guid = ISmsAppMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsAppMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmsBroadcastMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn getChannel(self: *@This()) core.HResult!i32 {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getGeographicalScope(self: *@This()) core.HResult!SmsGeographicalScope {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getGeographicalScope();
    }
    pub fn getMessageCode(self: *@This()) core.HResult!i32 {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getMessageCode();
    }
    pub fn getUpdateNumber(self: *@This()) core.HResult!i32 {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getUpdateNumber();
    }
    pub fn getBroadcastType(self: *@This()) core.HResult!SmsBroadcastType {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getBroadcastType();
    }
    pub fn getIsEmergencyAlert(self: *@This()) core.HResult!bool {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getIsEmergencyAlert();
    }
    pub fn getIsUserPopupRequested(self: *@This()) core.HResult!bool {
        const this: *ISmsBroadcastMessage = @ptrCast(self);
        return try this.getIsUserPopupRequested();
    }
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCellularClass();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimIccId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsBroadcastMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsBroadcastMessage.GUID;
    pub const IID: Guid = ISmsBroadcastMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsBroadcastMessage.SIGNATURE);
};
pub const SmsBroadcastType = enum(i32) {
    Other = 0,
    CmasPresidential = 1,
    CmasExtreme = 2,
    CmasSevere = 3,
    CmasAmber = 4,
    CmasTest = 5,
    EUAlert1 = 6,
    EUAlert2 = 7,
    EUAlert3 = 8,
    EUAlertAmber = 9,
    EUAlertInfo = 10,
    EtwsEarthquake = 11,
    EtwsTsunami = 12,
    EtwsTsunamiAndEarthquake = 13,
    LatAlertLocal = 14,
};
pub const SmsDataFormat = enum(i32) {
    Unknown = 0,
    CdmaSubmit = 1,
    GsmSubmit = 2,
    CdmaDeliver = 3,
    GsmDeliver = 4,
};
pub const SmsDevice2 = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSmscAddress(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.getSmscAddress();
    }
    pub fn putSmscAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.putSmscAddress(value);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getParentDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.getParentDeviceId();
    }
    pub fn getAccountPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.getAccountPhoneNumber();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.getCellularClass();
    }
    pub fn getDeviceStatus(self: *@This()) core.HResult!SmsDeviceStatus {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.getDeviceStatus();
    }
    pub fn CalculateLength(self: *@This(), message: *ISmsMessageBase) core.HResult!SmsEncodedLength {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.CalculateLength(message);
    }
    pub fn SendMessageAndGetResultAsync(self: *@This(), message: *ISmsMessageBase) core.HResult!*IAsyncOperation(SmsSendMessageResult) {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.SendMessageAndGetResultAsync(message);
    }
    pub fn addDeviceStatusChanged(self: *@This(), eventHandler: *TypedEventHandler(SmsDevice2,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.addDeviceStatusChanged(eventHandler);
    }
    pub fn removeDeviceStatusChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *ISmsDevice2 = @ptrCast(self);
        return try this.removeDeviceStatusChanged(eventCookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().ISmsDevice2StaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*SmsDevice2 {
        const _f = @This().ISmsDevice2StaticsCache.get();
        return try _f.FromId(deviceId);
    }
    pub fn GetDefault() core.HResult!*SmsDevice2 {
        const _f = @This().ISmsDevice2StaticsCache.get();
        return try _f.GetDefault();
    }
    pub fn FromParentId(parentDeviceId: HSTRING) core.HResult!*SmsDevice2 {
        const _f = @This().ISmsDevice2StaticsCache.get();
        return try _f.FromParentId(parentDeviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsDevice2.GUID;
    pub const IID: Guid = ISmsDevice2.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsDevice2.SIGNATURE);
    var _ISmsDevice2StaticsCache: FactoryCache(ISmsDevice2Statics, RUNTIME_NAME) = .{};
};
pub const SmsDeviceStatus = enum(i32) {
    Off = 0,
    Ready = 1,
    SimNotInserted = 2,
    BadSim = 3,
    DeviceFailure = 4,
    SubscriptionNotActivated = 5,
    DeviceLocked = 6,
    DeviceBlocked = 7,
};
pub const SmsEncodedLength = extern struct {
    SegmentCount: u32,
    CharacterCountLastSegment: u32,
    CharactersPerSegment: u32,
    ByteCountLastSegment: u32,
    BytesPerSegment: u32,
};
pub const SmsEncoding = enum(i32) {
    Unknown = 0,
    Optimal = 1,
    SevenBitAscii = 2,
    Unicode = 3,
    GsmSevenBit = 4,
    EightBit = 5,
    Latin = 6,
    Korean = 7,
    IA5 = 8,
    ShiftJis = 9,
    LatinHebrew = 10,
};
pub const SmsFilterActionType = enum(i32) {
    AcceptImmediately = 0,
    Drop = 1,
    Peek = 2,
    Accept = 3,
};
pub const SmsFilterRule = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getMessageType();
    }
    pub fn getImsiPrefixes(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getImsiPrefixes();
    }
    pub fn getDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getDeviceIds();
    }
    pub fn getSenderNumbers(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getSenderNumbers();
    }
    pub fn getTextMessagePrefixes(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getTextMessagePrefixes();
    }
    pub fn getPortNumbers(self: *@This()) core.HResult!*IVector(i32) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getPortNumbers();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getCellularClass();
    }
    pub fn putCellularClass(self: *@This(), value: CellularClass) core.HResult!void {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.putCellularClass(value);
    }
    pub fn getProtocolIds(self: *@This()) core.HResult!*IVector(i32) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getProtocolIds();
    }
    pub fn getTeleserviceIds(self: *@This()) core.HResult!*IVector(i32) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getTeleserviceIds();
    }
    pub fn getWapApplicationIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getWapApplicationIds();
    }
    pub fn getWapContentTypes(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getWapContentTypes();
    }
    pub fn getBroadcastTypes(self: *@This()) core.HResult!*IVector(SmsBroadcastType) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getBroadcastTypes();
    }
    pub fn getBroadcastChannels(self: *@This()) core.HResult!*IVector(i32) {
        const this: *ISmsFilterRule = @ptrCast(self);
        return try this.getBroadcastChannels();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFilterRule(messageType: SmsMessageType) core.HResult!*SmsFilterRule {
        const _f = @This().ISmsFilterRuleFactoryCache.get();
        return try _f.CreateFilterRule(messageType);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsFilterRule";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsFilterRule.GUID;
    pub const IID: Guid = ISmsFilterRule.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsFilterRule.SIGNATURE);
    var _ISmsFilterRuleFactoryCache: FactoryCache(ISmsFilterRuleFactory, RUNTIME_NAME) = .{};
};
pub const SmsFilterRules = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActionType(self: *@This()) core.HResult!SmsFilterActionType {
        const this: *ISmsFilterRules = @ptrCast(self);
        return try this.getActionType();
    }
    pub fn getRules(self: *@This()) core.HResult!*IVector(SmsFilterRule) {
        const this: *ISmsFilterRules = @ptrCast(self);
        return try this.getRules();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFilterRules(actionType: SmsFilterActionType) core.HResult!*SmsFilterRules {
        const _f = @This().ISmsFilterRulesFactoryCache.get();
        return try _f.CreateFilterRules(actionType);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsFilterRules";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsFilterRules.GUID;
    pub const IID: Guid = ISmsFilterRules.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsFilterRules.SIGNATURE);
    var _ISmsFilterRulesFactoryCache: FactoryCache(ISmsFilterRulesFactory, RUNTIME_NAME) = .{};
};
pub const SmsGeographicalScope = enum(i32) {
    None = 0,
    CellWithImmediateDisplay = 1,
    LocationArea = 2,
    Plmn = 3,
    Cell = 4,
};
pub const SmsMessageClass = enum(i32) {
    None = 0,
    Class0 = 1,
    Class1 = 2,
    Class2 = 3,
    Class3 = 4,
};
pub const SmsMessageReceivedTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getMessageType();
    }
    pub fn getTextMessage(self: *@This()) core.HResult!*SmsTextMessage2 {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getTextMessage();
    }
    pub fn getWapMessage(self: *@This()) core.HResult!*SmsWapMessage {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getWapMessage();
    }
    pub fn getAppMessage(self: *@This()) core.HResult!*SmsAppMessage {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getAppMessage();
    }
    pub fn getBroadcastMessage(self: *@This()) core.HResult!*SmsBroadcastMessage {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getBroadcastMessage();
    }
    pub fn getVoicemailMessage(self: *@This()) core.HResult!*SmsVoicemailMessage {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getVoicemailMessage();
    }
    pub fn getStatusMessage(self: *@This()) core.HResult!*SmsStatusMessage {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.getStatusMessage();
    }
    pub fn Drop(self: *@This()) core.HResult!void {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.Drop();
    }
    pub fn Accept(self: *@This()) core.HResult!void {
        const this: *ISmsMessageReceivedTriggerDetails = @ptrCast(self);
        return try this.Accept();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsMessageReceivedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsMessageReceivedTriggerDetails.GUID;
    pub const IID: Guid = ISmsMessageReceivedTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsMessageReceivedTriggerDetails.SIGNATURE);
};
pub const SmsMessageRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsMessageRegistration = @ptrCast(self);
        return try this.getId();
    }
    pub fn Unregister(self: *@This()) core.HResult!void {
        const this: *ISmsMessageRegistration = @ptrCast(self);
        return try this.Unregister();
    }
    pub fn addMessageReceived(self: *@This(), eventHandler: *TypedEventHandler(SmsMessageRegistration,SmsMessageReceivedTriggerDetails)) core.HResult!EventRegistrationToken {
        const this: *ISmsMessageRegistration = @ptrCast(self);
        return try this.addMessageReceived(eventHandler);
    }
    pub fn removeMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *ISmsMessageRegistration = @ptrCast(self);
        return try this.removeMessageReceived(eventCookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAllRegistrations() core.HResult!*IVectorView(SmsMessageRegistration) {
        const _f = @This().ISmsMessageRegistrationStaticsCache.get();
        return try _f.getAllRegistrations();
    }
    pub fn Register(id: HSTRING, filterRules: *SmsFilterRules) core.HResult!*SmsMessageRegistration {
        const _f = @This().ISmsMessageRegistrationStaticsCache.get();
        return try _f.Register(id, filterRules);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsMessageRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsMessageRegistration.GUID;
    pub const IID: Guid = ISmsMessageRegistration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsMessageRegistration.SIGNATURE);
    var _ISmsMessageRegistrationStaticsCache: FactoryCache(ISmsMessageRegistrationStatics, RUNTIME_NAME) = .{};
};
pub const SmsMessageType = enum(i32) {
    Binary = 0,
    Text = 1,
    Wap = 2,
    App = 3,
    Broadcast = 4,
    Voicemail = 5,
    Status = 6,
};
pub const SmsModemErrorCode = enum(i32) {
    Other = 0,
    MessagingNetworkError = 1,
    SmsOperationNotSupportedByDevice = 2,
    SmsServiceNotSupportedByNetwork = 3,
    DeviceFailure = 4,
    MessageNotEncodedProperly = 5,
    MessageTooLarge = 6,
    DeviceNotReady = 7,
    NetworkNotReady = 8,
    InvalidSmscAddress = 9,
    NetworkFailure = 10,
    FixedDialingNumberRestricted = 11,
};
pub const SmsSendMessageResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSuccessful(self: *@This()) core.HResult!bool {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getIsSuccessful();
    }
    pub fn getMessageReferenceNumbers(self: *@This()) core.HResult!*IVectorView(i32) {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getMessageReferenceNumbers();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getCellularClass();
    }
    pub fn getModemErrorCode(self: *@This()) core.HResult!SmsModemErrorCode {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getModemErrorCode();
    }
    pub fn getIsErrorTransient(self: *@This()) core.HResult!bool {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getIsErrorTransient();
    }
    pub fn getNetworkCauseCode(self: *@This()) core.HResult!i32 {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getNetworkCauseCode();
    }
    pub fn getTransportFailureCause(self: *@This()) core.HResult!i32 {
        const this: *ISmsSendMessageResult = @ptrCast(self);
        return try this.getTransportFailureCause();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsSendMessageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsSendMessageResult.GUID;
    pub const IID: Guid = ISmsSendMessageResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsSendMessageResult.SIGNATURE);
};
pub const SmsStatusMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn getStatus(self: *@This()) core.HResult!i32 {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getMessageReferenceNumber(self: *@This()) core.HResult!i32 {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getMessageReferenceNumber();
    }
    pub fn getServiceCenterTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getServiceCenterTimestamp();
    }
    pub fn getDischargeTime(self: *@This()) core.HResult!DateTime {
        const this: *ISmsStatusMessage = @ptrCast(self);
        return try this.getDischargeTime();
    }
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCellularClass();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimIccId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsStatusMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsStatusMessage.GUID;
    pub const IID: Guid = ISmsStatusMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsStatusMessage.SIGNATURE);
};
pub const SmsTextMessage2 = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getBody();
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.putBody(value);
    }
    pub fn getEncoding(self: *@This()) core.HResult!SmsEncoding {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getEncoding();
    }
    pub fn putEncoding(self: *@This(), value: SmsEncoding) core.HResult!void {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.putEncoding(value);
    }
    pub fn getCallbackNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getCallbackNumber();
    }
    pub fn putCallbackNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.putCallbackNumber(value);
    }
    pub fn getIsDeliveryNotificationEnabled(self: *@This()) core.HResult!bool {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getIsDeliveryNotificationEnabled();
    }
    pub fn putIsDeliveryNotificationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.putIsDeliveryNotificationEnabled(value);
    }
    pub fn getRetryAttemptCount(self: *@This()) core.HResult!i32 {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getRetryAttemptCount();
    }
    pub fn putRetryAttemptCount(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.putRetryAttemptCount(value);
    }
    pub fn getTeleserviceId(self: *@This()) core.HResult!i32 {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getTeleserviceId();
    }
    pub fn getProtocolId(self: *@This()) core.HResult!i32 {
        const this: *ISmsTextMessage2 = @ptrCast(self);
        return try this.getProtocolId();
    }
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCellularClass();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimIccId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmsTextMessage2.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsTextMessage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsTextMessage2.GUID;
    pub const IID: Guid = ISmsTextMessage2.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsTextMessage2.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmsVoicemailMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsVoicemailMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsVoicemailMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsVoicemailMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn getMessageCount(self: *@This()) core.HResult!*IReference(i32) {
        const this: *ISmsVoicemailMessage = @ptrCast(self);
        return try this.getMessageCount();
    }
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCellularClass();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimIccId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsVoicemailMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsVoicemailMessage.GUID;
    pub const IID: Guid = ISmsVoicemailMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsVoicemailMessage.SIGNATURE);
};
pub const SmsWapMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getTo(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn getApplicationId(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getApplicationId();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn getBinaryBody(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getBinaryBody();
    }
    pub fn getHeaders(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *ISmsWapMessage = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn getMessageType(self: *@This()) core.HResult!SmsMessageType {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCellularClass();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!SmsMessageClass {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmsMessageBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmsMessageBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimIccId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sms.SmsWapMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmsWapMessage.GUID;
    pub const IID: Guid = ISmsWapMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmsWapMessage.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const AsyncOperationCompletedHandler = @import("../Foundation.zig").AsyncOperationCompletedHandler;
const IVector = @import("../Foundation/Collections.zig").IVector;
const AsyncOperationProgressHandler = @import("../Foundation.zig").AsyncOperationProgressHandler;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const IMap = @import("../Foundation/Collections.zig").IMap;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const AsyncOperationWithProgressCompletedHandler = @import("../Foundation.zig").AsyncOperationWithProgressCompletedHandler;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AsyncStatus = @import("../Foundation.zig").AsyncStatus;
const IAgileObject = @import("../root.zig").IAgileObject;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const AsyncActionCompletedHandler = @import("../Foundation.zig").AsyncActionCompletedHandler;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IAsyncInfo = @import("../Foundation.zig").IAsyncInfo;
