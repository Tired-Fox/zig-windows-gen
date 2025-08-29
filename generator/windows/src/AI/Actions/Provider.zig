pub const IActionFeedbackHandler = extern struct {
    vtable: *const VTable,
    pub fn ProcessFeedbackAsync(self: *@This(), context: *ActionInvocationContext, feedback: *ActionFeedback) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ProcessFeedbackAsync(@ptrCast(self), context, feedback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Provider.IActionFeedbackHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3fc3c51-a8c6-52c8-ad77-37bf3e2b565c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProcessFeedbackAsync: *const fn(self: *anyopaque, context: *ActionInvocationContext, feedback: *ActionFeedback, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IActionProvider = extern struct {
    vtable: *const VTable,
    pub fn InvokeAsync(self: *@This(), context: *ActionInvocationContext) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvokeAsync(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Provider.IActionProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62906c47-3d07-55f1-aefa-1522505afbbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InvokeAsync: *const fn(self: *anyopaque, context: *ActionInvocationContext, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const ActionFeedback = @import("../Actions.zig").ActionFeedback;
const ActionInvocationContext = @import("../Actions.zig").ActionInvocationContext;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
