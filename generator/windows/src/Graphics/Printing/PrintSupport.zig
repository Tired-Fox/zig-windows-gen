pub const IPrintSupportCommunicationErrorDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getErrorKind(self: *@This()) core.HResult!IppCommunicationErrorKind {
        var _r: IppCommunicationErrorKind = undefined;
        const _c = self.vtable.get_ErrorKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommunicationConfiguration(self: *@This()) core.HResult!*PrintSupportIppCommunicationConfiguration {
        var _r: *PrintSupportIppCommunicationConfiguration = undefined;
        const _c = self.vtable.get_CommunicationConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportCommunicationErrorDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c90151e-ad1b-5081-a491-4a2d94244f2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorKind: *const fn(self: *anyopaque, _r: *IppCommunicationErrorKind) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_CommunicationConfiguration: *const fn(self: *anyopaque, _r: **PrintSupportIppCommunicationConfiguration) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportEnterpriseManagementUIEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportEnterpriseManagementUIEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b1c2850-4bf7-5894-89fa-e89d9ea4eb2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportExtensionSession = extern struct {
    vtable: *const VTable,
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPrintTicketValidationRequested(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrintTicketValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrintTicketValidationRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrintTicketValidationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrintTicketValidationRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPrintDeviceCapabilitiesChanged(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrintDeviceCapabilitiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrintDeviceCapabilitiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrintDeviceCapabilitiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrintDeviceCapabilitiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportExtensionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eea45f1a-f4c6-54b3-a0b8-a559839aa4c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        add_PrintTicketValidationRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrintTicketValidationRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrintTicketValidationRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PrintDeviceCapabilitiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrintDeviceCapabilitiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrintDeviceCapabilitiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportExtensionSession2 = extern struct {
    vtable: *const VTable,
    pub fn addPrinterSelected(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrinterSelectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrinterSelected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrinterSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrinterSelected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportExtensionSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10fa8c11-6de8-5765-8fcf-e716e0f27ed1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PrinterSelected: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrinterSelectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrinterSelected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportExtensionSession3 = extern struct {
    vtable: *const VTable,
    pub fn addCommunicationErrorDetected(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportCommunicationErrorDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommunicationErrorDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommunicationErrorDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommunicationErrorDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportExtensionSession3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d1b755d-1273-5e14-81d3-b6bb582b9ed8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CommunicationErrorDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportCommunicationErrorDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommunicationErrorDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportExtensionTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*PrintSupportExtensionSession {
        var _r: *PrintSupportExtensionSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportExtensionTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae083711-9b09-55d1-a0ae-2a14c5f83d6a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PrintSupportExtensionSession) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportIppCommunicationConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getCommunicationKind(self: *@This()) core.HResult!IppPrinterCommunicationKind {
        var _r: IppPrinterCommunicationKind = undefined;
        const _c = self.vtable.get_CommunicationKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanModifyTimeouts(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanModifyTimeouts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIppAttributeTimeouts(self: *@This()) core.HResult!*PrintSupportIppCommunicationTimeouts {
        var _r: *PrintSupportIppCommunicationTimeouts = undefined;
        const _c = self.vtable.get_IppAttributeTimeouts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIppJobTimeouts(self: *@This()) core.HResult!*PrintSupportIppCommunicationTimeouts {
        var _r: *PrintSupportIppCommunicationTimeouts = undefined;
        const _c = self.vtable.get_IppJobTimeouts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportIppCommunicationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbc36e0b-2d90-53b9-90d2-93faf30dafdd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommunicationKind: *const fn(self: *anyopaque, _r: *IppPrinterCommunicationKind) callconv(.winapi) HRESULT,
        get_CanModifyTimeouts: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IppAttributeTimeouts: *const fn(self: *anyopaque, _r: **PrintSupportIppCommunicationTimeouts) callconv(.winapi) HRESULT,
        get_IppJobTimeouts: *const fn(self: *anyopaque, _r: **PrintSupportIppCommunicationTimeouts) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportIppCommunicationTimeouts = extern struct {
    vtable: *const VTable,
    pub fn getConnectTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ConnectTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConnectTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_ConnectTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSendTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SendTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSendTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_SendTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReceiveTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ReceiveTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReceiveTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_ReceiveTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportIppCommunicationTimeouts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3b2de71-564c-5806-a1a9-c6043ca5d373";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_ConnectTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_SendTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_SendTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ReceiveTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_ReceiveTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportMxdcImageQualityConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getNormalOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_NormalOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_NormalOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDraftOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_DraftOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDraftOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_DraftOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHighOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_HighOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHighOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_HighOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhotographicOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_PhotographicOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhotographicOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_PhotographicOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_TextOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_TextOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutomaticOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_AutomaticOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutomaticOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_AutomaticOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFaxOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        var _r: XpsImageQuality = undefined;
        const _c = self.vtable.get_FaxOutputQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFaxOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const _c = self.vtable.put_FaxOutputQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportMxdcImageQualityConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e0d0b86-d202-58a3-a1ed-2ef9dbc0f291";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NormalOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_NormalOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
        get_DraftOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_DraftOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
        get_HighOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_HighOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
        get_PhotographicOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_PhotographicOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
        get_TextOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_TextOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
        get_AutomaticOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_AutomaticOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
        get_FaxOutputQuality: *const fn(self: *anyopaque, _r: *XpsImageQuality) callconv(.winapi) HRESULT,
        put_FaxOutputQuality: *const fn(self: *anyopaque, value: XpsImageQuality) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintDeviceCapabilitiesChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentPrintDeviceCapabilities(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetCurrentPrintDeviceCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdatePrintDeviceCapabilities(self: *@This(), updatedPdc: *XmlDocument) core.HResult!void {
        const _c = self.vtable.UpdatePrintDeviceCapabilities(@ptrCast(self), updatedPdc);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintDeviceCapabilitiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15969bf0-9028-5722-8a37-7d7c34b41dd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentPrintDeviceCapabilities: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        UpdatePrintDeviceCapabilities: *const fn(self: *anyopaque, updatedPdc: *XmlDocument) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn SetSupportedPdlPassthroughContentTypes(self: *@This(), supportedPdlContentTypes: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.SetSupportedPdlPassthroughContentTypes(@ptrCast(self), supportedPdlContentTypes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResourceLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentPrintDeviceResources(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetCurrentPrintDeviceResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdatePrintDeviceResources(self: *@This(), updatedPdr: *XmlDocument) core.HResult!void {
        const _c = self.vtable.UpdatePrintDeviceResources(@ptrCast(self), updatedPdr);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPrintDeviceCapabilitiesUpdatePolicy(self: *@This(), updatePolicy: *PrintSupportPrintDeviceCapabilitiesUpdatePolicy) core.HResult!void {
        const _c = self.vtable.SetPrintDeviceCapabilitiesUpdatePolicy(@ptrCast(self), updatePolicy);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "469df9e7-fd07-5eeb-a07d-9fcc67f089ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSupportedPdlPassthroughContentTypes: *const fn(self: *anyopaque, supportedPdlContentTypes: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
        get_ResourceLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetCurrentPrintDeviceResources: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        UpdatePrintDeviceResources: *const fn(self: *anyopaque, updatedPdr: *XmlDocument) callconv(.winapi) HRESULT,
        SetPrintDeviceCapabilitiesUpdatePolicy: *const fn(self: *anyopaque, updatePolicy: *PrintSupportPrintDeviceCapabilitiesUpdatePolicy) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintDeviceCapabilitiesChangedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getCommunicationConfiguration(self: *@This()) core.HResult!*PrintSupportIppCommunicationConfiguration {
        var _r: *PrintSupportIppCommunicationConfiguration = undefined;
        const _c = self.vtable.get_CommunicationConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintDeviceCapabilitiesChangedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4e9b3fc-8094-5cb6-a343-ce7a97187b45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommunicationConfiguration: *const fn(self: *anyopaque, _r: **PrintSupportIppCommunicationConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintDeviceCapabilitiesChangedEventArgs4 = extern struct {
    vtable: *const VTable,
    pub fn getMxdcImageQualityConfiguration(self: *@This()) core.HResult!*PrintSupportMxdcImageQualityConfiguration {
        var _r: *PrintSupportMxdcImageQualityConfiguration = undefined;
        const _c = self.vtable.get_MxdcImageQualityConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintDeviceCapabilitiesChangedEventArgs4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31734ad5-9bfb-5bfb-bdef-8476258e3390";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MxdcImageQualityConfiguration: *const fn(self: *anyopaque, _r: **PrintSupportMxdcImageQualityConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintDeviceCapabilitiesUpdatePolicy = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintDeviceCapabilitiesUpdatePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f5fc025-8c35-5529-8038-8cdc3634bbcd";
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
pub const IPrintSupportPrintDeviceCapabilitiesUpdatePolicyStatics = extern struct {
    vtable: *const VTable,
    pub fn CreatePeriodicRefresh(self: *@This(), updatePeriod: TimeSpan) core.HResult!*PrintSupportPrintDeviceCapabilitiesUpdatePolicy {
        var _r: *PrintSupportPrintDeviceCapabilitiesUpdatePolicy = undefined;
        const _c = self.vtable.CreatePeriodicRefresh(@ptrCast(self), updatePeriod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePrintJobRefresh(self: *@This(), numberOfJobs: u32) core.HResult!*PrintSupportPrintDeviceCapabilitiesUpdatePolicy {
        var _r: *PrintSupportPrintDeviceCapabilitiesUpdatePolicy = undefined;
        const _c = self.vtable.CreatePrintJobRefresh(@ptrCast(self), numberOfJobs, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintDeviceCapabilitiesUpdatePolicyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d9e1a70-7c39-551f-aa1f-f8ca35b3119e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePeriodicRefresh: *const fn(self: *anyopaque, updatePeriod: TimeSpan, _r: **PrintSupportPrintDeviceCapabilitiesUpdatePolicy) callconv(.winapi) HRESULT,
        CreatePrintJobRefresh: *const fn(self: *anyopaque, numberOfJobs: u32, _r: **PrintSupportPrintDeviceCapabilitiesUpdatePolicy) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintTicketElement = extern struct {
    vtable: *const VTable,
    pub fn getLocalName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LocalName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NamespaceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNamespaceUri(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_NamespaceUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintTicketElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b2a4489-730d-5be7-80e6-8332941abf13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LocalName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_NamespaceUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NamespaceUri: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrintTicketValidationRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.get_PrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPrintTicketValidationStatus(self: *@This(), status: WorkflowPrintTicketValidationStatus) core.HResult!void {
        const _c = self.vtable.SetPrintTicketValidationStatus(@ptrCast(self), status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrintTicketValidationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "338e4e69-db55-55c7-8338-ef64680a8f90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        SetPrintTicketValidationStatus: *const fn(self: *anyopaque, status: WorkflowPrintTicketValidationStatus) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportPrinterSelectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSourceAppInfo(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_SourceAppInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.get_PrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrintTicket(self: *@This(), value: *WorkflowPrintTicket) core.HResult!void {
        const _c = self.vtable.put_PrintTicket(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAdditionalFeatures(self: *@This(), features: *IIterable(PrintSupportPrintTicketElement)) core.HResult!void {
        const _c = self.vtable.SetAdditionalFeatures(@ptrCast(self), features);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAdditionalParameters(self: *@This(), parameters: *IIterable(PrintSupportPrintTicketElement)) core.HResult!void {
        const _c = self.vtable.SetAdditionalParameters(@ptrCast(self), parameters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowedAdditionalFeaturesAndParametersCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AllowedAdditionalFeaturesAndParametersCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAdaptiveCard(self: *@This(), adaptiveCard: *IAdaptiveCard) core.HResult!void {
        const _c = self.vtable.SetAdaptiveCard(@ptrCast(self), adaptiveCard);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportPrinterSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b1cb7d9-a8a4-5c09-adb2-66165f817977";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceAppInfo: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
        get_PrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        put_PrintTicket: *const fn(self: *anyopaque, value: *WorkflowPrintTicket) callconv(.winapi) HRESULT,
        SetAdditionalFeatures: *const fn(self: *anyopaque, features: *IIterable(PrintSupportPrintTicketElement)) callconv(.winapi) HRESULT,
        SetAdditionalParameters: *const fn(self: *anyopaque, parameters: *IIterable(PrintSupportPrintTicketElement)) callconv(.winapi) HRESULT,
        get_AllowedAdditionalFeaturesAndParametersCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetAdaptiveCard: *const fn(self: *anyopaque, adaptiveCard: *IAdaptiveCard) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportSessionInfo = extern struct {
    vtable: *const VTable,
    pub fn getSourceAppInfo(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_SourceAppInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "852149af-777d-53e9-9ee9-45d3f4b5be9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceAppInfo: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportSettingsActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*PrintSupportSettingsUISession {
        var _r: *PrintSupportSettingsUISession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e1b565e-a013-55ea-9b8c-eea39d9fb6c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PrintSupportSettingsUISession) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportSettingsActivatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getOwnerWindowId(self: *@This()) core.HResult!WindowId {
        var _r: WindowId = undefined;
        const _c = self.vtable.get_OwnerWindowId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportSettingsActivatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "abe45f6e-dc9d-5403-8107-c864d9276367";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OwnerWindowId: *const fn(self: *anyopaque, _r: *WindowId) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSupportSettingsUISession = extern struct {
    vtable: *const VTable,
    pub fn getSessionPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.get_SessionPrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DocumentTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaunchKind(self: *@This()) core.HResult!SettingsLaunchKind {
        var _r: SettingsLaunchKind = undefined;
        const _c = self.vtable.get_LaunchKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdatePrintTicket(self: *@This(), printTicket: *WorkflowPrintTicket) core.HResult!void {
        const _c = self.vtable.UpdatePrintTicket(@ptrCast(self), printTicket);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*PrintSupportSessionInfo {
        var _r: *PrintSupportSessionInfo = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.IPrintSupportSettingsUISession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6da2251-83c3-55e4-a0f8-5de8b062adbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionPrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        get_DocumentTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LaunchKind: *const fn(self: *anyopaque, _r: *SettingsLaunchKind) callconv(.winapi) HRESULT,
        UpdatePrintTicket: *const fn(self: *anyopaque, printTicket: *WorkflowPrintTicket) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **PrintSupportSessionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IppCommunicationErrorKind = enum(i32) {
    Other = 0,
    Timeout = 1,
    ConnectionError = 2,
    AccessDenied = 3,
};
pub const IppPrinterCommunicationKind = enum(i32) {
    Network = 0,
    Usb = 1,
    PrinterConnection = 2,
    UniversalPrint = 3,
    VirtualPrinter = 4,
};
pub const PrintSupportCommunicationErrorDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorKind(self: *@This()) core.HResult!IppCommunicationErrorKind {
        const this: *IPrintSupportCommunicationErrorDetectedEventArgs = @ptrCast(self);
        return try this.getErrorKind();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPrintSupportCommunicationErrorDetectedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getCommunicationConfiguration(self: *@This()) core.HResult!*PrintSupportIppCommunicationConfiguration {
        const this: *IPrintSupportCommunicationErrorDetectedEventArgs = @ptrCast(self);
        return try this.getCommunicationConfiguration();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintSupportCommunicationErrorDetectedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportCommunicationErrorDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportCommunicationErrorDetectedEventArgs.GUID;
    pub const IID: Guid = IPrintSupportCommunicationErrorDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportCommunicationErrorDetectedEventArgs.SIGNATURE);
};
pub const PrintSupportEnterpriseManagementUIEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintSupportEnterpriseManagementUIEventArgs = @ptrCast(self);
        return try this.getPrinter();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportEnterpriseManagementUIEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportEnterpriseManagementUIEventArgs.GUID;
    pub const IID: Guid = IPrintSupportEnterpriseManagementUIEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportEnterpriseManagementUIEventArgs.SIGNATURE);
};
pub const PrintSupportExtensionSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintSupportExtensionSession = @ptrCast(self);
        return try this.getPrinter();
    }
    pub fn addPrintTicketValidationRequested(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrintTicketValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintSupportExtensionSession = @ptrCast(self);
        return try this.addPrintTicketValidationRequested(handler);
    }
    pub fn removePrintTicketValidationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintSupportExtensionSession = @ptrCast(self);
        return try this.removePrintTicketValidationRequested(token);
    }
    pub fn addPrintDeviceCapabilitiesChanged(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrintDeviceCapabilitiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintSupportExtensionSession = @ptrCast(self);
        return try this.addPrintDeviceCapabilitiesChanged(handler);
    }
    pub fn removePrintDeviceCapabilitiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintSupportExtensionSession = @ptrCast(self);
        return try this.removePrintDeviceCapabilitiesChanged(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPrintSupportExtensionSession = @ptrCast(self);
        return try this.Start();
    }
    pub fn addPrinterSelected(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportPrinterSelectedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IPrintSupportExtensionSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportExtensionSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPrinterSelected(handler);
    }
    pub fn removePrinterSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPrintSupportExtensionSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportExtensionSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePrinterSelected(token);
    }
    pub fn addCommunicationErrorDetected(self: *@This(), handler: *TypedEventHandler(PrintSupportExtensionSession,PrintSupportCommunicationErrorDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IPrintSupportExtensionSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportExtensionSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCommunicationErrorDetected(handler);
    }
    pub fn removeCommunicationErrorDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPrintSupportExtensionSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportExtensionSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCommunicationErrorDetected(token);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportExtensionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportExtensionSession.GUID;
    pub const IID: Guid = IPrintSupportExtensionSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportExtensionSession.SIGNATURE);
};
pub const PrintSupportExtensionTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*PrintSupportExtensionSession {
        const this: *IPrintSupportExtensionTriggerDetails = @ptrCast(self);
        return try this.getSession();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportExtensionTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportExtensionTriggerDetails.GUID;
    pub const IID: Guid = IPrintSupportExtensionTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportExtensionTriggerDetails.SIGNATURE);
};
pub const PrintSupportIppCommunicationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommunicationKind(self: *@This()) core.HResult!IppPrinterCommunicationKind {
        const this: *IPrintSupportIppCommunicationConfiguration = @ptrCast(self);
        return try this.getCommunicationKind();
    }
    pub fn getCanModifyTimeouts(self: *@This()) core.HResult!bool {
        const this: *IPrintSupportIppCommunicationConfiguration = @ptrCast(self);
        return try this.getCanModifyTimeouts();
    }
    pub fn getIppAttributeTimeouts(self: *@This()) core.HResult!*PrintSupportIppCommunicationTimeouts {
        const this: *IPrintSupportIppCommunicationConfiguration = @ptrCast(self);
        return try this.getIppAttributeTimeouts();
    }
    pub fn getIppJobTimeouts(self: *@This()) core.HResult!*PrintSupportIppCommunicationTimeouts {
        const this: *IPrintSupportIppCommunicationConfiguration = @ptrCast(self);
        return try this.getIppJobTimeouts();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportIppCommunicationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportIppCommunicationConfiguration.GUID;
    pub const IID: Guid = IPrintSupportIppCommunicationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportIppCommunicationConfiguration.SIGNATURE);
};
pub const PrintSupportIppCommunicationTimeouts = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IPrintSupportIppCommunicationTimeouts = @ptrCast(self);
        return try this.getConnectTimeout();
    }
    pub fn putConnectTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IPrintSupportIppCommunicationTimeouts = @ptrCast(self);
        return try this.putConnectTimeout(value);
    }
    pub fn getSendTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IPrintSupportIppCommunicationTimeouts = @ptrCast(self);
        return try this.getSendTimeout();
    }
    pub fn putSendTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IPrintSupportIppCommunicationTimeouts = @ptrCast(self);
        return try this.putSendTimeout(value);
    }
    pub fn getReceiveTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IPrintSupportIppCommunicationTimeouts = @ptrCast(self);
        return try this.getReceiveTimeout();
    }
    pub fn putReceiveTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IPrintSupportIppCommunicationTimeouts = @ptrCast(self);
        return try this.putReceiveTimeout(value);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportIppCommunicationTimeouts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportIppCommunicationTimeouts.GUID;
    pub const IID: Guid = IPrintSupportIppCommunicationTimeouts.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportIppCommunicationTimeouts.SIGNATURE);
};
pub const PrintSupportMxdcImageQualityConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNormalOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getNormalOutputQuality();
    }
    pub fn putNormalOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putNormalOutputQuality(value);
    }
    pub fn getDraftOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getDraftOutputQuality();
    }
    pub fn putDraftOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putDraftOutputQuality(value);
    }
    pub fn getHighOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getHighOutputQuality();
    }
    pub fn putHighOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putHighOutputQuality(value);
    }
    pub fn getPhotographicOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getPhotographicOutputQuality();
    }
    pub fn putPhotographicOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putPhotographicOutputQuality(value);
    }
    pub fn getTextOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getTextOutputQuality();
    }
    pub fn putTextOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putTextOutputQuality(value);
    }
    pub fn getAutomaticOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getAutomaticOutputQuality();
    }
    pub fn putAutomaticOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putAutomaticOutputQuality(value);
    }
    pub fn getFaxOutputQuality(self: *@This()) core.HResult!XpsImageQuality {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.getFaxOutputQuality();
    }
    pub fn putFaxOutputQuality(self: *@This(), value: XpsImageQuality) core.HResult!void {
        const this: *IPrintSupportMxdcImageQualityConfiguration = @ptrCast(self);
        return try this.putFaxOutputQuality(value);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportMxdcImageQualityConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportMxdcImageQualityConfiguration.GUID;
    pub const IID: Guid = IPrintSupportMxdcImageQualityConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportMxdcImageQualityConfiguration.SIGNATURE);
};
pub const PrintSupportPrintDeviceCapabilitiesChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentPrintDeviceCapabilities(self: *@This()) core.HResult!*XmlDocument {
        const this: *IPrintSupportPrintDeviceCapabilitiesChangedEventArgs = @ptrCast(self);
        return try this.GetCurrentPrintDeviceCapabilities();
    }
    pub fn UpdatePrintDeviceCapabilities(self: *@This(), updatedPdc: *XmlDocument) core.HResult!void {
        const this: *IPrintSupportPrintDeviceCapabilitiesChangedEventArgs = @ptrCast(self);
        return try this.UpdatePrintDeviceCapabilities(updatedPdc);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintSupportPrintDeviceCapabilitiesChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn SetSupportedPdlPassthroughContentTypes(self: *@This(), supportedPdlContentTypes: *IIterable(HSTRING)) core.HResult!void {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSupportedPdlPassthroughContentTypes(supportedPdlContentTypes);
    }
    pub fn getResourceLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceLanguage();
    }
    pub fn GetCurrentPrintDeviceResources(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentPrintDeviceResources();
    }
    pub fn UpdatePrintDeviceResources(self: *@This(), updatedPdr: *XmlDocument) core.HResult!void {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdatePrintDeviceResources(updatedPdr);
    }
    pub fn SetPrintDeviceCapabilitiesUpdatePolicy(self: *@This(), updatePolicy: *PrintSupportPrintDeviceCapabilitiesUpdatePolicy) core.HResult!void {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPrintDeviceCapabilitiesUpdatePolicy(updatePolicy);
    }
    pub fn getCommunicationConfiguration(self: *@This()) core.HResult!*PrintSupportIppCommunicationConfiguration {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCommunicationConfiguration();
    }
    pub fn getMxdcImageQualityConfiguration(self: *@This()) core.HResult!*PrintSupportMxdcImageQualityConfiguration {
        var this: ?*IPrintSupportPrintDeviceCapabilitiesChangedEventArgs4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportPrintDeviceCapabilitiesChangedEventArgs4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMxdcImageQualityConfiguration();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportPrintDeviceCapabilitiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportPrintDeviceCapabilitiesChangedEventArgs.GUID;
    pub const IID: Guid = IPrintSupportPrintDeviceCapabilitiesChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportPrintDeviceCapabilitiesChangedEventArgs.SIGNATURE);
};
pub const PrintSupportPrintDeviceCapabilitiesUpdatePolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreatePeriodicRefresh(updatePeriod: TimeSpan) core.HResult!*PrintSupportPrintDeviceCapabilitiesUpdatePolicy {
        const factory = @This().IPrintSupportPrintDeviceCapabilitiesUpdatePolicyStaticsCache.get();
        return try factory.CreatePeriodicRefresh(updatePeriod);
    }
    pub fn CreatePrintJobRefresh(numberOfJobs: u32) core.HResult!*PrintSupportPrintDeviceCapabilitiesUpdatePolicy {
        const factory = @This().IPrintSupportPrintDeviceCapabilitiesUpdatePolicyStaticsCache.get();
        return try factory.CreatePrintJobRefresh(numberOfJobs);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportPrintDeviceCapabilitiesUpdatePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportPrintDeviceCapabilitiesUpdatePolicy.GUID;
    pub const IID: Guid = IPrintSupportPrintDeviceCapabilitiesUpdatePolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportPrintDeviceCapabilitiesUpdatePolicy.SIGNATURE);
    var _IPrintSupportPrintDeviceCapabilitiesUpdatePolicyStaticsCache: FactoryCache(IPrintSupportPrintDeviceCapabilitiesUpdatePolicyStatics, RUNTIME_NAME) = .{};
};
pub const PrintSupportPrintTicketElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintSupportPrintTicketElement = @ptrCast(self);
        return try this.getLocalName();
    }
    pub fn putLocalName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintSupportPrintTicketElement = @ptrCast(self);
        return try this.putLocalName(value);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintSupportPrintTicketElement = @ptrCast(self);
        return try this.getNamespaceUri();
    }
    pub fn putNamespaceUri(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintSupportPrintTicketElement = @ptrCast(self);
        return try this.putNamespaceUri(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrintSupportPrintTicketElement.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportPrintTicketElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportPrintTicketElement.GUID;
    pub const IID: Guid = IPrintSupportPrintTicketElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportPrintTicketElement.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PrintSupportPrintTicketValidationRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        const this: *IPrintSupportPrintTicketValidationRequestedEventArgs = @ptrCast(self);
        return try this.getPrintTicket();
    }
    pub fn SetPrintTicketValidationStatus(self: *@This(), status: WorkflowPrintTicketValidationStatus) core.HResult!void {
        const this: *IPrintSupportPrintTicketValidationRequestedEventArgs = @ptrCast(self);
        return try this.SetPrintTicketValidationStatus(status);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintSupportPrintTicketValidationRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportPrintTicketValidationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportPrintTicketValidationRequestedEventArgs.GUID;
    pub const IID: Guid = IPrintSupportPrintTicketValidationRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportPrintTicketValidationRequestedEventArgs.SIGNATURE);
};
pub const PrintSupportPrinterSelectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceAppInfo(self: *@This()) core.HResult!*AppInfo {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.getSourceAppInfo();
    }
    pub fn getPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.getPrintTicket();
    }
    pub fn putPrintTicket(self: *@This(), value: *WorkflowPrintTicket) core.HResult!void {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.putPrintTicket(value);
    }
    pub fn SetAdditionalFeatures(self: *@This(), features: *IIterable(PrintSupportPrintTicketElement)) core.HResult!void {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.SetAdditionalFeatures(features);
    }
    pub fn SetAdditionalParameters(self: *@This(), parameters: *IIterable(PrintSupportPrintTicketElement)) core.HResult!void {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.SetAdditionalParameters(parameters);
    }
    pub fn getAllowedAdditionalFeaturesAndParametersCount(self: *@This()) core.HResult!u32 {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.getAllowedAdditionalFeaturesAndParametersCount();
    }
    pub fn SetAdaptiveCard(self: *@This(), adaptiveCard: *IAdaptiveCard) core.HResult!void {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.SetAdaptiveCard(adaptiveCard);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintSupportPrinterSelectedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportPrinterSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportPrinterSelectedEventArgs.GUID;
    pub const IID: Guid = IPrintSupportPrinterSelectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportPrinterSelectedEventArgs.SIGNATURE);
};
pub const PrintSupportSessionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceAppInfo(self: *@This()) core.HResult!*AppInfo {
        const this: *IPrintSupportSessionInfo = @ptrCast(self);
        return try this.getSourceAppInfo();
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintSupportSessionInfo = @ptrCast(self);
        return try this.getPrinter();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportSessionInfo.GUID;
    pub const IID: Guid = IPrintSupportSessionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportSessionInfo.SIGNATURE);
};
pub const PrintSupportSettingsActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*PrintSupportSettingsUISession {
        const this: *IPrintSupportSettingsActivatedEventArgs = @ptrCast(self);
        return try this.getSession();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintSupportSettingsActivatedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getOwnerWindowId(self: *@This()) core.HResult!WindowId {
        var this: ?*IPrintSupportSettingsActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintSupportSettingsActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerWindowId();
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
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportSettingsActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportSettingsActivatedEventArgs.GUID;
    pub const IID: Guid = IPrintSupportSettingsActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportSettingsActivatedEventArgs.SIGNATURE);
};
pub const PrintSupportSettingsUISession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        const this: *IPrintSupportSettingsUISession = @ptrCast(self);
        return try this.getSessionPrintTicket();
    }
    pub fn getDocumentTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintSupportSettingsUISession = @ptrCast(self);
        return try this.getDocumentTitle();
    }
    pub fn getLaunchKind(self: *@This()) core.HResult!SettingsLaunchKind {
        const this: *IPrintSupportSettingsUISession = @ptrCast(self);
        return try this.getLaunchKind();
    }
    pub fn UpdatePrintTicket(self: *@This(), printTicket: *WorkflowPrintTicket) core.HResult!void {
        const this: *IPrintSupportSettingsUISession = @ptrCast(self);
        return try this.UpdatePrintTicket(printTicket);
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*PrintSupportSessionInfo {
        const this: *IPrintSupportSettingsUISession = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintSupport.PrintSupportSettingsUISession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSupportSettingsUISession.GUID;
    pub const IID: Guid = IPrintSupportSettingsUISession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSupportSettingsUISession.SIGNATURE);
};
pub const SettingsLaunchKind = enum(i32) {
    JobPrintTicket = 0,
    UserDefaultPrintTicket = 1,
};
pub const WorkflowPrintTicketValidationStatus = enum(i32) {
    Resolved = 0,
    Conflicting = 1,
    Invalid = 2,
};
pub const XpsImageQuality = enum(i32) {
    JpegHighCompression = 0,
    JpegMediumCompression = 1,
    JpegLowCompression = 2,
    Png = 3,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const WindowId = @import("../../UI.zig").WindowId;
const FactoryCache = @import("../../core.zig").FactoryCache;
const XmlDocument = @import("../../Data/Xml/Dom.zig").XmlDocument;
const AppInfo = @import("../../ApplicationModel.zig").AppInfo;
const WorkflowPrintTicket = @import("./PrintTicket.zig").WorkflowPrintTicket;
const IAdaptiveCard = @import("../../UI/Shell.zig").IAdaptiveCard;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const ActivationKind = @import("../../ApplicationModel/Activation.zig").ActivationKind;
const HSTRING = @import("../../root.zig").HSTRING;
const IActivatedEventArgsWithUser = @import("../../ApplicationModel/Activation.zig").IActivatedEventArgsWithUser;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const HResult = @import("../../Foundation.zig").HResult;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IppPrintDevice = @import("../../Devices/Printers.zig").IppPrintDevice;
const SplashScreen = @import("../../ApplicationModel/Activation.zig").SplashScreen;
const IActivatedEventArgs = @import("../../ApplicationModel/Activation.zig").IActivatedEventArgs;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const ApplicationExecutionState = @import("../../ApplicationModel/Activation.zig").ApplicationExecutionState;
const User = @import("../../System.zig").User;
