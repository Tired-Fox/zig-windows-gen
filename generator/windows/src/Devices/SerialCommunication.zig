pub const ErrorReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!SerialError {
        const this: *IErrorReceivedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.ErrorReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IErrorReceivedEventArgs.GUID;
    pub const IID: Guid = IErrorReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IErrorReceivedEventArgs.SIGNATURE);
};
pub const IErrorReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!SerialError {
        var _r: SerialError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.IErrorReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcc6bf59-1283-4d8a-bfdf-566b33ddb28f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *SerialError) callconv(.winapi) HRESULT,
    };
};
pub const IPinChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPinChange(self: *@This()) core.HResult!SerialPinChange {
        var _r: SerialPinChange = undefined;
        const _c = self.vtable.get_PinChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.IPinChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2bf1db0-fc9c-4607-93d0-fa5e8343ee22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinChange: *const fn(self: *anyopaque, _r: *SerialPinChange) callconv(.winapi) HRESULT,
    };
};
pub const ISerialDevice = extern struct {
    vtable: *const VTable,
    pub fn getBaudRate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BaudRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaudRate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_BaudRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBreakSignalState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BreakSignalState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBreakSignalState(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BreakSignalState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BytesReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCarrierDetectState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CarrierDetectState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClearToSendState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ClearToSendState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataBits(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_DataBits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataBits(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_DataBits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDataSetReadyState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DataSetReadyState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandshake(self: *@This()) core.HResult!SerialHandshake {
        var _r: SerialHandshake = undefined;
        const _c = self.vtable.get_Handshake(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandshake(self: *@This(), value: SerialHandshake) core.HResult!void {
        const _c = self.vtable.put_Handshake(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDataTerminalReadyEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDataTerminalReadyEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDataTerminalReadyEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDataTerminalReadyEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRequestToSendEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRequestToSendEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRequestToSendEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRequestToSendEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParity(self: *@This()) core.HResult!SerialParity {
        var _r: SerialParity = undefined;
        const _c = self.vtable.get_Parity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putParity(self: *@This(), value: SerialParity) core.HResult!void {
        const _c = self.vtable.put_Parity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPortName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PortName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ReadTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReadTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_ReadTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStopBits(self: *@This()) core.HResult!SerialStopBitCount {
        var _r: SerialStopBitCount = undefined;
        const _c = self.vtable.get_StopBits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStopBits(self: *@This(), value: SerialStopBitCount) core.HResult!void {
        const _c = self.vtable.put_StopBits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUsbVendorId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsbVendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsbProductId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsbProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriteTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_WriteTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWriteTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_WriteTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addErrorReceived(self: *@This(), reportHandler: *TypedEventHandler(SerialDevice,ErrorReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ErrorReceived(@ptrCast(self), reportHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeErrorReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ErrorReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPinChanged(self: *@This(), reportHandler: *TypedEventHandler(SerialDevice,PinChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PinChanged(@ptrCast(self), reportHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePinChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PinChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.ISerialDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e187ccc6-2210-414f-b65a-f5553a03372a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaudRate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_BaudRate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BreakSignalState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BreakSignalState: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BytesReceived: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CarrierDetectState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ClearToSendState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DataBits: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_DataBits: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_DataSetReadyState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Handshake: *const fn(self: *anyopaque, _r: *SerialHandshake) callconv(.winapi) HRESULT,
        put_Handshake: *const fn(self: *anyopaque, value: SerialHandshake) callconv(.winapi) HRESULT,
        get_IsDataTerminalReadyEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDataTerminalReadyEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRequestToSendEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRequestToSendEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Parity: *const fn(self: *anyopaque, _r: *SerialParity) callconv(.winapi) HRESULT,
        put_Parity: *const fn(self: *anyopaque, value: SerialParity) callconv(.winapi) HRESULT,
        get_PortName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReadTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_ReadTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StopBits: *const fn(self: *anyopaque, _r: *SerialStopBitCount) callconv(.winapi) HRESULT,
        put_StopBits: *const fn(self: *anyopaque, value: SerialStopBitCount) callconv(.winapi) HRESULT,
        get_UsbVendorId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsbProductId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_WriteTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_WriteTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        add_ErrorReceived: *const fn(self: *anyopaque, reportHandler: *TypedEventHandler(SerialDevice,ErrorReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ErrorReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PinChanged: *const fn(self: *anyopaque, reportHandler: *TypedEventHandler(SerialDevice,PinChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PinChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISerialDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), portName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), portName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromUsbVidPid(self: *@This(), vendorId: u16, productId: u16) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromUsbVidPid(@ptrCast(self), vendorId, productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(SerialDevice) {
        var _r: *IAsyncOperation(SerialDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.ISerialDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "058c4a70-0836-4993-ae1a-b61ae3be056b";
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
        GetDeviceSelector: *const fn(self: *anyopaque, portName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromUsbVidPid: *const fn(self: *anyopaque, vendorId: u16, productId: u16, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(SerialDevice)) callconv(.winapi) HRESULT,
    };
};
pub const PinChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPinChange(self: *@This()) core.HResult!SerialPinChange {
        const this: *IPinChangedEventArgs = @ptrCast(self);
        return try this.getPinChange();
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.PinChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPinChangedEventArgs.GUID;
    pub const IID: Guid = IPinChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPinChangedEventArgs.SIGNATURE);
};
pub const SerialDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBaudRate(self: *@This()) core.HResult!u32 {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getBaudRate();
    }
    pub fn putBaudRate(self: *@This(), value: u32) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putBaudRate(value);
    }
    pub fn getBreakSignalState(self: *@This()) core.HResult!bool {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getBreakSignalState();
    }
    pub fn putBreakSignalState(self: *@This(), value: bool) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putBreakSignalState(value);
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u32 {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getBytesReceived();
    }
    pub fn getCarrierDetectState(self: *@This()) core.HResult!bool {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getCarrierDetectState();
    }
    pub fn getClearToSendState(self: *@This()) core.HResult!bool {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getClearToSendState();
    }
    pub fn getDataBits(self: *@This()) core.HResult!u16 {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getDataBits();
    }
    pub fn putDataBits(self: *@This(), value: u16) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putDataBits(value);
    }
    pub fn getDataSetReadyState(self: *@This()) core.HResult!bool {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getDataSetReadyState();
    }
    pub fn getHandshake(self: *@This()) core.HResult!SerialHandshake {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getHandshake();
    }
    pub fn putHandshake(self: *@This(), value: SerialHandshake) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putHandshake(value);
    }
    pub fn getIsDataTerminalReadyEnabled(self: *@This()) core.HResult!bool {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getIsDataTerminalReadyEnabled();
    }
    pub fn putIsDataTerminalReadyEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putIsDataTerminalReadyEnabled(value);
    }
    pub fn getIsRequestToSendEnabled(self: *@This()) core.HResult!bool {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getIsRequestToSendEnabled();
    }
    pub fn putIsRequestToSendEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putIsRequestToSendEnabled(value);
    }
    pub fn getParity(self: *@This()) core.HResult!SerialParity {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getParity();
    }
    pub fn putParity(self: *@This(), value: SerialParity) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putParity(value);
    }
    pub fn getPortName(self: *@This()) core.HResult!HSTRING {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getPortName();
    }
    pub fn getReadTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getReadTimeout();
    }
    pub fn putReadTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putReadTimeout(value);
    }
    pub fn getStopBits(self: *@This()) core.HResult!SerialStopBitCount {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getStopBits();
    }
    pub fn putStopBits(self: *@This(), value: SerialStopBitCount) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putStopBits(value);
    }
    pub fn getUsbVendorId(self: *@This()) core.HResult!u16 {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getUsbVendorId();
    }
    pub fn getUsbProductId(self: *@This()) core.HResult!u16 {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getUsbProductId();
    }
    pub fn getWriteTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getWriteTimeout();
    }
    pub fn putWriteTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.putWriteTimeout(value);
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getInputStream();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub fn addErrorReceived(self: *@This(), reportHandler: *TypedEventHandler(SerialDevice,ErrorReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.addErrorReceived(reportHandler);
    }
    pub fn removeErrorReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.removeErrorReceived(token);
    }
    pub fn addPinChanged(self: *@This(), reportHandler: *TypedEventHandler(SerialDevice,PinChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.addPinChanged(reportHandler);
    }
    pub fn removePinChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISerialDevice = @ptrCast(self);
        return try this.removePinChanged(token);
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
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ISerialDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithPortName(portName: HSTRING) core.HResult!HSTRING {
        const factory = @This().ISerialDeviceStaticsCache.get();
        return try factory.GetDeviceSelectorWithPortName(portName);
    }
    pub fn GetDeviceSelectorFromUsbVidPid(vendorId: u16, productId: u16) core.HResult!HSTRING {
        const factory = @This().ISerialDeviceStaticsCache.get();
        return try factory.GetDeviceSelectorFromUsbVidPid(vendorId, productId);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(SerialDevice) {
        const factory = @This().ISerialDeviceStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.SerialCommunication.SerialDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISerialDevice.GUID;
    pub const IID: Guid = ISerialDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISerialDevice.SIGNATURE);
    var _ISerialDeviceStaticsCache: FactoryCache(ISerialDeviceStatics, RUNTIME_NAME) = .{};
};
pub const SerialError = enum(i32) {
    Frame = 0,
    BufferOverrun = 1,
    ReceiveFull = 2,
    ReceiveParity = 3,
    TransmitFull = 4,
};
pub const SerialHandshake = enum(i32) {
    None = 0,
    RequestToSend = 1,
    XOnXOff = 2,
    RequestToSendXOnXOff = 3,
};
pub const SerialParity = enum(i32) {
    None = 0,
    Odd = 1,
    Even = 2,
    Mark = 3,
    Space = 4,
};
pub const SerialPinChange = enum(i32) {
    BreakSignal = 0,
    CarrierDetect = 1,
    ClearToSend = 2,
    DataSetReady = 3,
    RingIndicator = 4,
};
pub const SerialStopBitCount = enum(i32) {
    One = 0,
    OnePointFive = 1,
    Two = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
