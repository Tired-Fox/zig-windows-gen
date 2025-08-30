pub const IMdmAlert = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFormat(self: *@This()) core.HResult!MdmAlertDataType {
        var _r: MdmAlertDataType = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormat(self: *@This(), value: MdmAlertDataType) core.HResult!void {
        const _c = self.vtable.put_Format(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMark(self: *@This()) core.HResult!MdmAlertMark {
        var _r: MdmAlertMark = undefined;
        const _c = self.vtable.get_Mark(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMark(self: *@This(), value: MdmAlertMark) core.HResult!void {
        const _c = self.vtable.put_Mark(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTarget(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTarget(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Target(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.IMdmAlert";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0fbc327-28c1-4b52-a548-c5807caf70b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *MdmAlertDataType) callconv(.winapi) HRESULT,
        put_Format: *const fn(self: *anyopaque, value: MdmAlertDataType) callconv(.winapi) HRESULT,
        get_Mark: *const fn(self: *anyopaque, _r: *MdmAlertMark) callconv(.winapi) HRESULT,
        put_Mark: *const fn(self: *anyopaque, value: MdmAlertMark) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Target: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMdmSession = extern struct {
    vtable: *const VTable,
    pub fn getAlerts(self: *@This()) core.HResult!*IVectorView(MdmAlert) {
        var _r: *IVectorView(MdmAlert) = undefined;
        const _c = self.vtable.get_Alerts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!MdmSessionState {
        var _r: MdmSessionState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AttachAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AttachAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Delete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Delete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This(), alerts: *IIterable(MdmAlert)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), alerts, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.IMdmSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe89314c-8f64-4797-a9d7-9d88f86ae166";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Alerts: *const fn(self: *anyopaque, _r: **IVectorView(MdmAlert)) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *MdmSessionState) callconv(.winapi) HRESULT,
        AttachAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        Delete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, alerts: *IIterable(MdmAlert), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMdmSessionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getSessionIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SessionIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateSession(self: *@This()) core.HResult!*MdmSession {
        var _r: *MdmSession = undefined;
        const _c = self.vtable.TryCreateSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteSessionById(self: *@This(), sessionId: HSTRING) core.HResult!void {
        const _c = self.vtable.DeleteSessionById(@ptrCast(self), sessionId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSessionById(self: *@This(), sessionId: HSTRING) core.HResult!*MdmSession {
        var _r: *MdmSession = undefined;
        const _c = self.vtable.GetSessionById(@ptrCast(self), sessionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.IMdmSessionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf4ad959-f745-4b79-9b5c-de0bf8efe44b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        TryCreateSession: *const fn(self: *anyopaque, _r: **MdmSession) callconv(.winapi) HRESULT,
        DeleteSessionById: *const fn(self: *anyopaque, sessionId: HSTRING) callconv(.winapi) HRESULT,
        GetSessionById: *const fn(self: *anyopaque, sessionId: HSTRING, _r: **MdmSession) callconv(.winapi) HRESULT,
    };
};
pub const MdmAlert = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn getFormat(self: *@This()) core.HResult!MdmAlertDataType {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: MdmAlertDataType) core.HResult!void {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn getMark(self: *@This()) core.HResult!MdmAlertMark {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getMark();
    }
    pub fn putMark(self: *@This(), value: MdmAlertMark) core.HResult!void {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.putMark(value);
    }
    pub fn getSource(self: *@This()) core.HResult!HSTRING {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getStatus(self: *@This()) core.HResult!u32 {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getTarget(self: *@This()) core.HResult!HSTRING {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getTarget();
    }
    pub fn putTarget(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.putTarget(value);
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMdmAlert = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMdmAlert.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.MdmAlert";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMdmAlert.GUID;
    pub const IID: Guid = IMdmAlert.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMdmAlert.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MdmAlertDataType = enum(i32) {
    String = 0,
    Base64 = 1,
    Boolean = 2,
    Integer = 3,
};
pub const MdmAlertMark = enum(i32) {
    None = 0,
    Fatal = 1,
    Critical = 2,
    Warning = 3,
    Informational = 4,
};
pub const MdmSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlerts(self: *@This()) core.HResult!*IVectorView(MdmAlert) {
        const this: *IMdmSession = @ptrCast(self);
        return try this.getAlerts();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IMdmSession = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IMdmSession = @ptrCast(self);
        return try this.getId();
    }
    pub fn getState(self: *@This()) core.HResult!MdmSessionState {
        const this: *IMdmSession = @ptrCast(self);
        return try this.getState();
    }
    pub fn AttachAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMdmSession = @ptrCast(self);
        return try this.AttachAsync();
    }
    pub fn Delete(self: *@This()) core.HResult!void {
        const this: *IMdmSession = @ptrCast(self);
        return try this.Delete();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMdmSession = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StartAsyncWithAlerts(self: *@This(), alerts: *IIterable(MdmAlert)) core.HResult!*IAsyncAction {
        const this: *IMdmSession = @ptrCast(self);
        return try this.StartAsyncWithAlerts(alerts);
    }
    pub const NAME: []const u8 = "Windows.Management.MdmSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMdmSession.GUID;
    pub const IID: Guid = IMdmSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMdmSession.SIGNATURE);
};
pub const MdmSessionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SessionIds() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IMdmSessionManagerStaticsCache.get();
        return try factory.getSessionIds();
    }
    pub fn TryCreateSession() core.HResult!*MdmSession {
        const factory = @This().IMdmSessionManagerStaticsCache.get();
        return try factory.TryCreateSession();
    }
    pub fn DeleteSessionById(sessionId: HSTRING) core.HResult!void {
        const factory = @This().IMdmSessionManagerStaticsCache.get();
        return try factory.DeleteSessionById(sessionId);
    }
    pub fn GetSessionById(sessionId: HSTRING) core.HResult!*MdmSession {
        const factory = @This().IMdmSessionManagerStaticsCache.get();
        return try factory.GetSessionById(sessionId);
    }
    pub const NAME: []const u8 = "Windows.Management.MdmSessionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMdmSessionManagerStaticsCache: FactoryCache(IMdmSessionManagerStatics, RUNTIME_NAME) = .{};
};
pub const MdmSessionState = enum(i32) {
    NotStarted = 0,
    Starting = 1,
    Connecting = 2,
    Communicating = 3,
    AlertStatusAvailable = 4,
    Retrying = 5,
    Completed = 6,
};
const IUnknown = @import("./root.zig").IUnknown;
const IActivationFactory = @import("./Foundation.zig").IActivationFactory;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const IIterable = @import("./Foundation/Collections.zig").IIterable;
const IInspectable = @import("./Foundation.zig").IInspectable;
const FactoryCache = @import("./core.zig").FactoryCache;
const TrustLevel = @import("./root.zig").TrustLevel;
const IAsyncAction = @import("./Foundation.zig").IAsyncAction;
const HResult = @import("./Foundation.zig").HResult;
const HSTRING = @import("./root.zig").HSTRING;
pub const Core = @import("./Management/Core.zig");
pub const Deployment = @import("./Management/Deployment.zig");
pub const Policies = @import("./Management/Policies.zig");
pub const Setup = @import("./Management/Setup.zig");
pub const Update = @import("./Management/Update.zig");
pub const Workplace = @import("./Management/Workplace.zig");
