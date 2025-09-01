pub const IInspectable = extern struct {
    vtable: *const VTable,

    pub fn GetIids(self: *@This(), count: *u32, iids: *[*]const Guid) HRESULT {
        return self.vtable.GetIids(@ptrCast(self), count, iids);
    }

    pub fn GetRuntimeClassName(self: *@This(), class_name: *HSTRING) HRESULT {
        return self.vtable.GetRuntimeClassName(@ptrCast(self), class_name);
    }

    pub fn GetTrustLevel(self: *@This(), trust_level: *TrustLevel) HRESULT {
        return self.vtable.GetTrustLevel(@ptrCast(self), trust_level);
    }

    pub const GUID: []const u8 = "af86e2e0-b12d-4c6a-9c5a-d7aa65101e90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = "cinterface(IInspectable)";

    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};

pub const IActivationFactory = extern struct {
    vtable: *const VTable,

    pub fn ActivateInstance(self: *@This(), iid: *const Guid) error{ E_NOINTERFACE }!*anyopaque {
        var inspectable: *IInspectable = undefined;
        if (self.vtable.ActivateInstance(self, &inspectable) != 0) {
            return error.E_NOINTERFACE;
        }

        var interface: ?*anyopaque = undefined;
        if (IUnknown.QueryInterface(@ptrCast(inspectable), iid, &interface) != 0 or interface == null) {
            return error.E_NOINTERFACE;
        }

        return interface.?;
    }

    pub const GUID: []const u8 = "00000035-0000-0000-c000-000000000046";
    pub const IID: Guid = Guid.initString(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ActivateInstance: *const fn (*IActivationFactory, **IInspectable) callconv(.c) HRESULT
    };
};

pub const AsyncActionCompletedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, asyncInfo: *IAsyncAction, asyncStatus: AsyncStatus) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, asyncInfo: *IAsyncAction, asyncStatus: AsyncStatus) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, asyncInfo: *IAsyncAction, asyncStatus: AsyncStatus) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, asyncInfo, asyncStatus);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Foundation.AsyncActionCompletedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, asyncInfo: *IAsyncAction, asyncStatus: AsyncStatus) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub fn AsyncActionProgressHandler(TProgress: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, tprogress: core.generic(TProgress)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, asyncInfo, progressInfo);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.AsyncActionProgressHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("6d844858-0cff-4590-ae89-95a5a5c8b4b8", &.{core.Signature.get(TProgress)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub fn AsyncActionWithProgressCompletedHandler(TProgress: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, tprogress: core.generic(TProgress)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), asyncStatus: AsyncStatus) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), asyncStatus: AsyncStatus) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), asyncStatus: AsyncStatus) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, asyncInfo, asyncStatus);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.AsyncActionWithProgressCompletedHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("9c029f91-cc84-44fd-ac26-0a6c4e555281", &.{core.Signature.get(TProgress)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, asyncInfo: *IAsyncActionWithProgress(TProgress), asyncStatus: AsyncStatus) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub fn AsyncOperationCompletedHandler(TResult: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, tresult: core.generic(TResult)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncOperation(TResult), asyncStatus: AsyncStatus) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncOperation(TResult), asyncStatus: AsyncStatus) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, asyncInfo: *IAsyncOperation(TResult), asyncStatus: AsyncStatus) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, asyncInfo, asyncStatus);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.AsyncOperationCompletedHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("fcdcf02c-e5d8-4478-915a-4d90b74b83a5", &.{core.Signature.get(TResult)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, asyncInfo: *IAsyncOperation(TResult), asyncStatus: AsyncStatus) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub fn AsyncOperationProgressHandler(TResult: type, TProgress: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, tresult: core.generic(TResult), tprogress: core.generic(TProgress)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, asyncInfo, progressInfo);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.AsyncOperationProgressHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("55690902-0aab-421a-8778-f8ce5026d758", &.{core.Signature.get(TResult),core.Signature.get(TProgress)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), progressInfo: core.generic(TProgress)) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub fn AsyncOperationWithProgressCompletedHandler(TResult: type, TProgress: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, tresult: core.generic(TResult), tprogress: core.generic(TProgress)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), asyncStatus: AsyncStatus) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), asyncStatus: AsyncStatus) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), asyncStatus: AsyncStatus) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, asyncInfo, asyncStatus);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.AsyncOperationWithProgressCompletedHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("e85df41d-6aa7-46e3-a8e2-f009d840c627", &.{core.Signature.get(TResult),core.Signature.get(TProgress)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, asyncInfo: *IAsyncOperationWithProgress(TResult,TProgress), asyncStatus: AsyncStatus) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub const AsyncStatus = enum(i32) {
    Canceled = 2,
    Completed = 1,
    Error = 3,
    Started = 0,
};
pub const DateTime = extern struct {
    UniversalTime: i64,
};
pub const Deferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(handler: *DeferralCompletedHandler) core.HResult!*Deferral {
        const _f = @This().IDeferralFactoryCache.get();
        return try _f.Create(handler);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Deferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeferral.GUID;
    pub const IID: Guid = IDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeferral.SIGNATURE);
    var _IDeferralFactoryCache: FactoryCache(IDeferralFactory, RUNTIME_NAME) = .{};
};
pub const DeferralCompletedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Foundation.DeferralCompletedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed32a372-f3c8-4faa-9cfb-470148da3888";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub fn EventHandler(T: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, t: core.generic(T)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, sender: *IInspectable, args: core.generic(T)) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, sender: *IInspectable, args: core.generic(T)) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, sender: *IInspectable, args: core.generic(T)) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, sender, args);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.EventHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("9de1c535-6ae1-11e0-84e1-18a905bcc53f", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, sender: *IInspectable, args: core.generic(T)) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub const EventRegistrationToken = extern struct {
    Value: i64,
};
pub const HResult = extern struct {
    Value: i32,
};
pub const IAsyncAction = extern struct {
    vtable: *const VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncActionCompletedHandler) core.HResult!void {
        const _c = self.vtable.put_Completed(@ptrCast(self), handler);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncActionCompletedHandler {
        var _r: *AsyncActionCompletedHandler = undefined;
        const _c = self.vtable.get_Completed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetResults(self: *@This()) core.HResult!void {
        const _c = self.vtable.GetResults(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IAsyncAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a648006-843a-4da9-865b-9d26e5dfad7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Completed: *const fn(self: *anyopaque, handler: *AsyncActionCompletedHandler) callconv(.winapi) HRESULT,
        get_Completed: *const fn(self: *anyopaque, _r: **AsyncActionCompletedHandler) callconv(.winapi) HRESULT,
        GetResults: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub fn IAsyncActionWithProgress(TProgress: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn putProgress(self: *@This(), handler: *AsyncActionProgressHandler(TProgress)) core.HResult!void {
            const _c = self.vtable.put_Progress(@ptrCast(self), handler);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn getProgress(self: *@This()) core.HResult!*AsyncActionProgressHandler(TProgress) {
        var _r: *AsyncActionProgressHandler(TProgress) = undefined;
            const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn putCompleted(self: *@This(), handler: *AsyncActionWithProgressCompletedHandler(TProgress)) core.HResult!void {
            const _c = self.vtable.put_Completed(@ptrCast(self), handler);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn getCompleted(self: *@This()) core.HResult!*AsyncActionWithProgressCompletedHandler(TProgress) {
        var _r: *AsyncActionWithProgressCompletedHandler(TProgress) = undefined;
            const _c = self.vtable.get_Completed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn GetResults(self: *@This()) core.HResult!void {
            const _c = self.vtable.GetResults(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub const NAME: []const u8 = "Windows.Foundation.IAsyncActionWithProgress";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("1f6db258-e803-48a1-9546-eb7353398884", &.{core.Signature.get(TProgress)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            put_Progress: *const fn(self: *anyopaque, handler: *AsyncActionProgressHandler(TProgress)) callconv(.winapi) HRESULT,
            get_Progress: *const fn(self: *anyopaque, _r: **AsyncActionProgressHandler(TProgress)) callconv(.winapi) HRESULT,
            put_Completed: *const fn(self: *anyopaque, handler: *AsyncActionWithProgressCompletedHandler(TProgress)) callconv(.winapi) HRESULT,
            get_Completed: *const fn(self: *anyopaque, _r: **AsyncActionWithProgressCompletedHandler(TProgress)) callconv(.winapi) HRESULT,
            GetResults: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        };
    };
}
pub const IAsyncInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var _r: AsyncStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IAsyncInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00000036-0000-0000-c000-000000000046";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AsyncStatus) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub fn IAsyncOperationWithProgress(TResult: type, TProgress: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn putProgress(self: *@This(), handler: *AsyncOperationProgressHandler(TResult,TProgress)) core.HResult!void {
            const _c = self.vtable.put_Progress(@ptrCast(self), handler);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn getProgress(self: *@This()) core.HResult!*AsyncOperationProgressHandler(TResult,TProgress) {
        var _r: *AsyncOperationProgressHandler(TResult,TProgress) = undefined;
            const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn putCompleted(self: *@This(), handler: *AsyncOperationWithProgressCompletedHandler(TResult,TProgress)) core.HResult!void {
            const _c = self.vtable.put_Completed(@ptrCast(self), handler);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationWithProgressCompletedHandler(TResult,TProgress) {
        var _r: *AsyncOperationWithProgressCompletedHandler(TResult,TProgress) = undefined;
            const _c = self.vtable.get_Completed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn GetResults(self: *@This()) core.HResult!core.generic(TResult) {
        var _r: core.generic(TResult) = undefined;
            const _c = self.vtable.GetResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.IAsyncOperationWithProgress";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("b5d036d7-e297-498f-ba60-0289e76e23dd", &.{core.Signature.get(TResult),core.Signature.get(TProgress)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            put_Progress: *const fn(self: *anyopaque, handler: *AsyncOperationProgressHandler(TResult,TProgress)) callconv(.winapi) HRESULT,
            get_Progress: *const fn(self: *anyopaque, _r: **AsyncOperationProgressHandler(TResult,TProgress)) callconv(.winapi) HRESULT,
            put_Completed: *const fn(self: *anyopaque, handler: *AsyncOperationWithProgressCompletedHandler(TResult,TProgress)) callconv(.winapi) HRESULT,
            get_Completed: *const fn(self: *anyopaque, _r: **AsyncOperationWithProgressCompletedHandler(TResult,TProgress)) callconv(.winapi) HRESULT,
            GetResults: *const fn(self: *anyopaque, _r: *core.generic(TResult)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IAsyncOperation(TResult: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn putCompleted(self: *@This(), handler: *AsyncOperationCompletedHandler(TResult)) core.HResult!void {
            const _c = self.vtable.put_Completed(@ptrCast(self), handler);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationCompletedHandler(TResult) {
        var _r: *AsyncOperationCompletedHandler(TResult) = undefined;
            const _c = self.vtable.get_Completed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn GetResults(self: *@This()) core.HResult!core.generic(TResult) {
        var _r: core.generic(TResult) = undefined;
            const _c = self.vtable.GetResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.IAsyncOperation";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("9fc2b0bb-e446-44e2-aa61-9cab8f636af2", &.{core.Signature.get(TResult)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            put_Completed: *const fn(self: *anyopaque, handler: *AsyncOperationCompletedHandler(TResult)) callconv(.winapi) HRESULT,
            get_Completed: *const fn(self: *anyopaque, _r: **AsyncOperationCompletedHandler(TResult)) callconv(.winapi) HRESULT,
            GetResults: *const fn(self: *anyopaque, _r: *core.generic(TResult)) callconv(.winapi) HRESULT,
        };
    };
}
pub const IClosable = extern struct {
    vtable: *const VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IClosable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30d5a829-7fa4-4026-83bb-d75bae4ea99e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6269732-3b7f-46a7-b40b-4fdca2a2c693";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDeferralFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), handler: *DeferralCompletedHandler) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.Create(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IDeferralFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65a1ecc5-3fb5-4832-8ca9-f061b281d13a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, handler: *DeferralCompletedHandler, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyValue = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!PropertyType {
        var _r: PropertyType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsNumericScalar(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNumericScalar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUInt8(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.GetUInt8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInt16(self: *@This()) core.HResult!i16 {
        var _r: i16 = undefined;
        const _c = self.vtable.GetInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUInt16(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.GetUInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInt32(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUInt32(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.GetUInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInt64(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.GetInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUInt64(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.GetUInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSingle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.GetSingle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDouble(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetDouble(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChar16(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.GetChar16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetBoolean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.GetGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDateTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.GetDateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTimeSpan(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.GetTimeSpan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.GetSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUInt8Array(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetUInt8Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInt16Array(self: *@This(), value: i16) core.HResult!void {
        const _c = self.vtable.GetInt16Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetUInt16Array(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.GetUInt16Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInt32Array(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.GetInt32Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetUInt32Array(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.GetUInt32Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInt64Array(self: *@This(), value: i64) core.HResult!void {
        const _c = self.vtable.GetInt64Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetUInt64Array(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.GetUInt64Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSingleArray(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.GetSingleArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDoubleArray(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.GetDoubleArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetChar16Array(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.GetChar16Array(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBooleanArray(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.GetBooleanArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetStringArray(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.GetStringArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInspectableArray(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.GetInspectableArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetGuidArray(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.GetGuidArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDateTimeArray(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.GetDateTimeArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetTimeSpanArray(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.GetTimeSpanArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPointArray(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.GetPointArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSizeArray(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.GetSizeArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetRectArray(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.GetRectArray(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IPropertyValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bd682dd-7554-40e9-9a9b-82654ede7e62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PropertyType) callconv(.winapi) HRESULT,
        get_IsNumericScalar: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetUInt8: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        GetInt16: *const fn(self: *anyopaque, _r: *i16) callconv(.winapi) HRESULT,
        GetUInt16: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        GetInt32: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetUInt32: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetInt64: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        GetUInt64: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        GetSingle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        GetDouble: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        GetChar16: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        GetBoolean: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetGuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        GetDateTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetTimeSpan: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        GetPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        GetSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        GetRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        GetUInt8Array: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        GetInt16Array: *const fn(self: *anyopaque, value: i16) callconv(.winapi) HRESULT,
        GetUInt16Array: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        GetInt32Array: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        GetUInt32Array: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        GetInt64Array: *const fn(self: *anyopaque, value: i64) callconv(.winapi) HRESULT,
        GetUInt64Array: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        GetSingleArray: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        GetDoubleArray: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        GetChar16Array: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        GetBooleanArray: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetStringArray: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetInspectableArray: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        GetGuidArray: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        GetDateTimeArray: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        GetTimeSpanArray: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        GetPointArray: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        GetSizeArray: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        GetRectArray: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyValueStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateEmpty(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateEmpty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt8(self: *@This(), value: u8) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt8(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInt16(self: *@This(), value: i16) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInt16(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt16(self: *@This(), value: u16) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt16(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInt32(self: *@This(), value: i32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInt32(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt32(self: *@This(), value: u32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt32(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInt64(self: *@This(), value: i64) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInt64(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt64(self: *@This(), value: u64) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt64(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSingle(self: *@This(), value: f32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateSingle(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDouble(self: *@This(), value: f64) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateDouble(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateChar16(self: *@This(), value: u16) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateChar16(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBoolean(self: *@This(), value: bool) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateBoolean(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateString(self: *@This(), value: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateString(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInspectable(self: *@This(), value: *IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInspectable(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateGuid(self: *@This(), value: *Guid) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateGuid(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTime(self: *@This(), value: DateTime) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateDateTime(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTimeSpan(self: *@This(), value: TimeSpan) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateTimeSpan(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePoint(self: *@This(), value: Point) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreatePoint(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSize(self: *@This(), value: Size) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateSize(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRect(self: *@This(), value: Rect) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateRect(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt8Array(self: *@This(), value: [*]u8) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt8Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInt16Array(self: *@This(), value: [*]i16) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInt16Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt16Array(self: *@This(), value: [*]u16) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt16Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInt32Array(self: *@This(), value: [*]i32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInt32Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt32Array(self: *@This(), value: [*]u32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt32Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInt64Array(self: *@This(), value: [*]i64) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInt64Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUInt64Array(self: *@This(), value: [*]u64) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateUInt64Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSingleArray(self: *@This(), value: [*]f32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateSingleArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDoubleArray(self: *@This(), value: [*]f64) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateDoubleArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateChar16Array(self: *@This(), value: [*]u16) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateChar16Array(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBooleanArray(self: *@This(), value: [*]bool) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateBooleanArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStringArray(self: *@This(), value: [*]HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateStringArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInspectableArray(self: *@This(), value: [*]IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateInspectableArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateGuidArray(self: *@This(), value: [*]Guid) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateGuidArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeArray(self: *@This(), value: [*]DateTime) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateDateTimeArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTimeSpanArray(self: *@This(), value: [*]TimeSpan) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateTimeSpanArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePointArray(self: *@This(), value: [*]Point) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreatePointArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSizeArray(self: *@This(), value: [*]Size) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateSizeArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRectArray(self: *@This(), value: [*]Rect) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateRectArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IPropertyValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "629bdbc8-d932-4ff4-96b9-8d96c5c1e858";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateEmpty: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt8: *const fn(self: *anyopaque, value: u8, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInt16: *const fn(self: *anyopaque, value: i16, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt16: *const fn(self: *anyopaque, value: u16, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInt32: *const fn(self: *anyopaque, value: i32, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt32: *const fn(self: *anyopaque, value: u32, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInt64: *const fn(self: *anyopaque, value: i64, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt64: *const fn(self: *anyopaque, value: u64, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateSingle: *const fn(self: *anyopaque, value: f32, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateDouble: *const fn(self: *anyopaque, value: f64, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateChar16: *const fn(self: *anyopaque, value: u16, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateBoolean: *const fn(self: *anyopaque, value: bool, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateString: *const fn(self: *anyopaque, value: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInspectable: *const fn(self: *anyopaque, value: *IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateGuid: *const fn(self: *anyopaque, value: *Guid, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateDateTime: *const fn(self: *anyopaque, value: DateTime, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateTimeSpan: *const fn(self: *anyopaque, value: TimeSpan, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreatePoint: *const fn(self: *anyopaque, value: Point, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateSize: *const fn(self: *anyopaque, value: Size, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateRect: *const fn(self: *anyopaque, value: Rect, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt8Array: *const fn(self: *anyopaque, value: [*]u8, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInt16Array: *const fn(self: *anyopaque, value: [*]i16, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt16Array: *const fn(self: *anyopaque, value: [*]u16, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInt32Array: *const fn(self: *anyopaque, value: [*]i32, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt32Array: *const fn(self: *anyopaque, value: [*]u32, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInt64Array: *const fn(self: *anyopaque, value: [*]i64, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateUInt64Array: *const fn(self: *anyopaque, value: [*]u64, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateSingleArray: *const fn(self: *anyopaque, value: [*]f32, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateDoubleArray: *const fn(self: *anyopaque, value: [*]f64, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateChar16Array: *const fn(self: *anyopaque, value: [*]u16, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateBooleanArray: *const fn(self: *anyopaque, value: [*]bool, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateStringArray: *const fn(self: *anyopaque, value: [*]HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateInspectableArray: *const fn(self: *anyopaque, value: [*]IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateGuidArray: *const fn(self: *anyopaque, value: [*]Guid, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateDateTimeArray: *const fn(self: *anyopaque, value: [*]DateTime, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateTimeSpanArray: *const fn(self: *anyopaque, value: [*]TimeSpan, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreatePointArray: *const fn(self: *anyopaque, value: [*]Point, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateSizeArray: *const fn(self: *anyopaque, value: [*]Size, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateRectArray: *const fn(self: *anyopaque, value: [*]Rect, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub fn IReferenceArray(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn getValue(self: *@This()) core.HResult![*]core.generic(T) {
        var _r: [*]core.generic(T) = undefined;
            const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.IReferenceArray";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("61c17707-2d65-11e0-9ae8-d48564015472", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            get_Value: *const fn(self: *anyopaque, _r: *[*]core.generic(T)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IReference(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn getValue(self: *@This()) core.HResult!core.generic(T) {
        var _r: core.generic(T) = undefined;
            const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.IReference";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("61c17706-2d65-11e0-9ae8-d48564015472", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            get_Value: *const fn(self: *anyopaque, _r: *core.generic(T)) callconv(.winapi) HRESULT,
        };
    };
}
pub const IStringable = extern struct {
    vtable: *const VTable,
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ToString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IStringable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96369f54-8eb6-48f0-abce-c1b211e627c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ToString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const Point = extern struct {
    X: f32,
    Y: f32,
};
pub const PropertyType = enum(i32) {
    Empty = 0,
    UInt8 = 1,
    Int16 = 2,
    UInt16 = 3,
    Int32 = 4,
    UInt32 = 5,
    Int64 = 6,
    UInt64 = 7,
    Single = 8,
    Double = 9,
    Char16 = 10,
    Boolean = 11,
    String = 12,
    Inspectable = 13,
    DateTime = 14,
    TimeSpan = 15,
    Guid = 16,
    Point = 17,
    Size = 18,
    Rect = 19,
    OtherType = 20,
    UInt8Array = 1025,
    Int16Array = 1026,
    UInt16Array = 1027,
    Int32Array = 1028,
    UInt32Array = 1029,
    Int64Array = 1030,
    UInt64Array = 1031,
    SingleArray = 1032,
    DoubleArray = 1033,
    Char16Array = 1034,
    BooleanArray = 1035,
    StringArray = 1036,
    InspectableArray = 1037,
    DateTimeArray = 1038,
    TimeSpanArray = 1039,
    GuidArray = 1040,
    PointArray = 1041,
    SizeArray = 1042,
    RectArray = 1043,
    OtherTypeArray = 1044,
};
pub const PropertyValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateEmpty() core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateEmpty();
    }
    pub fn CreateUInt8(value: u8) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt8(value);
    }
    pub fn CreateInt16(value: i16) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInt16(value);
    }
    pub fn CreateUInt16(value: u16) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt16(value);
    }
    pub fn CreateInt32(value: i32) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInt32(value);
    }
    pub fn CreateUInt32(value: u32) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt32(value);
    }
    pub fn CreateInt64(value: i64) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInt64(value);
    }
    pub fn CreateUInt64(value: u64) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt64(value);
    }
    pub fn CreateSingle(value: f32) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateSingle(value);
    }
    pub fn CreateDouble(value: f64) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateDouble(value);
    }
    pub fn CreateChar16(value: u16) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateChar16(value);
    }
    pub fn CreateBoolean(value: bool) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateBoolean(value);
    }
    pub fn CreateString(value: HSTRING) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateString(value);
    }
    pub fn CreateInspectable(value: *IInspectable) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInspectable(value);
    }
    pub fn CreateGuid(value: *Guid) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateGuid(value);
    }
    pub fn CreateDateTime(value: DateTime) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateDateTime(value);
    }
    pub fn CreateTimeSpan(value: TimeSpan) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateTimeSpan(value);
    }
    pub fn CreatePoint(value: Point) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreatePoint(value);
    }
    pub fn CreateSize(value: Size) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateSize(value);
    }
    pub fn CreateRect(value: Rect) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateRect(value);
    }
    pub fn CreateUInt8Array(value: [*]u8) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt8Array(value);
    }
    pub fn CreateInt16Array(value: [*]i16) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInt16Array(value);
    }
    pub fn CreateUInt16Array(value: [*]u16) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt16Array(value);
    }
    pub fn CreateInt32Array(value: [*]i32) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInt32Array(value);
    }
    pub fn CreateUInt32Array(value: [*]u32) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt32Array(value);
    }
    pub fn CreateInt64Array(value: [*]i64) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInt64Array(value);
    }
    pub fn CreateUInt64Array(value: [*]u64) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateUInt64Array(value);
    }
    pub fn CreateSingleArray(value: [*]f32) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateSingleArray(value);
    }
    pub fn CreateDoubleArray(value: [*]f64) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateDoubleArray(value);
    }
    pub fn CreateChar16Array(value: [*]u16) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateChar16Array(value);
    }
    pub fn CreateBooleanArray(value: [*]bool) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateBooleanArray(value);
    }
    pub fn CreateStringArray(value: [*]HSTRING) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateStringArray(value);
    }
    pub fn CreateInspectableArray(value: [*]IInspectable) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateInspectableArray(value);
    }
    pub fn CreateGuidArray(value: [*]Guid) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateGuidArray(value);
    }
    pub fn CreateDateTimeArray(value: [*]DateTime) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateDateTimeArray(value);
    }
    pub fn CreateTimeSpanArray(value: [*]TimeSpan) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateTimeSpanArray(value);
    }
    pub fn CreatePointArray(value: [*]Point) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreatePointArray(value);
    }
    pub fn CreateSizeArray(value: [*]Size) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateSizeArray(value);
    }
    pub fn CreateRectArray(value: [*]Rect) core.HResult!*IInspectable {
        const _f = @This().IPropertyValueStaticsCache.get();
        return try _f.CreateRectArray(value);
    }
    pub const NAME: []const u8 = "Windows.Foundation.PropertyValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPropertyValueStaticsCache: FactoryCache(IPropertyValueStatics, RUNTIME_NAME) = .{};
};
pub const Rect = extern struct {
    X: f32,
    Y: f32,
    Width: f32,
    Height: f32,
};
pub const Size = extern struct {
    Width: f32,
    Height: f32,
};
pub const TimeSpan = extern struct {
    Duration: i64,
};
pub fn TypedEventHandler(TSender: type, TResult: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, tsender: core.generic(TSender), tresult: core.generic(TResult)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, sender: core.generic(TSender), args: core.generic(TResult)) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, sender: core.generic(TSender), args: core.generic(TResult)) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, sender: core.generic(TSender), args: core.generic(TResult)) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, sender, args);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.TypedEventHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("9de1c534-6ae1-11e0-84e1-18a905bcc53f", &.{core.Signature.get(TSender),core.Signature.get(TResult)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, sender: core.generic(TSender), args: core.generic(TResult)) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub const GuidHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateNewGuid() core.HResult!*Guid {
        const _f = @This().IGuidHelperStaticsCache.get();
        return try _f.CreateNewGuid();
    }
    pub fn getEmpty() core.HResult!*Guid {
        const _f = @This().IGuidHelperStaticsCache.get();
        return try _f.getEmpty();
    }
    pub fn Equals(target: *Guid, value: *Guid) core.HResult!bool {
        const _f = @This().IGuidHelperStaticsCache.get();
        return try _f.Equals(target, value);
    }
    pub const NAME: []const u8 = "Windows.Foundation.GuidHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGuidHelperStaticsCache: FactoryCache(IGuidHelperStatics, RUNTIME_NAME) = .{};
};
pub const IGetActivationFactory = extern struct {
    vtable: *const VTable,
    pub fn GetActivationFactory(self: *@This(), activatableClassId: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetActivationFactory(@ptrCast(self), activatableClassId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IGetActivationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4edb8ee2-96dd-49a7-94f7-4607ddab8e3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetActivationFactory: *const fn(self: *anyopaque, activatableClassId: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IGuidHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateNewGuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.CreateNewGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmpty(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Empty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), target: *Guid, value: *Guid) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), target, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IGuidHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59c7966b-ae52-5283-ad7f-a1b9e9678add";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateNewGuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Empty: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, target: *Guid, value: *Guid, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryBuffer = extern struct {
    vtable: *const VTable,
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var _r: *IMemoryBufferReference = undefined;
        const _c = self.vtable.CreateReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IMemoryBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc4dd2a-245b-11e4-af98-689423260cf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateReference: *const fn(self: *anyopaque, _r: **IMemoryBufferReference) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryBufferFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), capacity: u32) core.HResult!*MemoryBuffer {
        var _r: *MemoryBuffer = undefined;
        const _c = self.vtable.Create(@ptrCast(self), capacity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IMemoryBufferFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc4dd2b-245b-11e4-af98-689423260cf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, capacity: u32, _r: **MemoryBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryBufferReference = extern struct {
    vtable: *const VTable,
    pub fn getCapacity(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Capacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(IMemoryBufferReference,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IMemoryBufferReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc4dd29-245b-11e4-af98-689423260cf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capacity: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(IMemoryBufferReference,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUriEscapeStatics = extern struct {
    vtable: *const VTable,
    pub fn UnescapeComponent(self: *@This(), toUnescape: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.UnescapeComponent(@ptrCast(self), toUnescape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EscapeComponent(self: *@This(), toEscape: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.EscapeComponent(@ptrCast(self), toEscape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IUriEscapeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1d432ba-c824-4452-a7fd-512bc3bbe9a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UnescapeComponent: *const fn(self: *anyopaque, toUnescape: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        EscapeComponent: *const fn(self: *anyopaque, toEscape: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUriRuntimeClass = extern struct {
    vtable: *const VTable,
    pub fn getAbsoluteUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AbsoluteUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Domain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtension(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Extension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFragment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Fragment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHost(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Host(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPassword(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Password(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuery(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Query(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryParsed(self: *@This()) core.HResult!*WwwFormUrlDecoder {
        var _r: *WwwFormUrlDecoder = undefined;
        const _c = self.vtable.get_QueryParsed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RawUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSchemeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SchemeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPort(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Port(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSuspicious(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Suspicious(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), pUri: *Uri) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), pUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CombineUri(self: *@This(), relativeUri: HSTRING) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.CombineUri(@ptrCast(self), relativeUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IUriRuntimeClass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e365e57-48b2-4160-956f-c7385120bbfc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbsoluteUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Domain: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Extension: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Fragment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Host: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Password: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Query: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_QueryParsed: *const fn(self: *anyopaque, _r: **WwwFormUrlDecoder) callconv(.winapi) HRESULT,
        get_RawUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SchemeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Port: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Suspicious: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, pUri: *Uri, _r: *bool) callconv(.winapi) HRESULT,
        CombineUri: *const fn(self: *anyopaque, relativeUri: HSTRING, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IUriRuntimeClassFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateUri(self: *@This(), uri: HSTRING) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.CreateUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithRelativeUri(self: *@This(), baseUri: HSTRING, relativeUri: HSTRING) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.CreateWithRelativeUri(@ptrCast(self), baseUri, relativeUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IUriRuntimeClassFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44a9796f-723e-4fdf-a218-033e75b0c084";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateUri: *const fn(self: *anyopaque, uri: HSTRING, _r: **Uri) callconv(.winapi) HRESULT,
        CreateWithRelativeUri: *const fn(self: *anyopaque, baseUri: HSTRING, relativeUri: HSTRING, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IUriRuntimeClassWithAbsoluteCanonicalUri = extern struct {
    vtable: *const VTable,
    pub fn getAbsoluteCanonicalUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AbsoluteCanonicalUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayIri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayIri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "758d9661-221c-480f-a339-50656673f46f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbsoluteCanonicalUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayIri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWwwFormUrlDecoderEntry = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IWwwFormUrlDecoderEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "125e7431-f678-4e8e-b670-20a9b06c512d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWwwFormUrlDecoderRuntimeClass = extern struct {
    vtable: *const VTable,
    pub fn GetFirstValueByName(self: *@This(), name: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetFirstValueByName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IWwwFormUrlDecoderRuntimeClass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d45a0451-f225-4542-9296-0e1df5d254df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFirstValueByName: *const fn(self: *anyopaque, name: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWwwFormUrlDecoderRuntimeClassFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWwwFormUrlDecoder(self: *@This(), query: HSTRING) core.HResult!*WwwFormUrlDecoder {
        var _r: *WwwFormUrlDecoder = undefined;
        const _c = self.vtable.CreateWwwFormUrlDecoder(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.IWwwFormUrlDecoderRuntimeClassFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b8c6b3d-24ae-41b5-a1bf-f0c3d544845b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWwwFormUrlDecoder: *const fn(self: *anyopaque, query: HSTRING, _r: **WwwFormUrlDecoder) callconv(.winapi) HRESULT,
    };
};
pub const MemoryBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        const this: *IMemoryBuffer = @ptrCast(self);
        return try this.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(capacity: u32) core.HResult!*MemoryBuffer {
        const _f = @This().IMemoryBufferFactoryCache.get();
        return try _f.Create(capacity);
    }
    pub const NAME: []const u8 = "Windows.Foundation.MemoryBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMemoryBuffer.GUID;
    pub const IID: Guid = IMemoryBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMemoryBuffer.SIGNATURE);
    var _IMemoryBufferFactoryCache: FactoryCache(IMemoryBufferFactory, RUNTIME_NAME) = .{};
};
pub const Uri = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAbsoluteUri(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getAbsoluteUri();
    }
    pub fn getDisplayUri(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getDisplayUri();
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getDomain();
    }
    pub fn getExtension(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getExtension();
    }
    pub fn getFragment(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getFragment();
    }
    pub fn getHost(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getHost();
    }
    pub fn getPassword(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getPassword();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getQuery(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getQuery();
    }
    pub fn getQueryParsed(self: *@This()) core.HResult!*WwwFormUrlDecoder {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getQueryParsed();
    }
    pub fn getRawUri(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getRawUri();
    }
    pub fn getSchemeName(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getSchemeName();
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn getPort(self: *@This()) core.HResult!i32 {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getPort();
    }
    pub fn getSuspicious(self: *@This()) core.HResult!bool {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.getSuspicious();
    }
    pub fn Equals(self: *@This(), pUri: *Uri) core.HResult!bool {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.Equals(pUri);
    }
    pub fn CombineUri(self: *@This(), relativeUri: HSTRING) core.HResult!*Uri {
        const this: *IUriRuntimeClass = @ptrCast(self);
        return try this.CombineUri(relativeUri);
    }
    pub fn getAbsoluteCanonicalUri(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUriRuntimeClassWithAbsoluteCanonicalUri = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUriRuntimeClassWithAbsoluteCanonicalUri.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAbsoluteCanonicalUri();
    }
    pub fn getDisplayIri(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUriRuntimeClassWithAbsoluteCanonicalUri = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUriRuntimeClassWithAbsoluteCanonicalUri.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayIri();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateUri(uri: HSTRING) core.HResult!*Uri {
        const _f = @This().IUriRuntimeClassFactoryCache.get();
        return try _f.CreateUri(uri);
    }
    pub fn CreateWithRelativeUri(baseUri: HSTRING, relativeUri: HSTRING) core.HResult!*Uri {
        const _f = @This().IUriRuntimeClassFactoryCache.get();
        return try _f.CreateWithRelativeUri(baseUri, relativeUri);
    }
    pub fn UnescapeComponent(toUnescape: HSTRING) core.HResult!HSTRING {
        const _f = @This().IUriEscapeStaticsCache.get();
        return try _f.UnescapeComponent(toUnescape);
    }
    pub fn EscapeComponent(toEscape: HSTRING) core.HResult!HSTRING {
        const _f = @This().IUriEscapeStaticsCache.get();
        return try _f.EscapeComponent(toEscape);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Uri";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUriRuntimeClass.GUID;
    pub const IID: Guid = IUriRuntimeClass.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUriRuntimeClass.SIGNATURE);
    var _IUriRuntimeClassFactoryCache: FactoryCache(IUriRuntimeClassFactory, RUNTIME_NAME) = .{};
    var _IUriEscapeStaticsCache: FactoryCache(IUriEscapeStatics, RUNTIME_NAME) = .{};
};
pub const WwwFormUrlDecoder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetFirstValueByName(self: *@This(), name: HSTRING) core.HResult!HSTRING {
        const this: *IWwwFormUrlDecoderRuntimeClass = @ptrCast(self);
        return try this.GetFirstValueByName(name);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IWwwFormUrlDecoderEntry) {
        var this: ?*IIterable(IWwwFormUrlDecoderEntry) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVectorView(IWwwFormUrlDecoderEntry) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWwwFormUrlDecoder(query: HSTRING) core.HResult!*WwwFormUrlDecoder {
        const _f = @This().IWwwFormUrlDecoderRuntimeClassFactoryCache.get();
        return try _f.CreateWwwFormUrlDecoder(query);
    }
    pub const NAME: []const u8 = "Windows.Foundation.WwwFormUrlDecoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWwwFormUrlDecoderRuntimeClass.GUID;
    pub const IID: Guid = IWwwFormUrlDecoderRuntimeClass.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWwwFormUrlDecoderRuntimeClass.SIGNATURE);
    var _IWwwFormUrlDecoderRuntimeClassFactoryCache: FactoryCache(IWwwFormUrlDecoderRuntimeClassFactory, RUNTIME_NAME) = .{};
};
pub const WwwFormUrlDecoderEntry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IWwwFormUrlDecoderEntry = @ptrCast(self);
        return try this.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IWwwFormUrlDecoderEntry = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Foundation.WwwFormUrlDecoderEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWwwFormUrlDecoderEntry.GUID;
    pub const IID: Guid = IWwwFormUrlDecoderEntry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWwwFormUrlDecoderEntry.SIGNATURE);
};
const IUnknown = @import("./root.zig").IUnknown;
const Guid = @import("./root.zig").Guid;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const FactoryCache = @import("./core.zig").FactoryCache;
const IIterator = @import("./Foundation/Collections.zig").IIterator;
const TrustLevel = @import("./root.zig").TrustLevel;
const HSTRING = @import("./root.zig").HSTRING;
const IIterable = @import("./Foundation/Collections.zig").IIterable;
const IAgileObject = @import("./root.zig").IAgileObject;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
pub const Collections = @import("./Foundation/Collections.zig");
pub const Diagnostics = @import("./Foundation/Diagnostics.zig");
pub const Metadata = @import("./Foundation/Metadata.zig");
pub const Numerics = @import("./Foundation/Numerics.zig");
