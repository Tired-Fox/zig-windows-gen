pub const IWindowsUpdate = extern struct {
    vtable: *const VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UpdateId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFeatureUpdate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFeatureUpdate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMinorImpact(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMinorImpact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSecurity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSecurity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCritical(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCritical(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsForOS(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsForOS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDriver(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDriver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMandatory(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMandatory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUrgent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUrgent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSeeker(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSeeker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMoreInfoUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_MoreInfoUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SupportUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEulaAccepted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEulaAccepted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEulaText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EulaText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttentionRequiredInfo(self: *@This()) core.HResult!*WindowsUpdateAttentionRequiredInfo {
        var _r: *WindowsUpdateAttentionRequiredInfo = undefined;
        const _c = self.vtable.get_AttentionRequiredInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActionResult(self: *@This()) core.HResult!*WindowsUpdateActionResult {
        var _r: *WindowsUpdateActionResult = undefined;
        const _c = self.vtable.get_ActionResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentAction(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrentAction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActionProgress(self: *@This()) core.HResult!*WindowsUpdateActionProgress {
        var _r: *WindowsUpdateActionProgress = undefined;
        const _c = self.vtable.get_ActionProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertyValue(self: *@This(), propertyName: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetPropertyValue(@ptrCast(self), propertyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcceptEula(self: *@This()) core.HResult!void {
        const _c = self.vtable.AcceptEula(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3c88dd7-0ef3-52b2-a9ad-66bfc6bd9582";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UpdateId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsFeatureUpdate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMinorImpact: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSecurity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCritical: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsForOS: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDriver: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMandatory: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUrgent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSeeker: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MoreInfoUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_SupportUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_IsEulaAccepted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_EulaText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_AttentionRequiredInfo: *const fn(self: *anyopaque, _r: **WindowsUpdateAttentionRequiredInfo) callconv(.winapi) HRESULT,
        get_ActionResult: *const fn(self: *anyopaque, _r: **WindowsUpdateActionResult) callconv(.winapi) HRESULT,
        get_CurrentAction: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ActionProgress: *const fn(self: *anyopaque, _r: **WindowsUpdateActionProgress) callconv(.winapi) HRESULT,
        GetPropertyValue: *const fn(self: *anyopaque, propertyName: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        AcceptEula: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateActionCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUpdate(self: *@This()) core.HResult!*WindowsUpdate {
        var _r: *WindowsUpdate = undefined;
        const _c = self.vtable.get_Update(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAction(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateActionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c44b950-a655-5321-aec1-aee762922131";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Update: *const fn(self: *anyopaque, _r: **WindowsUpdate) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateActionProgress = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateActionProgress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83b22d8a-4bb0-549f-ba39-59724882d137";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateActionResult = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAction(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateActionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6692c62-f697-51b7-ab7f-e73e5e688f12";
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
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateAdministrator = extern struct {
    vtable: *const VTable,
    pub fn StartAdministratorScan(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartAdministratorScan(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ApproveWindowsUpdateAction(self: *@This(), updateId: HSTRING, action: HSTRING) core.HResult!void {
        const _c = self.vtable.ApproveWindowsUpdateAction(@ptrCast(self), updateId, action);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RevokeWindowsUpdateActionApproval(self: *@This(), updateId: HSTRING, action: HSTRING) core.HResult!void {
        const _c = self.vtable.RevokeWindowsUpdateActionApproval(@ptrCast(self), updateId, action);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ApproveWindowsUpdate(self: *@This(), updateId: HSTRING, approvalData: *WindowsUpdateApprovalData) core.HResult!void {
        const _c = self.vtable.ApproveWindowsUpdate(@ptrCast(self), updateId, approvalData);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RevokeWindowsUpdateApproval(self: *@This(), updateId: HSTRING) core.HResult!void {
        const _c = self.vtable.RevokeWindowsUpdateApproval(@ptrCast(self), updateId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetUpdates(self: *@This()) core.HResult!*IVectorView(WindowsUpdate) {
        var _r: *IVectorView(WindowsUpdate) = undefined;
        const _c = self.vtable.GetUpdates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateAdministrator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a60181c-ba1e-5cf9-aa65-304120b73d72";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAdministratorScan: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ApproveWindowsUpdateAction: *const fn(self: *anyopaque, updateId: HSTRING, action: HSTRING) callconv(.winapi) HRESULT,
        RevokeWindowsUpdateActionApproval: *const fn(self: *anyopaque, updateId: HSTRING, action: HSTRING) callconv(.winapi) HRESULT,
        ApproveWindowsUpdate: *const fn(self: *anyopaque, updateId: HSTRING, approvalData: *WindowsUpdateApprovalData) callconv(.winapi) HRESULT,
        RevokeWindowsUpdateApproval: *const fn(self: *anyopaque, updateId: HSTRING) callconv(.winapi) HRESULT,
        GetUpdates: *const fn(self: *anyopaque, _r: **IVectorView(WindowsUpdate)) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateAdministratorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetRegisteredAdministrator(self: *@This(), organizationName: HSTRING) core.HResult!*WindowsUpdateGetAdministratorResult {
        var _r: *WindowsUpdateGetAdministratorResult = undefined;
        const _c = self.vtable.GetRegisteredAdministrator(@ptrCast(self), organizationName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterForAdministration(self: *@This(), organizationName: HSTRING, options: WindowsUpdateAdministratorOptions) core.HResult!WindowsUpdateAdministratorStatus {
        var _r: WindowsUpdateAdministratorStatus = undefined;
        const _c = self.vtable.RegisterForAdministration(@ptrCast(self), organizationName, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterForAdministration(self: *@This(), organizationName: HSTRING) core.HResult!WindowsUpdateAdministratorStatus {
        var _r: WindowsUpdateAdministratorStatus = undefined;
        const _c = self.vtable.UnregisterForAdministration(@ptrCast(self), organizationName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRegisteredAdministratorName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetRegisteredAdministratorName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestRestart(self: *@This(), restartOptions: *WindowsUpdateRestartRequestOptions) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.RequestRestart(@ptrCast(self), restartOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CancelRestartRequest(self: *@This(), requestRestartToken: HSTRING) core.HResult!void {
        const _c = self.vtable.CancelRestartRequest(@ptrCast(self), requestRestartToken);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateAdministratorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "013e6d36-ef69-53bc-8db8-c403bca550ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetRegisteredAdministrator: *const fn(self: *anyopaque, organizationName: HSTRING, _r: **WindowsUpdateGetAdministratorResult) callconv(.winapi) HRESULT,
        RegisterForAdministration: *const fn(self: *anyopaque, organizationName: HSTRING, options: WindowsUpdateAdministratorOptions, _r: *WindowsUpdateAdministratorStatus) callconv(.winapi) HRESULT,
        UnregisterForAdministration: *const fn(self: *anyopaque, organizationName: HSTRING, _r: *WindowsUpdateAdministratorStatus) callconv(.winapi) HRESULT,
        GetRegisteredAdministratorName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        RequestRestart: *const fn(self: *anyopaque, restartOptions: *WindowsUpdateRestartRequestOptions, _r: *HSTRING) callconv(.winapi) HRESULT,
        CancelRestartRequest: *const fn(self: *anyopaque, requestRestartToken: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateApprovalData = extern struct {
    vtable: *const VTable,
    pub fn getSeeker(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_Seeker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSeeker(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_Seeker(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowDownloadOnMetered(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_AllowDownloadOnMetered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowDownloadOnMetered(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_AllowDownloadOnMetered(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComplianceDeadlineInDays(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ComplianceDeadlineInDays(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComplianceDeadlineInDays(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_ComplianceDeadlineInDays(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComplianceGracePeriodInDays(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ComplianceGracePeriodInDays(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComplianceGracePeriodInDays(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_ComplianceGracePeriodInDays(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOptOutOfAutoReboot(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_OptOutOfAutoReboot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOptOutOfAutoReboot(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_OptOutOfAutoReboot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateApprovalData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aadf5bfd-84db-59bc-85e2-ad4fc1f62f7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Seeker: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_Seeker: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_AllowDownloadOnMetered: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_AllowDownloadOnMetered: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_ComplianceDeadlineInDays: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_ComplianceDeadlineInDays: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_ComplianceGracePeriodInDays: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_ComplianceGracePeriodInDays: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_OptOutOfAutoReboot: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_OptOutOfAutoReboot: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateAttentionRequiredInfo = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!WindowsUpdateAttentionRequiredReason {
        var _r: WindowsUpdateAttentionRequiredReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateAttentionRequiredInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44df2579-74d3-5ffa-b6ce-09e187e1e0ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *WindowsUpdateAttentionRequiredReason) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateAttentionRequiredReasonChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUpdate(self: *@This()) core.HResult!*WindowsUpdate {
        var _r: *WindowsUpdate = undefined;
        const _c = self.vtable.get_Update(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!WindowsUpdateAttentionRequiredReason {
        var _r: WindowsUpdateAttentionRequiredReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateAttentionRequiredReasonChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0627abca-dbb8-524a-b1d2-d9df004eeb31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Update: *const fn(self: *anyopaque, _r: **WindowsUpdate) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *WindowsUpdateAttentionRequiredReason) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateGetAdministratorResult = extern struct {
    vtable: *const VTable,
    pub fn getAdministrator(self: *@This()) core.HResult!*WindowsUpdateAdministrator {
        var _r: *WindowsUpdateAdministrator = undefined;
        const _c = self.vtable.get_Administrator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!WindowsUpdateAdministratorStatus {
        var _r: WindowsUpdateAdministratorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateGetAdministratorResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb39ffc4-2c42-5b1c-8995-343341c92c50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Administrator: *const fn(self: *anyopaque, _r: **WindowsUpdateAdministrator) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *WindowsUpdateAdministratorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateItem = extern struct {
    vtable: *const VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UpdateId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMoreInfoUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_MoreInfoUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOperation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b222e44a-49b6-59bf-a033-ef617cd73a98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UpdateId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MoreInfoUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateManager = extern struct {
    vtable: *const VTable,
    pub fn addScanningStateChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScanningStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScanningStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScanningStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWorkingStateChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WorkingStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWorkingStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WorkingStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProgressChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateProgressChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProgressChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProgressChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProgressChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAttentionRequiredReasonChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateAttentionRequiredReasonChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AttentionRequiredReasonChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAttentionRequiredReasonChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AttentionRequiredReasonChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActionCompleted(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateActionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActionCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActionCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActionCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addScanCompleted(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateScanCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScanCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScanCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScanCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsScanning(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScanning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsWorking(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWorking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastSuccessfulScanTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_LastSuccessfulScanTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetApplicableUpdates(self: *@This()) core.HResult!*IVectorView(WindowsUpdate) {
        var _r: *IVectorView(WindowsUpdate) = undefined;
        const _c = self.vtable.GetApplicableUpdates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMostRecentCompletedUpdates(self: *@This(), count: i32) core.HResult!*IVectorView(WindowsUpdateItem) {
        var _r: *IVectorView(WindowsUpdateItem) = undefined;
        const _c = self.vtable.GetMostRecentCompletedUpdates(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMostRecentCompletedUpdatesAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(WindowsUpdateItem)) {
        var _r: *IAsyncOperation(IVectorView(WindowsUpdateItem)) = undefined;
        const _c = self.vtable.GetMostRecentCompletedUpdatesAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartScan(self: *@This(), userInitiated: bool) core.HResult!void {
        const _c = self.vtable.StartScan(@ptrCast(self), userInitiated);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5dd966c0-a71a-5602-bbd0-09a70e4573fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ScanningStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowsUpdateManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScanningStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WorkingStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowsUpdateManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WorkingStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProgressChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateProgressChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProgressChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AttentionRequiredReasonChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateAttentionRequiredReasonChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AttentionRequiredReasonChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ActionCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateActionCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActionCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ScanCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateScanCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScanCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsScanning: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsWorking: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_LastSuccessfulScanTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        GetApplicableUpdates: *const fn(self: *anyopaque, _r: **IVectorView(WindowsUpdate)) callconv(.winapi) HRESULT,
        GetMostRecentCompletedUpdates: *const fn(self: *anyopaque, count: i32, _r: **IVectorView(WindowsUpdateItem)) callconv(.winapi) HRESULT,
        GetMostRecentCompletedUpdatesAsync: *const fn(self: *anyopaque, count: i32, _r: **IAsyncOperation(IVectorView(WindowsUpdateItem))) callconv(.winapi) HRESULT,
        StartScan: *const fn(self: *anyopaque, userInitiated: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateManagerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), clientId: HSTRING) core.HResult!*WindowsUpdateManager {
        var _r: *WindowsUpdateManager = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), clientId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateManagerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b394df8-decb-5f44-b47c-6ccf3bcfdb37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, clientId: HSTRING, _r: **WindowsUpdateManager) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateProgressChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUpdate(self: *@This()) core.HResult!*WindowsUpdate {
        var _r: *WindowsUpdate = undefined;
        const _c = self.vtable.get_Update(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActionProgress(self: *@This()) core.HResult!*WindowsUpdateActionProgress {
        var _r: *WindowsUpdateActionProgress = undefined;
        const _c = self.vtable.get_ActionProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateProgressChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbfbdeeb-94c8-5aa7-b0fb-66c67c233b0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Update: *const fn(self: *anyopaque, _r: **WindowsUpdate) callconv(.winapi) HRESULT,
        get_ActionProgress: *const fn(self: *anyopaque, _r: **WindowsUpdateActionProgress) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateRestartRequestOptions = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMoreInfoUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_MoreInfoUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMoreInfoUrl(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_MoreInfoUrl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComplianceDeadlineInDays(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ComplianceDeadlineInDays(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComplianceDeadlineInDays(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ComplianceDeadlineInDays(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComplianceGracePeriodInDays(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ComplianceGracePeriodInDays(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComplianceGracePeriodInDays(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ComplianceGracePeriodInDays(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrganizationName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OrganizationName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrganizationName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OrganizationName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOptOutOfAutoReboot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OptOutOfAutoReboot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOptOutOfAutoReboot(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_OptOutOfAutoReboot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateRestartRequestOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38cfb7d3-4188-5222-905c-6c4443c951ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MoreInfoUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_MoreInfoUrl: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ComplianceDeadlineInDays: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ComplianceDeadlineInDays: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ComplianceGracePeriodInDays: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ComplianceGracePeriodInDays: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_OrganizationName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OrganizationName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OptOutOfAutoReboot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_OptOutOfAutoReboot: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateRestartRequestOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), title: HSTRING, description: HSTRING, moreInfoUrl: *Uri, complianceDeadlineInDays: i32, complianceGracePeriodInDays: i32) core.HResult!*WindowsUpdateRestartRequestOptions {
        var _r: *WindowsUpdateRestartRequestOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), title, description, moreInfoUrl, complianceDeadlineInDays, complianceGracePeriodInDays, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateRestartRequestOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75f41d04-0e17-50d0-8c15-6b9d0539b3a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, title: HSTRING, description: HSTRING, moreInfoUrl: *Uri, complianceDeadlineInDays: i32, complianceGracePeriodInDays: i32, _r: **WindowsUpdateRestartRequestOptions) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsUpdateScanCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdates(self: *@This()) core.HResult!*IVectorView(WindowsUpdate) {
        var _r: *IVectorView(WindowsUpdate) = undefined;
        const _c = self.vtable.get_Updates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IWindowsUpdateScanCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95b6953e-ba5c-5fe8-b115-12de184a6bb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Updates: *const fn(self: *anyopaque, _r: **IVectorView(WindowsUpdate)) callconv(.winapi) HRESULT,
    };
};
pub const WindowsUpdate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getUpdateId(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getUpdateId();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getIsFeatureUpdate(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsFeatureUpdate();
    }
    pub fn getIsMinorImpact(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsMinorImpact();
    }
    pub fn getIsSecurity(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsSecurity();
    }
    pub fn getIsCritical(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsCritical();
    }
    pub fn getIsForOS(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsForOS();
    }
    pub fn getIsDriver(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsDriver();
    }
    pub fn getIsMandatory(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsMandatory();
    }
    pub fn getIsUrgent(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsUrgent();
    }
    pub fn getIsSeeker(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsSeeker();
    }
    pub fn getMoreInfoUrl(self: *@This()) core.HResult!*Uri {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getMoreInfoUrl();
    }
    pub fn getSupportUrl(self: *@This()) core.HResult!*Uri {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getSupportUrl();
    }
    pub fn getIsEulaAccepted(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getIsEulaAccepted();
    }
    pub fn getEulaText(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getEulaText();
    }
    pub fn getDeadline(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn getAttentionRequiredInfo(self: *@This()) core.HResult!*WindowsUpdateAttentionRequiredInfo {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getAttentionRequiredInfo();
    }
    pub fn getActionResult(self: *@This()) core.HResult!*WindowsUpdateActionResult {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getActionResult();
    }
    pub fn getCurrentAction(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getCurrentAction();
    }
    pub fn getActionProgress(self: *@This()) core.HResult!*WindowsUpdateActionProgress {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.getActionProgress();
    }
    pub fn GetPropertyValue(self: *@This(), propertyName: HSTRING) core.HResult!*IInspectable {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.GetPropertyValue(propertyName);
    }
    pub fn AcceptEula(self: *@This()) core.HResult!void {
        const this: *IWindowsUpdate = @ptrCast(self);
        return try this.AcceptEula();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdate.GUID;
    pub const IID: Guid = IWindowsUpdate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdate.SIGNATURE);
};
pub const WindowsUpdateActionCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUpdate(self: *@This()) core.HResult!*WindowsUpdate {
        const this: *IWindowsUpdateActionCompletedEventArgs = @ptrCast(self);
        return try this.getUpdate();
    }
    pub fn getAction(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateActionCompletedEventArgs = @ptrCast(self);
        return try this.getAction();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdateActionCompletedEventArgs = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IWindowsUpdateActionCompletedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateActionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateActionCompletedEventArgs.GUID;
    pub const IID: Guid = IWindowsUpdateActionCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateActionCompletedEventArgs.SIGNATURE);
};
pub const WindowsUpdateActionProgress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateActionProgress = @ptrCast(self);
        return try this.getAction();
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        const this: *IWindowsUpdateActionProgress = @ptrCast(self);
        return try this.getProgress();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateActionProgress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateActionProgress.GUID;
    pub const IID: Guid = IWindowsUpdateActionProgress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateActionProgress.SIGNATURE);
};
pub const WindowsUpdateActionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IWindowsUpdateActionResult = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdateActionResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IWindowsUpdateActionResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getAction(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateActionResult = @ptrCast(self);
        return try this.getAction();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateActionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateActionResult.GUID;
    pub const IID: Guid = IWindowsUpdateActionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateActionResult.SIGNATURE);
};
pub const WindowsUpdateAdministrator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartAdministratorScan(self: *@This()) core.HResult!void {
        const this: *IWindowsUpdateAdministrator = @ptrCast(self);
        return try this.StartAdministratorScan();
    }
    pub fn ApproveWindowsUpdateAction(self: *@This(), updateId: HSTRING, action: HSTRING) core.HResult!void {
        const this: *IWindowsUpdateAdministrator = @ptrCast(self);
        return try this.ApproveWindowsUpdateAction(updateId, action);
    }
    pub fn RevokeWindowsUpdateActionApproval(self: *@This(), updateId: HSTRING, action: HSTRING) core.HResult!void {
        const this: *IWindowsUpdateAdministrator = @ptrCast(self);
        return try this.RevokeWindowsUpdateActionApproval(updateId, action);
    }
    pub fn ApproveWindowsUpdate(self: *@This(), updateId: HSTRING, approvalData: *WindowsUpdateApprovalData) core.HResult!void {
        const this: *IWindowsUpdateAdministrator = @ptrCast(self);
        return try this.ApproveWindowsUpdate(updateId, approvalData);
    }
    pub fn RevokeWindowsUpdateApproval(self: *@This(), updateId: HSTRING) core.HResult!void {
        const this: *IWindowsUpdateAdministrator = @ptrCast(self);
        return try this.RevokeWindowsUpdateApproval(updateId);
    }
    pub fn GetUpdates(self: *@This()) core.HResult!*IVectorView(WindowsUpdate) {
        const this: *IWindowsUpdateAdministrator = @ptrCast(self);
        return try this.GetUpdates();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetRegisteredAdministrator(organizationName: HSTRING) core.HResult!*WindowsUpdateGetAdministratorResult {
        const factory = @This().IWindowsUpdateAdministratorStaticsCache.get();
        return try factory.GetRegisteredAdministrator(organizationName);
    }
    pub fn RegisterForAdministration(organizationName: HSTRING, options: WindowsUpdateAdministratorOptions) core.HResult!WindowsUpdateAdministratorStatus {
        const factory = @This().IWindowsUpdateAdministratorStaticsCache.get();
        return try factory.RegisterForAdministration(organizationName, options);
    }
    pub fn UnregisterForAdministration(organizationName: HSTRING) core.HResult!WindowsUpdateAdministratorStatus {
        const factory = @This().IWindowsUpdateAdministratorStaticsCache.get();
        return try factory.UnregisterForAdministration(organizationName);
    }
    pub fn GetRegisteredAdministratorName() core.HResult!HSTRING {
        const factory = @This().IWindowsUpdateAdministratorStaticsCache.get();
        return try factory.GetRegisteredAdministratorName();
    }
    pub fn RequestRestart(restartOptions: *WindowsUpdateRestartRequestOptions) core.HResult!HSTRING {
        const factory = @This().IWindowsUpdateAdministratorStaticsCache.get();
        return try factory.RequestRestart(restartOptions);
    }
    pub fn CancelRestartRequest(requestRestartToken: HSTRING) core.HResult!void {
        const factory = @This().IWindowsUpdateAdministratorStaticsCache.get();
        return try factory.CancelRestartRequest(requestRestartToken);
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateAdministrator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateAdministrator.GUID;
    pub const IID: Guid = IWindowsUpdateAdministrator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateAdministrator.SIGNATURE);
    var _IWindowsUpdateAdministratorStaticsCache: FactoryCache(IWindowsUpdateAdministratorStatics, RUNTIME_NAME) = .{};
};
pub const WindowsUpdateAdministratorOptions = enum(i32) {
    None = 0,
    RequireAdministratorApprovalForScans = 1,
    RequireAdministratorApprovalForUpdates = 2,
    RequireAdministratorApprovalForActions = 4,
};
pub const WindowsUpdateAdministratorStatus = enum(i32) {
    Succeeded = 0,
    NoAdministratorRegistered = 1,
    OtherAdministratorIsRegistered = 2,
};
pub const WindowsUpdateApprovalData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSeeker(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.getSeeker();
    }
    pub fn putSeeker(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.putSeeker(value);
    }
    pub fn getAllowDownloadOnMetered(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.getAllowDownloadOnMetered();
    }
    pub fn putAllowDownloadOnMetered(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.putAllowDownloadOnMetered(value);
    }
    pub fn getComplianceDeadlineInDays(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.getComplianceDeadlineInDays();
    }
    pub fn putComplianceDeadlineInDays(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.putComplianceDeadlineInDays(value);
    }
    pub fn getComplianceGracePeriodInDays(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.getComplianceGracePeriodInDays();
    }
    pub fn putComplianceGracePeriodInDays(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.putComplianceGracePeriodInDays(value);
    }
    pub fn getOptOutOfAutoReboot(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.getOptOutOfAutoReboot();
    }
    pub fn putOptOutOfAutoReboot(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *IWindowsUpdateApprovalData = @ptrCast(self);
        return try this.putOptOutOfAutoReboot(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWindowsUpdateApprovalData.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateApprovalData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateApprovalData.GUID;
    pub const IID: Guid = IWindowsUpdateApprovalData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateApprovalData.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WindowsUpdateAttentionRequiredInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!WindowsUpdateAttentionRequiredReason {
        const this: *IWindowsUpdateAttentionRequiredInfo = @ptrCast(self);
        return try this.getReason();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWindowsUpdateAttentionRequiredInfo = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateAttentionRequiredInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateAttentionRequiredInfo.GUID;
    pub const IID: Guid = IWindowsUpdateAttentionRequiredInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateAttentionRequiredInfo.SIGNATURE);
};
pub const WindowsUpdateAttentionRequiredReason = enum(i32) {
    None = 0,
    SeekerUpdate = 1,
    ReadyToReboot = 2,
    NeedNonMeteredNetwork = 3,
    NeedUserAgreementForMeteredNetwork = 4,
    NeedNetwork = 5,
    NeedMoreSpace = 6,
    BatterySaverEnabled = 7,
    NeedUserInteraction = 8,
    NeedUserAgreementForPolicy = 9,
    CompatibilityError = 10,
    NeedUserInteractionForEula = 11,
    NeedUserInteractionForCta = 12,
    Regulated = 13,
    ExternalReboot = 14,
    OtherUpdate = 15,
    BlockedByProvider = 16,
    BlockedByPostRebootFailure = 17,
    UserEngaged = 18,
    BlockedByBattery = 19,
    Exclusivity = 20,
    BlockedBySerialization = 21,
    ConflictClass = 22,
    BlockedByAdminApproval = 23,
    BlockedByTooManyAttempts = 24,
    BlockedByFailure = 25,
    Demotion = 26,
    BlockedByActiveHours = 27,
    ScheduledForMaintenance = 28,
    PolicyScheduledInstallTime = 29,
    BlockedByOobe = 30,
    DeferredDuringOobe = 31,
    DeferredForSustainableTime = 32,
};
pub const WindowsUpdateAttentionRequiredReasonChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUpdate(self: *@This()) core.HResult!*WindowsUpdate {
        const this: *IWindowsUpdateAttentionRequiredReasonChangedEventArgs = @ptrCast(self);
        return try this.getUpdate();
    }
    pub fn getReason(self: *@This()) core.HResult!WindowsUpdateAttentionRequiredReason {
        const this: *IWindowsUpdateAttentionRequiredReasonChangedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateAttentionRequiredReasonChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateAttentionRequiredReasonChangedEventArgs.GUID;
    pub const IID: Guid = IWindowsUpdateAttentionRequiredReasonChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateAttentionRequiredReasonChangedEventArgs.SIGNATURE);
};
pub const WindowsUpdateGetAdministratorResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdministrator(self: *@This()) core.HResult!*WindowsUpdateAdministrator {
        const this: *IWindowsUpdateGetAdministratorResult = @ptrCast(self);
        return try this.getAdministrator();
    }
    pub fn getStatus(self: *@This()) core.HResult!WindowsUpdateAdministratorStatus {
        const this: *IWindowsUpdateGetAdministratorResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateGetAdministratorResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateGetAdministratorResult.GUID;
    pub const IID: Guid = IWindowsUpdateGetAdministratorResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateGetAdministratorResult.SIGNATURE);
};
pub const WindowsUpdateItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getUpdateId(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getUpdateId();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getMoreInfoUrl(self: *@This()) core.HResult!*Uri {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getMoreInfoUrl();
    }
    pub fn getCategory(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn getOperation(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateItem = @ptrCast(self);
        return try this.getOperation();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateItem.GUID;
    pub const IID: Guid = IWindowsUpdateItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateItem.SIGNATURE);
};
pub const WindowsUpdateManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addScanningStateChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.addScanningStateChanged(handler);
    }
    pub fn removeScanningStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.removeScanningStateChanged(token);
    }
    pub fn addWorkingStateChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.addWorkingStateChanged(handler);
    }
    pub fn removeWorkingStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.removeWorkingStateChanged(token);
    }
    pub fn addProgressChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateProgressChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.addProgressChanged(handler);
    }
    pub fn removeProgressChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.removeProgressChanged(token);
    }
    pub fn addAttentionRequiredReasonChanged(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateAttentionRequiredReasonChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.addAttentionRequiredReasonChanged(handler);
    }
    pub fn removeAttentionRequiredReasonChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.removeAttentionRequiredReasonChanged(token);
    }
    pub fn addActionCompleted(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateActionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.addActionCompleted(handler);
    }
    pub fn removeActionCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.removeActionCompleted(token);
    }
    pub fn addScanCompleted(self: *@This(), handler: *TypedEventHandler(WindowsUpdateManager,WindowsUpdateScanCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.addScanCompleted(handler);
    }
    pub fn removeScanCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.removeScanCompleted(token);
    }
    pub fn getIsScanning(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.getIsScanning();
    }
    pub fn getIsWorking(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.getIsWorking();
    }
    pub fn getLastSuccessfulScanTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.getLastSuccessfulScanTimestamp();
    }
    pub fn GetApplicableUpdates(self: *@This()) core.HResult!*IVectorView(WindowsUpdate) {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.GetApplicableUpdates();
    }
    pub fn GetMostRecentCompletedUpdates(self: *@This(), count: i32) core.HResult!*IVectorView(WindowsUpdateItem) {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.GetMostRecentCompletedUpdates(count);
    }
    pub fn GetMostRecentCompletedUpdatesAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(WindowsUpdateItem)) {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.GetMostRecentCompletedUpdatesAsync(count);
    }
    pub fn StartScan(self: *@This(), userInitiated: bool) core.HResult!void {
        const this: *IWindowsUpdateManager = @ptrCast(self);
        return try this.StartScan(userInitiated);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(clientId: HSTRING) core.HResult!*WindowsUpdateManager {
        const factory = @This().IWindowsUpdateManagerFactoryCache.get();
        return try factory.CreateInstance(clientId);
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateManager.GUID;
    pub const IID: Guid = IWindowsUpdateManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateManager.SIGNATURE);
    var _IWindowsUpdateManagerFactoryCache: FactoryCache(IWindowsUpdateManagerFactory, RUNTIME_NAME) = .{};
};
pub const WindowsUpdateProgressChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUpdate(self: *@This()) core.HResult!*WindowsUpdate {
        const this: *IWindowsUpdateProgressChangedEventArgs = @ptrCast(self);
        return try this.getUpdate();
    }
    pub fn getActionProgress(self: *@This()) core.HResult!*WindowsUpdateActionProgress {
        const this: *IWindowsUpdateProgressChangedEventArgs = @ptrCast(self);
        return try this.getActionProgress();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateProgressChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateProgressChangedEventArgs.GUID;
    pub const IID: Guid = IWindowsUpdateProgressChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateProgressChangedEventArgs.SIGNATURE);
};
pub const WindowsUpdateRestartRequestOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getMoreInfoUrl(self: *@This()) core.HResult!*Uri {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getMoreInfoUrl();
    }
    pub fn putMoreInfoUrl(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putMoreInfoUrl(value);
    }
    pub fn getComplianceDeadlineInDays(self: *@This()) core.HResult!i32 {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getComplianceDeadlineInDays();
    }
    pub fn putComplianceDeadlineInDays(self: *@This(), value: i32) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putComplianceDeadlineInDays(value);
    }
    pub fn getComplianceGracePeriodInDays(self: *@This()) core.HResult!i32 {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getComplianceGracePeriodInDays();
    }
    pub fn putComplianceGracePeriodInDays(self: *@This(), value: i32) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putComplianceGracePeriodInDays(value);
    }
    pub fn getOrganizationName(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getOrganizationName();
    }
    pub fn putOrganizationName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putOrganizationName(value);
    }
    pub fn getOptOutOfAutoReboot(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.getOptOutOfAutoReboot();
    }
    pub fn putOptOutOfAutoReboot(self: *@This(), value: bool) core.HResult!void {
        const this: *IWindowsUpdateRestartRequestOptions = @ptrCast(self);
        return try this.putOptOutOfAutoReboot(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWindowsUpdateRestartRequestOptions.IID)));
    }
    pub fn CreateInstance(title: HSTRING, description: HSTRING, moreInfoUrl: *Uri, complianceDeadlineInDays: i32, complianceGracePeriodInDays: i32) core.HResult!*WindowsUpdateRestartRequestOptions {
        const factory = @This().IWindowsUpdateRestartRequestOptionsFactoryCache.get();
        return try factory.CreateInstance(title, description, moreInfoUrl, complianceDeadlineInDays, complianceGracePeriodInDays);
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateRestartRequestOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateRestartRequestOptions.GUID;
    pub const IID: Guid = IWindowsUpdateRestartRequestOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateRestartRequestOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IWindowsUpdateRestartRequestOptionsFactoryCache: FactoryCache(IWindowsUpdateRestartRequestOptionsFactory, RUNTIME_NAME) = .{};
};
pub const WindowsUpdateScanCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowsUpdateScanCompletedEventArgs = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IWindowsUpdateScanCompletedEventArgs = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IWindowsUpdateScanCompletedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getUpdates(self: *@This()) core.HResult!*IVectorView(WindowsUpdate) {
        const this: *IWindowsUpdateScanCompletedEventArgs = @ptrCast(self);
        return try this.getUpdates();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.WindowsUpdateScanCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsUpdateScanCompletedEventArgs.GUID;
    pub const IID: Guid = IWindowsUpdateScanCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsUpdateScanCompletedEventArgs.SIGNATURE);
};
pub const IPreviewBuildsManager = extern struct {
    vtable: *const VTable,
    pub fn getArePreviewBuildsAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ArePreviewBuildsAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putArePreviewBuildsAllowed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ArePreviewBuildsAllowed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCurrentState(self: *@This()) core.HResult!*PreviewBuildsState {
        var _r: *PreviewBuildsState = undefined;
        const _c = self.vtable.GetCurrentState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SyncAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IPreviewBuildsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa07dd61-7e4f-59f7-7c9f-def9051c5f62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ArePreviewBuildsAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ArePreviewBuildsAllowed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetCurrentState: *const fn(self: *anyopaque, _r: **PreviewBuildsState) callconv(.winapi) HRESULT,
        SyncAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPreviewBuildsManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*PreviewBuildsManager {
        var _r: *PreviewBuildsManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IPreviewBuildsManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e422887-b112-5a70-7da1-97d78d32aa29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **PreviewBuildsManager) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPreviewBuildsState = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Update.IPreviewBuildsState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2f2903e-b223-5f63-7546-3e8eac070a2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const PreviewBuildsManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArePreviewBuildsAllowed(self: *@This()) core.HResult!bool {
        const this: *IPreviewBuildsManager = @ptrCast(self);
        return try this.getArePreviewBuildsAllowed();
    }
    pub fn putArePreviewBuildsAllowed(self: *@This(), value: bool) core.HResult!void {
        const this: *IPreviewBuildsManager = @ptrCast(self);
        return try this.putArePreviewBuildsAllowed(value);
    }
    pub fn GetCurrentState(self: *@This()) core.HResult!*PreviewBuildsState {
        const this: *IPreviewBuildsManager = @ptrCast(self);
        return try this.GetCurrentState();
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IPreviewBuildsManager = @ptrCast(self);
        return try this.SyncAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*PreviewBuildsManager {
        const factory = @This().IPreviewBuildsManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IPreviewBuildsManagerStaticsCache.get();
        return try factory.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.PreviewBuildsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPreviewBuildsManager.GUID;
    pub const IID: Guid = IPreviewBuildsManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPreviewBuildsManager.SIGNATURE);
    var _IPreviewBuildsManagerStaticsCache: FactoryCache(IPreviewBuildsManagerStatics, RUNTIME_NAME) = .{};
};
pub const PreviewBuildsState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *IPreviewBuildsState = @ptrCast(self);
        return try this.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Management.Update.PreviewBuildsState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPreviewBuildsState.GUID;
    pub const IID: Guid = IPreviewBuildsState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPreviewBuildsState.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
