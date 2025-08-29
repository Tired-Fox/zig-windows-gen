pub const DiagnosticActionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IDiagnosticActionResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getResults(self: *@This()) core.HResult!*ValueSet {
        const this: *IDiagnosticActionResult = @ptrCast(self);
        return try this.getResults();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DiagnosticActionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiagnosticActionResult.GUID;
    pub const IID: Guid = IDiagnosticActionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiagnosticActionResult.SIGNATURE);
};
pub const DiagnosticActionState = enum(i32) {
    Initializing = 0,
    Downloading = 1,
    VerifyingTrust = 2,
    Detecting = 3,
    Resolving = 4,
    VerifyingResolution = 5,
    Executing = 6,
};
pub const DiagnosticInvoker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RunDiagnosticActionAsync(self: *@This(), context: *JsonObject) core.HResult!*IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState) {
        const this: *IDiagnosticInvoker = @ptrCast(self);
        return try this.RunDiagnosticActionAsync(context);
    }
    pub fn RunDiagnosticActionFromStringAsync(self: *@This(), context: HSTRING) core.HResult!*IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState) {
        var this: ?*IDiagnosticInvoker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDiagnosticInvoker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RunDiagnosticActionFromStringAsync(context);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*DiagnosticInvoker {
        const factory = @This().IDiagnosticInvokerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*DiagnosticInvoker {
        const factory = @This().IDiagnosticInvokerStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub fn getIsSupported() core.HResult!bool {
        const factory = @This().IDiagnosticInvokerStaticsCache.get();
        return try factory.getIsSupported();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DiagnosticInvoker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiagnosticInvoker.GUID;
    pub const IID: Guid = IDiagnosticInvoker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiagnosticInvoker.SIGNATURE);
    var _IDiagnosticInvokerStaticsCache: FactoryCache(IDiagnosticInvokerStatics, RUNTIME_NAME) = .{};
};
pub const IDiagnosticActionResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResults(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Results(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IDiagnosticActionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c265a296-e73b-4097-b28f-3442f03dd831";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Results: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IDiagnosticInvoker = extern struct {
    vtable: *const VTable,
    pub fn RunDiagnosticActionAsync(self: *@This(), context: *JsonObject) core.HResult!*IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState) {
        var _r: *IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState) = undefined;
        const _c = self.vtable.RunDiagnosticActionAsync(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IDiagnosticInvoker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "187b270a-02e3-4f86-84fc-fdd892b5940f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RunDiagnosticActionAsync: *const fn(self: *anyopaque, context: *JsonObject, _r: **IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState)) callconv(.winapi) HRESULT,
    };
};
pub const IDiagnosticInvoker2 = extern struct {
    vtable: *const VTable,
    pub fn RunDiagnosticActionFromStringAsync(self: *@This(), context: HSTRING) core.HResult!*IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState) {
        var _r: *IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState) = undefined;
        const _c = self.vtable.RunDiagnosticActionFromStringAsync(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IDiagnosticInvoker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3bf945c-155a-4b52-a8ec-070c44f95000";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RunDiagnosticActionFromStringAsync: *const fn(self: *anyopaque, context: HSTRING, _r: **IAsyncOperationWithProgress(DiagnosticActionResult,DiagnosticActionState)) callconv(.winapi) HRESULT,
    };
};
pub const IDiagnosticInvokerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*DiagnosticInvoker {
        var _r: *DiagnosticInvoker = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*DiagnosticInvoker {
        var _r: *DiagnosticInvoker = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IDiagnosticInvokerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5cfad8de-f15c-4554-a813-c113c3881b09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **DiagnosticInvoker) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **DiagnosticInvoker) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProcessCpuUsage = extern struct {
    vtable: *const VTable,
    pub fn GetReport(self: *@This()) core.HResult!*ProcessCpuUsageReport {
        var _r: *ProcessCpuUsageReport = undefined;
        const _c = self.vtable.GetReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessCpuUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bbb2472-c8bf-423a-a810-b559ae4354e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReport: *const fn(self: *anyopaque, _r: **ProcessCpuUsageReport) callconv(.winapi) HRESULT,
    };
};
pub const IProcessCpuUsageReport = extern struct {
    vtable: *const VTable,
    pub fn getKernelTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_KernelTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UserTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessCpuUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a6d9cac-3987-4e2f-a119-6b5fa214f1b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KernelTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UserTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IProcessDiagnosticInfo = extern struct {
    vtable: *const VTable,
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ProcessId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExecutableFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExecutableFileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParent(self: *@This()) core.HResult!*ProcessDiagnosticInfo {
        var _r: *ProcessDiagnosticInfo = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProcessStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ProcessStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDiskUsage(self: *@This()) core.HResult!*ProcessDiskUsage {
        var _r: *ProcessDiskUsage = undefined;
        const _c = self.vtable.get_DiskUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMemoryUsage(self: *@This()) core.HResult!*ProcessMemoryUsage {
        var _r: *ProcessMemoryUsage = undefined;
        const _c = self.vtable.get_MemoryUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCpuUsage(self: *@This()) core.HResult!*ProcessCpuUsage {
        var _r: *ProcessCpuUsage = undefined;
        const _c = self.vtable.get_CpuUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessDiagnosticInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e830b04b-300e-4ee6-a0ab-5b5f5231b434";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProcessId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExecutableFileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **ProcessDiagnosticInfo) callconv(.winapi) HRESULT,
        get_ProcessStartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_DiskUsage: *const fn(self: *anyopaque, _r: **ProcessDiskUsage) callconv(.winapi) HRESULT,
        get_MemoryUsage: *const fn(self: *anyopaque, _r: **ProcessMemoryUsage) callconv(.winapi) HRESULT,
        get_CpuUsage: *const fn(self: *anyopaque, _r: **ProcessCpuUsage) callconv(.winapi) HRESULT,
    };
};
pub const IProcessDiagnosticInfo2 = extern struct {
    vtable: *const VTable,
    pub fn GetAppDiagnosticInfos(self: *@This()) core.HResult!*IVector(AppDiagnosticInfo) {
        var _r: *IVector(AppDiagnosticInfo) = undefined;
        const _c = self.vtable.GetAppDiagnosticInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPackaged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPackaged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessDiagnosticInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9558cb1a-3d0b-49ec-ab70-4f7a112805de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAppDiagnosticInfos: *const fn(self: *anyopaque, _r: **IVector(AppDiagnosticInfo)) callconv(.winapi) HRESULT,
        get_IsPackaged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProcessDiagnosticInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForProcesses(self: *@This()) core.HResult!*IVectorView(ProcessDiagnosticInfo) {
        var _r: *IVectorView(ProcessDiagnosticInfo) = undefined;
        const _c = self.vtable.GetForProcesses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForCurrentProcess(self: *@This()) core.HResult!*ProcessDiagnosticInfo {
        var _r: *ProcessDiagnosticInfo = undefined;
        const _c = self.vtable.GetForCurrentProcess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessDiagnosticInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f41b260-b49f-428c-aa0e-84744f49ca95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForProcesses: *const fn(self: *anyopaque, _r: **IVectorView(ProcessDiagnosticInfo)) callconv(.winapi) HRESULT,
        GetForCurrentProcess: *const fn(self: *anyopaque, _r: **ProcessDiagnosticInfo) callconv(.winapi) HRESULT,
    };
};
pub const IProcessDiagnosticInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryGetForProcessId(self: *@This(), processId: u32) core.HResult!*ProcessDiagnosticInfo {
        var _r: *ProcessDiagnosticInfo = undefined;
        const _c = self.vtable.TryGetForProcessId(@ptrCast(self), processId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessDiagnosticInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a869897-9899-4a44-a29b-091663be09b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetForProcessId: *const fn(self: *anyopaque, processId: u32, _r: **ProcessDiagnosticInfo) callconv(.winapi) HRESULT,
    };
};
pub const IProcessDiskUsage = extern struct {
    vtable: *const VTable,
    pub fn GetReport(self: *@This()) core.HResult!*ProcessDiskUsageReport {
        var _r: *ProcessDiskUsageReport = undefined;
        const _c = self.vtable.GetReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessDiskUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ad78bfd-7e51-4e53-bfaa-5a6ee1aabbf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReport: *const fn(self: *anyopaque, _r: **ProcessDiskUsageReport) callconv(.winapi) HRESULT,
    };
};
pub const IProcessDiskUsageReport = extern struct {
    vtable: *const VTable,
    pub fn getReadOperationCount(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_ReadOperationCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriteOperationCount(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_WriteOperationCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOtherOperationCount(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_OtherOperationCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesReadCount(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_BytesReadCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesWrittenCount(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_BytesWrittenCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOtherBytesCount(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_OtherBytesCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessDiskUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "401627fd-535d-4c1f-81b8-da54e1be635e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReadOperationCount: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_WriteOperationCount: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_OtherOperationCount: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_BytesReadCount: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_BytesWrittenCount: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_OtherBytesCount: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
    };
};
pub const IProcessMemoryUsage = extern struct {
    vtable: *const VTable,
    pub fn GetReport(self: *@This()) core.HResult!*ProcessMemoryUsageReport {
        var _r: *ProcessMemoryUsageReport = undefined;
        const _c = self.vtable.GetReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessMemoryUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f50b229b-827c-42b7-b07c-0e32627e6b3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReport: *const fn(self: *anyopaque, _r: **ProcessMemoryUsageReport) callconv(.winapi) HRESULT,
    };
};
pub const IProcessMemoryUsageReport = extern struct {
    vtable: *const VTable,
    pub fn getNonPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_NonPagedPoolSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageFaultCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PageFaultCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageFileSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PageFileSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PagedPoolSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeakNonPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PeakNonPagedPoolSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeakPageFileSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PeakPageFileSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeakPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PeakPagedPoolSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeakVirtualMemorySizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PeakVirtualMemorySizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeakWorkingSetSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PeakWorkingSetSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrivatePageCount(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PrivatePageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVirtualMemorySizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_VirtualMemorySizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWorkingSetSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_WorkingSetSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.IProcessMemoryUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2c77cba-1951-4685-8532-7e749ecf8eeb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NonPagedPoolSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PageFaultCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PageFileSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PagedPoolSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PeakNonPagedPoolSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PeakPageFileSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PeakPagedPoolSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PeakVirtualMemorySizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PeakWorkingSetSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PrivatePageCount: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_VirtualMemorySizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_WorkingSetSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const ISystemCpuUsage = extern struct {
    vtable: *const VTable,
    pub fn GetReport(self: *@This()) core.HResult!*SystemCpuUsageReport {
        var _r: *SystemCpuUsageReport = undefined;
        const _c = self.vtable.GetReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemCpuUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6037b3ac-02d6-4234-8362-7fe3adc81f5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReport: *const fn(self: *anyopaque, _r: **SystemCpuUsageReport) callconv(.winapi) HRESULT,
    };
};
pub const ISystemCpuUsageReport = extern struct {
    vtable: *const VTable,
    pub fn getKernelTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_KernelTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UserTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIdleTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_IdleTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemCpuUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c26d0b2-9483-4f62-ab57-82b29d9719b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KernelTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UserTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_IdleTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISystemDiagnosticInfo = extern struct {
    vtable: *const VTable,
    pub fn getMemoryUsage(self: *@This()) core.HResult!*SystemMemoryUsage {
        var _r: *SystemMemoryUsage = undefined;
        const _c = self.vtable.get_MemoryUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCpuUsage(self: *@This()) core.HResult!*SystemCpuUsage {
        var _r: *SystemCpuUsage = undefined;
        const _c = self.vtable.get_CpuUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemDiagnosticInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a290fe05-dff3-407f-9a1b-0b2b317ca800";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MemoryUsage: *const fn(self: *anyopaque, _r: **SystemMemoryUsage) callconv(.winapi) HRESULT,
        get_CpuUsage: *const fn(self: *anyopaque, _r: **SystemCpuUsage) callconv(.winapi) HRESULT,
    };
};
pub const ISystemDiagnosticInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentSystem(self: *@This()) core.HResult!*SystemDiagnosticInfo {
        var _r: *SystemDiagnosticInfo = undefined;
        const _c = self.vtable.GetForCurrentSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemDiagnosticInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d404ac21-fc7d-45f0-9a3f-39203aed9f7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentSystem: *const fn(self: *anyopaque, _r: **SystemDiagnosticInfo) callconv(.winapi) HRESULT,
    };
};
pub const ISystemDiagnosticInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsArchitectureSupported(self: *@This(), ty: ProcessorArchitecture) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsArchitectureSupported(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredArchitecture(self: *@This()) core.HResult!ProcessorArchitecture {
        var _r: ProcessorArchitecture = undefined;
        const _c = self.vtable.get_PreferredArchitecture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemDiagnosticInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79ded189-6af9-4da9-a422-15f73255b3eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsArchitectureSupported: *const fn(self: *anyopaque, ty: ProcessorArchitecture, _r: *bool) callconv(.winapi) HRESULT,
        get_PreferredArchitecture: *const fn(self: *anyopaque, _r: *ProcessorArchitecture) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMemoryUsage = extern struct {
    vtable: *const VTable,
    pub fn GetReport(self: *@This()) core.HResult!*SystemMemoryUsageReport {
        var _r: *SystemMemoryUsageReport = undefined;
        const _c = self.vtable.GetReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemMemoryUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17ffc595-1702-49cf-aa27-2f0a32591404";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReport: *const fn(self: *anyopaque, _r: **SystemMemoryUsageReport) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMemoryUsageReport = extern struct {
    vtable: *const VTable,
    pub fn getTotalPhysicalSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalPhysicalSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_AvailableSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommittedSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_CommittedSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ISystemMemoryUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38663c87-2a9f-403a-bd19-2cf3e8169500";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TotalPhysicalSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_AvailableSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_CommittedSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const ProcessCpuUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetReport(self: *@This()) core.HResult!*ProcessCpuUsageReport {
        const this: *IProcessCpuUsage = @ptrCast(self);
        return try this.GetReport();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessCpuUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessCpuUsage.GUID;
    pub const IID: Guid = IProcessCpuUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessCpuUsage.SIGNATURE);
};
pub const ProcessCpuUsageReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKernelTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IProcessCpuUsageReport = @ptrCast(self);
        return try this.getKernelTime();
    }
    pub fn getUserTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IProcessCpuUsageReport = @ptrCast(self);
        return try this.getUserTime();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessCpuUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessCpuUsageReport.GUID;
    pub const IID: Guid = IProcessCpuUsageReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessCpuUsageReport.SIGNATURE);
};
pub const ProcessDiagnosticInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getProcessId();
    }
    pub fn getExecutableFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getExecutableFileName();
    }
    pub fn getParent(self: *@This()) core.HResult!*ProcessDiagnosticInfo {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getParent();
    }
    pub fn getProcessStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getProcessStartTime();
    }
    pub fn getDiskUsage(self: *@This()) core.HResult!*ProcessDiskUsage {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getDiskUsage();
    }
    pub fn getMemoryUsage(self: *@This()) core.HResult!*ProcessMemoryUsage {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getMemoryUsage();
    }
    pub fn getCpuUsage(self: *@This()) core.HResult!*ProcessCpuUsage {
        const this: *IProcessDiagnosticInfo = @ptrCast(self);
        return try this.getCpuUsage();
    }
    pub fn GetAppDiagnosticInfos(self: *@This()) core.HResult!*IVector(AppDiagnosticInfo) {
        var this: ?*IProcessDiagnosticInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProcessDiagnosticInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAppDiagnosticInfos();
    }
    pub fn getIsPackaged(self: *@This()) core.HResult!bool {
        var this: ?*IProcessDiagnosticInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProcessDiagnosticInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPackaged();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForProcesses() core.HResult!*IVectorView(ProcessDiagnosticInfo) {
        const factory = @This().IProcessDiagnosticInfoStaticsCache.get();
        return try factory.GetForProcesses();
    }
    pub fn GetForCurrentProcess() core.HResult!*ProcessDiagnosticInfo {
        const factory = @This().IProcessDiagnosticInfoStaticsCache.get();
        return try factory.GetForCurrentProcess();
    }
    pub fn TryGetForProcessId(processId: u32) core.HResult!*ProcessDiagnosticInfo {
        const factory = @This().IProcessDiagnosticInfoStatics2Cache.get();
        return try factory.TryGetForProcessId(processId);
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessDiagnosticInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessDiagnosticInfo.GUID;
    pub const IID: Guid = IProcessDiagnosticInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessDiagnosticInfo.SIGNATURE);
    var _IProcessDiagnosticInfoStaticsCache: FactoryCache(IProcessDiagnosticInfoStatics, RUNTIME_NAME) = .{};
    var _IProcessDiagnosticInfoStatics2Cache: FactoryCache(IProcessDiagnosticInfoStatics2, RUNTIME_NAME) = .{};
};
pub const ProcessDiskUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetReport(self: *@This()) core.HResult!*ProcessDiskUsageReport {
        const this: *IProcessDiskUsage = @ptrCast(self);
        return try this.GetReport();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessDiskUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessDiskUsage.GUID;
    pub const IID: Guid = IProcessDiskUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessDiskUsage.SIGNATURE);
};
pub const ProcessDiskUsageReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReadOperationCount(self: *@This()) core.HResult!i64 {
        const this: *IProcessDiskUsageReport = @ptrCast(self);
        return try this.getReadOperationCount();
    }
    pub fn getWriteOperationCount(self: *@This()) core.HResult!i64 {
        const this: *IProcessDiskUsageReport = @ptrCast(self);
        return try this.getWriteOperationCount();
    }
    pub fn getOtherOperationCount(self: *@This()) core.HResult!i64 {
        const this: *IProcessDiskUsageReport = @ptrCast(self);
        return try this.getOtherOperationCount();
    }
    pub fn getBytesReadCount(self: *@This()) core.HResult!i64 {
        const this: *IProcessDiskUsageReport = @ptrCast(self);
        return try this.getBytesReadCount();
    }
    pub fn getBytesWrittenCount(self: *@This()) core.HResult!i64 {
        const this: *IProcessDiskUsageReport = @ptrCast(self);
        return try this.getBytesWrittenCount();
    }
    pub fn getOtherBytesCount(self: *@This()) core.HResult!i64 {
        const this: *IProcessDiskUsageReport = @ptrCast(self);
        return try this.getOtherBytesCount();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessDiskUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessDiskUsageReport.GUID;
    pub const IID: Guid = IProcessDiskUsageReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessDiskUsageReport.SIGNATURE);
};
pub const ProcessMemoryUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetReport(self: *@This()) core.HResult!*ProcessMemoryUsageReport {
        const this: *IProcessMemoryUsage = @ptrCast(self);
        return try this.GetReport();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessMemoryUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessMemoryUsage.GUID;
    pub const IID: Guid = IProcessMemoryUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessMemoryUsage.SIGNATURE);
};
pub const ProcessMemoryUsageReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNonPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getNonPagedPoolSizeInBytes();
    }
    pub fn getPageFaultCount(self: *@This()) core.HResult!u32 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPageFaultCount();
    }
    pub fn getPageFileSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPageFileSizeInBytes();
    }
    pub fn getPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPagedPoolSizeInBytes();
    }
    pub fn getPeakNonPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPeakNonPagedPoolSizeInBytes();
    }
    pub fn getPeakPageFileSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPeakPageFileSizeInBytes();
    }
    pub fn getPeakPagedPoolSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPeakPagedPoolSizeInBytes();
    }
    pub fn getPeakVirtualMemorySizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPeakVirtualMemorySizeInBytes();
    }
    pub fn getPeakWorkingSetSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPeakWorkingSetSizeInBytes();
    }
    pub fn getPrivatePageCount(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getPrivatePageCount();
    }
    pub fn getVirtualMemorySizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getVirtualMemorySizeInBytes();
    }
    pub fn getWorkingSetSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryUsageReport = @ptrCast(self);
        return try this.getWorkingSetSizeInBytes();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.ProcessMemoryUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessMemoryUsageReport.GUID;
    pub const IID: Guid = IProcessMemoryUsageReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessMemoryUsageReport.SIGNATURE);
};
pub const SystemCpuUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetReport(self: *@This()) core.HResult!*SystemCpuUsageReport {
        const this: *ISystemCpuUsage = @ptrCast(self);
        return try this.GetReport();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.SystemCpuUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemCpuUsage.GUID;
    pub const IID: Guid = ISystemCpuUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemCpuUsage.SIGNATURE);
};
pub const SystemCpuUsageReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKernelTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemCpuUsageReport = @ptrCast(self);
        return try this.getKernelTime();
    }
    pub fn getUserTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemCpuUsageReport = @ptrCast(self);
        return try this.getUserTime();
    }
    pub fn getIdleTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemCpuUsageReport = @ptrCast(self);
        return try this.getIdleTime();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.SystemCpuUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemCpuUsageReport.GUID;
    pub const IID: Guid = ISystemCpuUsageReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemCpuUsageReport.SIGNATURE);
};
pub const SystemDiagnosticInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMemoryUsage(self: *@This()) core.HResult!*SystemMemoryUsage {
        const this: *ISystemDiagnosticInfo = @ptrCast(self);
        return try this.getMemoryUsage();
    }
    pub fn getCpuUsage(self: *@This()) core.HResult!*SystemCpuUsage {
        const this: *ISystemDiagnosticInfo = @ptrCast(self);
        return try this.getCpuUsage();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentSystem() core.HResult!*SystemDiagnosticInfo {
        const factory = @This().ISystemDiagnosticInfoStaticsCache.get();
        return try factory.GetForCurrentSystem();
    }
    pub fn IsArchitectureSupported(ty: ProcessorArchitecture) core.HResult!bool {
        const factory = @This().ISystemDiagnosticInfoStatics2Cache.get();
        return try factory.IsArchitectureSupported(ty);
    }
    pub fn getPreferredArchitecture() core.HResult!ProcessorArchitecture {
        const factory = @This().ISystemDiagnosticInfoStatics2Cache.get();
        return try factory.getPreferredArchitecture();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.SystemDiagnosticInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemDiagnosticInfo.GUID;
    pub const IID: Guid = ISystemDiagnosticInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemDiagnosticInfo.SIGNATURE);
    var _ISystemDiagnosticInfoStaticsCache: FactoryCache(ISystemDiagnosticInfoStatics, RUNTIME_NAME) = .{};
    var _ISystemDiagnosticInfoStatics2Cache: FactoryCache(ISystemDiagnosticInfoStatics2, RUNTIME_NAME) = .{};
};
pub const SystemMemoryUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetReport(self: *@This()) core.HResult!*SystemMemoryUsageReport {
        const this: *ISystemMemoryUsage = @ptrCast(self);
        return try this.GetReport();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.SystemMemoryUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMemoryUsage.GUID;
    pub const IID: Guid = ISystemMemoryUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMemoryUsage.SIGNATURE);
};
pub const SystemMemoryUsageReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTotalPhysicalSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *ISystemMemoryUsageReport = @ptrCast(self);
        return try this.getTotalPhysicalSizeInBytes();
    }
    pub fn getAvailableSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *ISystemMemoryUsageReport = @ptrCast(self);
        return try this.getAvailableSizeInBytes();
    }
    pub fn getCommittedSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *ISystemMemoryUsageReport = @ptrCast(self);
        return try this.getCommittedSizeInBytes();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.SystemMemoryUsageReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMemoryUsageReport.GUID;
    pub const IID: Guid = ISystemMemoryUsageReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMemoryUsageReport.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const AppDiagnosticInfo = @import("../System.zig").AppDiagnosticInfo;
const JsonObject = @import("../Data/Json.zig").JsonObject;
const TrustLevel = @import("../root.zig").TrustLevel;
const ProcessorArchitecture = @import("../System.zig").ProcessorArchitecture;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const User = @import("../System.zig").User;
pub const DevicePortal = @import("./Diagnostics/DevicePortal.zig");
pub const Telemetry = @import("./Diagnostics/Telemetry.zig");
pub const TraceReporting = @import("./Diagnostics/TraceReporting.zig");
