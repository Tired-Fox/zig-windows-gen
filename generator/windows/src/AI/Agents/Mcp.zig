pub const IMcpHttpConnectionResult = extern struct {
    vtable: *const VTable,
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
    pub fn getHeaders(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpHttpConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2c3755f-6d3c-5e90-84dd-3e0973049606";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IMcpNamedPipeConnectionResult = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpNamedPipeConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a2aef6f-b4dc-5180-a3e1-47b63dbbb70a";
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
pub const IMcpNamedPipeConnectionServer = extern struct {
    vtable: *const VTable,
    pub fn Connect(self: *@This(), hostContext: *AgentContext, pipeName: HSTRING, connectionResult: *McpNamedPipeConnectionResult) core.HResult!*McpNamedPipeConnectionResult {
        var _r: *McpNamedPipeConnectionResult = undefined;
        const _c = self.vtable.Connect(@ptrCast(self), hostContext, pipeName, connectionResult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpNamedPipeConnectionServer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52f204a5-2ad1-5430-96c9-ea7e090be839";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Connect: *const fn(self: *anyopaque, hostContext: *AgentContext, pipeName: HSTRING, connectionResult: *McpNamedPipeConnectionResult, _r: **McpNamedPipeConnectionResult) callconv(.winapi) HRESULT,
    };
};
pub const IMcpServerRegistry = extern struct {
    vtable: *const VTable,
    pub fn GetAgentInfos(self: *@This()) core.HResult![*]AgentInfo {
        var _r: [*]AgentInfo = undefined;
        const _c = self.vtable.GetAgentInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMcpConnectionInfo(self: *@This(), agentId: *Guid, ownerWindowId: WindowId) core.HResult!*McpStdioConnectionInfo {
        var _r: *McpStdioConnectionInfo = undefined;
        const _c = self.vtable.GetMcpConnectionInfo(@ptrCast(self), agentId, ownerWindowId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpServerRegistry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "150f795b-3f93-4493-abc7-48a04fd2d7b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAgentInfos: *const fn(self: *anyopaque, _r: *[*]AgentInfo) callconv(.winapi) HRESULT,
        GetMcpConnectionInfo: *const fn(self: *anyopaque, agentId: *Guid, ownerWindowId: WindowId, _r: **McpStdioConnectionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IMcpServerRegistryStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*McpServerRegistry {
        var _r: *McpServerRegistry = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpServerRegistryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4acf7fed-d300-55bc-9dde-9f433cdc903d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **McpServerRegistry) callconv(.winapi) HRESULT,
    };
};
pub const IMcpSseConnectionServer = extern struct {
    vtable: *const VTable,
    pub fn Connect(self: *@This(), hostContext: *AgentContext, connectionResult: *McpHttpConnectionResult) core.HResult!*McpHttpConnectionResult {
        var _r: *McpHttpConnectionResult = undefined;
        const _c = self.vtable.Connect(@ptrCast(self), hostContext, connectionResult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpSseConnectionServer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c558671-1b20-5b6b-920d-b8afc2509771";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Connect: *const fn(self: *anyopaque, hostContext: *AgentContext, connectionResult: *McpHttpConnectionResult, _r: **McpHttpConnectionResult) callconv(.winapi) HRESULT,
    };
};
pub const IMcpStdioConnectionInfo = extern struct {
    vtable: *const VTable,
    pub fn getCommand(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Command(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCommandArguments(self: *@This()) core.HResult![*]HSTRING {
        var _r: [*]HSTRING = undefined;
        const _c = self.vtable.GetCommandArguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInfo(self: *@This()) core.HResult!*AgentInfo {
        var _r: *AgentInfo = undefined;
        const _c = self.vtable.get_Info(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.IMcpStdioConnectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93d9827b-32a2-5b89-ba8a-05bd2093598e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Command: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetCommandArguments: *const fn(self: *anyopaque, _r: *[*]HSTRING) callconv(.winapi) HRESULT,
        get_Info: *const fn(self: *anyopaque, _r: **AgentInfo) callconv(.winapi) HRESULT,
    };
};
pub const McpHttpConnectionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IMcpHttpConnectionResult = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IMcpHttpConnectionResult = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getHeaders(self: *@This()) core.HResult!*ValueSet {
        const this: *IMcpHttpConnectionResult = @ptrCast(self);
        return try this.getHeaders();
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.McpHttpConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMcpHttpConnectionResult.GUID;
    pub const IID: Guid = IMcpHttpConnectionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMcpHttpConnectionResult.SIGNATURE);
};
pub const McpNamedPipeConnectionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.McpNamedPipeConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMcpNamedPipeConnectionResult.GUID;
    pub const IID: Guid = IMcpNamedPipeConnectionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMcpNamedPipeConnectionResult.SIGNATURE);
};
pub const McpServerRegistry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAgentInfos(self: *@This()) core.HResult![*]AgentInfo {
        const this: *IMcpServerRegistry = @ptrCast(self);
        return try this.GetAgentInfos();
    }
    pub fn GetMcpConnectionInfo(self: *@This(), agentId: *Guid, ownerWindowId: WindowId) core.HResult!*McpStdioConnectionInfo {
        const this: *IMcpServerRegistry = @ptrCast(self);
        return try this.GetMcpConnectionInfo(agentId, ownerWindowId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*McpServerRegistry {
        const factory = @This().IMcpServerRegistryStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.McpServerRegistry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMcpServerRegistry.GUID;
    pub const IID: Guid = IMcpServerRegistry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMcpServerRegistry.SIGNATURE);
    var _IMcpServerRegistryStaticsCache: FactoryCache(IMcpServerRegistryStatics, RUNTIME_NAME) = .{};
};
pub const McpStdioConnectionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommand(self: *@This()) core.HResult!HSTRING {
        const this: *IMcpStdioConnectionInfo = @ptrCast(self);
        return try this.getCommand();
    }
    pub fn GetCommandArguments(self: *@This()) core.HResult![*]HSTRING {
        const this: *IMcpStdioConnectionInfo = @ptrCast(self);
        return try this.GetCommandArguments();
    }
    pub fn getInfo(self: *@This()) core.HResult!*AgentInfo {
        const this: *IMcpStdioConnectionInfo = @ptrCast(self);
        return try this.getInfo();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.Mcp.McpStdioConnectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMcpStdioConnectionInfo.GUID;
    pub const IID: Guid = IMcpStdioConnectionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMcpStdioConnectionInfo.SIGNATURE);
};
const HSTRING = @import("../../root.zig").HSTRING;
const AgentInfo = @import("../Agents.zig").AgentInfo;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const ValueSet = @import("../../Foundation/Collections.zig").ValueSet;
const WindowId = @import("../../UI.zig").WindowId;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Uri = @import("../../Foundation.zig").Uri;
const IClosable = @import("../../Foundation.zig").IClosable;
const AgentContext = @import("../Agents.zig").AgentContext;
