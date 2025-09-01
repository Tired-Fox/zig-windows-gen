pub const AgentAuthorizationResponse = enum(i32) {
    Denied = 0,
    Approved = 1,
};
pub const AgentContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IAgentContext = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn RequestResourceAccess(self: *@This(), resource: *Uri, description: HSTRING, reasonForAsking: HSTRING) core.HResult!AgentAuthorizationResponse {
        const this: *IAgentContext = @ptrCast(self);
        return try this.RequestResourceAccess(resource, description, reasonForAsking);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetContextForCaller() core.HResult!*AgentContext {
        const _f = @This().IAgentContextStaticsCache.get();
        return try _f.GetContextForCaller();
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.AgentContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAgentContext.GUID;
    pub const IID: Guid = IAgentContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAgentContext.SIGNATURE);
    var _IAgentContextStaticsCache: FactoryCache(IAgentContextStatics, RUNTIME_NAME) = .{};
};
pub const AgentInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *IAgentInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IAgentInfo = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IAgentInfo = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn GetPackage(self: *@This()) core.HResult!*Package {
        const this: *IAgentInfo = @ptrCast(self);
        return try this.GetPackage();
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.AgentInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAgentInfo.GUID;
    pub const IID: Guid = IAgentInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAgentInfo.SIGNATURE);
};
pub const AgentResources = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getFileSystemRead() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getFileSystemRead();
    }
    pub fn getFileSystemWrite() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getFileSystemWrite();
    }
    pub fn getFileSystemDelete() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getFileSystemDelete();
    }
    pub fn getFileSystemCreate() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getFileSystemCreate();
    }
    pub fn getHttpGet() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getHttpGet();
    }
    pub fn getHttpPost() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getHttpPost();
    }
    pub fn getHttpPut() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getHttpPut();
    }
    pub fn getHttpDelete() core.HResult!HSTRING {
        const _f = @This().IAgentResourcesStaticsCache.get();
        return try _f.getHttpDelete();
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.AgentResources";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAgentResourcesStaticsCache: FactoryCache(IAgentResourcesStatics, RUNTIME_NAME) = .{};
};
pub const IAgentContext = extern struct {
    vtable: *const VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestResourceAccess(self: *@This(), resource: *Uri, description: HSTRING, reasonForAsking: HSTRING) core.HResult!AgentAuthorizationResponse {
        var _r: AgentAuthorizationResponse = undefined;
        const _c = self.vtable.RequestResourceAccess(@ptrCast(self), resource, description, reasonForAsking, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.IAgentContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67812fd9-f5fc-5431-b282-2fc753b0c2cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        RequestResourceAccess: *const fn(self: *anyopaque, resource: *Uri, description: HSTRING, reasonForAsking: HSTRING, _r: *AgentAuthorizationResponse) callconv(.winapi) HRESULT,
    };
};
pub const IAgentContextStatics = extern struct {
    vtable: *const VTable,
    pub fn GetContextForCaller(self: *@This()) core.HResult!*AgentContext {
        var _r: *AgentContext = undefined;
        const _c = self.vtable.GetContextForCaller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.IAgentContextStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0625abf6-79f6-5116-a14a-91b3967fc214";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetContextForCaller: *const fn(self: *anyopaque, _r: **AgentContext) callconv(.winapi) HRESULT,
    };
};
pub const IAgentInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.GetPackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.IAgentInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b023d498-59ab-410b-83e7-1ed007ee2f68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetPackage: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IAgentResourcesStatics = extern struct {
    vtable: *const VTable,
    pub fn getFileSystemRead(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileSystemRead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileSystemWrite(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileSystemWrite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileSystemDelete(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileSystemDelete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileSystemCreate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileSystemCreate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpGet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HttpGet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpPost(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HttpPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpPut(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HttpPut(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpDelete(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HttpDelete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Agents.IAgentResourcesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adedaaf8-3487-50b4-ac42-490083642b05";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileSystemRead: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FileSystemWrite: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FileSystemDelete: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FileSystemCreate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HttpGet: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HttpPost: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HttpPut: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HttpDelete: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Package = @import("../ApplicationModel.zig").Package;
const TrustLevel = @import("../root.zig").TrustLevel;
const Uri = @import("../Foundation.zig").Uri;
pub const Mcp = @import("./Agents/Mcp.zig");
