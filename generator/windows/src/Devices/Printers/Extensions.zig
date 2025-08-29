pub const IPrintExtensionContextStatic = extern struct {
    vtable: *const VTable,
    pub fn FromDeviceId(self: *@This(), deviceId: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.FromDeviceId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrintExtensionContextStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e70d9fc1-ff79-4aa4-8c9b-0c93aedfde8a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromDeviceId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IPrintNotificationEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getPrinterName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrinterName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEventData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EventData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEventData(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EventData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrintNotificationEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e00e4c8a-4828-4da1-8bb8-8672df8515e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrinterName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EventData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EventData: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getPrinterExtensionContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_PrinterExtensionContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSaveRequested(self: *@This(), eventHandler: *TypedEventHandler(PrintTaskConfiguration,PrintTaskConfigurationSaveRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SaveRequested(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSaveRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SaveRequested(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrintTaskConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3c22451-3aa4-4885-9240-311f5f8fbe9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrinterExtensionContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        add_SaveRequested: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTaskConfiguration,PrintTaskConfigurationSaveRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SaveRequested: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskConfigurationSaveRequest = extern struct {
    vtable: *const VTable,
    pub fn Cancel(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Save(self: *@This(), printerExtensionContext: *IInspectable) core.HResult!void {
        const _c = self.vtable.Save(@ptrCast(self), printerExtensionContext);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PrintTaskConfigurationSaveRequestedDeferral {
        var _r: *PrintTaskConfigurationSaveRequestedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eeaf2fcb-621e-4b62-ac77-b281cce08d60";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Save: *const fn(self: *anyopaque, printerExtensionContext: *IInspectable) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **PrintTaskConfigurationSaveRequestedDeferral) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskConfigurationSaveRequestedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e959d568-f729-44a4-871d-bd0628696a33";
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
pub const IPrintTaskConfigurationSaveRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*PrintTaskConfigurationSaveRequest {
        var _r: *PrintTaskConfigurationSaveRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e06c2879-0d61-4938-91d0-96a45bee8479";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **PrintTaskConfigurationSaveRequest) callconv(.winapi) HRESULT,
    };
};
pub const PrintExtensionContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromDeviceId(deviceId: HSTRING) core.HResult!*IInspectable {
        const factory = @This().IPrintExtensionContextStaticCache.get();
        return try factory.FromDeviceId(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.PrintExtensionContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPrintExtensionContextStaticCache: FactoryCache(IPrintExtensionContextStatic, RUNTIME_NAME) = .{};
};
pub const PrintNotificationEventDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrinterName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintNotificationEventDetails = @ptrCast(self);
        return try this.getPrinterName();
    }
    pub fn getEventData(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintNotificationEventDetails = @ptrCast(self);
        return try this.getEventData();
    }
    pub fn putEventData(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintNotificationEventDetails = @ptrCast(self);
        return try this.putEventData(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.PrintNotificationEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintNotificationEventDetails.GUID;
    pub const IID: Guid = IPrintNotificationEventDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintNotificationEventDetails.SIGNATURE);
};
pub const PrintTaskConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrinterExtensionContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintTaskConfiguration = @ptrCast(self);
        return try this.getPrinterExtensionContext();
    }
    pub fn addSaveRequested(self: *@This(), eventHandler: *TypedEventHandler(PrintTaskConfiguration,PrintTaskConfigurationSaveRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintTaskConfiguration = @ptrCast(self);
        return try this.addSaveRequested(eventHandler);
    }
    pub fn removeSaveRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTaskConfiguration = @ptrCast(self);
        return try this.removeSaveRequested(eventCookie);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.PrintTaskConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskConfiguration.GUID;
    pub const IID: Guid = IPrintTaskConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskConfiguration.SIGNATURE);
};
pub const PrintTaskConfigurationSaveRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Cancel(self: *@This()) core.HResult!void {
        const this: *IPrintTaskConfigurationSaveRequest = @ptrCast(self);
        return try this.Cancel();
    }
    pub fn Save(self: *@This(), printerExtensionContext: *IInspectable) core.HResult!void {
        const this: *IPrintTaskConfigurationSaveRequest = @ptrCast(self);
        return try this.Save(printerExtensionContext);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PrintTaskConfigurationSaveRequestedDeferral {
        const this: *IPrintTaskConfigurationSaveRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IPrintTaskConfigurationSaveRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskConfigurationSaveRequest.GUID;
    pub const IID: Guid = IPrintTaskConfigurationSaveRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskConfigurationSaveRequest.SIGNATURE);
};
pub const PrintTaskConfigurationSaveRequestedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IPrintTaskConfigurationSaveRequestedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskConfigurationSaveRequestedDeferral.GUID;
    pub const IID: Guid = IPrintTaskConfigurationSaveRequestedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskConfigurationSaveRequestedDeferral.SIGNATURE);
};
pub const PrintTaskConfigurationSaveRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*PrintTaskConfigurationSaveRequest {
        const this: *IPrintTaskConfigurationSaveRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskConfigurationSaveRequestedEventArgs.GUID;
    pub const IID: Guid = IPrintTaskConfigurationSaveRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskConfigurationSaveRequestedEventArgs.SIGNATURE);
};
pub const IPrint3DWorkflow = extern struct {
    vtable: *const VTable,
    pub fn getDeviceID(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceID(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrintModelPackage(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetPrintModelPackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPrintReady(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrintReady(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPrintReady(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPrintReady(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPrintRequested(self: *@This(), eventHandler: *TypedEventHandler(Print3DWorkflow,Print3DWorkflowPrintRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrintRequested(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrintRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrintRequested(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrint3DWorkflow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c56f74bd-3669-4a66-ab42-c8151930cd34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceID: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetPrintModelPackage: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_IsPrintReady: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPrintReady: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_PrintRequested: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(Print3DWorkflow,Print3DWorkflowPrintRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrintRequested: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DWorkflow2 = extern struct {
    vtable: *const VTable,
    pub fn addPrinterChanged(self: *@This(), eventHandler: *TypedEventHandler(Print3DWorkflow,Print3DWorkflowPrinterChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrinterChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrinterChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrinterChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrint3DWorkflow2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2a6c54f-8ac1-4918-9741-e34f3004239e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PrinterChanged: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(Print3DWorkflow,Print3DWorkflowPrinterChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrinterChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DWorkflowPrintRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!Print3DWorkflowStatus {
        var _r: Print3DWorkflowStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetExtendedStatus(self: *@This(), value: Print3DWorkflowDetail) core.HResult!void {
        const _c = self.vtable.SetExtendedStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSource(self: *@This(), source: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetSource(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSourceChanged(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.SetSourceChanged(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrintRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19f8c858-5ac8-4b55-8a5f-e61567dafb4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *Print3DWorkflowStatus) callconv(.winapi) HRESULT,
        SetExtendedStatus: *const fn(self: *anyopaque, value: Print3DWorkflowDetail) callconv(.winapi) HRESULT,
        SetSource: *const fn(self: *anyopaque, source: *IInspectable) callconv(.winapi) HRESULT,
        SetSourceChanged: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DWorkflowPrinterChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NewDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrinterChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45226402-95fc-4847-93b3-134dbf5c60f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const Print3DWorkflow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceID(self: *@This()) core.HResult!HSTRING {
        const this: *IPrint3DWorkflow = @ptrCast(self);
        return try this.getDeviceID();
    }
    pub fn GetPrintModelPackage(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrint3DWorkflow = @ptrCast(self);
        return try this.GetPrintModelPackage();
    }
    pub fn getIsPrintReady(self: *@This()) core.HResult!bool {
        const this: *IPrint3DWorkflow = @ptrCast(self);
        return try this.getIsPrintReady();
    }
    pub fn putIsPrintReady(self: *@This(), value: bool) core.HResult!void {
        const this: *IPrint3DWorkflow = @ptrCast(self);
        return try this.putIsPrintReady(value);
    }
    pub fn addPrintRequested(self: *@This(), eventHandler: *TypedEventHandler(Print3DWorkflow,Print3DWorkflowPrintRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrint3DWorkflow = @ptrCast(self);
        return try this.addPrintRequested(eventHandler);
    }
    pub fn removePrintRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrint3DWorkflow = @ptrCast(self);
        return try this.removePrintRequested(eventCookie);
    }
    pub fn addPrinterChanged(self: *@This(), eventHandler: *TypedEventHandler(Print3DWorkflow,Print3DWorkflowPrinterChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IPrint3DWorkflow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrint3DWorkflow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPrinterChanged(eventHandler);
    }
    pub fn removePrinterChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IPrint3DWorkflow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrint3DWorkflow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePrinterChanged(eventCookie);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.Print3DWorkflow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DWorkflow.GUID;
    pub const IID: Guid = IPrint3DWorkflow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DWorkflow.SIGNATURE);
};
pub const Print3DWorkflowDetail = enum(i32) {
    Unknown = 0,
    ModelExceedsPrintBed = 1,
    UploadFailed = 2,
    InvalidMaterialSelection = 3,
    InvalidModel = 4,
    ModelNotManifold = 5,
    InvalidPrintTicket = 6,
};
pub const Print3DWorkflowPrintRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!Print3DWorkflowStatus {
        const this: *IPrint3DWorkflowPrintRequestedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn SetExtendedStatus(self: *@This(), value: Print3DWorkflowDetail) core.HResult!void {
        const this: *IPrint3DWorkflowPrintRequestedEventArgs = @ptrCast(self);
        return try this.SetExtendedStatus(value);
    }
    pub fn SetSource(self: *@This(), source: *IInspectable) core.HResult!void {
        const this: *IPrint3DWorkflowPrintRequestedEventArgs = @ptrCast(self);
        return try this.SetSource(source);
    }
    pub fn SetSourceChanged(self: *@This(), value: bool) core.HResult!void {
        const this: *IPrint3DWorkflowPrintRequestedEventArgs = @ptrCast(self);
        return try this.SetSourceChanged(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.Print3DWorkflowPrintRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DWorkflowPrintRequestedEventArgs.GUID;
    pub const IID: Guid = IPrint3DWorkflowPrintRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DWorkflowPrintRequestedEventArgs.SIGNATURE);
};
pub const Print3DWorkflowPrinterChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrint3DWorkflowPrinterChangedEventArgs = @ptrCast(self);
        return try this.getNewDeviceId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Extensions.Print3DWorkflowPrinterChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DWorkflowPrinterChangedEventArgs.GUID;
    pub const IID: Guid = IPrint3DWorkflowPrinterChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DWorkflowPrinterChangedEventArgs.SIGNATURE);
};
pub const Print3DWorkflowStatus = enum(i32) {
    Abandoned = 0,
    Canceled = 1,
    Failed = 2,
    Slicing = 3,
    Submitted = 4,
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
