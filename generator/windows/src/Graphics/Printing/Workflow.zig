pub const IPrintWorkflowBackgroundSession = extern struct {
    vtable: *const VTable,
    pub fn addSetupRequested(self: *@This(), setupEventHandler: *TypedEventHandler(PrintWorkflowBackgroundSession,PrintWorkflowBackgroundSetupRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SetupRequested(@ptrCast(self), setupEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSetupRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SetupRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSubmitted(self: *@This(), submittedEventHandler: *TypedEventHandler(PrintWorkflowBackgroundSession,PrintWorkflowSubmittedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Submitted(@ptrCast(self), submittedEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSubmitted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Submitted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        var _r: PrintWorkflowSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowBackgroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b7913ba-0c5e-528a-7458-86a46cbddc45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SetupRequested: *const fn(self: *anyopaque, setupEventHandler: *TypedEventHandler(PrintWorkflowBackgroundSession,PrintWorkflowBackgroundSetupRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SetupRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Submitted: *const fn(self: *anyopaque, submittedEventHandler: *TypedEventHandler(PrintWorkflowBackgroundSession,PrintWorkflowSubmittedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Submitted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PrintWorkflowSessionStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowBackgroundSetupRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetUserPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicket) {
        var _r: *IAsyncOperation(WorkflowPrintTicket) = undefined;
        const _c = self.vtable.GetUserPrintTicketAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetRequiresUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetRequiresUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowBackgroundSetupRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43e97342-1750-59c9-61fb-383748a20362";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUserPrintTicketAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WorkflowPrintTicket)) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        SetRequiresUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getSourceAppDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceAppDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJobTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JobTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0aac4ed-fd4b-5df5-4bb6-8d0d159ebe3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceAppDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JobTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn AbortPrintFlow(self: *@This(), reason: PrintWorkflowJobAbortReason) core.HResult!void {
        const _c = self.vtable.AbortPrintFlow(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de350a50-a6d4-5be2-8b9a-09d3d39ea780";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AbortPrintFlow: *const fn(self: *anyopaque, reason: PrintWorkflowJobAbortReason) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowForegroundSession = extern struct {
    vtable: *const VTable,
    pub fn addSetupRequested(self: *@This(), setupEventHandler: *TypedEventHandler(PrintWorkflowForegroundSession,PrintWorkflowForegroundSetupRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SetupRequested(@ptrCast(self), setupEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSetupRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SetupRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addXpsDataAvailable(self: *@This(), xpsDataAvailableEventHandler: *TypedEventHandler(PrintWorkflowForegroundSession,PrintWorkflowXpsDataAvailableEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_XpsDataAvailable(@ptrCast(self), xpsDataAvailableEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeXpsDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_XpsDataAvailable(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        var _r: PrintWorkflowSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowForegroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c79b63d0-f8ec-4ceb-953a-c8876157dd33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SetupRequested: *const fn(self: *anyopaque, setupEventHandler: *TypedEventHandler(PrintWorkflowForegroundSession,PrintWorkflowForegroundSetupRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SetupRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_XpsDataAvailable: *const fn(self: *anyopaque, xpsDataAvailableEventHandler: *TypedEventHandler(PrintWorkflowForegroundSession,PrintWorkflowXpsDataAvailableEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_XpsDataAvailable: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PrintWorkflowSessionStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowForegroundSetupRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetUserPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicket) {
        var _r: *IAsyncOperation(WorkflowPrintTicket) = undefined;
        const _c = self.vtable.GetUserPrintTicketAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowForegroundSetupRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbe38247-9c1b-4dd3-9b2b-c80468d941b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUserPrintTicketAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WorkflowPrintTicket)) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*PrintWorkflowJobUISession {
        var _r: *PrintWorkflowJobUISession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4bd5e6d-034e-5e00-a616-f961a033dcc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PrintWorkflowJobUISession) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobBackgroundSession = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        var _r: PrintWorkflowSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addJobStarting(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowJobStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_JobStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeJobStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_JobStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPdlModificationRequested(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowPdlModificationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PdlModificationRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePdlModificationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PdlModificationRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobBackgroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5ec6ad8-20c9-5d51-8507-2734b46f96c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PrintWorkflowSessionStatus) callconv(.winapi) HRESULT,
        add_JobStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowJobStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_JobStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PdlModificationRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowPdlModificationRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PdlModificationRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobBackgroundSession2 = extern struct {
    vtable: *const VTable,
    pub fn addJobIssueDetected(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowJobIssueDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_JobIssueDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeJobIssueDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_JobIssueDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobBackgroundSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "592aadaf-ef26-5a55-ad21-5f63ffcf8366";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_JobIssueDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowJobIssueDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_JobIssueDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobIssueDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getJobIssueKind(self: *@This()) core.HResult!PrintWorkflowJobIssueKind {
        var _r: PrintWorkflowJobIssueKind = undefined;
        const _c = self.vtable.get_JobIssueKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkipSystemErrorToast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SkipSystemErrorToast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSkipSystemErrorToast(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SkipSystemErrorToast(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        var _r: *PrintWorkflowPrinterJob = undefined;
        const _c = self.vtable.get_PrinterJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUILauncher(self: *@This()) core.HResult!*PrintWorkflowUILauncher {
        var _r: *PrintWorkflowUILauncher = undefined;
        const _c = self.vtable.get_UILauncher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobIssueDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de58a46e-e41e-550a-a9fb-4b1f93fb9d98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_JobIssueKind: *const fn(self: *anyopaque, _r: *PrintWorkflowJobIssueKind) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_SkipSystemErrorToast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SkipSystemErrorToast: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PrinterJob: *const fn(self: *anyopaque, _r: **PrintWorkflowPrinterJob) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_UILauncher: *const fn(self: *anyopaque, _r: **PrintWorkflowUILauncher) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobNotificationEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        var _r: *PrintWorkflowPrinterJob = undefined;
        const _c = self.vtable.get_PrinterJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobNotificationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ae16fba-5398-5eba-b472-978650186a9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_PrinterJob: *const fn(self: *anyopaque, _r: **PrintWorkflowPrinterJob) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSkipSystemRendering(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetSkipSystemRendering(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3d99ba8-31ad-5e09-b0d7-601b97f161ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        SetSkipSystemRendering: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobStartingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsIppCompressionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIppCompressionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableIppCompressionForJob(self: *@This()) core.HResult!void {
        const _c = self.vtable.DisableIppCompressionForJob(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSkipSystemFaxUI(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SkipSystemFaxUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSkipSystemFaxUI(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SkipSystemFaxUI(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobStartingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7deded67-d3dc-5b23-8690-4ebfc0f0914a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsIppCompressionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        DisableIppCompressionForJob: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_SkipSystemFaxUI: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SkipSystemFaxUI: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getPrintWorkflowJobSession(self: *@This()) core.HResult!*PrintWorkflowJobBackgroundSession {
        var _r: *PrintWorkflowJobBackgroundSession = undefined;
        const _c = self.vtable.get_PrintWorkflowJobSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff296129-60e2-51db-ba8c-e2ccddb516b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintWorkflowJobSession: *const fn(self: *anyopaque, _r: **PrintWorkflowJobBackgroundSession) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobUISession = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        var _r: PrintWorkflowSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPdlDataAvailable(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowPdlDataAvailableEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PdlDataAvailable(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePdlDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PdlDataAvailable(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addJobNotification(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowJobNotificationEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_JobNotification(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeJobNotification(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_JobNotification(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobUISession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00c8736b-7637-5687-a302-0f664d2aac65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PrintWorkflowSessionStatus) callconv(.winapi) HRESULT,
        add_PdlDataAvailable: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowPdlDataAvailableEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PdlDataAvailable: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_JobNotification: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowJobNotificationEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_JobNotification: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowJobUISession2 = extern struct {
    vtable: *const VTable,
    pub fn addVirtualPrinterUIDataAvailable(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowVirtualPrinterUIEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VirtualPrinterUIDataAvailable(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVirtualPrinterUIDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VirtualPrinterUIDataAvailable(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowJobUISession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8529368-9174-5c78-9fdb-894a82e92ada";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_VirtualPrinterUIDataAvailable: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowVirtualPrinterUIEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VirtualPrinterUIDataAvailable: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowObjectModelSourceFileContent = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowObjectModelSourceFileContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c36c8a6a-8a2a-419a-b3c3-2090e6bfab2f";
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
pub const IPrintWorkflowObjectModelSourceFileContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), xpsStream: *IInputStream) core.HResult!*PrintWorkflowObjectModelSourceFileContent {
        var _r: *PrintWorkflowObjectModelSourceFileContent = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), xpsStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowObjectModelSourceFileContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93b1b903-f013-56d6-b708-99ac2ccb12ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, xpsStream: *IInputStream, _r: **PrintWorkflowObjectModelSourceFileContent) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowObjectModelTargetPackage = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowObjectModelTargetPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d96bc74-9b54-4ca1-ad3a-979c3d44ddac";
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
pub const IPrintWorkflowPdlConverter = extern struct {
    vtable: *const VTable,
    pub fn ConvertPdlAsync(self: *@This(), printTicket: *WorkflowPrintTicket, inputStream: *IInputStream, outputStream: *IOutputStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConvertPdlAsync(@ptrCast(self), printTicket, inputStream, outputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40604b62-0ae4-51f1-818f-731dc0b005ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertPdlAsync: *const fn(self: *anyopaque, printTicket: *WorkflowPrintTicket, inputStream: *IInputStream, outputStream: *IOutputStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPdlConverter2 = extern struct {
    vtable: *const VTable,
    pub fn ConvertPdlAsync(self: *@This(), printTicket: *WorkflowPrintTicket, inputStream: *IInputStream, outputStream: *IOutputStream, hostBasedProcessingOperations: PdlConversionHostBasedProcessingOperations) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConvertPdlAsync(@ptrCast(self), printTicket, inputStream, outputStream, hostBasedProcessingOperations, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlConverter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "854ceec1-7837-5b93-b7af-57a6998c2f71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertPdlAsync: *const fn(self: *anyopaque, printTicket: *WorkflowPrintTicket, inputStream: *IInputStream, outputStream: *IOutputStream, hostBasedProcessingOperations: PdlConversionHostBasedProcessingOperations, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPdlDataAvailableEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        var _r: *PrintWorkflowPrinterJob = undefined;
        const _c = self.vtable.get_PrinterJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        var _r: *PrintWorkflowPdlSourceContent = undefined;
        const _c = self.vtable.get_SourceContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlDataAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4ad6b50-1547-5991-a0ef-e2ee20211518";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_PrinterJob: *const fn(self: *anyopaque, _r: **PrintWorkflowPrinterJob) callconv(.winapi) HRESULT,
        get_SourceContent: *const fn(self: *anyopaque, _r: **PrintWorkflowPdlSourceContent) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPdlModificationRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        var _r: *PrintWorkflowPrinterJob = undefined;
        const _c = self.vtable.get_PrinterJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        var _r: *PrintWorkflowPdlSourceContent = undefined;
        const _c = self.vtable.get_SourceContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUILauncher(self: *@This()) core.HResult!*PrintWorkflowUILauncher {
        var _r: *PrintWorkflowUILauncher = undefined;
        const _c = self.vtable.get_UILauncher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateJobOnPrinter(self: *@This(), targetContentType: HSTRING) core.HResult!*PrintWorkflowPdlTargetStream {
        var _r: *PrintWorkflowPdlTargetStream = undefined;
        const _c = self.vtable.CreateJobOnPrinter(@ptrCast(self), targetContentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateJobOnPrinterWithAttributes(self: *@This(), jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), targetContentType: HSTRING) core.HResult!*PrintWorkflowPdlTargetStream {
        var _r: *PrintWorkflowPdlTargetStream = undefined;
        const _c = self.vtable.CreateJobOnPrinterWithAttributes(@ptrCast(self), jobAttributes, targetContentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateJobOnPrinterWithAttributesBuffer(self: *@This(), jobAttributesBuffer: *IBuffer, targetContentType: HSTRING) core.HResult!*PrintWorkflowPdlTargetStream {
        var _r: *PrintWorkflowPdlTargetStream = undefined;
        const _c = self.vtable.CreateJobOnPrinterWithAttributesBuffer(@ptrCast(self), jobAttributesBuffer, targetContentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPdlConverter(self: *@This(), conversionType: PrintWorkflowPdlConversionType) core.HResult!*PrintWorkflowPdlConverter {
        var _r: *PrintWorkflowPdlConverter = undefined;
        const _c = self.vtable.GetPdlConverter(@ptrCast(self), conversionType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlModificationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a339a61-2e13-5edd-a707-ceec61d7333b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_PrinterJob: *const fn(self: *anyopaque, _r: **PrintWorkflowPrinterJob) callconv(.winapi) HRESULT,
        get_SourceContent: *const fn(self: *anyopaque, _r: **PrintWorkflowPdlSourceContent) callconv(.winapi) HRESULT,
        get_UILauncher: *const fn(self: *anyopaque, _r: **PrintWorkflowUILauncher) callconv(.winapi) HRESULT,
        CreateJobOnPrinter: *const fn(self: *anyopaque, targetContentType: HSTRING, _r: **PrintWorkflowPdlTargetStream) callconv(.winapi) HRESULT,
        CreateJobOnPrinterWithAttributes: *const fn(self: *anyopaque, jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), targetContentType: HSTRING, _r: **PrintWorkflowPdlTargetStream) callconv(.winapi) HRESULT,
        CreateJobOnPrinterWithAttributesBuffer: *const fn(self: *anyopaque, jobAttributesBuffer: *IBuffer, targetContentType: HSTRING, _r: **PrintWorkflowPdlTargetStream) callconv(.winapi) HRESULT,
        GetPdlConverter: *const fn(self: *anyopaque, conversionType: PrintWorkflowPdlConversionType, _r: **PrintWorkflowPdlConverter) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPdlModificationRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn CreateJobOnPrinterWithAttributes(self: *@This(), jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), targetContentType: HSTRING, operationAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), jobAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, operationAttributesMergePolicy: PrintWorkflowAttributesMergePolicy) core.HResult!*PrintWorkflowPdlTargetStream {
        var _r: *PrintWorkflowPdlTargetStream = undefined;
        const _c = self.vtable.CreateJobOnPrinterWithAttributes(@ptrCast(self), jobAttributes, targetContentType, operationAttributes, jobAttributesMergePolicy, operationAttributesMergePolicy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateJobOnPrinterWithAttributesBuffer(self: *@This(), jobAttributesBuffer: *IBuffer, targetContentType: HSTRING, operationAttributesBuffer: *IBuffer, jobAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, operationAttributesMergePolicy: PrintWorkflowAttributesMergePolicy) core.HResult!*PrintWorkflowPdlTargetStream {
        var _r: *PrintWorkflowPdlTargetStream = undefined;
        const _c = self.vtable.CreateJobOnPrinterWithAttributesBuffer(@ptrCast(self), jobAttributesBuffer, targetContentType, operationAttributesBuffer, jobAttributesMergePolicy, operationAttributesMergePolicy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlModificationRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d692147-6c62-5e31-a0e7-d49f92c111c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateJobOnPrinterWithAttributes: *const fn(self: *anyopaque, jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), targetContentType: HSTRING, operationAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), jobAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, operationAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, _r: **PrintWorkflowPdlTargetStream) callconv(.winapi) HRESULT,
        CreateJobOnPrinterWithAttributesBuffer: *const fn(self: *anyopaque, jobAttributesBuffer: *IBuffer, targetContentType: HSTRING, operationAttributesBuffer: *IBuffer, jobAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, operationAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, _r: **PrintWorkflowPdlTargetStream) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPdlSourceContent = extern struct {
    vtable: *const VTable,
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetInputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContentFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetContentFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlSourceContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92f7fc41-32b8-56ab-845e-b1e68b3aedd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetInputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        GetContentFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPdlTargetStream = extern struct {
    vtable: *const VTable,
    pub fn GetOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.GetOutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CompleteStreamSubmission(self: *@This(), status: PrintWorkflowSubmittedStatus) core.HResult!void {
        const _c = self.vtable.CompleteStreamSubmission(@ptrCast(self), status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPdlTargetStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a742dfe5-1ee3-52a9-9f9f-2e2043180fd1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        CompleteStreamSubmission: *const fn(self: *anyopaque, status: PrintWorkflowSubmittedStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPrinterJob = extern struct {
    vtable: *const VTable,
    pub fn getJobId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_JobId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetJobStatus(self: *@This()) core.HResult!PrintWorkflowPrinterJobStatus {
        var _r: PrintWorkflowPrinterJobStatus = undefined;
        const _c = self.vtable.GetJobStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetJobPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.GetJobPrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetJobAttributesAsBuffer(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetJobAttributesAsBuffer(@ptrCast(self), attributeNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetJobAttributes(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IMap(HSTRING,IppAttributeValue) {
        var _r: *IMap(HSTRING,IppAttributeValue) = undefined;
        const _c = self.vtable.GetJobAttributes(@ptrCast(self), attributeNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetJobAttributesFromBuffer(self: *@This(), jobAttributesBuffer: *IBuffer) core.HResult!*IppSetAttributesResult {
        var _r: *IppSetAttributesResult = undefined;
        const _c = self.vtable.SetJobAttributesFromBuffer(@ptrCast(self), jobAttributesBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetJobAttributes(self: *@This(), jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue))) core.HResult!*IppSetAttributesResult {
        var _r: *IppSetAttributesResult = undefined;
        const _c = self.vtable.SetJobAttributes(@ptrCast(self), jobAttributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPrinterJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12009f94-0d14-5443-bc09-250311ce570b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_JobId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        GetJobStatus: *const fn(self: *anyopaque, _r: *PrintWorkflowPrinterJobStatus) callconv(.winapi) HRESULT,
        GetJobPrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        GetJobAttributesAsBuffer: *const fn(self: *anyopaque, attributeNames: *IIterable(HSTRING), _r: **IBuffer) callconv(.winapi) HRESULT,
        GetJobAttributes: *const fn(self: *anyopaque, attributeNames: *IIterable(HSTRING), _r: **IMap(HSTRING,IppAttributeValue)) callconv(.winapi) HRESULT,
        SetJobAttributesFromBuffer: *const fn(self: *anyopaque, jobAttributesBuffer: *IBuffer, _r: **IppSetAttributesResult) callconv(.winapi) HRESULT,
        SetJobAttributes: *const fn(self: *anyopaque, jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), _r: **IppSetAttributesResult) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowPrinterJob2 = extern struct {
    vtable: *const VTable,
    pub fn ConvertPrintTicketToJobAttributes(self: *@This(), printTicket: *WorkflowPrintTicket, targetPdlFormat: HSTRING) core.HResult!*IMap(HSTRING,IppAttributeValue) {
        var _r: *IMap(HSTRING,IppAttributeValue) = undefined;
        const _c = self.vtable.ConvertPrintTicketToJobAttributes(@ptrCast(self), printTicket, targetPdlFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowPrinterJob2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "747e21d7-69a9-5229-b8f0-874ca1a8871b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertPrintTicketToJobAttributes: *const fn(self: *anyopaque, printTicket: *WorkflowPrintTicket, targetPdlFormat: HSTRING, _r: **IMap(HSTRING,IppAttributeValue)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowSourceContent = extern struct {
    vtable: *const VTable,
    pub fn GetJobPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicket) {
        var _r: *IAsyncOperation(WorkflowPrintTicket) = undefined;
        const _c = self.vtable.GetJobPrintTicketAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSourceSpoolDataAsStreamContent(self: *@This()) core.HResult!*PrintWorkflowSpoolStreamContent {
        var _r: *PrintWorkflowSpoolStreamContent = undefined;
        const _c = self.vtable.GetSourceSpoolDataAsStreamContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSourceSpoolDataAsXpsObjectModel(self: *@This()) core.HResult!*PrintWorkflowObjectModelSourceFileContent {
        var _r: *PrintWorkflowObjectModelSourceFileContent = undefined;
        const _c = self.vtable.GetSourceSpoolDataAsXpsObjectModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowSourceContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a28c641-ceb1-4533-bb73-fbe63eefdb18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetJobPrintTicketAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WorkflowPrintTicket)) callconv(.winapi) HRESULT,
        GetSourceSpoolDataAsStreamContent: *const fn(self: *anyopaque, _r: **PrintWorkflowSpoolStreamContent) callconv(.winapi) HRESULT,
        GetSourceSpoolDataAsXpsObjectModel: *const fn(self: *anyopaque, _r: **PrintWorkflowObjectModelSourceFileContent) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowSpoolStreamContent = extern struct {
    vtable: *const VTable,
    pub fn GetInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetInputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowSpoolStreamContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72e55ece-e406-4b74-84e1-3ff3fdcdaf70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetInputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowStreamTarget = extern struct {
    vtable: *const VTable,
    pub fn GetOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.GetOutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowStreamTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b23bba84-8565-488b-9839-1c9e7c7aa916";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowSubmittedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!*PrintWorkflowSubmittedOperation {
        var _r: *PrintWorkflowSubmittedOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTarget(self: *@This(), jobPrintTicket: *WorkflowPrintTicket) core.HResult!*PrintWorkflowTarget {
        var _r: *PrintWorkflowTarget = undefined;
        const _c = self.vtable.GetTarget(@ptrCast(self), jobPrintTicket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowSubmittedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3add0a41-3794-5569-5c87-40e8ff720f83";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: **PrintWorkflowSubmittedOperation) callconv(.winapi) HRESULT,
        GetTarget: *const fn(self: *anyopaque, jobPrintTicket: *WorkflowPrintTicket, _r: **PrintWorkflowTarget) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowSubmittedOperation = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This(), status: PrintWorkflowSubmittedStatus) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self), status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXpsContent(self: *@This()) core.HResult!*PrintWorkflowSourceContent {
        var _r: *PrintWorkflowSourceContent = undefined;
        const _c = self.vtable.get_XpsContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowSubmittedOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e4e6216-3be1-5f0f-5c81-a5a2bd4eab0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque, status: PrintWorkflowSubmittedStatus) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_XpsContent: *const fn(self: *anyopaque, _r: **PrintWorkflowSourceContent) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowTarget = extern struct {
    vtable: *const VTable,
    pub fn getTargetAsStream(self: *@This()) core.HResult!*PrintWorkflowStreamTarget {
        var _r: *PrintWorkflowStreamTarget = undefined;
        const _c = self.vtable.get_TargetAsStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetAsXpsObjectModelPackage(self: *@This()) core.HResult!*PrintWorkflowObjectModelTargetPackage {
        var _r: *PrintWorkflowObjectModelTargetPackage = undefined;
        const _c = self.vtable.get_TargetAsXpsObjectModelPackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29da276c-0a73-5aed-4f3d-970d3251f057";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetAsStream: *const fn(self: *anyopaque, _r: **PrintWorkflowStreamTarget) callconv(.winapi) HRESULT,
        get_TargetAsXpsObjectModelPackage: *const fn(self: *anyopaque, _r: **PrintWorkflowObjectModelTargetPackage) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getPrintWorkflowSession(self: *@This()) core.HResult!*PrintWorkflowBackgroundSession {
        var _r: *PrintWorkflowBackgroundSession = undefined;
        const _c = self.vtable.get_PrintWorkflowSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5739d868-9d86-4052-b0cb-f310becd59bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintWorkflowSession: *const fn(self: *anyopaque, _r: **PrintWorkflowBackgroundSession) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowUIActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPrintWorkflowSession(self: *@This()) core.HResult!*PrintWorkflowForegroundSession {
        var _r: *PrintWorkflowForegroundSession = undefined;
        const _c = self.vtable.get_PrintWorkflowSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowUIActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc8a844d-09eb-5746-72a6-8dc8b5edbe9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintWorkflowSession: *const fn(self: *anyopaque, _r: **PrintWorkflowForegroundSession) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowUILauncher = extern struct {
    vtable: *const VTable,
    pub fn IsUILaunchEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsUILaunchEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchAndCompleteUIAsync(self: *@This()) core.HResult!*IAsyncOperation(PrintWorkflowUICompletionStatus) {
        var _r: *IAsyncOperation(PrintWorkflowUICompletionStatus) = undefined;
        const _c = self.vtable.LaunchAndCompleteUIAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowUILauncher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64e9e22f-14cc-5828-96fb-39163fb6c378";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsUILaunchEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        LaunchAndCompleteUIAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PrintWorkflowUICompletionStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowVirtualPrinterDataAvailableEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        var _r: *PrintWorkflowPdlSourceContent = undefined;
        const _c = self.vtable.get_SourceContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUILauncher(self: *@This()) core.HResult!*PrintWorkflowUILauncher {
        var _r: *PrintWorkflowUILauncher = undefined;
        const _c = self.vtable.get_UILauncher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetJobPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.GetJobPrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPdlConverter(self: *@This(), conversionType: PrintWorkflowPdlConversionType) core.HResult!*PrintWorkflowPdlConverter {
        var _r: *PrintWorkflowPdlConverter = undefined;
        const _c = self.vtable.GetPdlConverter(@ptrCast(self), conversionType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTargetFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetTargetFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CompleteJob(self: *@This(), status: PrintWorkflowSubmittedStatus) core.HResult!void {
        const _c = self.vtable.CompleteJob(@ptrCast(self), status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowVirtualPrinterDataAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b7d5003-14a8-5d52-a428-07330fbab11f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_SourceContent: *const fn(self: *anyopaque, _r: **PrintWorkflowPdlSourceContent) callconv(.winapi) HRESULT,
        get_UILauncher: *const fn(self: *anyopaque, _r: **PrintWorkflowUILauncher) callconv(.winapi) HRESULT,
        GetJobPrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        GetPdlConverter: *const fn(self: *anyopaque, conversionType: PrintWorkflowPdlConversionType, _r: **PrintWorkflowPdlConverter) callconv(.winapi) HRESULT,
        GetTargetFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CompleteJob: *const fn(self: *anyopaque, status: PrintWorkflowSubmittedStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowVirtualPrinterSession = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        var _r: PrintWorkflowSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addVirtualPrinterDataAvailable(self: *@This(), handler: *TypedEventHandler(PrintWorkflowVirtualPrinterSession,PrintWorkflowVirtualPrinterDataAvailableEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VirtualPrinterDataAvailable(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVirtualPrinterDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VirtualPrinterDataAvailable(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowVirtualPrinterSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa3926f2-8485-5c27-a016-9d39e3ba2614";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PrintWorkflowSessionStatus) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        add_VirtualPrinterDataAvailable: *const fn(self: *anyopaque, handler: *TypedEventHandler(PrintWorkflowVirtualPrinterSession,PrintWorkflowVirtualPrinterDataAvailableEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VirtualPrinterDataAvailable: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowVirtualPrinterTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getVirtualPrinterSession(self: *@This()) core.HResult!*PrintWorkflowVirtualPrinterSession {
        var _r: *PrintWorkflowVirtualPrinterSession = undefined;
        const _c = self.vtable.get_VirtualPrinterSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowVirtualPrinterTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff8f2297-727b-53ec-b9e0-f393f72d4e50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VirtualPrinterSession: *const fn(self: *anyopaque, _r: **PrintWorkflowVirtualPrinterSession) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowVirtualPrinterUIEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        var _r: *PrintWorkflowConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.get_Printer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        var _r: *PrintWorkflowPdlSourceContent = undefined;
        const _c = self.vtable.get_SourceContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetJobPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.GetJobPrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowVirtualPrinterUIEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "334dbbca-bf10-585f-b7e0-58c4aa43a03f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **PrintWorkflowConfiguration) callconv(.winapi) HRESULT,
        get_Printer: *const fn(self: *anyopaque, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        get_SourceContent: *const fn(self: *anyopaque, _r: **PrintWorkflowPdlSourceContent) callconv(.winapi) HRESULT,
        GetJobPrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintWorkflowXpsDataAvailableEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!*PrintWorkflowSubmittedOperation {
        var _r: *PrintWorkflowSubmittedOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.IPrintWorkflowXpsDataAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d11c331-54d1-434e-be0e-82c5fa58e5b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: **PrintWorkflowSubmittedOperation) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const PdlConversionHostBasedProcessingOperations = enum(i32) {
    None = 0,
    PageRotation = 1,
    PageOrdering = 2,
    Copies = 4,
    BlankPageInsertion = 8,
    All = -1,
};
pub const PrintWorkflowAttributesMergePolicy = enum(i32) {
    MergePreferPrintTicketOnConflict = 0,
    MergePreferPsaOnConflict = 1,
    DoNotMergeWithPrintTicket = 2,
};
pub const PrintWorkflowBackgroundSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSetupRequested(self: *@This(), setupEventHandler: *TypedEventHandler(PrintWorkflowBackgroundSession,PrintWorkflowBackgroundSetupRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowBackgroundSession = @ptrCast(self);
        return try this.addSetupRequested(setupEventHandler);
    }
    pub fn removeSetupRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowBackgroundSession = @ptrCast(self);
        return try this.removeSetupRequested(token);
    }
    pub fn addSubmitted(self: *@This(), submittedEventHandler: *TypedEventHandler(PrintWorkflowBackgroundSession,PrintWorkflowSubmittedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowBackgroundSession = @ptrCast(self);
        return try this.addSubmitted(submittedEventHandler);
    }
    pub fn removeSubmitted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowBackgroundSession = @ptrCast(self);
        return try this.removeSubmitted(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        const this: *IPrintWorkflowBackgroundSession = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowBackgroundSession = @ptrCast(self);
        return try this.Start();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowBackgroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowBackgroundSession.GUID;
    pub const IID: Guid = IPrintWorkflowBackgroundSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowBackgroundSession.SIGNATURE);
};
pub const PrintWorkflowBackgroundSetupRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetUserPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicket) {
        const this: *IPrintWorkflowBackgroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.GetUserPrintTicketAsync();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowBackgroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn SetRequiresUI(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowBackgroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.SetRequiresUI();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowBackgroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowBackgroundSetupRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowBackgroundSetupRequestedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowBackgroundSetupRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowBackgroundSetupRequestedEventArgs.SIGNATURE);
};
pub const PrintWorkflowConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AbortPrintFlow(self: *@This(), reason: PrintWorkflowJobAbortReason) core.HResult!void {
        var this: ?*IPrintWorkflowConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AbortPrintFlow(reason);
    }
    pub fn getSourceAppDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintWorkflowConfiguration = @ptrCast(self);
        return try this.getSourceAppDisplayName();
    }
    pub fn getJobTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintWorkflowConfiguration = @ptrCast(self);
        return try this.getJobTitle();
    }
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintWorkflowConfiguration = @ptrCast(self);
        return try this.getSessionId();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowConfiguration.GUID;
    pub const IID: Guid = IPrintWorkflowConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowConfiguration.SIGNATURE);
};
pub const PrintWorkflowForegroundSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSetupRequested(self: *@This(), setupEventHandler: *TypedEventHandler(PrintWorkflowForegroundSession,PrintWorkflowForegroundSetupRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowForegroundSession = @ptrCast(self);
        return try this.addSetupRequested(setupEventHandler);
    }
    pub fn removeSetupRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowForegroundSession = @ptrCast(self);
        return try this.removeSetupRequested(token);
    }
    pub fn addXpsDataAvailable(self: *@This(), xpsDataAvailableEventHandler: *TypedEventHandler(PrintWorkflowForegroundSession,PrintWorkflowXpsDataAvailableEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowForegroundSession = @ptrCast(self);
        return try this.addXpsDataAvailable(xpsDataAvailableEventHandler);
    }
    pub fn removeXpsDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowForegroundSession = @ptrCast(self);
        return try this.removeXpsDataAvailable(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        const this: *IPrintWorkflowForegroundSession = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowForegroundSession = @ptrCast(self);
        return try this.Start();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowForegroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowForegroundSession.GUID;
    pub const IID: Guid = IPrintWorkflowForegroundSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowForegroundSession.SIGNATURE);
};
pub const PrintWorkflowForegroundSetupRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetUserPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicket) {
        const this: *IPrintWorkflowForegroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.GetUserPrintTicketAsync();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowForegroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowForegroundSetupRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowForegroundSetupRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowForegroundSetupRequestedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowForegroundSetupRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowForegroundSetupRequestedEventArgs.SIGNATURE);
};
pub const PrintWorkflowJobAbortReason = enum(i32) {
    JobFailed = 0,
    UserCanceled = 1,
};
pub const PrintWorkflowJobActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*PrintWorkflowJobUISession {
        const this: *IPrintWorkflowJobActivatedEventArgs = @ptrCast(self);
        return try this.getSession();
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
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobActivatedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowJobActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobActivatedEventArgs.SIGNATURE);
};
pub const PrintWorkflowJobBackgroundSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        const this: *IPrintWorkflowJobBackgroundSession = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addJobStarting(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowJobStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowJobBackgroundSession = @ptrCast(self);
        return try this.addJobStarting(handler);
    }
    pub fn removeJobStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowJobBackgroundSession = @ptrCast(self);
        return try this.removeJobStarting(token);
    }
    pub fn addPdlModificationRequested(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowPdlModificationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowJobBackgroundSession = @ptrCast(self);
        return try this.addPdlModificationRequested(handler);
    }
    pub fn removePdlModificationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowJobBackgroundSession = @ptrCast(self);
        return try this.removePdlModificationRequested(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowJobBackgroundSession = @ptrCast(self);
        return try this.Start();
    }
    pub fn addJobIssueDetected(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobBackgroundSession,PrintWorkflowJobIssueDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IPrintWorkflowJobBackgroundSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobBackgroundSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addJobIssueDetected(handler);
    }
    pub fn removeJobIssueDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPrintWorkflowJobBackgroundSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobBackgroundSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeJobIssueDetected(token);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobBackgroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobBackgroundSession.GUID;
    pub const IID: Guid = IPrintWorkflowJobBackgroundSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobBackgroundSession.SIGNATURE);
};
pub const PrintWorkflowJobIssueDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getJobIssueKind(self: *@This()) core.HResult!PrintWorkflowJobIssueKind {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.getJobIssueKind();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getSkipSystemErrorToast(self: *@This()) core.HResult!bool {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.getSkipSystemErrorToast();
    }
    pub fn putSkipSystemErrorToast(self: *@This(), value: bool) core.HResult!void {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.putSkipSystemErrorToast(value);
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.getPrinterJob();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getUILauncher(self: *@This()) core.HResult!*PrintWorkflowUILauncher {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.getUILauncher();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowJobIssueDetectedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobIssueDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobIssueDetectedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowJobIssueDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobIssueDetectedEventArgs.SIGNATURE);
};
pub const PrintWorkflowJobIssueKind = enum(i32) {
    Other = 0,
    AttentionRequired = 1,
    DoorOpen = 2,
    MarkerSupplyLow = 3,
    MarkerSupplyEmpty = 4,
    MediaJam = 5,
    MediaEmpty = 6,
    MediaLow = 7,
    OutputAreaAlmostFull = 8,
    OutputAreaFull = 9,
    JobPrintingError = 10,
};
pub const PrintWorkflowJobNotificationEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowJobNotificationEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        const this: *IPrintWorkflowJobNotificationEventArgs = @ptrCast(self);
        return try this.getPrinterJob();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowJobNotificationEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobNotificationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobNotificationEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowJobNotificationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobNotificationEventArgs.SIGNATURE);
};
pub const PrintWorkflowJobStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowJobStartingEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintWorkflowJobStartingEventArgs = @ptrCast(self);
        return try this.getPrinter();
    }
    pub fn SetSkipSystemRendering(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowJobStartingEventArgs = @ptrCast(self);
        return try this.SetSkipSystemRendering();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowJobStartingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getIsIppCompressionEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IPrintWorkflowJobStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsIppCompressionEnabled();
    }
    pub fn DisableIppCompressionForJob(self: *@This()) core.HResult!void {
        var this: ?*IPrintWorkflowJobStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DisableIppCompressionForJob();
    }
    pub fn getSkipSystemFaxUI(self: *@This()) core.HResult!bool {
        var this: ?*IPrintWorkflowJobStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSkipSystemFaxUI();
    }
    pub fn putSkipSystemFaxUI(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPrintWorkflowJobStartingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobStartingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSkipSystemFaxUI(value);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobStartingEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowJobStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobStartingEventArgs.SIGNATURE);
};
pub const PrintWorkflowJobTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintWorkflowJobSession(self: *@This()) core.HResult!*PrintWorkflowJobBackgroundSession {
        const this: *IPrintWorkflowJobTriggerDetails = @ptrCast(self);
        return try this.getPrintWorkflowJobSession();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobTriggerDetails.GUID;
    pub const IID: Guid = IPrintWorkflowJobTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobTriggerDetails.SIGNATURE);
};
pub const PrintWorkflowJobUISession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        const this: *IPrintWorkflowJobUISession = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addPdlDataAvailable(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowPdlDataAvailableEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowJobUISession = @ptrCast(self);
        return try this.addPdlDataAvailable(handler);
    }
    pub fn removePdlDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowJobUISession = @ptrCast(self);
        return try this.removePdlDataAvailable(token);
    }
    pub fn addJobNotification(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowJobNotificationEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowJobUISession = @ptrCast(self);
        return try this.addJobNotification(handler);
    }
    pub fn removeJobNotification(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowJobUISession = @ptrCast(self);
        return try this.removeJobNotification(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowJobUISession = @ptrCast(self);
        return try this.Start();
    }
    pub fn addVirtualPrinterUIDataAvailable(self: *@This(), handler: *TypedEventHandler(PrintWorkflowJobUISession,PrintWorkflowVirtualPrinterUIEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IPrintWorkflowJobUISession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobUISession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVirtualPrinterUIDataAvailable(handler);
    }
    pub fn removeVirtualPrinterUIDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPrintWorkflowJobUISession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowJobUISession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVirtualPrinterUIDataAvailable(token);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowJobUISession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowJobUISession.GUID;
    pub const IID: Guid = IPrintWorkflowJobUISession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowJobUISession.SIGNATURE);
};
pub const PrintWorkflowObjectModelSourceFileContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(xpsStream: *IInputStream) core.HResult!*PrintWorkflowObjectModelSourceFileContent {
        const factory = @This().IPrintWorkflowObjectModelSourceFileContentFactoryCache.get();
        return try factory.CreateInstance(xpsStream);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowObjectModelSourceFileContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowObjectModelSourceFileContent.GUID;
    pub const IID: Guid = IPrintWorkflowObjectModelSourceFileContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowObjectModelSourceFileContent.SIGNATURE);
    var _IPrintWorkflowObjectModelSourceFileContentFactoryCache: FactoryCache(IPrintWorkflowObjectModelSourceFileContentFactory, RUNTIME_NAME) = .{};
};
pub const PrintWorkflowObjectModelTargetPackage = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowObjectModelTargetPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowObjectModelTargetPackage.GUID;
    pub const IID: Guid = IPrintWorkflowObjectModelTargetPackage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowObjectModelTargetPackage.SIGNATURE);
};
pub const PrintWorkflowPdlConversionType = enum(i32) {
    XpsToPdf = 0,
    XpsToPwgr = 1,
    XpsToPclm = 2,
    XpsToTiff = 3,
};
pub const PrintWorkflowPdlConverter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ConvertPdlAsync(self: *@This(), printTicket: *WorkflowPrintTicket, inputStream: *IInputStream, outputStream: *IOutputStream) core.HResult!*IAsyncAction {
        var this: ?*IPrintWorkflowPdlConverter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPdlConverter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConvertPdlAsync(printTicket, inputStream, outputStream);
    }
    pub fn ConvertPdlAsync(self: *@This(), printTicket: *WorkflowPrintTicket, inputStream: *IInputStream, outputStream: *IOutputStream, hostBasedProcessingOperations: PdlConversionHostBasedProcessingOperations) core.HResult!*IAsyncAction {
        var this: ?*IPrintWorkflowPdlConverter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPdlConverter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConvertPdlAsync(printTicket, inputStream, outputStream, hostBasedProcessingOperations);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowPdlConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowPdlConverter.GUID;
    pub const IID: Guid = IPrintWorkflowPdlConverter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowPdlConverter.SIGNATURE);
};
pub const PrintWorkflowPdlDataAvailableEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowPdlDataAvailableEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        const this: *IPrintWorkflowPdlDataAvailableEventArgs = @ptrCast(self);
        return try this.getPrinterJob();
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        const this: *IPrintWorkflowPdlDataAvailableEventArgs = @ptrCast(self);
        return try this.getSourceContent();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowPdlDataAvailableEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowPdlDataAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowPdlDataAvailableEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowPdlDataAvailableEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowPdlDataAvailableEventArgs.SIGNATURE);
};
pub const PrintWorkflowPdlModificationRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getPrinterJob(self: *@This()) core.HResult!*PrintWorkflowPrinterJob {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.getPrinterJob();
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.getSourceContent();
    }
    pub fn getUILauncher(self: *@This()) core.HResult!*PrintWorkflowUILauncher {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.getUILauncher();
    }
    pub fn CreateJobOnPrinter(self: *@This(), targetContentType: HSTRING) core.HResult!*PrintWorkflowPdlTargetStream {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.CreateJobOnPrinter(targetContentType);
    }
    pub fn CreateJobOnPrinterWithAttributes(self: *@This(), jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), targetContentType: HSTRING) core.HResult!*PrintWorkflowPdlTargetStream {
        var this: ?*IPrintWorkflowPdlModificationRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPdlModificationRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateJobOnPrinterWithAttributes(jobAttributes, targetContentType);
    }
    pub fn CreateJobOnPrinterWithAttributesBuffer(self: *@This(), jobAttributesBuffer: *IBuffer, targetContentType: HSTRING) core.HResult!*PrintWorkflowPdlTargetStream {
        var this: ?*IPrintWorkflowPdlModificationRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPdlModificationRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateJobOnPrinterWithAttributesBuffer(jobAttributesBuffer, targetContentType);
    }
    pub fn GetPdlConverter(self: *@This(), conversionType: PrintWorkflowPdlConversionType) core.HResult!*PrintWorkflowPdlConverter {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.GetPdlConverter(conversionType);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowPdlModificationRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn CreateJobOnPrinterWithAttributes(self: *@This(), jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), targetContentType: HSTRING, operationAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), jobAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, operationAttributesMergePolicy: PrintWorkflowAttributesMergePolicy) core.HResult!*PrintWorkflowPdlTargetStream {
        var this: ?*IPrintWorkflowPdlModificationRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPdlModificationRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateJobOnPrinterWithAttributes(jobAttributes, targetContentType, operationAttributes, jobAttributesMergePolicy, operationAttributesMergePolicy);
    }
    pub fn CreateJobOnPrinterWithAttributesBuffer(self: *@This(), jobAttributesBuffer: *IBuffer, targetContentType: HSTRING, operationAttributesBuffer: *IBuffer, jobAttributesMergePolicy: PrintWorkflowAttributesMergePolicy, operationAttributesMergePolicy: PrintWorkflowAttributesMergePolicy) core.HResult!*PrintWorkflowPdlTargetStream {
        var this: ?*IPrintWorkflowPdlModificationRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPdlModificationRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateJobOnPrinterWithAttributesBuffer(jobAttributesBuffer, targetContentType, operationAttributesBuffer, jobAttributesMergePolicy, operationAttributesMergePolicy);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowPdlModificationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowPdlModificationRequestedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowPdlModificationRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowPdlModificationRequestedEventArgs.SIGNATURE);
};
pub const PrintWorkflowPdlSourceContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintWorkflowPdlSourceContent = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn GetInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IPrintWorkflowPdlSourceContent = @ptrCast(self);
        return try this.GetInputStream();
    }
    pub fn GetContentFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IPrintWorkflowPdlSourceContent = @ptrCast(self);
        return try this.GetContentFileAsync();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowPdlSourceContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowPdlSourceContent.GUID;
    pub const IID: Guid = IPrintWorkflowPdlSourceContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowPdlSourceContent.SIGNATURE);
};
pub const PrintWorkflowPdlTargetStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IPrintWorkflowPdlTargetStream = @ptrCast(self);
        return try this.GetOutputStream();
    }
    pub fn CompleteStreamSubmission(self: *@This(), status: PrintWorkflowSubmittedStatus) core.HResult!void {
        const this: *IPrintWorkflowPdlTargetStream = @ptrCast(self);
        return try this.CompleteStreamSubmission(status);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowPdlTargetStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowPdlTargetStream.GUID;
    pub const IID: Guid = IPrintWorkflowPdlTargetStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowPdlTargetStream.SIGNATURE);
};
pub const PrintWorkflowPrinterJob = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getJobId(self: *@This()) core.HResult!i32 {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.getJobId();
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.getPrinter();
    }
    pub fn GetJobStatus(self: *@This()) core.HResult!PrintWorkflowPrinterJobStatus {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.GetJobStatus();
    }
    pub fn GetJobPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.GetJobPrintTicket();
    }
    pub fn GetJobAttributesAsBuffer(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IBuffer {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.GetJobAttributesAsBuffer(attributeNames);
    }
    pub fn GetJobAttributes(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IMap(HSTRING,IppAttributeValue) {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.GetJobAttributes(attributeNames);
    }
    pub fn SetJobAttributesFromBuffer(self: *@This(), jobAttributesBuffer: *IBuffer) core.HResult!*IppSetAttributesResult {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.SetJobAttributesFromBuffer(jobAttributesBuffer);
    }
    pub fn SetJobAttributes(self: *@This(), jobAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue))) core.HResult!*IppSetAttributesResult {
        const this: *IPrintWorkflowPrinterJob = @ptrCast(self);
        return try this.SetJobAttributes(jobAttributes);
    }
    pub fn ConvertPrintTicketToJobAttributes(self: *@This(), printTicket: *WorkflowPrintTicket, targetPdlFormat: HSTRING) core.HResult!*IMap(HSTRING,IppAttributeValue) {
        var this: ?*IPrintWorkflowPrinterJob2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintWorkflowPrinterJob2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConvertPrintTicketToJobAttributes(printTicket, targetPdlFormat);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowPrinterJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowPrinterJob.GUID;
    pub const IID: Guid = IPrintWorkflowPrinterJob.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowPrinterJob.SIGNATURE);
};
pub const PrintWorkflowPrinterJobStatus = enum(i32) {
    Error = 0,
    Aborted = 1,
    InProgress = 2,
    Completed = 3,
};
pub const PrintWorkflowSessionStatus = enum(i32) {
    Started = 0,
    Completed = 1,
    Aborted = 2,
    Closed = 3,
    PdlDataAvailableForModification = 4,
};
pub const PrintWorkflowSourceContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetJobPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicket) {
        const this: *IPrintWorkflowSourceContent = @ptrCast(self);
        return try this.GetJobPrintTicketAsync();
    }
    pub fn GetSourceSpoolDataAsStreamContent(self: *@This()) core.HResult!*PrintWorkflowSpoolStreamContent {
        const this: *IPrintWorkflowSourceContent = @ptrCast(self);
        return try this.GetSourceSpoolDataAsStreamContent();
    }
    pub fn GetSourceSpoolDataAsXpsObjectModel(self: *@This()) core.HResult!*PrintWorkflowObjectModelSourceFileContent {
        const this: *IPrintWorkflowSourceContent = @ptrCast(self);
        return try this.GetSourceSpoolDataAsXpsObjectModel();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowSourceContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowSourceContent.GUID;
    pub const IID: Guid = IPrintWorkflowSourceContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowSourceContent.SIGNATURE);
};
pub const PrintWorkflowSpoolStreamContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IPrintWorkflowSpoolStreamContent = @ptrCast(self);
        return try this.GetInputStream();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowSpoolStreamContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowSpoolStreamContent.GUID;
    pub const IID: Guid = IPrintWorkflowSpoolStreamContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowSpoolStreamContent.SIGNATURE);
};
pub const PrintWorkflowStreamTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IPrintWorkflowStreamTarget = @ptrCast(self);
        return try this.GetOutputStream();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowStreamTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowStreamTarget.GUID;
    pub const IID: Guid = IPrintWorkflowStreamTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowStreamTarget.SIGNATURE);
};
pub const PrintWorkflowSubmittedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!*PrintWorkflowSubmittedOperation {
        const this: *IPrintWorkflowSubmittedEventArgs = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn GetTarget(self: *@This(), jobPrintTicket: *WorkflowPrintTicket) core.HResult!*PrintWorkflowTarget {
        const this: *IPrintWorkflowSubmittedEventArgs = @ptrCast(self);
        return try this.GetTarget(jobPrintTicket);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowSubmittedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowSubmittedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowSubmittedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowSubmittedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowSubmittedEventArgs.SIGNATURE);
};
pub const PrintWorkflowSubmittedOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This(), status: PrintWorkflowSubmittedStatus) core.HResult!void {
        const this: *IPrintWorkflowSubmittedOperation = @ptrCast(self);
        return try this.Complete(status);
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowSubmittedOperation = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getXpsContent(self: *@This()) core.HResult!*PrintWorkflowSourceContent {
        const this: *IPrintWorkflowSubmittedOperation = @ptrCast(self);
        return try this.getXpsContent();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowSubmittedOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowSubmittedOperation.GUID;
    pub const IID: Guid = IPrintWorkflowSubmittedOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowSubmittedOperation.SIGNATURE);
};
pub const PrintWorkflowSubmittedStatus = enum(i32) {
    Succeeded = 0,
    Canceled = 1,
    Failed = 2,
};
pub const PrintWorkflowTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetAsStream(self: *@This()) core.HResult!*PrintWorkflowStreamTarget {
        const this: *IPrintWorkflowTarget = @ptrCast(self);
        return try this.getTargetAsStream();
    }
    pub fn getTargetAsXpsObjectModelPackage(self: *@This()) core.HResult!*PrintWorkflowObjectModelTargetPackage {
        const this: *IPrintWorkflowTarget = @ptrCast(self);
        return try this.getTargetAsXpsObjectModelPackage();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowTarget.GUID;
    pub const IID: Guid = IPrintWorkflowTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowTarget.SIGNATURE);
};
pub const PrintWorkflowTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintWorkflowSession(self: *@This()) core.HResult!*PrintWorkflowBackgroundSession {
        const this: *IPrintWorkflowTriggerDetails = @ptrCast(self);
        return try this.getPrintWorkflowSession();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowTriggerDetails.GUID;
    pub const IID: Guid = IPrintWorkflowTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowTriggerDetails.SIGNATURE);
};
pub const PrintWorkflowUIActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintWorkflowSession(self: *@This()) core.HResult!*PrintWorkflowForegroundSession {
        const this: *IPrintWorkflowUIActivatedEventArgs = @ptrCast(self);
        return try this.getPrintWorkflowSession();
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
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowUIActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowUIActivatedEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowUIActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowUIActivatedEventArgs.SIGNATURE);
};
pub const PrintWorkflowUICompletionStatus = enum(i32) {
    Completed = 0,
    LaunchFailed = 1,
    JobFailed = 2,
    UserCanceled = 3,
};
pub const PrintWorkflowUILauncher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsUILaunchEnabled(self: *@This()) core.HResult!bool {
        const this: *IPrintWorkflowUILauncher = @ptrCast(self);
        return try this.IsUILaunchEnabled();
    }
    pub fn LaunchAndCompleteUIAsync(self: *@This()) core.HResult!*IAsyncOperation(PrintWorkflowUICompletionStatus) {
        const this: *IPrintWorkflowUILauncher = @ptrCast(self);
        return try this.LaunchAndCompleteUIAsync();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowUILauncher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowUILauncher.GUID;
    pub const IID: Guid = IPrintWorkflowUILauncher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowUILauncher.SIGNATURE);
};
pub const PrintWorkflowVirtualPrinterDataAvailableEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.getSourceContent();
    }
    pub fn getUILauncher(self: *@This()) core.HResult!*PrintWorkflowUILauncher {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.getUILauncher();
    }
    pub fn GetJobPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.GetJobPrintTicket();
    }
    pub fn GetPdlConverter(self: *@This(), conversionType: PrintWorkflowPdlConversionType) core.HResult!*PrintWorkflowPdlConverter {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.GetPdlConverter(conversionType);
    }
    pub fn GetTargetFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.GetTargetFileAsync();
    }
    pub fn CompleteJob(self: *@This(), status: PrintWorkflowSubmittedStatus) core.HResult!void {
        const this: *IPrintWorkflowVirtualPrinterDataAvailableEventArgs = @ptrCast(self);
        return try this.CompleteJob(status);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowVirtualPrinterDataAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowVirtualPrinterDataAvailableEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowVirtualPrinterDataAvailableEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowVirtualPrinterDataAvailableEventArgs.SIGNATURE);
};
pub const PrintWorkflowVirtualPrinterSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PrintWorkflowSessionStatus {
        const this: *IPrintWorkflowVirtualPrinterSession = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintWorkflowVirtualPrinterSession = @ptrCast(self);
        return try this.getPrinter();
    }
    pub fn addVirtualPrinterDataAvailable(self: *@This(), handler: *TypedEventHandler(PrintWorkflowVirtualPrinterSession,PrintWorkflowVirtualPrinterDataAvailableEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintWorkflowVirtualPrinterSession = @ptrCast(self);
        return try this.addVirtualPrinterDataAvailable(handler);
    }
    pub fn removeVirtualPrinterDataAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintWorkflowVirtualPrinterSession = @ptrCast(self);
        return try this.removeVirtualPrinterDataAvailable(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPrintWorkflowVirtualPrinterSession = @ptrCast(self);
        return try this.Start();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowVirtualPrinterSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowVirtualPrinterSession.GUID;
    pub const IID: Guid = IPrintWorkflowVirtualPrinterSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowVirtualPrinterSession.SIGNATURE);
};
pub const PrintWorkflowVirtualPrinterTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVirtualPrinterSession(self: *@This()) core.HResult!*PrintWorkflowVirtualPrinterSession {
        const this: *IPrintWorkflowVirtualPrinterTriggerDetails = @ptrCast(self);
        return try this.getVirtualPrinterSession();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowVirtualPrinterTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowVirtualPrinterTriggerDetails.GUID;
    pub const IID: Guid = IPrintWorkflowVirtualPrinterTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowVirtualPrinterTriggerDetails.SIGNATURE);
};
pub const PrintWorkflowVirtualPrinterUIEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*PrintWorkflowConfiguration {
        const this: *IPrintWorkflowVirtualPrinterUIEventArgs = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn getPrinter(self: *@This()) core.HResult!*IppPrintDevice {
        const this: *IPrintWorkflowVirtualPrinterUIEventArgs = @ptrCast(self);
        return try this.getPrinter();
    }
    pub fn getSourceContent(self: *@This()) core.HResult!*PrintWorkflowPdlSourceContent {
        const this: *IPrintWorkflowVirtualPrinterUIEventArgs = @ptrCast(self);
        return try this.getSourceContent();
    }
    pub fn GetJobPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        const this: *IPrintWorkflowVirtualPrinterUIEventArgs = @ptrCast(self);
        return try this.GetJobPrintTicket();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowVirtualPrinterUIEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowVirtualPrinterUIEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowVirtualPrinterUIEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowVirtualPrinterUIEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowVirtualPrinterUIEventArgs.SIGNATURE);
};
pub const PrintWorkflowXpsDataAvailableEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!*PrintWorkflowSubmittedOperation {
        const this: *IPrintWorkflowXpsDataAvailableEventArgs = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPrintWorkflowXpsDataAvailableEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.Workflow.PrintWorkflowXpsDataAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintWorkflowXpsDataAvailableEventArgs.GUID;
    pub const IID: Guid = IPrintWorkflowXpsDataAvailableEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintWorkflowXpsDataAvailableEventArgs.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const IKeyValuePair = @import("../../Foundation/Collections.zig").IKeyValuePair;
const IActivatedEventArgsWithUser = @import("../../ApplicationModel/Activation.zig").IActivatedEventArgsWithUser;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HRESULT = @import("../../root.zig").HRESULT;
const IppPrintDevice = @import("../../Devices/Printers.zig").IppPrintDevice;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const ApplicationExecutionState = @import("../../ApplicationModel/Activation.zig").ApplicationExecutionState;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const StorageFile = @import("../../Storage.zig").StorageFile;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const FactoryCache = @import("../../core.zig").FactoryCache;
const WorkflowPrintTicket = @import("./PrintTicket.zig").WorkflowPrintTicket;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const ActivationKind = @import("../../ApplicationModel/Activation.zig").ActivationKind;
const HSTRING = @import("../../root.zig").HSTRING;
const IOutputStream = @import("../../Storage/Streams.zig").IOutputStream;
const IppAttributeValue = @import("../../Devices/Printers.zig").IppAttributeValue;
const HResult = @import("../../Foundation.zig").HResult;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const SplashScreen = @import("../../ApplicationModel/Activation.zig").SplashScreen;
const IActivatedEventArgs = @import("../../ApplicationModel/Activation.zig").IActivatedEventArgs;
const IppSetAttributesResult = @import("../../Devices/Printers.zig").IppSetAttributesResult;
const User = @import("../../System.zig").User;
