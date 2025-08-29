pub const IPlatformDiagnosticActionsStatics = extern struct {
    vtable: *const VTable,
    pub fn IsScenarioEnabled(self: *@This(), scenarioId: *Guid) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsScenarioEnabled(@ptrCast(self), scenarioId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEscalateScenario(self: *@This(), scenarioId: *Guid, escalationType: PlatformDiagnosticEscalationType, outputDirectory: HSTRING, timestampOutputDirectory: bool, forceEscalationUpload: bool, triggers: *IMapView(HSTRING,HSTRING)) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryEscalateScenario(@ptrCast(self), scenarioId, escalationType, outputDirectory, timestampOutputDirectory, forceEscalationUpload, triggers, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DownloadLatestSettingsForNamespace(self: *@This(), partner: HSTRING, feature: HSTRING, isScenarioNamespace: bool, downloadOverCostedNetwork: bool, downloadOverBattery: bool) core.HResult!PlatformDiagnosticActionState {
        var _r: PlatformDiagnosticActionState = undefined;
        const _c = self.vtable.DownloadLatestSettingsForNamespace(@ptrCast(self), partner, feature, isScenarioNamespace, downloadOverCostedNetwork, downloadOverBattery, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActiveScenarioList(self: *@This()) core.HResult!*IVectorView(Guid) {
        var _r: *IVectorView(Guid) = undefined;
        const _c = self.vtable.GetActiveScenarioList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ForceUpload(self: *@This(), latency: PlatformDiagnosticEventBufferLatencies, uploadOverCostedNetwork: bool, uploadOverBattery: bool) core.HResult!PlatformDiagnosticActionState {
        var _r: PlatformDiagnosticActionState = undefined;
        const _c = self.vtable.ForceUpload(@ptrCast(self), latency, uploadOverCostedNetwork, uploadOverBattery, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsTraceRunning(self: *@This(), slotType: PlatformDiagnosticTraceSlotType, scenarioId: *Guid, traceProfileHash: u64) core.HResult!PlatformDiagnosticTraceSlotState {
        var _r: PlatformDiagnosticTraceSlotState = undefined;
        const _c = self.vtable.IsTraceRunning(@ptrCast(self), slotType, scenarioId, traceProfileHash, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActiveTraceRuntime(self: *@This(), slotType: PlatformDiagnosticTraceSlotType) core.HResult!*PlatformDiagnosticTraceRuntimeInfo {
        var _r: *PlatformDiagnosticTraceRuntimeInfo = undefined;
        const _c = self.vtable.GetActiveTraceRuntime(@ptrCast(self), slotType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetKnownTraceList(self: *@This(), slotType: PlatformDiagnosticTraceSlotType) core.HResult!*IVectorView(PlatformDiagnosticTraceInfo) {
        var _r: *IVectorView(PlatformDiagnosticTraceInfo) = undefined;
        const _c = self.vtable.GetKnownTraceList(@ptrCast(self), slotType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticActionsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1145cfa-9292-4267-890a-9ea3ed072312";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsScenarioEnabled: *const fn(self: *anyopaque, scenarioId: *Guid, _r: *bool) callconv(.winapi) HRESULT,
        TryEscalateScenario: *const fn(self: *anyopaque, scenarioId: *Guid, escalationType: PlatformDiagnosticEscalationType, outputDirectory: HSTRING, timestampOutputDirectory: bool, forceEscalationUpload: bool, triggers: *IMapView(HSTRING,HSTRING), _r: *bool) callconv(.winapi) HRESULT,
        DownloadLatestSettingsForNamespace: *const fn(self: *anyopaque, partner: HSTRING, feature: HSTRING, isScenarioNamespace: bool, downloadOverCostedNetwork: bool, downloadOverBattery: bool, _r: *PlatformDiagnosticActionState) callconv(.winapi) HRESULT,
        GetActiveScenarioList: *const fn(self: *anyopaque, _r: **IVectorView(Guid)) callconv(.winapi) HRESULT,
        ForceUpload: *const fn(self: *anyopaque, latency: PlatformDiagnosticEventBufferLatencies, uploadOverCostedNetwork: bool, uploadOverBattery: bool, _r: *PlatformDiagnosticActionState) callconv(.winapi) HRESULT,
        IsTraceRunning: *const fn(self: *anyopaque, slotType: PlatformDiagnosticTraceSlotType, scenarioId: *Guid, traceProfileHash: u64, _r: *PlatformDiagnosticTraceSlotState) callconv(.winapi) HRESULT,
        GetActiveTraceRuntime: *const fn(self: *anyopaque, slotType: PlatformDiagnosticTraceSlotType, _r: **PlatformDiagnosticTraceRuntimeInfo) callconv(.winapi) HRESULT,
        GetKnownTraceList: *const fn(self: *anyopaque, slotType: PlatformDiagnosticTraceSlotType, _r: **IVectorView(PlatformDiagnosticTraceInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IPlatformDiagnosticTraceInfo = extern struct {
    vtable: *const VTable,
    pub fn getScenarioId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ScenarioId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfileHash(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ProfileHash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsExclusive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsExclusive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAutoLogger(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutoLogger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxTraceDurationFileTime(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_MaxTraceDurationFileTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPriority(self: *@This()) core.HResult!PlatformDiagnosticTracePriority {
        var _r: PlatformDiagnosticTracePriority = undefined;
        const _c = self.vtable.get_Priority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScenarioId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ProfileHash: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_IsExclusive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAutoLogger: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxTraceDurationFileTime: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_Priority: *const fn(self: *anyopaque, _r: *PlatformDiagnosticTracePriority) callconv(.winapi) HRESULT,
    };
};
pub const IPlatformDiagnosticTraceRuntimeInfo = extern struct {
    vtable: *const VTable,
    pub fn getRuntimeFileTime(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_RuntimeFileTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEtwRuntimeFileTime(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_EtwRuntimeFileTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceRuntimeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d4d5e2d-01d8-4768-8554-1eb1ca610986";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RuntimeFileTime: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_EtwRuntimeFileTime: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
    };
};
pub const PlatformDiagnosticActionState = enum(i32) {
    Success = 0,
    FreeNetworkNotAvailable = 1,
    ACPowerNotAvailable = 2,
};
pub const PlatformDiagnosticActions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsScenarioEnabled(scenarioId: *Guid) core.HResult!bool {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.IsScenarioEnabled(scenarioId);
    }
    pub fn TryEscalateScenario(scenarioId: *Guid, escalationType: PlatformDiagnosticEscalationType, outputDirectory: HSTRING, timestampOutputDirectory: bool, forceEscalationUpload: bool, triggers: *IMapView(HSTRING,HSTRING)) core.HResult!bool {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.TryEscalateScenario(scenarioId, escalationType, outputDirectory, timestampOutputDirectory, forceEscalationUpload, triggers);
    }
    pub fn DownloadLatestSettingsForNamespace(partner: HSTRING, feature: HSTRING, isScenarioNamespace: bool, downloadOverCostedNetwork: bool, downloadOverBattery: bool) core.HResult!PlatformDiagnosticActionState {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.DownloadLatestSettingsForNamespace(partner, feature, isScenarioNamespace, downloadOverCostedNetwork, downloadOverBattery);
    }
    pub fn GetActiveScenarioList() core.HResult!*IVectorView(Guid) {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.GetActiveScenarioList();
    }
    pub fn ForceUpload(latency: PlatformDiagnosticEventBufferLatencies, uploadOverCostedNetwork: bool, uploadOverBattery: bool) core.HResult!PlatformDiagnosticActionState {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.ForceUpload(latency, uploadOverCostedNetwork, uploadOverBattery);
    }
    pub fn IsTraceRunning(slotType: PlatformDiagnosticTraceSlotType, scenarioId: *Guid, traceProfileHash: u64) core.HResult!PlatformDiagnosticTraceSlotState {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.IsTraceRunning(slotType, scenarioId, traceProfileHash);
    }
    pub fn GetActiveTraceRuntime(slotType: PlatformDiagnosticTraceSlotType) core.HResult!*PlatformDiagnosticTraceRuntimeInfo {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.GetActiveTraceRuntime(slotType);
    }
    pub fn GetKnownTraceList(slotType: PlatformDiagnosticTraceSlotType) core.HResult!*IVectorView(PlatformDiagnosticTraceInfo) {
        const factory = @This().IPlatformDiagnosticActionsStaticsCache.get();
        return try factory.GetKnownTraceList(slotType);
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlatformDiagnosticActionsStaticsCache: FactoryCache(IPlatformDiagnosticActionsStatics, RUNTIME_NAME) = .{};
};
pub const PlatformDiagnosticEscalationType = enum(i32) {
    OnCompletion = 0,
    OnFailure = 1,
};
pub const PlatformDiagnosticEventBufferLatencies = enum(i32) {
    Normal = 1,
    CostDeferred = 2,
    Realtime = 4,
};
pub const PlatformDiagnosticTraceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScenarioId(self: *@This()) core.HResult!*Guid {
        const this: *IPlatformDiagnosticTraceInfo = @ptrCast(self);
        return try this.getScenarioId();
    }
    pub fn getProfileHash(self: *@This()) core.HResult!u64 {
        const this: *IPlatformDiagnosticTraceInfo = @ptrCast(self);
        return try this.getProfileHash();
    }
    pub fn getIsExclusive(self: *@This()) core.HResult!bool {
        const this: *IPlatformDiagnosticTraceInfo = @ptrCast(self);
        return try this.getIsExclusive();
    }
    pub fn getIsAutoLogger(self: *@This()) core.HResult!bool {
        const this: *IPlatformDiagnosticTraceInfo = @ptrCast(self);
        return try this.getIsAutoLogger();
    }
    pub fn getMaxTraceDurationFileTime(self: *@This()) core.HResult!i64 {
        const this: *IPlatformDiagnosticTraceInfo = @ptrCast(self);
        return try this.getMaxTraceDurationFileTime();
    }
    pub fn getPriority(self: *@This()) core.HResult!PlatformDiagnosticTracePriority {
        const this: *IPlatformDiagnosticTraceInfo = @ptrCast(self);
        return try this.getPriority();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlatformDiagnosticTraceInfo.GUID;
    pub const IID: Guid = IPlatformDiagnosticTraceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlatformDiagnosticTraceInfo.SIGNATURE);
};
pub const PlatformDiagnosticTracePriority = enum(i32) {
    Normal = 0,
    UserElevated = 1,
};
pub const PlatformDiagnosticTraceRuntimeInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRuntimeFileTime(self: *@This()) core.HResult!i64 {
        const this: *IPlatformDiagnosticTraceRuntimeInfo = @ptrCast(self);
        return try this.getRuntimeFileTime();
    }
    pub fn getEtwRuntimeFileTime(self: *@This()) core.HResult!i64 {
        const this: *IPlatformDiagnosticTraceRuntimeInfo = @ptrCast(self);
        return try this.getEtwRuntimeFileTime();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlatformDiagnosticTraceRuntimeInfo.GUID;
    pub const IID: Guid = IPlatformDiagnosticTraceRuntimeInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlatformDiagnosticTraceRuntimeInfo.SIGNATURE);
};
pub const PlatformDiagnosticTraceSlotState = enum(i32) {
    NotRunning = 0,
    Running = 1,
    Throttled = 2,
};
pub const PlatformDiagnosticTraceSlotType = enum(i32) {
    Alternative = 0,
    AlwaysOn = 1,
    Mini = 2,
};
const HSTRING = @import("../../root.zig").HSTRING;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const TrustLevel = @import("../../root.zig").TrustLevel;
