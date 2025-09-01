pub const IUsbBulkInEndpointDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPacketSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EndpointNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbBulkInPipe {
        var _r: *UsbBulkInPipe = undefined;
        const _c = self.vtable.get_Pipe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbBulkInEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c6e4846-06cf-42a9-9dc2-971c1b14b6e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPacketSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EndpointNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Pipe: *const fn(self: *anyopaque, _r: **UsbBulkInPipe) callconv(.winapi) HRESULT,
    };
};
pub const IUsbBulkInPipe = extern struct {
    vtable: *const VTable,
    pub fn getMaxTransferSizeBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxTransferSizeBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkInEndpointDescriptor {
        var _r: *UsbBulkInEndpointDescriptor = undefined;
        const _c = self.vtable.get_EndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearStallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReadOptions(self: *@This(), value: UsbReadOptions) core.HResult!void {
        const _c = self.vtable.put_ReadOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadOptions(self: *@This()) core.HResult!UsbReadOptions {
        var _r: UsbReadOptions = undefined;
        const _c = self.vtable.get_ReadOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FlushBuffer(self: *@This()) core.HResult!void {
        const _c = self.vtable.FlushBuffer(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbBulkInPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f01d2d3b-4548-4d50-b326-d82cdabe1220";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxTransferSizeBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbBulkInEndpointDescriptor) callconv(.winapi) HRESULT,
        ClearStallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        put_ReadOptions: *const fn(self: *anyopaque, value: UsbReadOptions) callconv(.winapi) HRESULT,
        get_ReadOptions: *const fn(self: *anyopaque, _r: *UsbReadOptions) callconv(.winapi) HRESULT,
        FlushBuffer: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IUsbBulkOutEndpointDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPacketSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EndpointNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbBulkOutPipe {
        var _r: *UsbBulkOutPipe = undefined;
        const _c = self.vtable.get_Pipe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2820847a-ffee-4f60-9be1-956cac3ecb65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPacketSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EndpointNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Pipe: *const fn(self: *anyopaque, _r: **UsbBulkOutPipe) callconv(.winapi) HRESULT,
    };
};
pub const IUsbBulkOutPipe = extern struct {
    vtable: *const VTable,
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkOutEndpointDescriptor {
        var _r: *UsbBulkOutEndpointDescriptor = undefined;
        const _c = self.vtable.get_EndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearStallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWriteOptions(self: *@This(), value: UsbWriteOptions) core.HResult!void {
        const _c = self.vtable.put_WriteOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriteOptions(self: *@This()) core.HResult!UsbWriteOptions {
        var _r: UsbWriteOptions = undefined;
        const _c = self.vtable.get_WriteOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbBulkOutPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8e9ee6e-0115-45aa-8b21-37b225bccee7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbBulkOutEndpointDescriptor) callconv(.winapi) HRESULT,
        ClearStallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        put_WriteOptions: *const fn(self: *anyopaque, value: UsbWriteOptions) callconv(.winapi) HRESULT,
        get_WriteOptions: *const fn(self: *anyopaque, _r: *UsbWriteOptions) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
    };
};
pub const IUsbConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getUsbInterfaces(self: *@This()) core.HResult!*IVectorView(UsbInterface) {
        var _r: *IVectorView(UsbInterface) = undefined;
        const _c = self.vtable.get_UsbInterfaces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfigurationDescriptor(self: *@This()) core.HResult!*UsbConfigurationDescriptor {
        var _r: *UsbConfigurationDescriptor = undefined;
        const _c = self.vtable.get_ConfigurationDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(UsbDescriptor) {
        var _r: *IVectorView(UsbDescriptor) = undefined;
        const _c = self.vtable.get_Descriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68177429-36a9-46d7-b873-fc689251ec30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UsbInterfaces: *const fn(self: *anyopaque, _r: **IVectorView(UsbInterface)) callconv(.winapi) HRESULT,
        get_ConfigurationDescriptor: *const fn(self: *anyopaque, _r: **UsbConfigurationDescriptor) callconv(.winapi) HRESULT,
        get_Descriptors: *const fn(self: *anyopaque, _r: **IVectorView(UsbDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IUsbConfigurationDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getConfigurationValue(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ConfigurationValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPowerMilliamps(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPowerMilliamps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelfPowered(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SelfPowered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteWakeup(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RemoteWakeup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbConfigurationDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2176d92-b442-407a-8207-7d646c0385f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConfigurationValue: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_MaxPowerMilliamps: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SelfPowered: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RemoteWakeup: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUsbConfigurationDescriptorStatics = extern struct {
    vtable: *const VTable,
    pub fn TryParse(self: *@This(), descriptor: *UsbDescriptor, parsed: *UsbConfigurationDescriptor) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), descriptor, parsed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Parse(self: *@This(), descriptor: *UsbDescriptor) core.HResult!*UsbConfigurationDescriptor {
        var _r: *UsbConfigurationDescriptor = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), descriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbConfigurationDescriptorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "424ced93-e740-40a1-92bd-da120ea04914";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, descriptor: *UsbDescriptor, parsed: *UsbConfigurationDescriptor, _r: *bool) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, descriptor: *UsbDescriptor, _r: **UsbConfigurationDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IUsbControlRequestType = extern struct {
    vtable: *const VTable,
    pub fn getDirection(self: *@This()) core.HResult!UsbTransferDirection {
        var _r: UsbTransferDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDirection(self: *@This(), value: UsbTransferDirection) core.HResult!void {
        const _c = self.vtable.put_Direction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControlTransferType(self: *@This()) core.HResult!UsbControlTransferType {
        var _r: UsbControlTransferType = undefined;
        const _c = self.vtable.get_ControlTransferType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putControlTransferType(self: *@This(), value: UsbControlTransferType) core.HResult!void {
        const _c = self.vtable.put_ControlTransferType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecipient(self: *@This()) core.HResult!UsbControlRecipient {
        var _r: UsbControlRecipient = undefined;
        const _c = self.vtable.get_Recipient(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecipient(self: *@This(), value: UsbControlRecipient) core.HResult!void {
        const _c = self.vtable.put_Recipient(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAsByte(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_AsByte(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAsByte(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_AsByte(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbControlRequestType";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e9465a6-d73d-46de-94be-aae7f07c0f5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *UsbTransferDirection) callconv(.winapi) HRESULT,
        put_Direction: *const fn(self: *anyopaque, value: UsbTransferDirection) callconv(.winapi) HRESULT,
        get_ControlTransferType: *const fn(self: *anyopaque, _r: *UsbControlTransferType) callconv(.winapi) HRESULT,
        put_ControlTransferType: *const fn(self: *anyopaque, value: UsbControlTransferType) callconv(.winapi) HRESULT,
        get_Recipient: *const fn(self: *anyopaque, _r: *UsbControlRecipient) callconv(.winapi) HRESULT,
        put_Recipient: *const fn(self: *anyopaque, value: UsbControlRecipient) callconv(.winapi) HRESULT,
        get_AsByte: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_AsByte: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
    };
};
pub const IUsbDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getLength(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptorType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_DescriptorType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadDescriptorBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.ReadDescriptorBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a89f216-5f9d-4874-8904-da9ad3f5528f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_DescriptorType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        ReadDescriptorBuffer: *const fn(self: *anyopaque, buffer: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IUsbDevice = extern struct {
    vtable: *const VTable,
    pub fn SendControlOutTransferAsyncWithBuffer(self: *@This(), setupPacket: *UsbSetupPacket, buffer: *IBuffer) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.SendControlOutTransferAsyncWithBuffer(@ptrCast(self), setupPacket, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendControlOutTransferAsync(self: *@This(), setupPacket: *UsbSetupPacket) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.SendControlOutTransferAsync(@ptrCast(self), setupPacket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendControlInTransferAsyncWithBuffer(self: *@This(), setupPacket: *UsbSetupPacket, buffer: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.SendControlInTransferAsyncWithBuffer(@ptrCast(self), setupPacket, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendControlInTransferAsync(self: *@This(), setupPacket: *UsbSetupPacket) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.SendControlInTransferAsync(@ptrCast(self), setupPacket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultInterface(self: *@This()) core.HResult!*UsbInterface {
        var _r: *UsbInterface = undefined;
        const _c = self.vtable.get_DefaultInterface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceDescriptor(self: *@This()) core.HResult!*UsbDeviceDescriptor {
        var _r: *UsbDeviceDescriptor = undefined;
        const _c = self.vtable.get_DeviceDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*UsbConfiguration {
        var _r: *UsbConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5249b992-c456-44d5-ad5e-24f5a089f63b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendControlOutTransferAsyncWithBuffer: *const fn(self: *anyopaque, setupPacket: *UsbSetupPacket, buffer: *IBuffer, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        SendControlOutTransferAsync: *const fn(self: *anyopaque, setupPacket: *UsbSetupPacket, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        SendControlInTransferAsyncWithBuffer: *const fn(self: *anyopaque, setupPacket: *UsbSetupPacket, buffer: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        SendControlInTransferAsync: *const fn(self: *anyopaque, setupPacket: *UsbSetupPacket, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        get_DefaultInterface: *const fn(self: *anyopaque, _r: **UsbInterface) callconv(.winapi) HRESULT,
        get_DeviceDescriptor: *const fn(self: *anyopaque, _r: **UsbDeviceDescriptor) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **UsbConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IUsbDeviceClass = extern struct {
    vtable: *const VTable,
    pub fn getClassCode(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ClassCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClassCode(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_ClassCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubclassCode(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_SubclassCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubclassCode(self: *@This(), value: *IReference(u8)) core.HResult!void {
        const _c = self.vtable.put_SubclassCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProtocolCode(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtocolCode(self: *@This(), value: *IReference(u8)) core.HResult!void {
        const _c = self.vtable.put_ProtocolCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDeviceClass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "051942f9-845e-47eb-b12a-38f2f617afe7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClassCode: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_ClassCode: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_SubclassCode: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
        put_SubclassCode: *const fn(self: *anyopaque, value: *IReference(u8)) callconv(.winapi) HRESULT,
        get_ProtocolCode: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
        put_ProtocolCode: *const fn(self: *anyopaque, value: *IReference(u8)) callconv(.winapi) HRESULT,
    };
};
pub const IUsbDeviceClasses = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDeviceClasses";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "686f955d-9b92-4b30-9781-c22c55ac35cb";
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
pub const IUsbDeviceClassesStatics = extern struct {
    vtable: *const VTable,
    pub fn getCdcControl(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_CdcControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysical(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_Physical(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPersonalHealthcare(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_PersonalHealthcare(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActiveSync(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_ActiveSync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPalmSync(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_PalmSync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceFirmwareUpdate(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_DeviceFirmwareUpdate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIrda(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_Irda(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMeasurement(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_Measurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVendorSpecific(self: *@This()) core.HResult!*UsbDeviceClass {
        var _r: *UsbDeviceClass = undefined;
        const _c = self.vtable.get_VendorSpecific(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDeviceClassesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b20b0527-c580-4599-a165-981b4fd03230";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CdcControl: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_Physical: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_PersonalHealthcare: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_ActiveSync: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_PalmSync: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_DeviceFirmwareUpdate: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_Irda: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_Measurement: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
        get_VendorSpecific: *const fn(self: *anyopaque, _r: **UsbDeviceClass) callconv(.winapi) HRESULT,
    };
};
pub const IUsbDeviceDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getBcdUsb(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BcdUsb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPacketSize0(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_MaxPacketSize0(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVendorId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProductId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBcdDeviceRevision(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BcdDeviceRevision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfConfigurations(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_NumberOfConfigurations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDeviceDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f48d1f6-ba97-4322-b92c-b5b189216588";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BcdUsb: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxPacketSize0: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_VendorId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_BcdDeviceRevision: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NumberOfConfigurations: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IUsbDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelectorWithVendorIdAndProductIdAndWinUsbInterfaceClass(self: *@This(), vendorId: u32, productId: u32, winUsbInterfaceClass: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorWithVendorIdAndProductIdAndWinUsbInterfaceClass(@ptrCast(self), vendorId, productId, winUsbInterfaceClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), winUsbInterfaceClass: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), winUsbInterfaceClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorWithVendorIdAndProductId(self: *@This(), vendorId: u32, productId: u32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorWithVendorIdAndProductId(@ptrCast(self), vendorId, productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceClassSelector(self: *@This(), usbClass: *UsbDeviceClass) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceClassSelector(@ptrCast(self), usbClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(UsbDevice) {
        var _r: *IAsyncOperation(UsbDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "066b85a2-09b7-4446-8502-6fe6dcaa7309";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelectorWithVendorIdAndProductIdAndWinUsbInterfaceClass: *const fn(self: *anyopaque, vendorId: u32, productId: u32, winUsbInterfaceClass: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, winUsbInterfaceClass: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorWithVendorIdAndProductId: *const fn(self: *anyopaque, vendorId: u32, productId: u32, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceClassSelector: *const fn(self: *anyopaque, usbClass: *UsbDeviceClass, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(UsbDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IUsbEndpointDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EndpointNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirection(self: *@This()) core.HResult!UsbTransferDirection {
        var _r: UsbTransferDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointType(self: *@This()) core.HResult!UsbEndpointType {
        var _r: UsbEndpointType = undefined;
        const _c = self.vtable.get_EndpointType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAsBulkInEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkInEndpointDescriptor {
        var _r: *UsbBulkInEndpointDescriptor = undefined;
        const _c = self.vtable.get_AsBulkInEndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAsInterruptInEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptInEndpointDescriptor {
        var _r: *UsbInterruptInEndpointDescriptor = undefined;
        const _c = self.vtable.get_AsInterruptInEndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAsBulkOutEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkOutEndpointDescriptor {
        var _r: *UsbBulkOutEndpointDescriptor = undefined;
        const _c = self.vtable.get_AsBulkOutEndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAsInterruptOutEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptOutEndpointDescriptor {
        var _r: *UsbInterruptOutEndpointDescriptor = undefined;
        const _c = self.vtable.get_AsInterruptOutEndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b4862d9-8df7-4b40-ac83-578f139f0575";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndpointNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *UsbTransferDirection) callconv(.winapi) HRESULT,
        get_EndpointType: *const fn(self: *anyopaque, _r: *UsbEndpointType) callconv(.winapi) HRESULT,
        get_AsBulkInEndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbBulkInEndpointDescriptor) callconv(.winapi) HRESULT,
        get_AsInterruptInEndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbInterruptInEndpointDescriptor) callconv(.winapi) HRESULT,
        get_AsBulkOutEndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbBulkOutEndpointDescriptor) callconv(.winapi) HRESULT,
        get_AsInterruptOutEndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbInterruptOutEndpointDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IUsbEndpointDescriptorStatics = extern struct {
    vtable: *const VTable,
    pub fn TryParse(self: *@This(), descriptor: *UsbDescriptor, parsed: *UsbEndpointDescriptor) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), descriptor, parsed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Parse(self: *@This(), descriptor: *UsbDescriptor) core.HResult!*UsbEndpointDescriptor {
        var _r: *UsbEndpointDescriptor = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), descriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbEndpointDescriptorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c890b201-9a6a-495e-a82c-295b9e708106";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, descriptor: *UsbDescriptor, parsed: *UsbEndpointDescriptor, _r: *bool) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, descriptor: *UsbDescriptor, _r: **UsbEndpointDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterface = extern struct {
    vtable: *const VTable,
    pub fn getBulkInPipes(self: *@This()) core.HResult!*IVectorView(UsbBulkInPipe) {
        var _r: *IVectorView(UsbBulkInPipe) = undefined;
        const _c = self.vtable.get_BulkInPipes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterruptInPipes(self: *@This()) core.HResult!*IVectorView(UsbInterruptInPipe) {
        var _r: *IVectorView(UsbInterruptInPipe) = undefined;
        const _c = self.vtable.get_InterruptInPipes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBulkOutPipes(self: *@This()) core.HResult!*IVectorView(UsbBulkOutPipe) {
        var _r: *IVectorView(UsbBulkOutPipe) = undefined;
        const _c = self.vtable.get_BulkOutPipes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterruptOutPipes(self: *@This()) core.HResult!*IVectorView(UsbInterruptOutPipe) {
        var _r: *IVectorView(UsbInterruptOutPipe) = undefined;
        const _c = self.vtable.get_InterruptOutPipes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterfaceSettings(self: *@This()) core.HResult!*IVectorView(UsbInterfaceSetting) {
        var _r: *IVectorView(UsbInterfaceSetting) = undefined;
        const _c = self.vtable.get_InterfaceSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterfaceNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InterfaceNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(UsbDescriptor) {
        var _r: *IVectorView(UsbDescriptor) = undefined;
        const _c = self.vtable.get_Descriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0322b95-7f47-48ab-a727-678c25be2112";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BulkInPipes: *const fn(self: *anyopaque, _r: **IVectorView(UsbBulkInPipe)) callconv(.winapi) HRESULT,
        get_InterruptInPipes: *const fn(self: *anyopaque, _r: **IVectorView(UsbInterruptInPipe)) callconv(.winapi) HRESULT,
        get_BulkOutPipes: *const fn(self: *anyopaque, _r: **IVectorView(UsbBulkOutPipe)) callconv(.winapi) HRESULT,
        get_InterruptOutPipes: *const fn(self: *anyopaque, _r: **IVectorView(UsbInterruptOutPipe)) callconv(.winapi) HRESULT,
        get_InterfaceSettings: *const fn(self: *anyopaque, _r: **IVectorView(UsbInterfaceSetting)) callconv(.winapi) HRESULT,
        get_InterfaceNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Descriptors: *const fn(self: *anyopaque, _r: **IVectorView(UsbDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterfaceDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getClassCode(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ClassCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubclassCode(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SubclassCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolCode(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ProtocolCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlternateSettingNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_AlternateSettingNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterfaceNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InterfaceNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterfaceDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "199670c7-b7ee-4f90-8cd5-94a2e257598a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClassCode: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SubclassCode: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ProtocolCode: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_AlternateSettingNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InterfaceNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterfaceDescriptorStatics = extern struct {
    vtable: *const VTable,
    pub fn TryParse(self: *@This(), descriptor: *UsbDescriptor, parsed: *UsbInterfaceDescriptor) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), descriptor, parsed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Parse(self: *@This(), descriptor: *UsbDescriptor) core.HResult!*UsbInterfaceDescriptor {
        var _r: *UsbInterfaceDescriptor = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), descriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterfaceDescriptorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e34a9ff5-77d6-48b6-b0be-16c6422316fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, descriptor: *UsbDescriptor, parsed: *UsbInterfaceDescriptor, _r: *bool) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, descriptor: *UsbDescriptor, _r: **UsbInterfaceDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterfaceSetting = extern struct {
    vtable: *const VTable,
    pub fn getBulkInEndpoints(self: *@This()) core.HResult!*IVectorView(UsbBulkInEndpointDescriptor) {
        var _r: *IVectorView(UsbBulkInEndpointDescriptor) = undefined;
        const _c = self.vtable.get_BulkInEndpoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterruptInEndpoints(self: *@This()) core.HResult!*IVectorView(UsbInterruptInEndpointDescriptor) {
        var _r: *IVectorView(UsbInterruptInEndpointDescriptor) = undefined;
        const _c = self.vtable.get_InterruptInEndpoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBulkOutEndpoints(self: *@This()) core.HResult!*IVectorView(UsbBulkOutEndpointDescriptor) {
        var _r: *IVectorView(UsbBulkOutEndpointDescriptor) = undefined;
        const _c = self.vtable.get_BulkOutEndpoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterruptOutEndpoints(self: *@This()) core.HResult!*IVectorView(UsbInterruptOutEndpointDescriptor) {
        var _r: *IVectorView(UsbInterruptOutEndpointDescriptor) = undefined;
        const _c = self.vtable.get_InterruptOutEndpoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Selected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectSettingAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SelectSettingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterfaceDescriptor(self: *@This()) core.HResult!*UsbInterfaceDescriptor {
        var _r: *UsbInterfaceDescriptor = undefined;
        const _c = self.vtable.get_InterfaceDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(UsbDescriptor) {
        var _r: *IVectorView(UsbDescriptor) = undefined;
        const _c = self.vtable.get_Descriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterfaceSetting";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1827bba7-8da7-4af7-8f4c-7f3032e781f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BulkInEndpoints: *const fn(self: *anyopaque, _r: **IVectorView(UsbBulkInEndpointDescriptor)) callconv(.winapi) HRESULT,
        get_InterruptInEndpoints: *const fn(self: *anyopaque, _r: **IVectorView(UsbInterruptInEndpointDescriptor)) callconv(.winapi) HRESULT,
        get_BulkOutEndpoints: *const fn(self: *anyopaque, _r: **IVectorView(UsbBulkOutEndpointDescriptor)) callconv(.winapi) HRESULT,
        get_InterruptOutEndpoints: *const fn(self: *anyopaque, _r: **IVectorView(UsbInterruptOutEndpointDescriptor)) callconv(.winapi) HRESULT,
        get_Selected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SelectSettingAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_InterfaceDescriptor: *const fn(self: *anyopaque, _r: **UsbInterfaceDescriptor) callconv(.winapi) HRESULT,
        get_Descriptors: *const fn(self: *anyopaque, _r: **IVectorView(UsbDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterruptInEndpointDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPacketSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EndpointNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbInterruptInPipe {
        var _r: *UsbInterruptInPipe = undefined;
        const _c = self.vtable.get_Pipe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0528967-c911-4c3a-86b2-419c2da89039";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPacketSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EndpointNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Pipe: *const fn(self: *anyopaque, _r: **UsbInterruptInPipe) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterruptInEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInterruptData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_InterruptData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterruptInEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7b04092-1418-4936-8209-299cf5605583";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InterruptData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterruptInPipe = extern struct {
    vtable: *const VTable,
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptInEndpointDescriptor {
        var _r: *UsbInterruptInEndpointDescriptor = undefined;
        const _c = self.vtable.get_EndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearStallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDataReceived(self: *@This(), handler: *TypedEventHandler(UsbInterruptInPipe,UsbInterruptInEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterruptInPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa007116-84d7-48c7-8a3f-4c0b235f2ea6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbInterruptInEndpointDescriptor) callconv(.winapi) HRESULT,
        ClearStallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_DataReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(UsbInterruptInPipe,UsbInterruptInEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterruptOutEndpointDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPacketSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EndpointNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbInterruptOutPipe {
        var _r: *UsbInterruptOutPipe = undefined;
        const _c = self.vtable.get_Pipe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc9fed81-10ca-4533-952d-9e278341e80f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPacketSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EndpointNumber: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Pipe: *const fn(self: *anyopaque, _r: **UsbInterruptOutPipe) callconv(.winapi) HRESULT,
    };
};
pub const IUsbInterruptOutPipe = extern struct {
    vtable: *const VTable,
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptOutEndpointDescriptor {
        var _r: *UsbInterruptOutEndpointDescriptor = undefined;
        const _c = self.vtable.get_EndpointDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearStallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWriteOptions(self: *@This(), value: UsbWriteOptions) core.HResult!void {
        const _c = self.vtable.put_WriteOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriteOptions(self: *@This()) core.HResult!UsbWriteOptions {
        var _r: UsbWriteOptions = undefined;
        const _c = self.vtable.get_WriteOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbInterruptOutPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e984c8a9-aaf9-49d0-b96c-f661ab4a7f95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndpointDescriptor: *const fn(self: *anyopaque, _r: **UsbInterruptOutEndpointDescriptor) callconv(.winapi) HRESULT,
        ClearStallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        put_WriteOptions: *const fn(self: *anyopaque, value: UsbWriteOptions) callconv(.winapi) HRESULT,
        get_WriteOptions: *const fn(self: *anyopaque, _r: *UsbWriteOptions) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
    };
};
pub const IUsbSetupPacket = extern struct {
    vtable: *const VTable,
    pub fn getRequestType(self: *@This()) core.HResult!*UsbControlRequestType {
        var _r: *UsbControlRequestType = undefined;
        const _c = self.vtable.get_RequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestType(self: *@This(), value: *UsbControlRequestType) core.HResult!void {
        const _c = self.vtable.put_RequestType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequest(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequest(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_Request(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Index(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIndex(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Index(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Length(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbSetupPacket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "104ba132-c78f-4c51-b654-e49d02f2cb03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestType: *const fn(self: *anyopaque, _r: **UsbControlRequestType) callconv(.winapi) HRESULT,
        put_RequestType: *const fn(self: *anyopaque, value: *UsbControlRequestType) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_Request: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Index: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Index: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Length: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IUsbSetupPacketFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithEightByteBuffer(self: *@This(), eightByteBuffer: *IBuffer) core.HResult!*UsbSetupPacket {
        var _r: *UsbSetupPacket = undefined;
        const _c = self.vtable.CreateWithEightByteBuffer(@ptrCast(self), eightByteBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.IUsbSetupPacketFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9257d50-1b2e-4a41-a2a7-338f0cef3c14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithEightByteBuffer: *const fn(self: *anyopaque, eightByteBuffer: *IBuffer, _r: **UsbSetupPacket) callconv(.winapi) HRESULT,
    };
};
pub const UsbBulkInEndpointDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        const this: *IUsbBulkInEndpointDescriptor = @ptrCast(self);
        return try this.getMaxPacketSize();
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbBulkInEndpointDescriptor = @ptrCast(self);
        return try this.getEndpointNumber();
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbBulkInPipe {
        const this: *IUsbBulkInEndpointDescriptor = @ptrCast(self);
        return try this.getPipe();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbBulkInEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbBulkInEndpointDescriptor.GUID;
    pub const IID: Guid = IUsbBulkInEndpointDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbBulkInEndpointDescriptor.SIGNATURE);
};
pub const UsbBulkInPipe = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxTransferSizeBytes(self: *@This()) core.HResult!u32 {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.getMaxTransferSizeBytes();
    }
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkInEndpointDescriptor {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.getEndpointDescriptor();
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.ClearStallAsync();
    }
    pub fn putReadOptions(self: *@This(), value: UsbReadOptions) core.HResult!void {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.putReadOptions(value);
    }
    pub fn getReadOptions(self: *@This()) core.HResult!UsbReadOptions {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.getReadOptions();
    }
    pub fn FlushBuffer(self: *@This()) core.HResult!void {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.FlushBuffer();
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IUsbBulkInPipe = @ptrCast(self);
        return try this.getInputStream();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbBulkInPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbBulkInPipe.GUID;
    pub const IID: Guid = IUsbBulkInPipe.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbBulkInPipe.SIGNATURE);
};
pub const UsbBulkOutEndpointDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        const this: *IUsbBulkOutEndpointDescriptor = @ptrCast(self);
        return try this.getMaxPacketSize();
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbBulkOutEndpointDescriptor = @ptrCast(self);
        return try this.getEndpointNumber();
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbBulkOutPipe {
        const this: *IUsbBulkOutEndpointDescriptor = @ptrCast(self);
        return try this.getPipe();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbBulkOutEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbBulkOutEndpointDescriptor.GUID;
    pub const IID: Guid = IUsbBulkOutEndpointDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbBulkOutEndpointDescriptor.SIGNATURE);
};
pub const UsbBulkOutPipe = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkOutEndpointDescriptor {
        const this: *IUsbBulkOutPipe = @ptrCast(self);
        return try this.getEndpointDescriptor();
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUsbBulkOutPipe = @ptrCast(self);
        return try this.ClearStallAsync();
    }
    pub fn putWriteOptions(self: *@This(), value: UsbWriteOptions) core.HResult!void {
        const this: *IUsbBulkOutPipe = @ptrCast(self);
        return try this.putWriteOptions(value);
    }
    pub fn getWriteOptions(self: *@This()) core.HResult!UsbWriteOptions {
        const this: *IUsbBulkOutPipe = @ptrCast(self);
        return try this.getWriteOptions();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IUsbBulkOutPipe = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbBulkOutPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbBulkOutPipe.GUID;
    pub const IID: Guid = IUsbBulkOutPipe.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbBulkOutPipe.SIGNATURE);
};
pub const UsbConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUsbInterfaces(self: *@This()) core.HResult!*IVectorView(UsbInterface) {
        const this: *IUsbConfiguration = @ptrCast(self);
        return try this.getUsbInterfaces();
    }
    pub fn getConfigurationDescriptor(self: *@This()) core.HResult!*UsbConfigurationDescriptor {
        const this: *IUsbConfiguration = @ptrCast(self);
        return try this.getConfigurationDescriptor();
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(UsbDescriptor) {
        const this: *IUsbConfiguration = @ptrCast(self);
        return try this.getDescriptors();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbConfiguration.GUID;
    pub const IID: Guid = IUsbConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbConfiguration.SIGNATURE);
};
pub const UsbConfigurationDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfigurationValue(self: *@This()) core.HResult!u8 {
        const this: *IUsbConfigurationDescriptor = @ptrCast(self);
        return try this.getConfigurationValue();
    }
    pub fn getMaxPowerMilliamps(self: *@This()) core.HResult!u32 {
        const this: *IUsbConfigurationDescriptor = @ptrCast(self);
        return try this.getMaxPowerMilliamps();
    }
    pub fn getSelfPowered(self: *@This()) core.HResult!bool {
        const this: *IUsbConfigurationDescriptor = @ptrCast(self);
        return try this.getSelfPowered();
    }
    pub fn getRemoteWakeup(self: *@This()) core.HResult!bool {
        const this: *IUsbConfigurationDescriptor = @ptrCast(self);
        return try this.getRemoteWakeup();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryParse(descriptor: *UsbDescriptor, parsed: *UsbConfigurationDescriptor) core.HResult!bool {
        const _f = @This().IUsbConfigurationDescriptorStaticsCache.get();
        return try _f.TryParse(descriptor, parsed);
    }
    pub fn Parse(descriptor: *UsbDescriptor) core.HResult!*UsbConfigurationDescriptor {
        const _f = @This().IUsbConfigurationDescriptorStaticsCache.get();
        return try _f.Parse(descriptor);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbConfigurationDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbConfigurationDescriptor.GUID;
    pub const IID: Guid = IUsbConfigurationDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbConfigurationDescriptor.SIGNATURE);
    var _IUsbConfigurationDescriptorStaticsCache: FactoryCache(IUsbConfigurationDescriptorStatics, RUNTIME_NAME) = .{};
};
pub const UsbControlRecipient = enum(i32) {
    Device = 0,
    SpecifiedInterface = 1,
    Endpoint = 2,
    Other = 3,
    DefaultInterface = 4,
};
pub const UsbControlRequestType = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDirection(self: *@This()) core.HResult!UsbTransferDirection {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn putDirection(self: *@This(), value: UsbTransferDirection) core.HResult!void {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.putDirection(value);
    }
    pub fn getControlTransferType(self: *@This()) core.HResult!UsbControlTransferType {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.getControlTransferType();
    }
    pub fn putControlTransferType(self: *@This(), value: UsbControlTransferType) core.HResult!void {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.putControlTransferType(value);
    }
    pub fn getRecipient(self: *@This()) core.HResult!UsbControlRecipient {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.getRecipient();
    }
    pub fn putRecipient(self: *@This(), value: UsbControlRecipient) core.HResult!void {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.putRecipient(value);
    }
    pub fn getAsByte(self: *@This()) core.HResult!u8 {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.getAsByte();
    }
    pub fn putAsByte(self: *@This(), value: u8) core.HResult!void {
        const this: *IUsbControlRequestType = @ptrCast(self);
        return try this.putAsByte(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUsbControlRequestType.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbControlRequestType";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbControlRequestType.GUID;
    pub const IID: Guid = IUsbControlRequestType.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbControlRequestType.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UsbControlTransferType = enum(i32) {
    Standard = 0,
    Class = 1,
    Vendor = 2,
};
pub const UsbDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLength(self: *@This()) core.HResult!u8 {
        const this: *IUsbDescriptor = @ptrCast(self);
        return try this.getLength();
    }
    pub fn getDescriptorType(self: *@This()) core.HResult!u8 {
        const this: *IUsbDescriptor = @ptrCast(self);
        return try this.getDescriptorType();
    }
    pub fn ReadDescriptorBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const this: *IUsbDescriptor = @ptrCast(self);
        return try this.ReadDescriptorBuffer(buffer);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbDescriptor.GUID;
    pub const IID: Guid = IUsbDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbDescriptor.SIGNATURE);
};
pub const UsbDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendControlOutTransferAsyncWithBuffer(self: *@This(), setupPacket: *UsbSetupPacket, buffer: *IBuffer) core.HResult!*IAsyncOperation(u32) {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.SendControlOutTransferAsyncWithBuffer(setupPacket, buffer);
    }
    pub fn SendControlOutTransferAsync(self: *@This(), setupPacket: *UsbSetupPacket) core.HResult!*IAsyncOperation(u32) {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.SendControlOutTransferAsync(setupPacket);
    }
    pub fn SendControlInTransferAsyncWithBuffer(self: *@This(), setupPacket: *UsbSetupPacket, buffer: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.SendControlInTransferAsyncWithBuffer(setupPacket, buffer);
    }
    pub fn SendControlInTransferAsync(self: *@This(), setupPacket: *UsbSetupPacket) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.SendControlInTransferAsync(setupPacket);
    }
    pub fn getDefaultInterface(self: *@This()) core.HResult!*UsbInterface {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.getDefaultInterface();
    }
    pub fn getDeviceDescriptor(self: *@This()) core.HResult!*UsbDeviceDescriptor {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.getDeviceDescriptor();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*UsbConfiguration {
        const this: *IUsbDevice = @ptrCast(self);
        return try this.getConfiguration();
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
    pub fn GetDeviceSelectorWithVendorIdAndProductIdAndWinUsbInterfaceClass(vendorId: u32, productId: u32, winUsbInterfaceClass: *Guid) core.HResult!HSTRING {
        const _f = @This().IUsbDeviceStaticsCache.get();
        return try _f.GetDeviceSelectorWithVendorIdAndProductIdAndWinUsbInterfaceClass(vendorId, productId, winUsbInterfaceClass);
    }
    pub fn GetDeviceSelector(winUsbInterfaceClass: *Guid) core.HResult!HSTRING {
        const _f = @This().IUsbDeviceStaticsCache.get();
        return try _f.GetDeviceSelector(winUsbInterfaceClass);
    }
    pub fn GetDeviceSelectorWithVendorIdAndProductId(vendorId: u32, productId: u32) core.HResult!HSTRING {
        const _f = @This().IUsbDeviceStaticsCache.get();
        return try _f.GetDeviceSelectorWithVendorIdAndProductId(vendorId, productId);
    }
    pub fn GetDeviceClassSelector(usbClass: *UsbDeviceClass) core.HResult!HSTRING {
        const _f = @This().IUsbDeviceStaticsCache.get();
        return try _f.GetDeviceClassSelector(usbClass);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(UsbDevice) {
        const _f = @This().IUsbDeviceStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbDevice.GUID;
    pub const IID: Guid = IUsbDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbDevice.SIGNATURE);
    var _IUsbDeviceStaticsCache: FactoryCache(IUsbDeviceStatics, RUNTIME_NAME) = .{};
};
pub const UsbDeviceClass = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClassCode(self: *@This()) core.HResult!u8 {
        const this: *IUsbDeviceClass = @ptrCast(self);
        return try this.getClassCode();
    }
    pub fn putClassCode(self: *@This(), value: u8) core.HResult!void {
        const this: *IUsbDeviceClass = @ptrCast(self);
        return try this.putClassCode(value);
    }
    pub fn getSubclassCode(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IUsbDeviceClass = @ptrCast(self);
        return try this.getSubclassCode();
    }
    pub fn putSubclassCode(self: *@This(), value: *IReference(u8)) core.HResult!void {
        const this: *IUsbDeviceClass = @ptrCast(self);
        return try this.putSubclassCode(value);
    }
    pub fn getProtocolCode(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IUsbDeviceClass = @ptrCast(self);
        return try this.getProtocolCode();
    }
    pub fn putProtocolCode(self: *@This(), value: *IReference(u8)) core.HResult!void {
        const this: *IUsbDeviceClass = @ptrCast(self);
        return try this.putProtocolCode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUsbDeviceClass.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbDeviceClass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbDeviceClass.GUID;
    pub const IID: Guid = IUsbDeviceClass.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbDeviceClass.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UsbDeviceClasses = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCdcControl() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getCdcControl();
    }
    pub fn getPhysical() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getPhysical();
    }
    pub fn getPersonalHealthcare() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getPersonalHealthcare();
    }
    pub fn getActiveSync() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getActiveSync();
    }
    pub fn getPalmSync() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getPalmSync();
    }
    pub fn getDeviceFirmwareUpdate() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getDeviceFirmwareUpdate();
    }
    pub fn getIrda() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getIrda();
    }
    pub fn getMeasurement() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getMeasurement();
    }
    pub fn getVendorSpecific() core.HResult!*UsbDeviceClass {
        const _f = @This().IUsbDeviceClassesStaticsCache.get();
        return try _f.getVendorSpecific();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbDeviceClasses";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbDeviceClasses.GUID;
    pub const IID: Guid = IUsbDeviceClasses.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbDeviceClasses.SIGNATURE);
    var _IUsbDeviceClassesStaticsCache: FactoryCache(IUsbDeviceClassesStatics, RUNTIME_NAME) = .{};
};
pub const UsbDeviceDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBcdUsb(self: *@This()) core.HResult!u32 {
        const this: *IUsbDeviceDescriptor = @ptrCast(self);
        return try this.getBcdUsb();
    }
    pub fn getMaxPacketSize0(self: *@This()) core.HResult!u8 {
        const this: *IUsbDeviceDescriptor = @ptrCast(self);
        return try this.getMaxPacketSize0();
    }
    pub fn getVendorId(self: *@This()) core.HResult!u32 {
        const this: *IUsbDeviceDescriptor = @ptrCast(self);
        return try this.getVendorId();
    }
    pub fn getProductId(self: *@This()) core.HResult!u32 {
        const this: *IUsbDeviceDescriptor = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getBcdDeviceRevision(self: *@This()) core.HResult!u32 {
        const this: *IUsbDeviceDescriptor = @ptrCast(self);
        return try this.getBcdDeviceRevision();
    }
    pub fn getNumberOfConfigurations(self: *@This()) core.HResult!u8 {
        const this: *IUsbDeviceDescriptor = @ptrCast(self);
        return try this.getNumberOfConfigurations();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbDeviceDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbDeviceDescriptor.GUID;
    pub const IID: Guid = IUsbDeviceDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbDeviceDescriptor.SIGNATURE);
};
pub const UsbEndpointDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getEndpointNumber();
    }
    pub fn getDirection(self: *@This()) core.HResult!UsbTransferDirection {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn getEndpointType(self: *@This()) core.HResult!UsbEndpointType {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getEndpointType();
    }
    pub fn getAsBulkInEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkInEndpointDescriptor {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getAsBulkInEndpointDescriptor();
    }
    pub fn getAsInterruptInEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptInEndpointDescriptor {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getAsInterruptInEndpointDescriptor();
    }
    pub fn getAsBulkOutEndpointDescriptor(self: *@This()) core.HResult!*UsbBulkOutEndpointDescriptor {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getAsBulkOutEndpointDescriptor();
    }
    pub fn getAsInterruptOutEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptOutEndpointDescriptor {
        const this: *IUsbEndpointDescriptor = @ptrCast(self);
        return try this.getAsInterruptOutEndpointDescriptor();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryParse(descriptor: *UsbDescriptor, parsed: *UsbEndpointDescriptor) core.HResult!bool {
        const _f = @This().IUsbEndpointDescriptorStaticsCache.get();
        return try _f.TryParse(descriptor, parsed);
    }
    pub fn Parse(descriptor: *UsbDescriptor) core.HResult!*UsbEndpointDescriptor {
        const _f = @This().IUsbEndpointDescriptorStaticsCache.get();
        return try _f.Parse(descriptor);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbEndpointDescriptor.GUID;
    pub const IID: Guid = IUsbEndpointDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbEndpointDescriptor.SIGNATURE);
    var _IUsbEndpointDescriptorStaticsCache: FactoryCache(IUsbEndpointDescriptorStatics, RUNTIME_NAME) = .{};
};
pub const UsbEndpointType = enum(i32) {
    Control = 0,
    Isochronous = 1,
    Bulk = 2,
    Interrupt = 3,
};
pub const UsbInterface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBulkInPipes(self: *@This()) core.HResult!*IVectorView(UsbBulkInPipe) {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getBulkInPipes();
    }
    pub fn getInterruptInPipes(self: *@This()) core.HResult!*IVectorView(UsbInterruptInPipe) {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getInterruptInPipes();
    }
    pub fn getBulkOutPipes(self: *@This()) core.HResult!*IVectorView(UsbBulkOutPipe) {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getBulkOutPipes();
    }
    pub fn getInterruptOutPipes(self: *@This()) core.HResult!*IVectorView(UsbInterruptOutPipe) {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getInterruptOutPipes();
    }
    pub fn getInterfaceSettings(self: *@This()) core.HResult!*IVectorView(UsbInterfaceSetting) {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getInterfaceSettings();
    }
    pub fn getInterfaceNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getInterfaceNumber();
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(UsbDescriptor) {
        const this: *IUsbInterface = @ptrCast(self);
        return try this.getDescriptors();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterface.GUID;
    pub const IID: Guid = IUsbInterface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterface.SIGNATURE);
};
pub const UsbInterfaceDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClassCode(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterfaceDescriptor = @ptrCast(self);
        return try this.getClassCode();
    }
    pub fn getSubclassCode(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterfaceDescriptor = @ptrCast(self);
        return try this.getSubclassCode();
    }
    pub fn getProtocolCode(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterfaceDescriptor = @ptrCast(self);
        return try this.getProtocolCode();
    }
    pub fn getAlternateSettingNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterfaceDescriptor = @ptrCast(self);
        return try this.getAlternateSettingNumber();
    }
    pub fn getInterfaceNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterfaceDescriptor = @ptrCast(self);
        return try this.getInterfaceNumber();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryParse(descriptor: *UsbDescriptor, parsed: *UsbInterfaceDescriptor) core.HResult!bool {
        const _f = @This().IUsbInterfaceDescriptorStaticsCache.get();
        return try _f.TryParse(descriptor, parsed);
    }
    pub fn Parse(descriptor: *UsbDescriptor) core.HResult!*UsbInterfaceDescriptor {
        const _f = @This().IUsbInterfaceDescriptorStaticsCache.get();
        return try _f.Parse(descriptor);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterfaceDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterfaceDescriptor.GUID;
    pub const IID: Guid = IUsbInterfaceDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterfaceDescriptor.SIGNATURE);
    var _IUsbInterfaceDescriptorStaticsCache: FactoryCache(IUsbInterfaceDescriptorStatics, RUNTIME_NAME) = .{};
};
pub const UsbInterfaceSetting = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBulkInEndpoints(self: *@This()) core.HResult!*IVectorView(UsbBulkInEndpointDescriptor) {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getBulkInEndpoints();
    }
    pub fn getInterruptInEndpoints(self: *@This()) core.HResult!*IVectorView(UsbInterruptInEndpointDescriptor) {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getInterruptInEndpoints();
    }
    pub fn getBulkOutEndpoints(self: *@This()) core.HResult!*IVectorView(UsbBulkOutEndpointDescriptor) {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getBulkOutEndpoints();
    }
    pub fn getInterruptOutEndpoints(self: *@This()) core.HResult!*IVectorView(UsbInterruptOutEndpointDescriptor) {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getInterruptOutEndpoints();
    }
    pub fn getSelected(self: *@This()) core.HResult!bool {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getSelected();
    }
    pub fn SelectSettingAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.SelectSettingAsync();
    }
    pub fn getInterfaceDescriptor(self: *@This()) core.HResult!*UsbInterfaceDescriptor {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getInterfaceDescriptor();
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(UsbDescriptor) {
        const this: *IUsbInterfaceSetting = @ptrCast(self);
        return try this.getDescriptors();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterfaceSetting";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterfaceSetting.GUID;
    pub const IID: Guid = IUsbInterfaceSetting.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterfaceSetting.SIGNATURE);
};
pub const UsbInterruptInEndpointDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        const this: *IUsbInterruptInEndpointDescriptor = @ptrCast(self);
        return try this.getMaxPacketSize();
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterruptInEndpointDescriptor = @ptrCast(self);
        return try this.getEndpointNumber();
    }
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IUsbInterruptInEndpointDescriptor = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbInterruptInPipe {
        const this: *IUsbInterruptInEndpointDescriptor = @ptrCast(self);
        return try this.getPipe();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterruptInEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterruptInEndpointDescriptor.GUID;
    pub const IID: Guid = IUsbInterruptInEndpointDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterruptInEndpointDescriptor.SIGNATURE);
};
pub const UsbInterruptInEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInterruptData(self: *@This()) core.HResult!*IBuffer {
        const this: *IUsbInterruptInEventArgs = @ptrCast(self);
        return try this.getInterruptData();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterruptInEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterruptInEventArgs.GUID;
    pub const IID: Guid = IUsbInterruptInEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterruptInEventArgs.SIGNATURE);
};
pub const UsbInterruptInPipe = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptInEndpointDescriptor {
        const this: *IUsbInterruptInPipe = @ptrCast(self);
        return try this.getEndpointDescriptor();
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUsbInterruptInPipe = @ptrCast(self);
        return try this.ClearStallAsync();
    }
    pub fn addDataReceived(self: *@This(), handler: *TypedEventHandler(UsbInterruptInPipe,UsbInterruptInEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUsbInterruptInPipe = @ptrCast(self);
        return try this.addDataReceived(handler);
    }
    pub fn removeDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUsbInterruptInPipe = @ptrCast(self);
        return try this.removeDataReceived(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterruptInPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterruptInPipe.GUID;
    pub const IID: Guid = IUsbInterruptInPipe.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterruptInPipe.SIGNATURE);
};
pub const UsbInterruptOutEndpointDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxPacketSize(self: *@This()) core.HResult!u32 {
        const this: *IUsbInterruptOutEndpointDescriptor = @ptrCast(self);
        return try this.getMaxPacketSize();
    }
    pub fn getEndpointNumber(self: *@This()) core.HResult!u8 {
        const this: *IUsbInterruptOutEndpointDescriptor = @ptrCast(self);
        return try this.getEndpointNumber();
    }
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IUsbInterruptOutEndpointDescriptor = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn getPipe(self: *@This()) core.HResult!*UsbInterruptOutPipe {
        const this: *IUsbInterruptOutEndpointDescriptor = @ptrCast(self);
        return try this.getPipe();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterruptOutEndpointDescriptor.GUID;
    pub const IID: Guid = IUsbInterruptOutEndpointDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterruptOutEndpointDescriptor.SIGNATURE);
};
pub const UsbInterruptOutPipe = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndpointDescriptor(self: *@This()) core.HResult!*UsbInterruptOutEndpointDescriptor {
        const this: *IUsbInterruptOutPipe = @ptrCast(self);
        return try this.getEndpointDescriptor();
    }
    pub fn ClearStallAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUsbInterruptOutPipe = @ptrCast(self);
        return try this.ClearStallAsync();
    }
    pub fn putWriteOptions(self: *@This(), value: UsbWriteOptions) core.HResult!void {
        const this: *IUsbInterruptOutPipe = @ptrCast(self);
        return try this.putWriteOptions(value);
    }
    pub fn getWriteOptions(self: *@This()) core.HResult!UsbWriteOptions {
        const this: *IUsbInterruptOutPipe = @ptrCast(self);
        return try this.getWriteOptions();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IUsbInterruptOutPipe = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbInterruptOutPipe";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbInterruptOutPipe.GUID;
    pub const IID: Guid = IUsbInterruptOutPipe.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbInterruptOutPipe.SIGNATURE);
};
pub const UsbReadOptions = enum(i32) {
    None = 0,
    AutoClearStall = 1,
    OverrideAutomaticBufferManagement = 2,
    IgnoreShortPacket = 4,
    AllowPartialReads = 8,
};
pub const UsbSetupPacket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestType(self: *@This()) core.HResult!*UsbControlRequestType {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.getRequestType();
    }
    pub fn putRequestType(self: *@This(), value: *UsbControlRequestType) core.HResult!void {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.putRequestType(value);
    }
    pub fn getRequest(self: *@This()) core.HResult!u8 {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn putRequest(self: *@This(), value: u8) core.HResult!void {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.putRequest(value);
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: u32) core.HResult!void {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getIndex(self: *@This()) core.HResult!u32 {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.getIndex();
    }
    pub fn putIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.putIndex(value);
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.getLength();
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const this: *IUsbSetupPacket = @ptrCast(self);
        return try this.putLength(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUsbSetupPacket.IID)));
    }
    pub fn CreateWithEightByteBuffer(eightByteBuffer: *IBuffer) core.HResult!*UsbSetupPacket {
        const _f = @This().IUsbSetupPacketFactoryCache.get();
        return try _f.CreateWithEightByteBuffer(eightByteBuffer);
    }
    pub const NAME: []const u8 = "Windows.Devices.Usb.UsbSetupPacket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUsbSetupPacket.GUID;
    pub const IID: Guid = IUsbSetupPacket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUsbSetupPacket.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IUsbSetupPacketFactoryCache: FactoryCache(IUsbSetupPacketFactory, RUNTIME_NAME) = .{};
};
pub const UsbTransferDirection = enum(i32) {
    Out = 0,
    In = 1,
};
pub const UsbWriteOptions = enum(i32) {
    None = 0,
    AutoClearStall = 1,
    ShortPacketTerminate = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
