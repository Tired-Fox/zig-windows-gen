pub const IPreallocatedWorkItem = extern struct {
    vtable: *const VTable,
    pub fn RunAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RunAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.IPreallocatedWorkItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6daa9fc-bc5b-401a-a8b2-6e754d14daa6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RunAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPreallocatedWorkItemFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWorkItem(self: *@This(), handler: *WorkItemHandler) core.HResult!*PreallocatedWorkItem {
        var _r: *PreallocatedWorkItem = undefined;
        const _c = self.vtable.CreateWorkItem(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWorkItemWithPriority(self: *@This(), handler: *WorkItemHandler, priority: WorkItemPriority) core.HResult!*PreallocatedWorkItem {
        var _r: *PreallocatedWorkItem = undefined;
        const _c = self.vtable.CreateWorkItemWithPriority(@ptrCast(self), handler, priority, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWorkItemWithPriorityAndOptions(self: *@This(), handler: *WorkItemHandler, priority: WorkItemPriority, options: WorkItemOptions) core.HResult!*PreallocatedWorkItem {
        var _r: *PreallocatedWorkItem = undefined;
        const _c = self.vtable.CreateWorkItemWithPriorityAndOptions(@ptrCast(self), handler, priority, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.IPreallocatedWorkItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3d32b45-dfea-469b-82c5-f6e3cefdeafb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWorkItem: *const fn(self: *anyopaque, handler: *WorkItemHandler, _r: **PreallocatedWorkItem) callconv(.winapi) HRESULT,
        CreateWorkItemWithPriority: *const fn(self: *anyopaque, handler: *WorkItemHandler, priority: WorkItemPriority, _r: **PreallocatedWorkItem) callconv(.winapi) HRESULT,
        CreateWorkItemWithPriorityAndOptions: *const fn(self: *anyopaque, handler: *WorkItemHandler, priority: WorkItemPriority, options: WorkItemOptions, _r: **PreallocatedWorkItem) callconv(.winapi) HRESULT,
    };
};
pub const ISignalNotifier = extern struct {
    vtable: *const VTable,
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Terminate(self: *@This()) core.HResult!void {
        const _c = self.vtable.Terminate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.ISignalNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14285e06-63a7-4713-b6d9-62f64b56fb8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Terminate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISignalNotifierStatics = extern struct {
    vtable: *const VTable,
    pub fn AttachToEvent(self: *@This(), name: HSTRING, handler: *SignalHandler) core.HResult!*SignalNotifier {
        var _r: *SignalNotifier = undefined;
        const _c = self.vtable.AttachToEvent(@ptrCast(self), name, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AttachToEventWithHandlerWithTimeout(self: *@This(), name: HSTRING, handler: *SignalHandler, timeout: TimeSpan) core.HResult!*SignalNotifier {
        var _r: *SignalNotifier = undefined;
        const _c = self.vtable.AttachToEventWithHandlerWithTimeout(@ptrCast(self), name, handler, timeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AttachToSemaphore(self: *@This(), name: HSTRING, handler: *SignalHandler) core.HResult!*SignalNotifier {
        var _r: *SignalNotifier = undefined;
        const _c = self.vtable.AttachToSemaphore(@ptrCast(self), name, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AttachToSemaphoreWithHandlerWithTimeout(self: *@This(), name: HSTRING, handler: *SignalHandler, timeout: TimeSpan) core.HResult!*SignalNotifier {
        var _r: *SignalNotifier = undefined;
        const _c = self.vtable.AttachToSemaphoreWithHandlerWithTimeout(@ptrCast(self), name, handler, timeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.ISignalNotifierStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c4e4566-8400-46d3-a115-7d0c0dfc9f62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AttachToEvent: *const fn(self: *anyopaque, name: HSTRING, handler: *SignalHandler, _r: **SignalNotifier) callconv(.winapi) HRESULT,
        AttachToEventWithHandlerWithTimeout: *const fn(self: *anyopaque, name: HSTRING, handler: *SignalHandler, timeout: TimeSpan, _r: **SignalNotifier) callconv(.winapi) HRESULT,
        AttachToSemaphore: *const fn(self: *anyopaque, name: HSTRING, handler: *SignalHandler, _r: **SignalNotifier) callconv(.winapi) HRESULT,
        AttachToSemaphoreWithHandlerWithTimeout: *const fn(self: *anyopaque, name: HSTRING, handler: *SignalHandler, timeout: TimeSpan, _r: **SignalNotifier) callconv(.winapi) HRESULT,
    };
};
pub const PreallocatedWorkItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RunAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPreallocatedWorkItem = @ptrCast(self);
        return try this.RunAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWorkItem(handler: *WorkItemHandler) core.HResult!*PreallocatedWorkItem {
        const factory = @This().IPreallocatedWorkItemFactoryCache.get();
        return try factory.CreateWorkItem(handler);
    }
    pub fn CreateWorkItemWithPriority(handler: *WorkItemHandler, priority: WorkItemPriority) core.HResult!*PreallocatedWorkItem {
        const factory = @This().IPreallocatedWorkItemFactoryCache.get();
        return try factory.CreateWorkItemWithPriority(handler, priority);
    }
    pub fn CreateWorkItemWithPriorityAndOptions(handler: *WorkItemHandler, priority: WorkItemPriority, options: WorkItemOptions) core.HResult!*PreallocatedWorkItem {
        const factory = @This().IPreallocatedWorkItemFactoryCache.get();
        return try factory.CreateWorkItemWithPriorityAndOptions(handler, priority, options);
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.PreallocatedWorkItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPreallocatedWorkItem.GUID;
    pub const IID: Guid = IPreallocatedWorkItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPreallocatedWorkItem.SIGNATURE);
    var _IPreallocatedWorkItemFactoryCache: FactoryCache(IPreallocatedWorkItemFactory, RUNTIME_NAME) = .{};
};
pub const SignalHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, signalNotifier: *SignalNotifier, timedOut: bool) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, signalNotifier: *SignalNotifier, timedOut: bool) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, signalNotifier: *SignalNotifier, timedOut: bool) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, signalNotifier, timedOut);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.SignalHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "923c402e-4721-440e-9dda-55b6f2e07710";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, signalNotifier: *SignalNotifier, timedOut: bool) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SignalNotifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Enable(self: *@This()) core.HResult!void {
        const this: *ISignalNotifier = @ptrCast(self);
        return try this.Enable();
    }
    pub fn Terminate(self: *@This()) core.HResult!void {
        const this: *ISignalNotifier = @ptrCast(self);
        return try this.Terminate();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn AttachToEvent(name: HSTRING, handler: *SignalHandler) core.HResult!*SignalNotifier {
        const factory = @This().ISignalNotifierStaticsCache.get();
        return try factory.AttachToEvent(name, handler);
    }
    pub fn AttachToEventWithHandlerWithTimeout(name: HSTRING, handler: *SignalHandler, timeout: TimeSpan) core.HResult!*SignalNotifier {
        const factory = @This().ISignalNotifierStaticsCache.get();
        return try factory.AttachToEventWithHandlerWithTimeout(name, handler, timeout);
    }
    pub fn AttachToSemaphore(name: HSTRING, handler: *SignalHandler) core.HResult!*SignalNotifier {
        const factory = @This().ISignalNotifierStaticsCache.get();
        return try factory.AttachToSemaphore(name, handler);
    }
    pub fn AttachToSemaphoreWithHandlerWithTimeout(name: HSTRING, handler: *SignalHandler, timeout: TimeSpan) core.HResult!*SignalNotifier {
        const factory = @This().ISignalNotifierStaticsCache.get();
        return try factory.AttachToSemaphoreWithHandlerWithTimeout(name, handler, timeout);
    }
    pub const NAME: []const u8 = "Windows.System.Threading.Core.SignalNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISignalNotifier.GUID;
    pub const IID: Guid = ISignalNotifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISignalNotifier.SIGNATURE);
    var _ISignalNotifierStaticsCache: FactoryCache(ISignalNotifierStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const WorkItemOptions = @import("../Threading.zig").WorkItemOptions;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const WorkItemPriority = @import("../Threading.zig").WorkItemPriority;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const WorkItemHandler = @import("../Threading.zig").WorkItemHandler;
const IAgileObject = @import("../../root.zig").IAgileObject;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
