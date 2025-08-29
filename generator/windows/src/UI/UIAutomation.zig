pub const AutomationConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsRemoteSystem(self: *@This()) core.HResult!bool {
        const this: *IAutomationConnection = @ptrCast(self);
        return try this.getIsRemoteSystem();
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationConnection = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn getExecutableFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationConnection = @ptrCast(self);
        return try this.getExecutableFileName();
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.AutomationConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationConnection.GUID;
    pub const IID: Guid = IAutomationConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationConnection.SIGNATURE);
};
pub const AutomationConnectionBoundObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*AutomationConnection {
        const this: *IAutomationConnectionBoundObject = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.AutomationConnectionBoundObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationConnectionBoundObject.GUID;
    pub const IID: Guid = IAutomationConnectionBoundObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationConnectionBoundObject.SIGNATURE);
};
pub const AutomationElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsRemoteSystem(self: *@This()) core.HResult!bool {
        const this: *IAutomationElement = @ptrCast(self);
        return try this.getIsRemoteSystem();
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationElement = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn getExecutableFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationElement = @ptrCast(self);
        return try this.getExecutableFileName();
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.AutomationElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationElement.GUID;
    pub const IID: Guid = IAutomationElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationElement.SIGNATURE);
};
pub const AutomationTextRange = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.AutomationTextRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationTextRange.GUID;
    pub const IID: Guid = IAutomationTextRange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationTextRange.SIGNATURE);
};
pub const IAutomationConnection = extern struct {
    vtable: *const VTable,
    pub fn getIsRemoteSystem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRemoteSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExecutableFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExecutableFileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.IAutomationConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aad262ed-0ef4-5d43-97be-a834e27b65b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRemoteSystem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExecutableFileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationConnectionBoundObject = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*AutomationConnection {
        var _r: *AutomationConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.IAutomationConnectionBoundObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e8558fb-ca52-5b65-9830-dd2905816093";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **AutomationConnection) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElement = extern struct {
    vtable: *const VTable,
    pub fn getIsRemoteSystem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRemoteSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExecutableFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExecutableFileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.IAutomationElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1898370-2c07-56fd-993f-61a72a08058c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRemoteSystem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExecutableFileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationTextRange = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.IAutomationTextRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e101b65-40d3-5994-85a9-0a0cb9a4ec98";
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
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
pub const Core = @import("./UIAutomation/Core.zig");
