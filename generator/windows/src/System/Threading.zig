pub const IThreadPoolStatics = extern struct {
    vtable: *const VTable,
    pub fn RunAsync(self: *@This(), handler: *WorkItemHandler) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RunAsync(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RunAsync(self: *@This(), handler: *WorkItemHandler, priority: WorkItemPriority) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RunAsync(@ptrCast(self), handler, priority, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RunAsync(self: *@This(), handler: *WorkItemHandler, priority: WorkItemPriority, options: WorkItemOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RunAsync(@ptrCast(self), handler, priority, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.IThreadPoolStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6bf67dd-84bd-44f8-ac1c-93ebcb9dba91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RunAsync: *const fn(self: *anyopaque, handler: *WorkItemHandler, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RunAsync: *const fn(self: *anyopaque, handler: *WorkItemHandler, priority: WorkItemPriority, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RunAsync: *const fn(self: *anyopaque, handler: *WorkItemHandler, priority: WorkItemPriority, options: WorkItemOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IThreadPoolTimer = extern struct {
    vtable: *const VTable,
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Period(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Delay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.IThreadPoolTimer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "594ebe78-55ea-4a88-a50d-3402ae1f9cf2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Period: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Delay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IThreadPoolTimerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreatePeriodicTimer(self: *@This(), handler: *TimerElapsedHandler, period: TimeSpan) core.HResult!*ThreadPoolTimer {
        var _r: *ThreadPoolTimer = undefined;
        const _c = self.vtable.CreatePeriodicTimer(@ptrCast(self), handler, period, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTimer(self: *@This(), handler: *TimerElapsedHandler, delay: TimeSpan) core.HResult!*ThreadPoolTimer {
        var _r: *ThreadPoolTimer = undefined;
        const _c = self.vtable.CreateTimer(@ptrCast(self), handler, delay, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePeriodicTimer(self: *@This(), handler: *TimerElapsedHandler, period: TimeSpan, destroyed: *TimerDestroyedHandler) core.HResult!*ThreadPoolTimer {
        var _r: *ThreadPoolTimer = undefined;
        const _c = self.vtable.CreatePeriodicTimer(@ptrCast(self), handler, period, destroyed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTimer(self: *@This(), handler: *TimerElapsedHandler, delay: TimeSpan, destroyed: *TimerDestroyedHandler) core.HResult!*ThreadPoolTimer {
        var _r: *ThreadPoolTimer = undefined;
        const _c = self.vtable.CreateTimer(@ptrCast(self), handler, delay, destroyed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.IThreadPoolTimerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a8a9d02-e482-461b-b8c7-8efad1cce590";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePeriodicTimer: *const fn(self: *anyopaque, handler: *TimerElapsedHandler, period: TimeSpan, _r: **ThreadPoolTimer) callconv(.winapi) HRESULT,
        CreateTimer: *const fn(self: *anyopaque, handler: *TimerElapsedHandler, delay: TimeSpan, _r: **ThreadPoolTimer) callconv(.winapi) HRESULT,
        CreatePeriodicTimer: *const fn(self: *anyopaque, handler: *TimerElapsedHandler, period: TimeSpan, destroyed: *TimerDestroyedHandler, _r: **ThreadPoolTimer) callconv(.winapi) HRESULT,
        CreateTimer: *const fn(self: *anyopaque, handler: *TimerElapsedHandler, delay: TimeSpan, destroyed: *TimerDestroyedHandler, _r: **ThreadPoolTimer) callconv(.winapi) HRESULT,
    };
};
pub const ThreadPool = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RunAsync(handler: *WorkItemHandler) core.HResult!*IAsyncAction {
        const factory = @This().IThreadPoolStaticsCache.get();
        return try factory.RunAsync(handler);
    }
    pub fn RunAsync(handler: *WorkItemHandler, priority: WorkItemPriority) core.HResult!*IAsyncAction {
        const factory = @This().IThreadPoolStaticsCache.get();
        return try factory.RunAsync(handler, priority);
    }
    pub fn RunAsync(handler: *WorkItemHandler, priority: WorkItemPriority, options: WorkItemOptions) core.HResult!*IAsyncAction {
        const factory = @This().IThreadPoolStaticsCache.get();
        return try factory.RunAsync(handler, priority, options);
    }
    pub const NAME: []const u8 = "Windows.System.Threading.ThreadPool";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IThreadPoolStaticsCache: FactoryCache(IThreadPoolStatics, RUNTIME_NAME) = .{};
};
pub const ThreadPoolTimer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        const this: *IThreadPoolTimer = @ptrCast(self);
        return try this.getPeriod();
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IThreadPoolTimer = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        const this: *IThreadPoolTimer = @ptrCast(self);
        return try this.Cancel();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreatePeriodicTimer(handler: *TimerElapsedHandler, period: TimeSpan) core.HResult!*ThreadPoolTimer {
        const factory = @This().IThreadPoolTimerStaticsCache.get();
        return try factory.CreatePeriodicTimer(handler, period);
    }
    pub fn CreateTimer(handler: *TimerElapsedHandler, delay: TimeSpan) core.HResult!*ThreadPoolTimer {
        const factory = @This().IThreadPoolTimerStaticsCache.get();
        return try factory.CreateTimer(handler, delay);
    }
    pub fn CreatePeriodicTimer(handler: *TimerElapsedHandler, period: TimeSpan, destroyed: *TimerDestroyedHandler) core.HResult!*ThreadPoolTimer {
        const factory = @This().IThreadPoolTimerStaticsCache.get();
        return try factory.CreatePeriodicTimer(handler, period, destroyed);
    }
    pub fn CreateTimer(handler: *TimerElapsedHandler, delay: TimeSpan, destroyed: *TimerDestroyedHandler) core.HResult!*ThreadPoolTimer {
        const factory = @This().IThreadPoolTimerStaticsCache.get();
        return try factory.CreateTimer(handler, delay, destroyed);
    }
    pub const NAME: []const u8 = "Windows.System.Threading.ThreadPoolTimer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IThreadPoolTimer.GUID;
    pub const IID: Guid = IThreadPoolTimer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IThreadPoolTimer.SIGNATURE);
    var _IThreadPoolTimerStaticsCache: FactoryCache(IThreadPoolTimerStatics, RUNTIME_NAME) = .{};
};
pub const TimerDestroyedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, timer);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.TimerDestroyedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34ed19fa-8384-4eb9-8209-fb5094eeec35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TimerElapsedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, timer);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.TimerElapsedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faaea667-fbeb-49cb-adb2-71184c556e43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, timer: *ThreadPoolTimer) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WorkItemHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, operation: *IAsyncAction) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, operation: *IAsyncAction) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, operation: *IAsyncAction) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, operation);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.System.Threading.WorkItemHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d1a8b8b-fa66-414f-9cbd-b65fc99d17fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, operation: *IAsyncAction) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WorkItemOptions = enum(i32) {
    None = 0,
    TimeSliced = 1,
};
pub const WorkItemPriority = enum(i32) {
    Low = -1,
    Normal = 0,
    High = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAgileObject = @import("../root.zig").IAgileObject;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const HSTRING = @import("../root.zig").HSTRING;
pub const Core = @import("./Threading/Core.zig");
