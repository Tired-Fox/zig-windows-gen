pub const AppointmentCalendarCancelMeetingRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.getAppointmentCalendarLocalId();
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.getAppointmentLocalId();
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.getAppointmentOriginalStartTime();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn getNotifyInvitees(self: *@This()) core.HResult!bool {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.getNotifyInvitees();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarCancelMeetingRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCancelMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarCancelMeetingRequest.GUID;
    pub const IID: Guid = IAppointmentCalendarCancelMeetingRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarCancelMeetingRequest.SIGNATURE);
};
pub const AppointmentCalendarCancelMeetingRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarCancelMeetingRequest {
        const this: *IAppointmentCalendarCancelMeetingRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppointmentCalendarCancelMeetingRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCancelMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarCancelMeetingRequestEventArgs.GUID;
    pub const IID: Guid = IAppointmentCalendarCancelMeetingRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarCancelMeetingRequestEventArgs.SIGNATURE);
};
pub const AppointmentCalendarCreateOrUpdateAppointmentRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequest = @ptrCast(self);
        return try this.getAppointmentCalendarLocalId();
    }
    pub fn getAppointment(self: *@This()) core.HResult!*Appointment {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequest = @ptrCast(self);
        return try this.getAppointment();
    }
    pub fn getNotifyInvitees(self: *@This()) core.HResult!bool {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequest = @ptrCast(self);
        return try this.getNotifyInvitees();
    }
    pub fn getChangedProperties(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequest = @ptrCast(self);
        return try this.getChangedProperties();
    }
    pub fn ReportCompletedAsync(self: *@This(), createdOrUpdatedAppointment: *Appointment) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(createdOrUpdatedAppointment);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCreateOrUpdateAppointmentRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarCreateOrUpdateAppointmentRequest.GUID;
    pub const IID: Guid = IAppointmentCalendarCreateOrUpdateAppointmentRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarCreateOrUpdateAppointmentRequest.SIGNATURE);
};
pub const AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarCreateOrUpdateAppointmentRequest {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs.GUID;
    pub const IID: Guid = IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs.SIGNATURE);
};
pub const AppointmentCalendarForwardMeetingRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getAppointmentCalendarLocalId();
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getAppointmentLocalId();
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getAppointmentOriginalStartTime();
    }
    pub fn getInvitees(self: *@This()) core.HResult!*IVectorView(AppointmentInvitee) {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getInvitees();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getForwardHeader(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getForwardHeader();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarForwardMeetingRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarForwardMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarForwardMeetingRequest.GUID;
    pub const IID: Guid = IAppointmentCalendarForwardMeetingRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarForwardMeetingRequest.SIGNATURE);
};
pub const AppointmentCalendarForwardMeetingRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarForwardMeetingRequest {
        const this: *IAppointmentCalendarForwardMeetingRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppointmentCalendarForwardMeetingRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarForwardMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarForwardMeetingRequestEventArgs.GUID;
    pub const IID: Guid = IAppointmentCalendarForwardMeetingRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarForwardMeetingRequestEventArgs.SIGNATURE);
};
pub const AppointmentCalendarProposeNewTimeForMeetingRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getAppointmentCalendarLocalId();
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getAppointmentLocalId();
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getAppointmentOriginalStartTime();
    }
    pub fn getNewStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getNewStartTime();
    }
    pub fn getNewDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getNewDuration();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarProposeNewTimeForMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarProposeNewTimeForMeetingRequest.GUID;
    pub const IID: Guid = IAppointmentCalendarProposeNewTimeForMeetingRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarProposeNewTimeForMeetingRequest.SIGNATURE);
};
pub const AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarProposeNewTimeForMeetingRequest {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs.GUID;
    pub const IID: Guid = IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs.SIGNATURE);
};
pub const AppointmentCalendarSyncManagerSyncRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarSyncManagerSyncRequest = @ptrCast(self);
        return try this.getAppointmentCalendarLocalId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarSyncManagerSyncRequest.GUID;
    pub const IID: Guid = IAppointmentCalendarSyncManagerSyncRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarSyncManagerSyncRequest.SIGNATURE);
};
pub const AppointmentCalendarSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarSyncManagerSyncRequest {
        const this: *IAppointmentCalendarSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppointmentCalendarSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarSyncManagerSyncRequestEventArgs.GUID;
    pub const IID: Guid = IAppointmentCalendarSyncManagerSyncRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarSyncManagerSyncRequestEventArgs.SIGNATURE);
};
pub const AppointmentCalendarUpdateMeetingResponseRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getAppointmentCalendarLocalId();
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getAppointmentLocalId();
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getAppointmentOriginalStartTime();
    }
    pub fn getResponse(self: *@This()) core.HResult!AppointmentParticipantResponse {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getResponse();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn getSendUpdate(self: *@This()) core.HResult!bool {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getSendUpdate();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarUpdateMeetingResponseRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarUpdateMeetingResponseRequest.GUID;
    pub const IID: Guid = IAppointmentCalendarUpdateMeetingResponseRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarUpdateMeetingResponseRequest.SIGNATURE);
};
pub const AppointmentCalendarUpdateMeetingResponseRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarUpdateMeetingResponseRequest {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppointmentCalendarUpdateMeetingResponseRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarUpdateMeetingResponseRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarUpdateMeetingResponseRequestEventArgs.GUID;
    pub const IID: Guid = IAppointmentCalendarUpdateMeetingResponseRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarUpdateMeetingResponseRequestEventArgs.SIGNATURE);
};
pub const AppointmentDataProviderConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSyncRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.addSyncRequested(handler);
    }
    pub fn removeSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.removeSyncRequested(token);
    }
    pub fn addCreateOrUpdateAppointmentRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.addCreateOrUpdateAppointmentRequested(handler);
    }
    pub fn removeCreateOrUpdateAppointmentRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.removeCreateOrUpdateAppointmentRequested(token);
    }
    pub fn addCancelMeetingRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarCancelMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.addCancelMeetingRequested(handler);
    }
    pub fn removeCancelMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.removeCancelMeetingRequested(token);
    }
    pub fn addForwardMeetingRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarForwardMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.addForwardMeetingRequested(handler);
    }
    pub fn removeForwardMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.removeForwardMeetingRequested(token);
    }
    pub fn addProposeNewTimeForMeetingRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.addProposeNewTimeForMeetingRequested(handler);
    }
    pub fn removeProposeNewTimeForMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.removeProposeNewTimeForMeetingRequested(token);
    }
    pub fn addUpdateMeetingResponseRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarUpdateMeetingResponseRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.addUpdateMeetingResponseRequested(handler);
    }
    pub fn removeUpdateMeetingResponseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.removeUpdateMeetingResponseRequested(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IAppointmentDataProviderConnection = @ptrCast(self);
        return try this.Start();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentDataProviderConnection.GUID;
    pub const IID: Guid = IAppointmentDataProviderConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentDataProviderConnection.SIGNATURE);
};
pub const AppointmentDataProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*AppointmentDataProviderConnection {
        const this: *IAppointmentDataProviderTriggerDetails = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentDataProviderTriggerDetails.GUID;
    pub const IID: Guid = IAppointmentDataProviderTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentDataProviderTriggerDetails.SIGNATURE);
};
pub const IAppointmentCalendarCancelMeetingRequest = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentCalendarLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_AppointmentOriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotifyInvitees(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NotifyInvitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCancelMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49460f8d-6434-40d7-ad46-6297419314d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendarLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentOriginalStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NotifyInvitees: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarCancelMeetingRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarCancelMeetingRequest {
        var _r: *AppointmentCalendarCancelMeetingRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCancelMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a79be16-7f30-4e35-beef-9d2c7b6dcae1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppointmentCalendarCancelMeetingRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarCreateOrUpdateAppointmentRequest = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentCalendarLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointment(self: *@This()) core.HResult!*Appointment {
        var _r: *Appointment = undefined;
        const _c = self.vtable.get_Appointment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotifyInvitees(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NotifyInvitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChangedProperties(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_ChangedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), createdOrUpdatedAppointment: *Appointment) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), createdOrUpdatedAppointment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCreateOrUpdateAppointmentRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e62f2b2-ca96-48ac-9124-406b19fefa70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendarLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Appointment: *const fn(self: *anyopaque, _r: **Appointment) callconv(.winapi) HRESULT,
        get_NotifyInvitees: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ChangedProperties: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, createdOrUpdatedAppointment: *Appointment, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarCreateOrUpdateAppointmentRequest {
        var _r: *AppointmentCalendarCreateOrUpdateAppointmentRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf8ded28-002e-4bf7-8e9d-5e20d49aa3ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppointmentCalendarCreateOrUpdateAppointmentRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarForwardMeetingRequest = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentCalendarLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_AppointmentOriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvitees(self: *@This()) core.HResult!*IVectorView(AppointmentInvitee) {
        var _r: *IVectorView(AppointmentInvitee) = undefined;
        const _c = self.vtable.get_Invitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForwardHeader(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ForwardHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarForwardMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82e5ee56-26b6-4253-8a8f-6cf5f2ff7884";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendarLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentOriginalStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Invitees: *const fn(self: *anyopaque, _r: **IVectorView(AppointmentInvitee)) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ForwardHeader: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarForwardMeetingRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarForwardMeetingRequest {
        var _r: *AppointmentCalendarForwardMeetingRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarForwardMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3109151a-23a2-42fd-9c82-c9a60d59f8a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppointmentCalendarForwardMeetingRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarProposeNewTimeForMeetingRequest = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentCalendarLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_AppointmentOriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_NewStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_NewDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarProposeNewTimeForMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce1c63f5-edf6-43c3-82b7-be6b368c6900";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendarLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentOriginalStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_NewStartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_NewDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarProposeNewTimeForMeetingRequest {
        var _r: *AppointmentCalendarProposeNewTimeForMeetingRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2d777d8-fed1-4280-a3ba-2e1f47609aa2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppointmentCalendarProposeNewTimeForMeetingRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarSyncManagerSyncRequest = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentCalendarLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12ab382b-7163-4a56-9a4e-7223a84adf46";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendarLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarSyncManagerSyncRequest {
        var _r: *AppointmentCalendarSyncManagerSyncRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca17c6f7-0284-4edd-87ba-4d8f69dcf5c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppointmentCalendarSyncManagerSyncRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarUpdateMeetingResponseRequest = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendarLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentCalendarLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentLocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_AppointmentOriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponse(self: *@This()) core.HResult!AppointmentParticipantResponse {
        var _r: AppointmentParticipantResponse = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSendUpdate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SendUpdate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarUpdateMeetingResponseRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a36d608c-c29d-4b94-b086-7e9ff7bd84a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendarLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentLocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentOriginalStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: *AppointmentParticipantResponse) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SendUpdate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarUpdateMeetingResponseRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppointmentCalendarUpdateMeetingResponseRequest {
        var _r: *AppointmentCalendarUpdateMeetingResponseRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarUpdateMeetingResponseRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88759883-97bf-479d-aed5-0be8ce567d1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppointmentCalendarUpdateMeetingResponseRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentDataProviderConnection = extern struct {
    vtable: *const VTable,
    pub fn addSyncRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCreateOrUpdateAppointmentRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CreateOrUpdateAppointmentRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCreateOrUpdateAppointmentRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CreateOrUpdateAppointmentRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCancelMeetingRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarCancelMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CancelMeetingRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCancelMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CancelMeetingRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addForwardMeetingRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarForwardMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ForwardMeetingRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeForwardMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ForwardMeetingRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProposeNewTimeForMeetingRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProposeNewTimeForMeetingRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProposeNewTimeForMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProposeNewTimeForMeetingRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdateMeetingResponseRequested(self: *@This(), handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarUpdateMeetingResponseRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UpdateMeetingResponseRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdateMeetingResponseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UpdateMeetingResponseRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3dd9d83-3254-465f-abdb-928046552cf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SyncRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarSyncManagerSyncRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CreateOrUpdateAppointmentRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CreateOrUpdateAppointmentRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CancelMeetingRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarCancelMeetingRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CancelMeetingRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ForwardMeetingRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarForwardMeetingRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ForwardMeetingRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProposeNewTimeForMeetingRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProposeNewTimeForMeetingRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UpdateMeetingResponseRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentDataProviderConnection,AppointmentCalendarUpdateMeetingResponseRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UpdateMeetingResponseRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentDataProviderTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*AppointmentDataProviderConnection {
        var _r: *AppointmentDataProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.DataProvider.IAppointmentDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3283c01-7e12-4e5e-b1ef-74fb68ac6f2a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **AppointmentDataProviderConnection) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const Appointment = @import("../Appointments.zig").Appointment;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IReference = @import("../../Foundation.zig").IReference;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const AppointmentInvitee = @import("../Appointments.zig").AppointmentInvitee;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const AppointmentParticipantResponse = @import("../Appointments.zig").AppointmentParticipantResponse;
const HSTRING = @import("../../root.zig").HSTRING;
