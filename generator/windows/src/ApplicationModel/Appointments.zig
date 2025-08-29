pub const Appointment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IAppointment = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppointment = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointment = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointment = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putSubject(value);
    }
    pub fn getDetails(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointment = @ptrCast(self);
        return try this.getDetails();
    }
    pub fn putDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putDetails(value);
    }
    pub fn getReminder(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAppointment = @ptrCast(self);
        return try this.getReminder();
    }
    pub fn putReminder(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putReminder(value);
    }
    pub fn getOrganizer(self: *@This()) core.HResult!*AppointmentOrganizer {
        const this: *IAppointment = @ptrCast(self);
        return try this.getOrganizer();
    }
    pub fn putOrganizer(self: *@This(), value: *AppointmentOrganizer) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putOrganizer(value);
    }
    pub fn getInvitees(self: *@This()) core.HResult!*IVector(AppointmentInvitee) {
        const this: *IAppointment = @ptrCast(self);
        return try this.getInvitees();
    }
    pub fn getRecurrence(self: *@This()) core.HResult!*AppointmentRecurrence {
        const this: *IAppointment = @ptrCast(self);
        return try this.getRecurrence();
    }
    pub fn putRecurrence(self: *@This(), value: *AppointmentRecurrence) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putRecurrence(value);
    }
    pub fn getBusyStatus(self: *@This()) core.HResult!AppointmentBusyStatus {
        const this: *IAppointment = @ptrCast(self);
        return try this.getBusyStatus();
    }
    pub fn putBusyStatus(self: *@This(), value: AppointmentBusyStatus) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putBusyStatus(value);
    }
    pub fn getAllDay(self: *@This()) core.HResult!bool {
        const this: *IAppointment = @ptrCast(self);
        return try this.getAllDay();
    }
    pub fn putAllDay(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putAllDay(value);
    }
    pub fn getSensitivity(self: *@This()) core.HResult!AppointmentSensitivity {
        const this: *IAppointment = @ptrCast(self);
        return try this.getSensitivity();
    }
    pub fn putSensitivity(self: *@This(), value: AppointmentSensitivity) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putSensitivity(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IAppointment = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IAppointment = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getLocalId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalId();
    }
    pub fn getCalendarId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCalendarId();
    }
    pub fn getRoamingId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRoamingId();
    }
    pub fn putRoamingId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRoamingId(value);
    }
    pub fn getOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOriginalStartTime();
    }
    pub fn getIsResponseRequested(self: *@This()) core.HResult!bool {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsResponseRequested();
    }
    pub fn putIsResponseRequested(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsResponseRequested(value);
    }
    pub fn getAllowNewTimeProposal(self: *@This()) core.HResult!bool {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowNewTimeProposal();
    }
    pub fn putAllowNewTimeProposal(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowNewTimeProposal(value);
    }
    pub fn getOnlineMeetingLink(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOnlineMeetingLink();
    }
    pub fn putOnlineMeetingLink(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOnlineMeetingLink(value);
    }
    pub fn getReplyTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReplyTime();
    }
    pub fn putReplyTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReplyTime(value);
    }
    pub fn getUserResponse(self: *@This()) core.HResult!AppointmentParticipantResponse {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserResponse();
    }
    pub fn putUserResponse(self: *@This(), value: AppointmentParticipantResponse) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUserResponse(value);
    }
    pub fn getHasInvitees(self: *@This()) core.HResult!bool {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasInvitees();
    }
    pub fn getIsCanceledMeeting(self: *@This()) core.HResult!bool {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCanceledMeeting();
    }
    pub fn putIsCanceledMeeting(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsCanceledMeeting(value);
    }
    pub fn getIsOrganizedByUser(self: *@This()) core.HResult!bool {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOrganizedByUser();
    }
    pub fn putIsOrganizedByUser(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsOrganizedByUser(value);
    }
    pub fn getChangeNumber(self: *@This()) core.HResult!u64 {
        var this: ?*IAppointment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeNumber();
    }
    pub fn getRemoteChangeNumber(self: *@This()) core.HResult!u64 {
        var this: ?*IAppointment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteChangeNumber();
    }
    pub fn putRemoteChangeNumber(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IAppointment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteChangeNumber(value);
    }
    pub fn getDetailsKind(self: *@This()) core.HResult!AppointmentDetailsKind {
        var this: ?*IAppointment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDetailsKind();
    }
    pub fn putDetailsKind(self: *@This(), value: AppointmentDetailsKind) core.HResult!void {
        var this: ?*IAppointment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDetailsKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppointment.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.Appointment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointment.GUID;
    pub const IID: Guid = IAppointment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppointmentBusyStatus = enum(i32) {
    Busy = 0,
    Tentative = 1,
    Free = 2,
    OutOfOffice = 3,
    WorkingElsewhere = 4,
};
pub const AppointmentCalendar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayColor(self: *@This()) core.HResult!Color {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getDisplayColor();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getLocalId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getLocalId();
    }
    pub fn getIsHidden(self: *@This()) core.HResult!bool {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getIsHidden();
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!AppointmentCalendarOtherAppReadAccess {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getOtherAppReadAccess();
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: AppointmentCalendarOtherAppReadAccess) core.HResult!void {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.putOtherAppReadAccess(value);
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!AppointmentCalendarOtherAppWriteAccess {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getOtherAppWriteAccess();
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: AppointmentCalendarOtherAppWriteAccess) core.HResult!void {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.putOtherAppWriteAccess(value);
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getSourceDisplayName();
    }
    pub fn getSummaryCardView(self: *@This()) core.HResult!AppointmentSummaryCardView {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.getSummaryCardView();
    }
    pub fn putSummaryCardView(self: *@This(), value: AppointmentSummaryCardView) core.HResult!void {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.putSummaryCardView(value);
    }
    pub fn FindAppointmentsAsync(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindAppointmentsAsync(rangeStart, rangeLength);
    }
    pub fn FindAppointmentsAsyncWithRangeLengthWithOptions(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan, options: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindAppointmentsAsyncWithRangeLengthWithOptions(rangeStart, rangeLength, options);
    }
    pub fn FindExceptionsFromMasterAsync(self: *@This(), masterLocalId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppointmentException)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindExceptionsFromMasterAsync(masterLocalId);
    }
    pub fn FindAllInstancesAsync(self: *@This(), masterLocalId: HSTRING, rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindAllInstancesAsync(masterLocalId, rangeStart, rangeLength);
    }
    pub fn FindAllInstancesAsyncWithRangeStartWithRangeLengthWithPOptions(self: *@This(), masterLocalId: HSTRING, rangeStart: DateTime, rangeLength: TimeSpan, pOptions: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindAllInstancesAsyncWithRangeStartWithRangeLengthWithPOptions(masterLocalId, rangeStart, rangeLength, pOptions);
    }
    pub fn GetAppointmentAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncOperation(Appointment) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.GetAppointmentAsync(localId);
    }
    pub fn GetAppointmentInstanceAsync(self: *@This(), localId: HSTRING, instanceStartTime: DateTime) core.HResult!*IAsyncOperation(Appointment) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.GetAppointmentInstanceAsync(localId, instanceStartTime);
    }
    pub fn FindUnexpandedAppointmentsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindUnexpandedAppointmentsAsync();
    }
    pub fn FindUnexpandedAppointmentsAsync(self: *@This(), options: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.FindUnexpandedAppointmentsAsync(options);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn DeleteAppointmentAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.DeleteAppointmentAsync(localId);
    }
    pub fn DeleteAppointmentInstanceAsync(self: *@This(), localId: HSTRING, instanceStartTime: DateTime) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.DeleteAppointmentInstanceAsync(localId, instanceStartTime);
    }
    pub fn SaveAppointmentAsync(self: *@This(), pAppointment: *Appointment) core.HResult!*IAsyncAction {
        const this: *IAppointmentCalendar = @ptrCast(self);
        return try this.SaveAppointmentAsync(pAppointment);
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*AppointmentCalendarSyncManager {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSyncManager();
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteId(value);
    }
    pub fn putDisplayColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayColor(value);
    }
    pub fn putIsHidden(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsHidden(value);
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserDataAccountId();
    }
    pub fn getCanCreateOrUpdateAppointments(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanCreateOrUpdateAppointments();
    }
    pub fn putCanCreateOrUpdateAppointments(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanCreateOrUpdateAppointments(value);
    }
    pub fn getCanCancelMeetings(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanCancelMeetings();
    }
    pub fn putCanCancelMeetings(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanCancelMeetings(value);
    }
    pub fn getCanForwardMeetings(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanForwardMeetings();
    }
    pub fn putCanForwardMeetings(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanForwardMeetings(value);
    }
    pub fn getCanProposeNewTimeForMeetings(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanProposeNewTimeForMeetings();
    }
    pub fn putCanProposeNewTimeForMeetings(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanProposeNewTimeForMeetings(value);
    }
    pub fn getCanUpdateMeetingResponses(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanUpdateMeetingResponses();
    }
    pub fn putCanUpdateMeetingResponses(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanUpdateMeetingResponses(value);
    }
    pub fn getCanNotifyInvitees(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanNotifyInvitees();
    }
    pub fn putCanNotifyInvitees(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanNotifyInvitees(value);
    }
    pub fn getMustNofityInvitees(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMustNofityInvitees();
    }
    pub fn putMustNofityInvitees(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMustNofityInvitees(value);
    }
    pub fn TryCreateOrUpdateAppointmentAsync(self: *@This(), appointment: *Appointment, notifyInvitees: bool) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCreateOrUpdateAppointmentAsync(appointment, notifyInvitees);
    }
    pub fn TryCancelMeetingAsync(self: *@This(), meeting: *Appointment, subject: HSTRING, comment: HSTRING, notifyInvitees: bool) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCancelMeetingAsync(meeting, subject, comment, notifyInvitees);
    }
    pub fn TryForwardMeetingAsync(self: *@This(), meeting: *Appointment, invitees: *IIterable(AppointmentInvitee), subject: HSTRING, forwardHeader: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryForwardMeetingAsync(meeting, invitees, subject, forwardHeader, comment);
    }
    pub fn TryProposeNewTimeForMeetingAsync(self: *@This(), meeting: *Appointment, newStartTime: DateTime, newDuration: TimeSpan, subject: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryProposeNewTimeForMeetingAsync(meeting, newStartTime, newDuration, subject, comment);
    }
    pub fn TryUpdateMeetingResponseAsync(self: *@This(), meeting: *Appointment, response: AppointmentParticipantResponse, subject: HSTRING, comment: HSTRING, sendUpdate: bool) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppointmentCalendar2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryUpdateMeetingResponseAsync(meeting, response, subject, comment, sendUpdate);
    }
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IAppointmentCalendar3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendar3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterSyncManagerAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentCalendar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendar.GUID;
    pub const IID: Guid = IAppointmentCalendar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendar.SIGNATURE);
};
pub const AppointmentCalendarOtherAppReadAccess = enum(i32) {
    SystemOnly = 0,
    Limited = 1,
    Full = 2,
    None = 3,
};
pub const AppointmentCalendarOtherAppWriteAccess = enum(i32) {
    None = 0,
    SystemOnly = 1,
    Limited = 2,
};
pub const AppointmentCalendarSyncManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AppointmentCalendarSyncStatus {
        const this: *IAppointmentCalendarSyncManager = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IAppointmentCalendarSyncManager = @ptrCast(self);
        return try this.getLastSuccessfulSyncTime();
    }
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IAppointmentCalendarSyncManager = @ptrCast(self);
        return try this.getLastAttemptedSyncTime();
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppointmentCalendarSyncManager = @ptrCast(self);
        return try this.SyncAsync();
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(AppointmentCalendarSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppointmentCalendarSyncManager = @ptrCast(self);
        return try this.addSyncStatusChanged(handler);
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppointmentCalendarSyncManager = @ptrCast(self);
        return try this.removeSyncStatusChanged(token);
    }
    pub fn putStatus(self: *@This(), value: AppointmentCalendarSyncStatus) core.HResult!void {
        var this: ?*IAppointmentCalendarSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendarSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStatus(value);
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IAppointmentCalendarSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendarSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastSuccessfulSyncTime(value);
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IAppointmentCalendarSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentCalendarSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastAttemptedSyncTime(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentCalendarSyncManager.GUID;
    pub const IID: Guid = IAppointmentCalendarSyncManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentCalendarSyncManager.SIGNATURE);
};
pub const AppointmentCalendarSyncStatus = enum(i32) {
    Idle = 0,
    Syncing = 1,
    UpToDate = 2,
    AuthenticationError = 3,
    PolicyError = 4,
    UnknownError = 5,
    ManualAccountRemovalRequired = 6,
};
pub const AppointmentConflictResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!AppointmentConflictType {
        const this: *IAppointmentConflictResult = @ptrCast(self);
        return try this.getType();
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        const this: *IAppointmentConflictResult = @ptrCast(self);
        return try this.getDate();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentConflictResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentConflictResult.GUID;
    pub const IID: Guid = IAppointmentConflictResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentConflictResult.SIGNATURE);
};
pub const AppointmentConflictType = enum(i32) {
    None = 0,
    Adjacent = 1,
    Overlap = 2,
};
pub const AppointmentDaysOfWeek = enum(i32) {
    None = 0,
    Sunday = 1,
    Monday = 2,
    Tuesday = 4,
    Wednesday = 8,
    Thursday = 16,
    Friday = 32,
    Saturday = 64,
};
pub const AppointmentDetailsKind = enum(i32) {
    PlainText = 0,
    Html = 1,
};
pub const AppointmentException = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointment(self: *@This()) core.HResult!*Appointment {
        const this: *IAppointmentException = @ptrCast(self);
        return try this.getAppointment();
    }
    pub fn getExceptionProperties(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IAppointmentException = @ptrCast(self);
        return try this.getExceptionProperties();
    }
    pub fn getIsDeleted(self: *@This()) core.HResult!bool {
        const this: *IAppointmentException = @ptrCast(self);
        return try this.getIsDeleted();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentException";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentException.GUID;
    pub const IID: Guid = IAppointmentException.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentException.SIGNATURE);
};
pub const AppointmentInvitee = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRole(self: *@This()) core.HResult!AppointmentParticipantRole {
        const this: *IAppointmentInvitee = @ptrCast(self);
        return try this.getRole();
    }
    pub fn putRole(self: *@This(), value: AppointmentParticipantRole) core.HResult!void {
        const this: *IAppointmentInvitee = @ptrCast(self);
        return try this.putRole(value);
    }
    pub fn getResponse(self: *@This()) core.HResult!AppointmentParticipantResponse {
        const this: *IAppointmentInvitee = @ptrCast(self);
        return try this.getResponse();
    }
    pub fn putResponse(self: *@This(), value: AppointmentParticipantResponse) core.HResult!void {
        const this: *IAppointmentInvitee = @ptrCast(self);
        return try this.putResponse(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentParticipant = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentParticipant.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppointmentParticipant = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentParticipant.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentParticipant = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentParticipant.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAddress();
    }
    pub fn putAddress(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppointmentParticipant = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentParticipant.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAddress(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppointmentInvitee.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentInvitee";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentInvitee.GUID;
    pub const IID: Guid = IAppointmentInvitee.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentInvitee.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppointmentManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ShowAddAppointmentAsync(appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowAddAppointmentAsync(appointment, selection);
    }
    pub fn ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(appointment, selection, preferredPlacement);
    }
    pub fn ShowReplaceAppointmentAsync(appointmentId: HSTRING, appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowReplaceAppointmentAsync(appointmentId, appointment, selection);
    }
    pub fn ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(appointmentId, appointment, selection, preferredPlacement);
    }
    pub fn ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(appointmentId, appointment, selection, preferredPlacement, instanceStartDate);
    }
    pub fn ShowRemoveAppointmentAsync(appointmentId: HSTRING, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowRemoveAppointmentAsync(appointmentId, selection);
    }
    pub fn ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(appointmentId, selection, preferredPlacement);
    }
    pub fn ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(appointmentId, selection, preferredPlacement, instanceStartDate);
    }
    pub fn ShowTimeFrameAsync(timeToShow: DateTime, duration: TimeSpan) core.HResult!*IAsyncAction {
        const factory = @This().IAppointmentManagerStaticsCache.get();
        return try factory.ShowTimeFrameAsync(timeToShow, duration);
    }
    pub fn GetForUser(user: *User) core.HResult!*AppointmentManagerForUser {
        const factory = @This().IAppointmentManagerStatics3Cache.get();
        return try factory.GetForUser(user);
    }
    pub fn ShowAppointmentDetailsAsync(appointmentId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IAppointmentManagerStatics2Cache.get();
        return try factory.ShowAppointmentDetailsAsync(appointmentId);
    }
    pub fn ShowAppointmentDetailsAsyncWithInstanceStartDate(appointmentId: HSTRING, instanceStartDate: DateTime) core.HResult!*IAsyncAction {
        const factory = @This().IAppointmentManagerStatics2Cache.get();
        return try factory.ShowAppointmentDetailsAsyncWithInstanceStartDate(appointmentId, instanceStartDate);
    }
    pub fn ShowEditNewAppointmentAsync(appointment: *Appointment) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IAppointmentManagerStatics2Cache.get();
        return try factory.ShowEditNewAppointmentAsync(appointment);
    }
    pub fn RequestStoreAsync(options: AppointmentStoreAccessType) core.HResult!*IAsyncOperation(AppointmentStore) {
        const factory = @This().IAppointmentManagerStatics2Cache.get();
        return try factory.RequestStoreAsync(options);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppointmentManagerStaticsCache: FactoryCache(IAppointmentManagerStatics, RUNTIME_NAME) = .{};
    var _IAppointmentManagerStatics3Cache: FactoryCache(IAppointmentManagerStatics3, RUNTIME_NAME) = .{};
    var _IAppointmentManagerStatics2Cache: FactoryCache(IAppointmentManagerStatics2, RUNTIME_NAME) = .{};
};
pub const AppointmentManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ShowAddAppointmentAsync(self: *@This(), appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowAddAppointmentAsync(appointment, selection);
    }
    pub fn ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(self: *@This(), appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(appointment, selection, preferredPlacement);
    }
    pub fn ShowReplaceAppointmentAsync(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowReplaceAppointmentAsync(appointmentId, appointment, selection);
    }
    pub fn ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(appointmentId, appointment, selection, preferredPlacement);
    }
    pub fn ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(appointmentId, appointment, selection, preferredPlacement, instanceStartDate);
    }
    pub fn ShowRemoveAppointmentAsync(self: *@This(), appointmentId: HSTRING, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowRemoveAppointmentAsync(appointmentId, selection);
    }
    pub fn ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(self: *@This(), appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(appointmentId, selection, preferredPlacement);
    }
    pub fn ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(appointmentId, selection, preferredPlacement, instanceStartDate);
    }
    pub fn ShowTimeFrameAsync(self: *@This(), timeToShow: DateTime, duration: TimeSpan) core.HResult!*IAsyncAction {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowTimeFrameAsync(timeToShow, duration);
    }
    pub fn ShowAppointmentDetailsAsync(self: *@This(), appointmentId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowAppointmentDetailsAsync(appointmentId);
    }
    pub fn ShowAppointmentDetailsAsyncWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, instanceStartDate: DateTime) core.HResult!*IAsyncAction {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowAppointmentDetailsAsyncWithInstanceStartDate(appointmentId, instanceStartDate);
    }
    pub fn ShowEditNewAppointmentAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.ShowEditNewAppointmentAsync(appointment);
    }
    pub fn RequestStoreAsync(self: *@This(), options: AppointmentStoreAccessType) core.HResult!*IAsyncOperation(AppointmentStore) {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.RequestStoreAsync(options);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IAppointmentManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentManagerForUser.GUID;
    pub const IID: Guid = IAppointmentManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentManagerForUser.SIGNATURE);
};
pub const AppointmentOrganizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentParticipant = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppointmentParticipant = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IAppointmentParticipant = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn putAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppointmentParticipant = @ptrCast(self);
        return try this.putAddress(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppointmentParticipant.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentOrganizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentParticipant.GUID;
    pub const IID: Guid = IAppointmentParticipant.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentParticipant.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppointmentParticipantResponse = enum(i32) {
    None = 0,
    Tentative = 1,
    Accepted = 2,
    Declined = 3,
    Unknown = 4,
};
pub const AppointmentParticipantRole = enum(i32) {
    RequiredAttendee = 0,
    OptionalAttendee = 1,
    Resource = 2,
};
pub const AppointmentProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getChangeNumber() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStatics2Cache.get();
        return try factory.getChangeNumber();
    }
    pub fn getRemoteChangeNumber() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStatics2Cache.get();
        return try factory.getRemoteChangeNumber();
    }
    pub fn getDetailsKind() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStatics2Cache.get();
        return try factory.getDetailsKind();
    }
    pub fn getSubject() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getSubject();
    }
    pub fn getLocation() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getLocation();
    }
    pub fn getStartTime() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getStartTime();
    }
    pub fn getDuration() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getDuration();
    }
    pub fn getReminder() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getReminder();
    }
    pub fn getBusyStatus() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getBusyStatus();
    }
    pub fn getSensitivity() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getSensitivity();
    }
    pub fn getOriginalStartTime() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getOriginalStartTime();
    }
    pub fn getIsResponseRequested() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getIsResponseRequested();
    }
    pub fn getAllowNewTimeProposal() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getAllowNewTimeProposal();
    }
    pub fn getAllDay() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getAllDay();
    }
    pub fn getDetails() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getDetails();
    }
    pub fn getOnlineMeetingLink() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getOnlineMeetingLink();
    }
    pub fn getReplyTime() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getReplyTime();
    }
    pub fn getOrganizer() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getOrganizer();
    }
    pub fn getUserResponse() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getUserResponse();
    }
    pub fn getHasInvitees() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getHasInvitees();
    }
    pub fn getIsCanceledMeeting() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getIsCanceledMeeting();
    }
    pub fn getIsOrganizedByUser() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getIsOrganizedByUser();
    }
    pub fn getRecurrence() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getRecurrence();
    }
    pub fn getUri() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getUri();
    }
    pub fn getInvitees() core.HResult!HSTRING {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getInvitees();
    }
    pub fn getDefaultProperties() core.HResult!*IVector(HSTRING) {
        const factory = @This().IAppointmentPropertiesStaticsCache.get();
        return try factory.getDefaultProperties();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppointmentPropertiesStatics2Cache: FactoryCache(IAppointmentPropertiesStatics2, RUNTIME_NAME) = .{};
    var _IAppointmentPropertiesStaticsCache: FactoryCache(IAppointmentPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const AppointmentRecurrence = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnit(self: *@This()) core.HResult!AppointmentRecurrenceUnit {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn putUnit(self: *@This(), value: AppointmentRecurrenceUnit) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putUnit(value);
    }
    pub fn getOccurrences(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getOccurrences();
    }
    pub fn putOccurrences(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putOccurrences(value);
    }
    pub fn getUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getUntil();
    }
    pub fn putUntil(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putUntil(value);
    }
    pub fn getInterval(self: *@This()) core.HResult!u32 {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn putInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putInterval(value);
    }
    pub fn getDaysOfWeek(self: *@This()) core.HResult!AppointmentDaysOfWeek {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getDaysOfWeek();
    }
    pub fn putDaysOfWeek(self: *@This(), value: AppointmentDaysOfWeek) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putDaysOfWeek(value);
    }
    pub fn getWeekOfMonth(self: *@This()) core.HResult!AppointmentWeekOfMonth {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getWeekOfMonth();
    }
    pub fn putWeekOfMonth(self: *@This(), value: AppointmentWeekOfMonth) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putWeekOfMonth(value);
    }
    pub fn getMonth(self: *@This()) core.HResult!u32 {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getMonth();
    }
    pub fn putMonth(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putMonth(value);
    }
    pub fn getDay(self: *@This()) core.HResult!u32 {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.getDay();
    }
    pub fn putDay(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppointmentRecurrence = @ptrCast(self);
        return try this.putDay(value);
    }
    pub fn getRecurrenceType(self: *@This()) core.HResult!RecurrenceType {
        var this: ?*IAppointmentRecurrence2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentRecurrence2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRecurrenceType();
    }
    pub fn getTimeZone(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentRecurrence2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentRecurrence2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimeZone();
    }
    pub fn putTimeZone(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppointmentRecurrence2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentRecurrence2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTimeZone(value);
    }
    pub fn getCalendarIdentifier(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppointmentRecurrence3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentRecurrence3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCalendarIdentifier();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppointmentRecurrence.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentRecurrence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentRecurrence.GUID;
    pub const IID: Guid = IAppointmentRecurrence.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentRecurrence.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppointmentRecurrenceUnit = enum(i32) {
    Daily = 0,
    Weekly = 1,
    Monthly = 2,
    MonthlyOnDay = 3,
    Yearly = 4,
    YearlyOnDay = 5,
};
pub const AppointmentSensitivity = enum(i32) {
    Public = 0,
    Private = 1,
};
pub const AppointmentStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeTracker(self: *@This()) core.HResult!*AppointmentStoreChangeTracker {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.getChangeTracker();
    }
    pub fn CreateAppointmentCalendarAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(AppointmentCalendar) {
        var this: ?*IAppointmentStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAppointmentCalendarAsync(name);
    }
    pub fn GetAppointmentCalendarAsync(self: *@This(), calendarId: HSTRING) core.HResult!*IAsyncOperation(AppointmentCalendar) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.GetAppointmentCalendarAsync(calendarId);
    }
    pub fn GetAppointmentAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncOperation(Appointment) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.GetAppointmentAsync(localId);
    }
    pub fn GetAppointmentInstanceAsync(self: *@This(), localId: HSTRING, instanceStartTime: DateTime) core.HResult!*IAsyncOperation(Appointment) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.GetAppointmentInstanceAsync(localId, instanceStartTime);
    }
    pub fn FindAppointmentCalendarsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppointmentCalendar)) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindAppointmentCalendarsAsync();
    }
    pub fn FindAppointmentCalendarsAsync(self: *@This(), options: FindAppointmentCalendarsOptions) core.HResult!*IAsyncOperation(IVectorView(AppointmentCalendar)) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindAppointmentCalendarsAsync(options);
    }
    pub fn FindAppointmentsAsync(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindAppointmentsAsync(rangeStart, rangeLength);
    }
    pub fn FindAppointmentsAsyncWithRangeLengthWithOptions(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan, options: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindAppointmentsAsyncWithRangeLengthWithOptions(rangeStart, rangeLength, options);
    }
    pub fn FindConflictAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(AppointmentConflictResult) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindConflictAsync(appointment);
    }
    pub fn FindConflictAsyncWithInstanceStartTime(self: *@This(), appointment: *Appointment, instanceStartTime: DateTime) core.HResult!*IAsyncOperation(AppointmentConflictResult) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindConflictAsyncWithInstanceStartTime(appointment, instanceStartTime);
    }
    pub fn MoveAppointmentAsync(self: *@This(), appointment: *Appointment, destinationCalendar: *AppointmentCalendar) core.HResult!*IAsyncAction {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.MoveAppointmentAsync(appointment, destinationCalendar);
    }
    pub fn ShowAddAppointmentAsync(self: *@This(), appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowAddAppointmentAsync(appointment, selection);
    }
    pub fn ShowReplaceAppointmentAsync(self: *@This(), localId: HSTRING, appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowReplaceAppointmentAsync(localId, appointment, selection);
    }
    pub fn ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(self: *@This(), localId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(localId, appointment, selection, preferredPlacement, instanceStartDate);
    }
    pub fn ShowRemoveAppointmentAsync(self: *@This(), localId: HSTRING, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowRemoveAppointmentAsync(localId, selection);
    }
    pub fn ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(self: *@This(), localId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(localId, selection, preferredPlacement, instanceStartDate);
    }
    pub fn ShowAppointmentDetailsAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowAppointmentDetailsAsync(localId);
    }
    pub fn ShowAppointmentDetailsAsyncWithInstanceStartDate(self: *@This(), localId: HSTRING, instanceStartDate: DateTime) core.HResult!*IAsyncAction {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowAppointmentDetailsAsyncWithInstanceStartDate(localId, instanceStartDate);
    }
    pub fn ShowEditNewAppointmentAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.ShowEditNewAppointmentAsync(appointment);
    }
    pub fn FindLocalIdsFromRoamingIdAsync(self: *@This(), roamingId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *IAppointmentStore = @ptrCast(self);
        return try this.FindLocalIdsFromRoamingIdAsync(roamingId);
    }
    pub fn addStoreChanged(self: *@This(), pHandler: *TypedEventHandler(AppointmentStore,AppointmentStoreChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IAppointmentStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addStoreChanged(pHandler);
    }
    pub fn removeStoreChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IAppointmentStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeStoreChanged(token);
    }
    pub fn CreateAppointmentCalendarAsyncWithUserDataAccountId(self: *@This(), name: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(AppointmentCalendar) {
        var this: ?*IAppointmentStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAppointmentCalendarAsyncWithUserDataAccountId(name, userDataAccountId);
    }
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*AppointmentStoreChangeTracker {
        var this: ?*IAppointmentStore3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStore3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetChangeTracker(identity);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStore.GUID;
    pub const IID: Guid = IAppointmentStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStore.SIGNATURE);
};
pub const AppointmentStoreAccessType = enum(i32) {
    AppCalendarsReadWrite = 0,
    AllCalendarsReadOnly = 1,
    AllCalendarsReadWrite = 2,
};
pub const AppointmentStoreChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointment(self: *@This()) core.HResult!*Appointment {
        const this: *IAppointmentStoreChange = @ptrCast(self);
        return try this.getAppointment();
    }
    pub fn getChangeType(self: *@This()) core.HResult!AppointmentStoreChangeType {
        const this: *IAppointmentStoreChange = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn getAppointmentCalendar(self: *@This()) core.HResult!*AppointmentCalendar {
        var this: ?*IAppointmentStoreChange2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStoreChange2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppointmentCalendar();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStoreChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreChange.GUID;
    pub const IID: Guid = IAppointmentStoreChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreChange.SIGNATURE);
};
pub const AppointmentStoreChangeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppointmentStoreChange)) {
        const this: *IAppointmentStoreChangeReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const this: *IAppointmentStoreChangeReader = @ptrCast(self);
        return try this.AcceptChanges();
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAccept: *AppointmentStoreChange) core.HResult!void {
        const this: *IAppointmentStoreChangeReader = @ptrCast(self);
        return try this.AcceptChangesThrough(lastChangeToAccept);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStoreChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreChangeReader.GUID;
    pub const IID: Guid = IAppointmentStoreChangeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreChangeReader.SIGNATURE);
};
pub const AppointmentStoreChangeTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetChangeReader(self: *@This()) core.HResult!*AppointmentStoreChangeReader {
        const this: *IAppointmentStoreChangeTracker = @ptrCast(self);
        return try this.GetChangeReader();
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const this: *IAppointmentStoreChangeTracker = @ptrCast(self);
        return try this.Enable();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const this: *IAppointmentStoreChangeTracker = @ptrCast(self);
        return try this.Reset();
    }
    pub fn getIsTracking(self: *@This()) core.HResult!bool {
        var this: ?*IAppointmentStoreChangeTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppointmentStoreChangeTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTracking();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStoreChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreChangeTracker.GUID;
    pub const IID: Guid = IAppointmentStoreChangeTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreChangeTracker.SIGNATURE);
};
pub const AppointmentStoreChangeType = enum(i32) {
    AppointmentCreated = 0,
    AppointmentModified = 1,
    AppointmentDeleted = 2,
    ChangeTrackingLost = 3,
    CalendarCreated = 4,
    CalendarModified = 5,
    CalendarDeleted = 6,
};
pub const AppointmentStoreChangedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IAppointmentStoreChangedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStoreChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreChangedDeferral.GUID;
    pub const IID: Guid = IAppointmentStoreChangedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreChangedDeferral.SIGNATURE);
};
pub const AppointmentStoreChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*AppointmentStoreChangedDeferral {
        const this: *IAppointmentStoreChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStoreChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreChangedEventArgs.GUID;
    pub const IID: Guid = IAppointmentStoreChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreChangedEventArgs.SIGNATURE);
};
pub const AppointmentStoreNotificationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentStoreNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreNotificationTriggerDetails.GUID;
    pub const IID: Guid = IAppointmentStoreNotificationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreNotificationTriggerDetails.SIGNATURE);
};
pub const AppointmentSummaryCardView = enum(i32) {
    System = 0,
    App = 1,
};
pub const AppointmentWeekOfMonth = enum(i32) {
    First = 0,
    Second = 1,
    Third = 2,
    Fourth = 3,
    Last = 4,
};
pub const FindAppointmentCalendarsOptions = enum(i32) {
    None = 0,
    IncludeHidden = 1,
};
pub const FindAppointmentsOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCalendarIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IFindAppointmentsOptions = @ptrCast(self);
        return try this.getCalendarIds();
    }
    pub fn getFetchProperties(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IFindAppointmentsOptions = @ptrCast(self);
        return try this.getFetchProperties();
    }
    pub fn getIncludeHidden(self: *@This()) core.HResult!bool {
        const this: *IFindAppointmentsOptions = @ptrCast(self);
        return try this.getIncludeHidden();
    }
    pub fn putIncludeHidden(self: *@This(), value: bool) core.HResult!void {
        const this: *IFindAppointmentsOptions = @ptrCast(self);
        return try this.putIncludeHidden(value);
    }
    pub fn getMaxCount(self: *@This()) core.HResult!u32 {
        const this: *IFindAppointmentsOptions = @ptrCast(self);
        return try this.getMaxCount();
    }
    pub fn putMaxCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IFindAppointmentsOptions = @ptrCast(self);
        return try this.putMaxCount(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFindAppointmentsOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.FindAppointmentsOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFindAppointmentsOptions.GUID;
    pub const IID: Guid = IFindAppointmentsOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFindAppointmentsOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAppointment = extern struct {
    vtable: *const VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subject(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Details(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Details(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReminder(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Reminder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReminder(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_Reminder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrganizer(self: *@This()) core.HResult!*AppointmentOrganizer {
        var _r: *AppointmentOrganizer = undefined;
        const _c = self.vtable.get_Organizer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrganizer(self: *@This(), value: *AppointmentOrganizer) core.HResult!void {
        const _c = self.vtable.put_Organizer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInvitees(self: *@This()) core.HResult!*IVector(AppointmentInvitee) {
        var _r: *IVector(AppointmentInvitee) = undefined;
        const _c = self.vtable.get_Invitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecurrence(self: *@This()) core.HResult!*AppointmentRecurrence {
        var _r: *AppointmentRecurrence = undefined;
        const _c = self.vtable.get_Recurrence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecurrence(self: *@This(), value: *AppointmentRecurrence) core.HResult!void {
        const _c = self.vtable.put_Recurrence(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBusyStatus(self: *@This()) core.HResult!AppointmentBusyStatus {
        var _r: AppointmentBusyStatus = undefined;
        const _c = self.vtable.get_BusyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBusyStatus(self: *@This(), value: AppointmentBusyStatus) core.HResult!void {
        const _c = self.vtable.put_BusyStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllDay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllDay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllDay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSensitivity(self: *@This()) core.HResult!AppointmentSensitivity {
        var _r: AppointmentSensitivity = undefined;
        const _c = self.vtable.get_Sensitivity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSensitivity(self: *@This(), value: AppointmentSensitivity) core.HResult!void {
        const _c = self.vtable.put_Sensitivity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd002f2f-2bdd-4076-90a3-22c275312965";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subject: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Details: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Details: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Reminder: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Reminder: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Organizer: *const fn(self: *anyopaque, _r: **AppointmentOrganizer) callconv(.winapi) HRESULT,
        put_Organizer: *const fn(self: *anyopaque, value: *AppointmentOrganizer) callconv(.winapi) HRESULT,
        get_Invitees: *const fn(self: *anyopaque, _r: **IVector(AppointmentInvitee)) callconv(.winapi) HRESULT,
        get_Recurrence: *const fn(self: *anyopaque, _r: **AppointmentRecurrence) callconv(.winapi) HRESULT,
        put_Recurrence: *const fn(self: *anyopaque, value: *AppointmentRecurrence) callconv(.winapi) HRESULT,
        get_BusyStatus: *const fn(self: *anyopaque, _r: *AppointmentBusyStatus) callconv(.winapi) HRESULT,
        put_BusyStatus: *const fn(self: *anyopaque, value: AppointmentBusyStatus) callconv(.winapi) HRESULT,
        get_AllDay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllDay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Sensitivity: *const fn(self: *anyopaque, _r: *AppointmentSensitivity) callconv(.winapi) HRESULT,
        put_Sensitivity: *const fn(self: *anyopaque, value: AppointmentSensitivity) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IAppointment2 = extern struct {
    vtable: *const VTable,
    pub fn getLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCalendarId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CalendarId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoamingId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoamingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoamingId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RoamingId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_OriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsResponseRequested(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsResponseRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsResponseRequested(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsResponseRequested(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowNewTimeProposal(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowNewTimeProposal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowNewTimeProposal(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowNewTimeProposal(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOnlineMeetingLink(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OnlineMeetingLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOnlineMeetingLink(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OnlineMeetingLink(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReplyTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ReplyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReplyTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ReplyTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserResponse(self: *@This()) core.HResult!AppointmentParticipantResponse {
        var _r: AppointmentParticipantResponse = undefined;
        const _c = self.vtable.get_UserResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserResponse(self: *@This(), value: AppointmentParticipantResponse) core.HResult!void {
        const _c = self.vtable.put_UserResponse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHasInvitees(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasInvitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCanceledMeeting(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceledMeeting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCanceledMeeting(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCanceledMeeting(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOrganizedByUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOrganizedByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOrganizedByUser(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOrganizedByUser(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointment2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e85983c-540f-3452-9b5c-0dd7ad4c65a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CalendarId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoamingId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RoamingId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OriginalStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_IsResponseRequested: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsResponseRequested: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowNewTimeProposal: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowNewTimeProposal: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OnlineMeetingLink: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OnlineMeetingLink: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ReplyTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_ReplyTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_UserResponse: *const fn(self: *anyopaque, _r: *AppointmentParticipantResponse) callconv(.winapi) HRESULT,
        put_UserResponse: *const fn(self: *anyopaque, value: AppointmentParticipantResponse) callconv(.winapi) HRESULT,
        get_HasInvitees: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCanceledMeeting: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCanceledMeeting: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsOrganizedByUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOrganizedByUser: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppointment3 = extern struct {
    vtable: *const VTable,
    pub fn getChangeNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteChangeNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_RemoteChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteChangeNumber(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_RemoteChangeNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetailsKind(self: *@This()) core.HResult!AppointmentDetailsKind {
        var _r: AppointmentDetailsKind = undefined;
        const _c = self.vtable.get_DetailsKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDetailsKind(self: *@This(), value: AppointmentDetailsKind) core.HResult!void {
        const _c = self.vtable.put_DetailsKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointment3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfcc45a9-8961-4991-934b-c48768e5a96c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_RemoteChangeNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_RemoteChangeNumber: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_DetailsKind: *const fn(self: *anyopaque, _r: *AppointmentDetailsKind) callconv(.winapi) HRESULT,
        put_DetailsKind: *const fn(self: *anyopaque, value: AppointmentDetailsKind) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendar = extern struct {
    vtable: *const VTable,
    pub fn getDisplayColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DisplayColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHidden(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHidden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!AppointmentCalendarOtherAppReadAccess {
        var _r: AppointmentCalendarOtherAppReadAccess = undefined;
        const _c = self.vtable.get_OtherAppReadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: AppointmentCalendarOtherAppReadAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppReadAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!AppointmentCalendarOtherAppWriteAccess {
        var _r: AppointmentCalendarOtherAppWriteAccess = undefined;
        const _c = self.vtable.get_OtherAppWriteAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: AppointmentCalendarOtherAppWriteAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppWriteAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSummaryCardView(self: *@This()) core.HResult!AppointmentSummaryCardView {
        var _r: AppointmentSummaryCardView = undefined;
        const _c = self.vtable.get_SummaryCardView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSummaryCardView(self: *@This(), value: AppointmentSummaryCardView) core.HResult!void {
        const _c = self.vtable.put_SummaryCardView(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindAppointmentsAsync(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindAppointmentsAsync(@ptrCast(self), rangeStart, rangeLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAppointmentsAsyncWithRangeLengthWithOptions(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan, options: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindAppointmentsAsyncWithRangeLengthWithOptions(@ptrCast(self), rangeStart, rangeLength, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindExceptionsFromMasterAsync(self: *@This(), masterLocalId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppointmentException)) {
        var _r: *IAsyncOperation(IVectorView(AppointmentException)) = undefined;
        const _c = self.vtable.FindExceptionsFromMasterAsync(@ptrCast(self), masterLocalId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllInstancesAsync(self: *@This(), masterLocalId: HSTRING, rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindAllInstancesAsync(@ptrCast(self), masterLocalId, rangeStart, rangeLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllInstancesAsyncWithRangeStartWithRangeLengthWithPOptions(self: *@This(), masterLocalId: HSTRING, rangeStart: DateTime, rangeLength: TimeSpan, pOptions: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindAllInstancesAsyncWithRangeStartWithRangeLengthWithPOptions(@ptrCast(self), masterLocalId, rangeStart, rangeLength, pOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppointmentAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncOperation(Appointment) {
        var _r: *IAsyncOperation(Appointment) = undefined;
        const _c = self.vtable.GetAppointmentAsync(@ptrCast(self), localId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppointmentInstanceAsync(self: *@This(), localId: HSTRING, instanceStartTime: DateTime) core.HResult!*IAsyncOperation(Appointment) {
        var _r: *IAsyncOperation(Appointment) = undefined;
        const _c = self.vtable.GetAppointmentInstanceAsync(@ptrCast(self), localId, instanceStartTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindUnexpandedAppointmentsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindUnexpandedAppointmentsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindUnexpandedAppointmentsAsync(self: *@This(), options: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindUnexpandedAppointmentsAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAppointmentAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAppointmentAsync(@ptrCast(self), localId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAppointmentInstanceAsync(self: *@This(), localId: HSTRING, instanceStartTime: DateTime) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAppointmentInstanceAsync(@ptrCast(self), localId, instanceStartTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAppointmentAsync(self: *@This(), pAppointment: *Appointment) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAppointmentAsync(@ptrCast(self), pAppointment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentCalendar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5273819d-8339-3d4f-a02f-64084452bb5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LocalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsHidden: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_OtherAppReadAccess: *const fn(self: *anyopaque, _r: *AppointmentCalendarOtherAppReadAccess) callconv(.winapi) HRESULT,
        put_OtherAppReadAccess: *const fn(self: *anyopaque, value: AppointmentCalendarOtherAppReadAccess) callconv(.winapi) HRESULT,
        get_OtherAppWriteAccess: *const fn(self: *anyopaque, _r: *AppointmentCalendarOtherAppWriteAccess) callconv(.winapi) HRESULT,
        put_OtherAppWriteAccess: *const fn(self: *anyopaque, value: AppointmentCalendarOtherAppWriteAccess) callconv(.winapi) HRESULT,
        get_SourceDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SummaryCardView: *const fn(self: *anyopaque, _r: *AppointmentSummaryCardView) callconv(.winapi) HRESULT,
        put_SummaryCardView: *const fn(self: *anyopaque, value: AppointmentSummaryCardView) callconv(.winapi) HRESULT,
        FindAppointmentsAsync: *const fn(self: *anyopaque, rangeStart: DateTime, rangeLength: TimeSpan, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        FindAppointmentsAsyncWithRangeLengthWithOptions: *const fn(self: *anyopaque, rangeStart: DateTime, rangeLength: TimeSpan, options: *FindAppointmentsOptions, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        FindExceptionsFromMasterAsync: *const fn(self: *anyopaque, masterLocalId: HSTRING, _r: **IAsyncOperation(IVectorView(AppointmentException))) callconv(.winapi) HRESULT,
        FindAllInstancesAsync: *const fn(self: *anyopaque, masterLocalId: HSTRING, rangeStart: DateTime, rangeLength: TimeSpan, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        FindAllInstancesAsyncWithRangeStartWithRangeLengthWithPOptions: *const fn(self: *anyopaque, masterLocalId: HSTRING, rangeStart: DateTime, rangeLength: TimeSpan, pOptions: *FindAppointmentsOptions, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        GetAppointmentAsync: *const fn(self: *anyopaque, localId: HSTRING, _r: **IAsyncOperation(Appointment)) callconv(.winapi) HRESULT,
        GetAppointmentInstanceAsync: *const fn(self: *anyopaque, localId: HSTRING, instanceStartTime: DateTime, _r: **IAsyncOperation(Appointment)) callconv(.winapi) HRESULT,
        FindUnexpandedAppointmentsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        FindUnexpandedAppointmentsAsync: *const fn(self: *anyopaque, options: *FindAppointmentsOptions, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAppointmentAsync: *const fn(self: *anyopaque, localId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAppointmentInstanceAsync: *const fn(self: *anyopaque, localId: HSTRING, instanceStartTime: DateTime, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SaveAppointmentAsync: *const fn(self: *anyopaque, pAppointment: *Appointment, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendar2 = extern struct {
    vtable: *const VTable,
    pub fn getSyncManager(self: *@This()) core.HResult!*AppointmentCalendarSyncManager {
        var _r: *AppointmentCalendarSyncManager = undefined;
        const _c = self.vtable.get_SyncManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putDisplayColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_DisplayColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putIsHidden(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHidden(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanCreateOrUpdateAppointments(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCreateOrUpdateAppointments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanCreateOrUpdateAppointments(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanCreateOrUpdateAppointments(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanCancelMeetings(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCancelMeetings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanCancelMeetings(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanCancelMeetings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanForwardMeetings(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanForwardMeetings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanForwardMeetings(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanForwardMeetings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanProposeNewTimeForMeetings(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanProposeNewTimeForMeetings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanProposeNewTimeForMeetings(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanProposeNewTimeForMeetings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanUpdateMeetingResponses(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanUpdateMeetingResponses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanUpdateMeetingResponses(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanUpdateMeetingResponses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanNotifyInvitees(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanNotifyInvitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanNotifyInvitees(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanNotifyInvitees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMustNofityInvitees(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MustNofityInvitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMustNofityInvitees(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MustNofityInvitees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryCreateOrUpdateAppointmentAsync(self: *@This(), appointment: *Appointment, notifyInvitees: bool) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryCreateOrUpdateAppointmentAsync(@ptrCast(self), appointment, notifyInvitees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCancelMeetingAsync(self: *@This(), meeting: *Appointment, subject: HSTRING, comment: HSTRING, notifyInvitees: bool) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryCancelMeetingAsync(@ptrCast(self), meeting, subject, comment, notifyInvitees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryForwardMeetingAsync(self: *@This(), meeting: *Appointment, invitees: *IIterable(AppointmentInvitee), subject: HSTRING, forwardHeader: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryForwardMeetingAsync(@ptrCast(self), meeting, invitees, subject, forwardHeader, comment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryProposeNewTimeForMeetingAsync(self: *@This(), meeting: *Appointment, newStartTime: DateTime, newDuration: TimeSpan, subject: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryProposeNewTimeForMeetingAsync(@ptrCast(self), meeting, newStartTime, newDuration, subject, comment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateMeetingResponseAsync(self: *@This(), meeting: *Appointment, response: AppointmentParticipantResponse, subject: HSTRING, comment: HSTRING, sendUpdate: bool) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryUpdateMeetingResponseAsync(@ptrCast(self), meeting, response, subject, comment, sendUpdate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentCalendar2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18e7e422-2467-4e1c-a459-d8a29303d092";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SyncManager: *const fn(self: *anyopaque, _r: **AppointmentCalendarSyncManager) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        put_DisplayColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        put_IsHidden: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CanCreateOrUpdateAppointments: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanCreateOrUpdateAppointments: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanCancelMeetings: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanCancelMeetings: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanForwardMeetings: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanForwardMeetings: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanProposeNewTimeForMeetings: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanProposeNewTimeForMeetings: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanUpdateMeetingResponses: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanUpdateMeetingResponses: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanNotifyInvitees: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanNotifyInvitees: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MustNofityInvitees: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MustNofityInvitees: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        TryCreateOrUpdateAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, notifyInvitees: bool, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryCancelMeetingAsync: *const fn(self: *anyopaque, meeting: *Appointment, subject: HSTRING, comment: HSTRING, notifyInvitees: bool, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryForwardMeetingAsync: *const fn(self: *anyopaque, meeting: *Appointment, invitees: *IIterable(AppointmentInvitee), subject: HSTRING, forwardHeader: HSTRING, comment: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryProposeNewTimeForMeetingAsync: *const fn(self: *anyopaque, meeting: *Appointment, newStartTime: DateTime, newDuration: TimeSpan, subject: HSTRING, comment: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryUpdateMeetingResponseAsync: *const fn(self: *anyopaque, meeting: *Appointment, response: AppointmentParticipantResponse, subject: HSTRING, comment: HSTRING, sendUpdate: bool, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendar3 = extern struct {
    vtable: *const VTable,
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RegisterSyncManagerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentCalendar3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb23d22b-a685-42ae-8495-b3119adb4167";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterSyncManagerAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarSyncManager = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AppointmentCalendarSyncStatus {
        var _r: AppointmentCalendarSyncStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastSuccessfulSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastAttemptedSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SyncAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(AppointmentCalendarSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b21b3a0-4aff-4392-bc5f-5645ffcffb17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AppointmentCalendarSyncStatus) callconv(.winapi) HRESULT,
        get_LastSuccessfulSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_LastAttemptedSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        SyncAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_SyncStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppointmentCalendarSyncManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentCalendarSyncManager2 = extern struct {
    vtable: *const VTable,
    pub fn putStatus(self: *@This(), value: AppointmentCalendarSyncStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastSuccessfulSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastAttemptedSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "647528ad-0d29-4c7c-aaa7-bf996805537c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: AppointmentCalendarSyncStatus) callconv(.winapi) HRESULT,
        put_LastSuccessfulSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        put_LastAttemptedSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentConflictResult = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!AppointmentConflictType {
        var _r: AppointmentConflictType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentConflictResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5cdf0be-2f2f-3b7d-af0a-a7e20f3a46e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *AppointmentConflictType) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentException = extern struct {
    vtable: *const VTable,
    pub fn getAppointment(self: *@This()) core.HResult!*Appointment {
        var _r: *Appointment = undefined;
        const _c = self.vtable.get_Appointment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExceptionProperties(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_ExceptionProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDeleted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDeleted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentException";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2076767-16f6-4bce-9f5a-8600b8019fcb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Appointment: *const fn(self: *anyopaque, _r: **Appointment) callconv(.winapi) HRESULT,
        get_ExceptionProperties: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_IsDeleted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentInvitee = extern struct {
    vtable: *const VTable,
    pub fn getRole(self: *@This()) core.HResult!AppointmentParticipantRole {
        var _r: AppointmentParticipantRole = undefined;
        const _c = self.vtable.get_Role(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRole(self: *@This(), value: AppointmentParticipantRole) core.HResult!void {
        const _c = self.vtable.put_Role(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResponse(self: *@This()) core.HResult!AppointmentParticipantResponse {
        var _r: AppointmentParticipantResponse = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResponse(self: *@This(), value: AppointmentParticipantResponse) core.HResult!void {
        const _c = self.vtable.put_Response(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentInvitee";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13bf0796-9842-495b-b0e7-ef8f79c0701d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Role: *const fn(self: *anyopaque, _r: *AppointmentParticipantRole) callconv(.winapi) HRESULT,
        put_Role: *const fn(self: *anyopaque, value: AppointmentParticipantRole) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: *AppointmentParticipantResponse) callconv(.winapi) HRESULT,
        put_Response: *const fn(self: *anyopaque, value: AppointmentParticipantResponse) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn ShowAddAppointmentAsync(self: *@This(), appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowAddAppointmentAsync(@ptrCast(self), appointment, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(self: *@This(), appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(@ptrCast(self), appointment, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsync(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsync(@ptrCast(self), appointmentId, appointment, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(@ptrCast(self), appointmentId, appointment, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(@ptrCast(self), appointmentId, appointment, selection, preferredPlacement, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsync(self: *@This(), appointmentId: HSTRING, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsync(@ptrCast(self), appointmentId, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(self: *@This(), appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(@ptrCast(self), appointmentId, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(@ptrCast(self), appointmentId, selection, preferredPlacement, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowTimeFrameAsync(self: *@This(), timeToShow: DateTime, duration: TimeSpan) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowTimeFrameAsync(@ptrCast(self), timeToShow, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAppointmentDetailsAsync(self: *@This(), appointmentId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAppointmentDetailsAsync(@ptrCast(self), appointmentId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAppointmentDetailsAsyncWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, instanceStartDate: DateTime) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAppointmentDetailsAsyncWithInstanceStartDate(@ptrCast(self), appointmentId, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowEditNewAppointmentAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowEditNewAppointmentAsync(@ptrCast(self), appointment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStoreAsync(self: *@This(), options: AppointmentStoreAccessType) core.HResult!*IAsyncOperation(AppointmentStore) {
        var _r: *IAsyncOperation(AppointmentStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70261423-73cc-4660-b318-b01365302a03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowAddAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, selection: Rect, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsync: *const fn(self: *anyopaque, appointmentId: HSTRING, appointment: *Appointment, selection: Rect, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate: *const fn(self: *anyopaque, appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsync: *const fn(self: *anyopaque, appointmentId: HSTRING, selection: Rect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate: *const fn(self: *anyopaque, appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowTimeFrameAsync: *const fn(self: *anyopaque, timeToShow: DateTime, duration: TimeSpan, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAppointmentDetailsAsync: *const fn(self: *anyopaque, appointmentId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAppointmentDetailsAsyncWithInstanceStartDate: *const fn(self: *anyopaque, appointmentId: HSTRING, instanceStartDate: DateTime, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowEditNewAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, options: AppointmentStoreAccessType, _r: **IAsyncOperation(AppointmentStore)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowAddAppointmentAsync(self: *@This(), appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowAddAppointmentAsync(@ptrCast(self), appointment, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(self: *@This(), appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement(@ptrCast(self), appointment, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsync(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsync(@ptrCast(self), appointmentId, appointment, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement(@ptrCast(self), appointmentId, appointment, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(@ptrCast(self), appointmentId, appointment, selection, preferredPlacement, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsync(self: *@This(), appointmentId: HSTRING, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsync(@ptrCast(self), appointmentId, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(self: *@This(), appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement(@ptrCast(self), appointmentId, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(@ptrCast(self), appointmentId, selection, preferredPlacement, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowTimeFrameAsync(self: *@This(), timeToShow: DateTime, duration: TimeSpan) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowTimeFrameAsync(@ptrCast(self), timeToShow, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a30fa01-5c40-499d-b33f-a43050f74fc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowAddAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, selection: Rect, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowAddAppointmentAsyncWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsync: *const fn(self: *anyopaque, appointmentId: HSTRING, appointment: *Appointment, selection: Rect, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsyncWithAppointmentWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate: *const fn(self: *anyopaque, appointmentId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsync: *const fn(self: *anyopaque, appointmentId: HSTRING, selection: Rect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsyncWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate: *const fn(self: *anyopaque, appointmentId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowTimeFrameAsync: *const fn(self: *anyopaque, timeToShow: DateTime, duration: TimeSpan, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn ShowAppointmentDetailsAsync(self: *@This(), appointmentId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAppointmentDetailsAsync(@ptrCast(self), appointmentId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAppointmentDetailsAsyncWithInstanceStartDate(self: *@This(), appointmentId: HSTRING, instanceStartDate: DateTime) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAppointmentDetailsAsyncWithInstanceStartDate(@ptrCast(self), appointmentId, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowEditNewAppointmentAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowEditNewAppointmentAsync(@ptrCast(self), appointment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStoreAsync(self: *@This(), options: AppointmentStoreAccessType) core.HResult!*IAsyncOperation(AppointmentStore) {
        var _r: *IAsyncOperation(AppointmentStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a81f60d-d04f-4034-af72-a36573b45ff0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowAppointmentDetailsAsync: *const fn(self: *anyopaque, appointmentId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAppointmentDetailsAsyncWithInstanceStartDate: *const fn(self: *anyopaque, appointmentId: HSTRING, instanceStartDate: DateTime, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowEditNewAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, options: AppointmentStoreAccessType, _r: **IAsyncOperation(AppointmentStore)) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AppointmentManagerForUser {
        var _r: *AppointmentManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f9ae09c-b34c-4dc7-a35d-cafd88ae3ec6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AppointmentManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentParticipant = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Address(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentParticipant";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "615e2902-9718-467b-83fb-b293a19121de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Address: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartTime(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReminder(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Reminder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBusyStatus(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BusyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSensitivity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sensitivity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOriginalStartTime(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsResponseRequested(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IsResponseRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowNewTimeProposal(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AllowNewTimeProposal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllDay(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AllDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Details(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOnlineMeetingLink(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OnlineMeetingLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReplyTime(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ReplyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrganizer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Organizer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserResponse(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasInvitees(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HasInvitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCanceledMeeting(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IsCanceledMeeting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOrganizedByUser(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IsOrganizedByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecurrence(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Recurrence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvitees(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Invitees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultProperties(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DefaultProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25141fe9-68ae-3aae-855f-bc4441caa234";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Reminder: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BusyStatus: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sensitivity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OriginalStartTime: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsResponseRequested: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AllowNewTimeProposal: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AllDay: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Details: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OnlineMeetingLink: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReplyTime: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Organizer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserResponse: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasInvitees: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsCanceledMeeting: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsOrganizedByUser: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Recurrence: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Invitees: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DefaultProperties: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getChangeNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteChangeNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetailsKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DetailsKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dffc434b-b017-45dd-8af5-d163d10801bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteChangeNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DetailsKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentRecurrence = extern struct {
    vtable: *const VTable,
    pub fn getUnit(self: *@This()) core.HResult!AppointmentRecurrenceUnit {
        var _r: AppointmentRecurrenceUnit = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnit(self: *@This(), value: AppointmentRecurrenceUnit) core.HResult!void {
        const _c = self.vtable.put_Unit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOccurrences(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Occurrences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOccurrences(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_Occurrences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Until(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUntil(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Until(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Interval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDaysOfWeek(self: *@This()) core.HResult!AppointmentDaysOfWeek {
        var _r: AppointmentDaysOfWeek = undefined;
        const _c = self.vtable.get_DaysOfWeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDaysOfWeek(self: *@This(), value: AppointmentDaysOfWeek) core.HResult!void {
        const _c = self.vtable.put_DaysOfWeek(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWeekOfMonth(self: *@This()) core.HResult!AppointmentWeekOfMonth {
        var _r: AppointmentWeekOfMonth = undefined;
        const _c = self.vtable.get_WeekOfMonth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWeekOfMonth(self: *@This(), value: AppointmentWeekOfMonth) core.HResult!void {
        const _c = self.vtable.put_WeekOfMonth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMonth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Month(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMonth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Month(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDay(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Day(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDay(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Day(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentRecurrence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d87b3e83-15a6-487b-b959-0c361e60e954";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *AppointmentRecurrenceUnit) callconv(.winapi) HRESULT,
        put_Unit: *const fn(self: *anyopaque, value: AppointmentRecurrenceUnit) callconv(.winapi) HRESULT,
        get_Occurrences: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_Occurrences: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_Until: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Until: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Interval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DaysOfWeek: *const fn(self: *anyopaque, _r: *AppointmentDaysOfWeek) callconv(.winapi) HRESULT,
        put_DaysOfWeek: *const fn(self: *anyopaque, value: AppointmentDaysOfWeek) callconv(.winapi) HRESULT,
        get_WeekOfMonth: *const fn(self: *anyopaque, _r: *AppointmentWeekOfMonth) callconv(.winapi) HRESULT,
        put_WeekOfMonth: *const fn(self: *anyopaque, value: AppointmentWeekOfMonth) callconv(.winapi) HRESULT,
        get_Month: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Month: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Day: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Day: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentRecurrence2 = extern struct {
    vtable: *const VTable,
    pub fn getRecurrenceType(self: *@This()) core.HResult!RecurrenceType {
        var _r: RecurrenceType = undefined;
        const _c = self.vtable.get_RecurrenceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeZone(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TimeZone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimeZone(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TimeZone(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentRecurrence2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3df3a2e0-05a7-4f50-9f86-b03f9436254d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecurrenceType: *const fn(self: *anyopaque, _r: *RecurrenceType) callconv(.winapi) HRESULT,
        get_TimeZone: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TimeZone: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentRecurrence3 = extern struct {
    vtable: *const VTable,
    pub fn getCalendarIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CalendarIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentRecurrence3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89ff96d9-da4d-4a17-8dd2-1cebc2b5ff9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CalendarIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStore = extern struct {
    vtable: *const VTable,
    pub fn getChangeTracker(self: *@This()) core.HResult!*AppointmentStoreChangeTracker {
        var _r: *AppointmentStoreChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAppointmentCalendarAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(AppointmentCalendar) {
        var _r: *IAsyncOperation(AppointmentCalendar) = undefined;
        const _c = self.vtable.CreateAppointmentCalendarAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppointmentCalendarAsync(self: *@This(), calendarId: HSTRING) core.HResult!*IAsyncOperation(AppointmentCalendar) {
        var _r: *IAsyncOperation(AppointmentCalendar) = undefined;
        const _c = self.vtable.GetAppointmentCalendarAsync(@ptrCast(self), calendarId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppointmentAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncOperation(Appointment) {
        var _r: *IAsyncOperation(Appointment) = undefined;
        const _c = self.vtable.GetAppointmentAsync(@ptrCast(self), localId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppointmentInstanceAsync(self: *@This(), localId: HSTRING, instanceStartTime: DateTime) core.HResult!*IAsyncOperation(Appointment) {
        var _r: *IAsyncOperation(Appointment) = undefined;
        const _c = self.vtable.GetAppointmentInstanceAsync(@ptrCast(self), localId, instanceStartTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAppointmentCalendarsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppointmentCalendar)) {
        var _r: *IAsyncOperation(IVectorView(AppointmentCalendar)) = undefined;
        const _c = self.vtable.FindAppointmentCalendarsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAppointmentCalendarsAsync(self: *@This(), options: FindAppointmentCalendarsOptions) core.HResult!*IAsyncOperation(IVectorView(AppointmentCalendar)) {
        var _r: *IAsyncOperation(IVectorView(AppointmentCalendar)) = undefined;
        const _c = self.vtable.FindAppointmentCalendarsAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAppointmentsAsync(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindAppointmentsAsync(@ptrCast(self), rangeStart, rangeLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAppointmentsAsyncWithRangeLengthWithOptions(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan, options: *FindAppointmentsOptions) core.HResult!*IAsyncOperation(IVectorView(Appointment)) {
        var _r: *IAsyncOperation(IVectorView(Appointment)) = undefined;
        const _c = self.vtable.FindAppointmentsAsyncWithRangeLengthWithOptions(@ptrCast(self), rangeStart, rangeLength, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindConflictAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(AppointmentConflictResult) {
        var _r: *IAsyncOperation(AppointmentConflictResult) = undefined;
        const _c = self.vtable.FindConflictAsync(@ptrCast(self), appointment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindConflictAsyncWithInstanceStartTime(self: *@This(), appointment: *Appointment, instanceStartTime: DateTime) core.HResult!*IAsyncOperation(AppointmentConflictResult) {
        var _r: *IAsyncOperation(AppointmentConflictResult) = undefined;
        const _c = self.vtable.FindConflictAsyncWithInstanceStartTime(@ptrCast(self), appointment, instanceStartTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveAppointmentAsync(self: *@This(), appointment: *Appointment, destinationCalendar: *AppointmentCalendar) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MoveAppointmentAsync(@ptrCast(self), appointment, destinationCalendar, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAddAppointmentAsync(self: *@This(), appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowAddAppointmentAsync(@ptrCast(self), appointment, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsync(self: *@This(), localId: HSTRING, appointment: *Appointment, selection: Rect) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsync(@ptrCast(self), localId, appointment, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(self: *@This(), localId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate(@ptrCast(self), localId, appointment, selection, preferredPlacement, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsync(self: *@This(), localId: HSTRING, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsync(@ptrCast(self), localId, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(self: *@This(), localId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate(@ptrCast(self), localId, selection, preferredPlacement, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAppointmentDetailsAsync(self: *@This(), localId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAppointmentDetailsAsync(@ptrCast(self), localId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAppointmentDetailsAsyncWithInstanceStartDate(self: *@This(), localId: HSTRING, instanceStartDate: DateTime) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAppointmentDetailsAsyncWithInstanceStartDate(@ptrCast(self), localId, instanceStartDate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowEditNewAppointmentAsync(self: *@This(), appointment: *Appointment) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowEditNewAppointmentAsync(@ptrCast(self), appointment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindLocalIdsFromRoamingIdAsync(self: *@This(), roamingId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.FindLocalIdsFromRoamingIdAsync(@ptrCast(self), roamingId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a461918c-7a47-4d96-96c9-15cd8a05a735";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **AppointmentStoreChangeTracker) callconv(.winapi) HRESULT,
        CreateAppointmentCalendarAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(AppointmentCalendar)) callconv(.winapi) HRESULT,
        GetAppointmentCalendarAsync: *const fn(self: *anyopaque, calendarId: HSTRING, _r: **IAsyncOperation(AppointmentCalendar)) callconv(.winapi) HRESULT,
        GetAppointmentAsync: *const fn(self: *anyopaque, localId: HSTRING, _r: **IAsyncOperation(Appointment)) callconv(.winapi) HRESULT,
        GetAppointmentInstanceAsync: *const fn(self: *anyopaque, localId: HSTRING, instanceStartTime: DateTime, _r: **IAsyncOperation(Appointment)) callconv(.winapi) HRESULT,
        FindAppointmentCalendarsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(AppointmentCalendar))) callconv(.winapi) HRESULT,
        FindAppointmentCalendarsAsync: *const fn(self: *anyopaque, options: FindAppointmentCalendarsOptions, _r: **IAsyncOperation(IVectorView(AppointmentCalendar))) callconv(.winapi) HRESULT,
        FindAppointmentsAsync: *const fn(self: *anyopaque, rangeStart: DateTime, rangeLength: TimeSpan, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        FindAppointmentsAsyncWithRangeLengthWithOptions: *const fn(self: *anyopaque, rangeStart: DateTime, rangeLength: TimeSpan, options: *FindAppointmentsOptions, _r: **IAsyncOperation(IVectorView(Appointment))) callconv(.winapi) HRESULT,
        FindConflictAsync: *const fn(self: *anyopaque, appointment: *Appointment, _r: **IAsyncOperation(AppointmentConflictResult)) callconv(.winapi) HRESULT,
        FindConflictAsyncWithInstanceStartTime: *const fn(self: *anyopaque, appointment: *Appointment, instanceStartTime: DateTime, _r: **IAsyncOperation(AppointmentConflictResult)) callconv(.winapi) HRESULT,
        MoveAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, destinationCalendar: *AppointmentCalendar, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAddAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, selection: Rect, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsync: *const fn(self: *anyopaque, localId: HSTRING, appointment: *Appointment, selection: Rect, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowReplaceAppointmentAsyncWithSelectionWithPreferredPlacementWithInstanceStartDate: *const fn(self: *anyopaque, localId: HSTRING, appointment: *Appointment, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsync: *const fn(self: *anyopaque, localId: HSTRING, selection: Rect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowRemoveAppointmentAsyncWithPreferredPlacementWithInstanceStartDate: *const fn(self: *anyopaque, localId: HSTRING, selection: Rect, preferredPlacement: Placement, instanceStartDate: DateTime, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowAppointmentDetailsAsync: *const fn(self: *anyopaque, localId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAppointmentDetailsAsyncWithInstanceStartDate: *const fn(self: *anyopaque, localId: HSTRING, instanceStartDate: DateTime, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowEditNewAppointmentAsync: *const fn(self: *anyopaque, appointment: *Appointment, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        FindLocalIdsFromRoamingIdAsync: *const fn(self: *anyopaque, roamingId: HSTRING, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStore2 = extern struct {
    vtable: *const VTable,
    pub fn addStoreChanged(self: *@This(), pHandler: *TypedEventHandler(AppointmentStore,AppointmentStoreChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StoreChanged(@ptrCast(self), pHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStoreChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StoreChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateAppointmentCalendarAsync(self: *@This(), name: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(AppointmentCalendar) {
        var _r: *IAsyncOperation(AppointmentCalendar) = undefined;
        const _c = self.vtable.CreateAppointmentCalendarAsync(@ptrCast(self), name, userDataAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25c48c20-1c41-424f-8084-67c1cfe0a854";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_StoreChanged: *const fn(self: *anyopaque, pHandler: *TypedEventHandler(AppointmentStore,AppointmentStoreChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StoreChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateAppointmentCalendarAsync: *const fn(self: *anyopaque, name: HSTRING, userDataAccountId: HSTRING, _r: **IAsyncOperation(AppointmentCalendar)) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStore3 = extern struct {
    vtable: *const VTable,
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*AppointmentStoreChangeTracker {
        var _r: *AppointmentStoreChangeTracker = undefined;
        const _c = self.vtable.GetChangeTracker(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStore3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4251940b-b078-470a-9a40-c2e01761f72f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetChangeTracker: *const fn(self: *anyopaque, identity: HSTRING, _r: **AppointmentStoreChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreChange = extern struct {
    vtable: *const VTable,
    pub fn getAppointment(self: *@This()) core.HResult!*Appointment {
        var _r: *Appointment = undefined;
        const _c = self.vtable.get_Appointment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChangeType(self: *@This()) core.HResult!AppointmentStoreChangeType {
        var _r: AppointmentStoreChangeType = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5a6e035-0a33-3654-8463-b543e90c3b79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Appointment: *const fn(self: *anyopaque, _r: **Appointment) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *AppointmentStoreChangeType) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreChange2 = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentCalendar(self: *@This()) core.HResult!*AppointmentCalendar {
        var _r: *AppointmentCalendar = undefined;
        const _c = self.vtable.get_AppointmentCalendar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChange2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b37d0dce-5211-4402-a608-a96fe70b8ee2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentCalendar: *const fn(self: *anyopaque, _r: **AppointmentCalendar) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreChangeReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppointmentStoreChange)) {
        var _r: *IAsyncOperation(IVectorView(AppointmentStoreChange)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const _c = self.vtable.AcceptChanges(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAccept: *AppointmentStoreChange) core.HResult!void {
        const _c = self.vtable.AcceptChangesThrough(@ptrCast(self), lastChangeToAccept);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b2409f1-65f3-42a0-961d-4c209bf30370";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(AppointmentStoreChange))) callconv(.winapi) HRESULT,
        AcceptChanges: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        AcceptChangesThrough: *const fn(self: *anyopaque, lastChangeToAccept: *AppointmentStoreChange) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreChangeTracker = extern struct {
    vtable: *const VTable,
    pub fn GetChangeReader(self: *@This()) core.HResult!*AppointmentStoreChangeReader {
        var _r: *AppointmentStoreChangeReader = undefined;
        const _c = self.vtable.GetChangeReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b25f4b1-8ece-4f17-93c8-e6412458fd5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetChangeReader: *const fn(self: *anyopaque, _r: **AppointmentStoreChangeReader) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreChangeTracker2 = extern struct {
    vtable: *const VTable,
    pub fn getIsTracking(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTracking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChangeTracker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b66aaf45-9542-4cf7-8550-eb370e0c08d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTracking: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreChangedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4cb82026-fedb-4bc3-9662-95a9befdf4df";
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
pub const IAppointmentStoreChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*AppointmentStoreChangedDeferral {
        var _r: *AppointmentStoreChangedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2285f8b9-0791-417e-bfea-cc6d41636c8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **AppointmentStoreChangedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreNotificationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IAppointmentStoreNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b33cb11-c301-421e-afef-047ecfa76adb";
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
pub const IFindAppointmentsOptions = extern struct {
    vtable: *const VTable,
    pub fn getCalendarIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_CalendarIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFetchProperties(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_FetchProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeHidden(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeHidden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeHidden(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeHidden(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.IFindAppointmentsOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55f7dc55-9942-3086-82b5-2cb29f64d5f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CalendarIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_FetchProperties: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_IncludeHidden: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeHidden: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MaxCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const RecurrenceType = enum(i32) {
    Master = 0,
    Instance = 1,
    ExceptionInstance = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IReference = @import("../Foundation.zig").IReference;
const Placement = @import("../UI/Popups.zig").Placement;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
pub const AppointmentsProvider = @import("./Appointments/AppointmentsProvider.zig");
pub const DataProvider = @import("./Appointments/DataProvider.zig");
