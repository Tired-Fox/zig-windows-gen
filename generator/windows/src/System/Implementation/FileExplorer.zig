pub const ISysStorageProviderEventReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getJson(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Json(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Implementation.FileExplorer.ISysStorageProviderEventReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e132d1b9-7b9d-5820-9728-4262b5289142";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Json: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISysStorageProviderEventReceivedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), json: HSTRING) core.HResult!*SysStorageProviderEventReceivedEventArgs {
        var _r: *SysStorageProviderEventReceivedEventArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), json, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Implementation.FileExplorer.ISysStorageProviderEventReceivedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de1a780e-e975-5f68-bcc6-fb46281c6a61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, json: HSTRING, _r: **SysStorageProviderEventReceivedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const ISysStorageProviderEventSource = extern struct {
    vtable: *const VTable,
    pub fn addEventReceived(self: *@This(), handler: *TypedEventHandler(ISysStorageProviderEventSource,SysStorageProviderEventReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EventReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEventReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EventReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Implementation.FileExplorer.ISysStorageProviderEventSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f36c476-9546-536a-8381-2f9a2c08cedd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_EventReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(ISysStorageProviderEventSource,SysStorageProviderEventReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EventReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISysStorageProviderHandlerFactory = extern struct {
    vtable: *const VTable,
    pub fn GetHttpRequestProvider(self: *@This(), syncRootId: HSTRING) core.HResult!*ISysStorageProviderHttpRequestProvider {
        var _r: *ISysStorageProviderHttpRequestProvider = undefined;
        const _c = self.vtable.GetHttpRequestProvider(@ptrCast(self), syncRootId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEventSource(self: *@This(), syncRootId: HSTRING, eventName: HSTRING) core.HResult!*ISysStorageProviderEventSource {
        var _r: *ISysStorageProviderEventSource = undefined;
        const _c = self.vtable.GetEventSource(@ptrCast(self), syncRootId, eventName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Implementation.FileExplorer.ISysStorageProviderHandlerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee798431-8213-5e89-a623-14d8c72b8a61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetHttpRequestProvider: *const fn(self: *anyopaque, syncRootId: HSTRING, _r: **ISysStorageProviderHttpRequestProvider) callconv(.winapi) HRESULT,
        GetEventSource: *const fn(self: *anyopaque, syncRootId: HSTRING, eventName: HSTRING, _r: **ISysStorageProviderEventSource) callconv(.winapi) HRESULT,
    };
};
pub const ISysStorageProviderHttpRequestProvider = extern struct {
    vtable: *const VTable,
    pub fn SendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperation(HttpResponseMessage) {
        var _r: *IAsyncOperation(HttpResponseMessage) = undefined;
        const _c = self.vtable.SendRequestAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Implementation.FileExplorer.ISysStorageProviderHttpRequestProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb6fefb6-e76a-5c25-a33e-3e78a6e0e0ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendRequestAsync: *const fn(self: *anyopaque, request: *HttpRequestMessage, _r: **IAsyncOperation(HttpResponseMessage)) callconv(.winapi) HRESULT,
    };
};
pub const SysStorageProviderEventReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getJson(self: *@This()) core.HResult!HSTRING {
        const this: *ISysStorageProviderEventReceivedEventArgs = @ptrCast(self);
        return try this.getJson();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(json: HSTRING) core.HResult!*SysStorageProviderEventReceivedEventArgs {
        const factory = @This().ISysStorageProviderEventReceivedEventArgsFactoryCache.get();
        return try factory.CreateInstance(json);
    }
    pub const NAME: []const u8 = "Windows.System.Implementation.FileExplorer.SysStorageProviderEventReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISysStorageProviderEventReceivedEventArgs.GUID;
    pub const IID: Guid = ISysStorageProviderEventReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISysStorageProviderEventReceivedEventArgs.SIGNATURE);
    var _ISysStorageProviderEventReceivedEventArgsFactoryCache: FactoryCache(ISysStorageProviderEventReceivedEventArgsFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const HttpResponseMessage = @import("../../Web/Http.zig").HttpResponseMessage;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HttpRequestMessage = @import("../../Web/Http.zig").HttpRequestMessage;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
