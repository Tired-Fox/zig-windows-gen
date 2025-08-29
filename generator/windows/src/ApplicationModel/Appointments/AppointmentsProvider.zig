pub const AddAppointmentOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentInformation(self: *@This()) core.HResult!*Appointment {
        const this: *IAddAppointmentOperation = @ptrCast(self);
        return try this.getAppointmentInformation();
    }
    pub fn getSourcePackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IAddAppointmentOperation = @ptrCast(self);
        return try this.getSourcePackageFamilyName();
    }
    pub fn ReportCompleted(self: *@This(), itemId: HSTRING) core.HResult!void {
        const this: *IAddAppointmentOperation = @ptrCast(self);
        return try this.ReportCompleted(itemId);
    }
    pub fn ReportCanceled(self: *@This()) core.HResult!void {
        const this: *IAddAppointmentOperation = @ptrCast(self);
        return try this.ReportCanceled();
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAddAppointmentOperation = @ptrCast(self);
        return try this.ReportError(value);
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const this: *IAddAppointmentOperation = @ptrCast(self);
        return try this.DismissUI();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAddAppointmentOperation.GUID;
    pub const IID: Guid = IAddAppointmentOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAddAppointmentOperation.SIGNATURE);
};
pub const AppointmentsProviderLaunchActionVerbs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_AddAppointment() core.HResult!HSTRING {
        const factory = @This().IAppointmentsProviderLaunchActionVerbsStaticsCache.get();
        return try factory.getAddAppointment();
    }
    pub fn get_ReplaceAppointment() core.HResult!HSTRING {
        const factory = @This().IAppointmentsProviderLaunchActionVerbsStaticsCache.get();
        return try factory.getReplaceAppointment();
    }
    pub fn get_RemoveAppointment() core.HResult!HSTRING {
        const factory = @This().IAppointmentsProviderLaunchActionVerbsStaticsCache.get();
        return try factory.getRemoveAppointment();
    }
    pub fn get_ShowTimeFrame() core.HResult!HSTRING {
        const factory = @This().IAppointmentsProviderLaunchActionVerbsStaticsCache.get();
        return try factory.getShowTimeFrame();
    }
    pub fn get_ShowAppointmentDetails() core.HResult!HSTRING {
        const factory = @This().IAppointmentsProviderLaunchActionVerbsStatics2Cache.get();
        return try factory.getShowAppointmentDetails();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.AppointmentsProviderLaunchActionVerbs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppointmentsProviderLaunchActionVerbsStaticsCache: FactoryCache(IAppointmentsProviderLaunchActionVerbsStatics, RUNTIME_NAME) = .{};
    var _IAppointmentsProviderLaunchActionVerbsStatics2Cache: FactoryCache(IAppointmentsProviderLaunchActionVerbsStatics2, RUNTIME_NAME) = .{};
};
pub const IAddAppointmentOperation = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentInformation(self: *@This()) core.HResult!*Appointment {
        var _r: *Appointment = undefined;
        const _c = self.vtable.get_AppointmentInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourcePackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourcePackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This(), itemId: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self), itemId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCanceled(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCanceled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.DismissUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec4a9af3-620d-4c69-add7-9794e918081f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentInformation: *const fn(self: *anyopaque, _r: **Appointment) callconv(.winapi) HRESULT,
        get_SourcePackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque, itemId: HSTRING) callconv(.winapi) HRESULT,
        ReportCanceled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportError: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        DismissUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderLaunchActionVerbsStatics = extern struct {
    vtable: *const VTable,
    pub fn getAddAppointment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AddAppointment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReplaceAppointment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ReplaceAppointment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoveAppointment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoveAppointment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShowTimeFrame(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ShowTimeFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.IAppointmentsProviderLaunchActionVerbsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36dbba28-9e2e-49c6-8ef7-3ab7a5dcc8b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AddAppointment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReplaceAppointment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoveAppointment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ShowTimeFrame: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentsProviderLaunchActionVerbsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getShowAppointmentDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ShowAppointmentDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.IAppointmentsProviderLaunchActionVerbsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef9049a4-af21-473c-88dc-76cd89f60ca5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShowAppointmentDetails: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoveAppointmentOperation = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstanceStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_InstanceStartDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourcePackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourcePackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCanceled(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCanceled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.DismissUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08b66aba-fe33-46cd-a50c-a8ffb3260537";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InstanceStartDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_SourcePackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportCanceled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportError: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        DismissUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IReplaceAppointmentOperation = extern struct {
    vtable: *const VTable,
    pub fn getAppointmentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppointmentInformation(self: *@This()) core.HResult!*Appointment {
        var _r: *Appointment = undefined;
        const _c = self.vtable.get_AppointmentInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstanceStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_InstanceStartDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourcePackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourcePackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This(), itemId: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self), itemId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCanceled(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCanceled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.DismissUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4903d9b-9e61-4de2-a732-2687c07d1de8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppointmentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentInformation: *const fn(self: *anyopaque, _r: **Appointment) callconv(.winapi) HRESULT,
        get_InstanceStartDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_SourcePackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque, itemId: HSTRING) callconv(.winapi) HRESULT,
        ReportCanceled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportError: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        DismissUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const RemoveAppointmentOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.getAppointmentId();
    }
    pub fn getInstanceStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.getInstanceStartDate();
    }
    pub fn getSourcePackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.getSourcePackageFamilyName();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub fn ReportCanceled(self: *@This()) core.HResult!void {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.ReportCanceled();
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.ReportError(value);
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const this: *IRemoveAppointmentOperation = @ptrCast(self);
        return try this.DismissUI();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoveAppointmentOperation.GUID;
    pub const IID: Guid = IRemoveAppointmentOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoveAppointmentOperation.SIGNATURE);
};
pub const ReplaceAppointmentOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppointmentId(self: *@This()) core.HResult!HSTRING {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.getAppointmentId();
    }
    pub fn getAppointmentInformation(self: *@This()) core.HResult!*Appointment {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.getAppointmentInformation();
    }
    pub fn getInstanceStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.getInstanceStartDate();
    }
    pub fn getSourcePackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.getSourcePackageFamilyName();
    }
    pub fn ReportCompleted(self: *@This(), itemId: HSTRING) core.HResult!void {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.ReportCompleted(itemId);
    }
    pub fn ReportCanceled(self: *@This()) core.HResult!void {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.ReportCanceled();
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.ReportError(value);
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const this: *IReplaceAppointmentOperation = @ptrCast(self);
        return try this.DismissUI();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReplaceAppointmentOperation.GUID;
    pub const IID: Guid = IReplaceAppointmentOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReplaceAppointmentOperation.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const Appointment = @import("../Appointments.zig").Appointment;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IReference = @import("../../Foundation.zig").IReference;
const TrustLevel = @import("../../root.zig").TrustLevel;
const DateTime = @import("../../Foundation.zig").DateTime;
const HSTRING = @import("../../root.zig").HSTRING;
