pub const CallControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IndicateNewIncomingCall(self: *@This(), enableRinger: bool, callerId: HSTRING) core.HResult!u64 {
        const this: *ICallControl = @ptrCast(self);
        return try this.IndicateNewIncomingCall(enableRinger, callerId);
    }
    pub fn IndicateNewOutgoingCall(self: *@This()) core.HResult!u64 {
        const this: *ICallControl = @ptrCast(self);
        return try this.IndicateNewOutgoingCall();
    }
    pub fn IndicateActiveCall(self: *@This(), callToken: u64) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.IndicateActiveCall(callToken);
    }
    pub fn EndCall(self: *@This(), callToken: u64) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.EndCall(callToken);
    }
    pub fn getHasRinger(self: *@This()) core.HResult!bool {
        const this: *ICallControl = @ptrCast(self);
        return try this.getHasRinger();
    }
    pub fn addAnswerRequested(self: *@This(), handler: *CallControlEventHandler) core.HResult!EventRegistrationToken {
        const this: *ICallControl = @ptrCast(self);
        return try this.addAnswerRequested(handler);
    }
    pub fn removeAnswerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.removeAnswerRequested(token);
    }
    pub fn addHangUpRequested(self: *@This(), handler: *CallControlEventHandler) core.HResult!EventRegistrationToken {
        const this: *ICallControl = @ptrCast(self);
        return try this.addHangUpRequested(handler);
    }
    pub fn removeHangUpRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.removeHangUpRequested(token);
    }
    pub fn addDialRequested(self: *@This(), handler: *DialRequestedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ICallControl = @ptrCast(self);
        return try this.addDialRequested(handler);
    }
    pub fn removeDialRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.removeDialRequested(token);
    }
    pub fn addRedialRequested(self: *@This(), handler: *RedialRequestedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ICallControl = @ptrCast(self);
        return try this.addRedialRequested(handler);
    }
    pub fn removeRedialRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.removeRedialRequested(token);
    }
    pub fn addKeypadPressed(self: *@This(), handler: *KeypadPressedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ICallControl = @ptrCast(self);
        return try this.addKeypadPressed(handler);
    }
    pub fn removeKeypadPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.removeKeypadPressed(token);
    }
    pub fn addAudioTransferRequested(self: *@This(), handler: *CallControlEventHandler) core.HResult!EventRegistrationToken {
        const this: *ICallControl = @ptrCast(self);
        return try this.addAudioTransferRequested(handler);
    }
    pub fn removeAudioTransferRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICallControl = @ptrCast(self);
        return try this.removeAudioTransferRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*CallControl {
        const factory = @This().ICallControlStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*CallControl {
        const factory = @This().ICallControlStaticsCache.get();
        return try factory.FromId(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.CallControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICallControl.GUID;
    pub const IID: Guid = ICallControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICallControl.SIGNATURE);
    var _ICallControlStaticsCache: FactoryCache(ICallControlStatics, RUNTIME_NAME) = .{};
};
pub const CallControlEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *CallControl) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *CallControl) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *CallControl) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.CallControlEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "596f759f-50df-4454-bc63-4d3d01b61958";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *CallControl) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DialRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Handled(self: *@This()) core.HResult!void {
        const this: *IDialRequestedEventArgs = @ptrCast(self);
        return try this.Handled();
    }
    pub fn getContact(self: *@This()) core.HResult!*IInspectable {
        const this: *IDialRequestedEventArgs = @ptrCast(self);
        return try this.getContact();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DialRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDialRequestedEventArgs.GUID;
    pub const IID: Guid = IDialRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDialRequestedEventArgs.SIGNATURE);
};
pub const DialRequestedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *CallControl, e: *DialRequestedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *CallControl, e: *DialRequestedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *CallControl, e: *DialRequestedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DialRequestedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5abbffdb-c21f-4bc4-891b-257e28c1b1a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *CallControl, e: *DialRequestedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ICallControl = extern struct {
    vtable: *const VTable,
    pub fn IndicateNewIncomingCall(self: *@This(), enableRinger: bool, callerId: HSTRING) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.IndicateNewIncomingCall(@ptrCast(self), enableRinger, callerId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IndicateNewOutgoingCall(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.IndicateNewOutgoingCall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IndicateActiveCall(self: *@This(), callToken: u64) core.HResult!void {
        const _c = self.vtable.IndicateActiveCall(@ptrCast(self), callToken);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EndCall(self: *@This(), callToken: u64) core.HResult!void {
        const _c = self.vtable.EndCall(@ptrCast(self), callToken);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHasRinger(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasRinger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAnswerRequested(self: *@This(), handler: *CallControlEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AnswerRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAnswerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AnswerRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHangUpRequested(self: *@This(), handler: *CallControlEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HangUpRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHangUpRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HangUpRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDialRequested(self: *@This(), handler: *DialRequestedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DialRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDialRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DialRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRedialRequested(self: *@This(), handler: *RedialRequestedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RedialRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRedialRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RedialRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeypadPressed(self: *@This(), handler: *KeypadPressedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeypadPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeypadPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeypadPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAudioTransferRequested(self: *@This(), handler: *CallControlEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioTransferRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioTransferRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioTransferRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ICallControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a520d0d6-ae8d-45db-8011-ca49d3b3e578";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IndicateNewIncomingCall: *const fn(self: *anyopaque, enableRinger: bool, callerId: HSTRING, _r: *u64) callconv(.winapi) HRESULT,
        IndicateNewOutgoingCall: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        IndicateActiveCall: *const fn(self: *anyopaque, callToken: u64) callconv(.winapi) HRESULT,
        EndCall: *const fn(self: *anyopaque, callToken: u64) callconv(.winapi) HRESULT,
        get_HasRinger: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_AnswerRequested: *const fn(self: *anyopaque, handler: *CallControlEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AnswerRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HangUpRequested: *const fn(self: *anyopaque, handler: *CallControlEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HangUpRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DialRequested: *const fn(self: *anyopaque, handler: *DialRequestedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DialRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RedialRequested: *const fn(self: *anyopaque, handler: *RedialRequestedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RedialRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeypadPressed: *const fn(self: *anyopaque, handler: *KeypadPressedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeypadPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AudioTransferRequested: *const fn(self: *anyopaque, handler: *CallControlEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioTransferRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICallControlStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*CallControl {
        var _r: *CallControl = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*CallControl {
        var _r: *CallControl = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ICallControlStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03945ad5-85ab-40e1-af19-56c94303b019";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **CallControl) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **CallControl) callconv(.winapi) HRESULT,
    };
};
pub const IDialRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn Handled(self: *@This()) core.HResult!void {
        const _c = self.vtable.Handled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContact(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IDialRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "037b929e-953c-4286-8866-4f0f376c855a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Handled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IKeypadPressedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTelephonyKey(self: *@This()) core.HResult!TelephonyKey {
        var _r: TelephonyKey = undefined;
        const _c = self.vtable.get_TelephonyKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IKeypadPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3a43900-b4fa-49cd-9442-89af6568f601";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TelephonyKey: *const fn(self: *anyopaque, _r: *TelephonyKey) callconv(.winapi) HRESULT,
    };
};
pub const IRedialRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn Handled(self: *@This()) core.HResult!void {
        const _c = self.vtable.Handled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IRedialRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7eb55209-76ab-4c31-b40e-4b58379d580c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Handled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const KeypadPressedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTelephonyKey(self: *@This()) core.HResult!TelephonyKey {
        const this: *IKeypadPressedEventArgs = @ptrCast(self);
        return try this.getTelephonyKey();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.KeypadPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeypadPressedEventArgs.GUID;
    pub const IID: Guid = IKeypadPressedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeypadPressedEventArgs.SIGNATURE);
};
pub const KeypadPressedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *CallControl, e: *KeypadPressedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *CallControl, e: *KeypadPressedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *CallControl, e: *KeypadPressedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.KeypadPressedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e637a454-c527-422c-8926-c9af83b559a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *CallControl, e: *KeypadPressedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RedialRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Handled(self: *@This()) core.HResult!void {
        const this: *IRedialRequestedEventArgs = @ptrCast(self);
        return try this.Handled();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.RedialRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRedialRequestedEventArgs.GUID;
    pub const IID: Guid = IRedialRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRedialRequestedEventArgs.SIGNATURE);
};
pub const RedialRequestedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *CallControl, e: *RedialRequestedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *CallControl, e: *RedialRequestedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *CallControl, e: *RedialRequestedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.RedialRequestedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "baf257d1-4ebd-4b84-9f47-6ec43d75d8b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *CallControl, e: *RedialRequestedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TelephonyKey = enum(i32) {
    D0 = 0,
    D1 = 1,
    D2 = 2,
    D3 = 3,
    D4 = 4,
    D5 = 5,
    D6 = 6,
    D7 = 7,
    D8 = 8,
    D9 = 9,
    Star = 10,
    Pound = 11,
    A = 12,
    B = 13,
    C = 14,
    D = 15,
};
pub const AdvancedPhotoCaptureSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!AdvancedPhotoMode {
        const this: *IAdvancedPhotoCaptureSettings = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: AdvancedPhotoMode) core.HResult!void {
        const this: *IAdvancedPhotoCaptureSettings = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAdvancedPhotoCaptureSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.AdvancedPhotoCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdvancedPhotoCaptureSettings.GUID;
    pub const IID: Guid = IAdvancedPhotoCaptureSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdvancedPhotoCaptureSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AdvancedPhotoControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IAdvancedPhotoControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(AdvancedPhotoMode) {
        const this: *IAdvancedPhotoControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getMode(self: *@This()) core.HResult!AdvancedPhotoMode {
        const this: *IAdvancedPhotoControl = @ptrCast(self);
        return try this.getMode();
    }
    pub fn Configure(self: *@This(), settings: *AdvancedPhotoCaptureSettings) core.HResult!void {
        const this: *IAdvancedPhotoControl = @ptrCast(self);
        return try this.Configure(settings);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.AdvancedPhotoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdvancedPhotoControl.GUID;
    pub const IID: Guid = IAdvancedPhotoControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdvancedPhotoControl.SIGNATURE);
};
pub const AdvancedPhotoMode = enum(i32) {
    Auto = 0,
    Standard = 1,
    Hdr = 2,
    LowLight = 3,
};
pub const AudioDeviceController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putMuted(self: *@This(), value: bool) core.HResult!void {
        const this: *IAudioDeviceController = @ptrCast(self);
        return try this.putMuted(value);
    }
    pub fn getMuted(self: *@This()) core.HResult!bool {
        const this: *IAudioDeviceController = @ptrCast(self);
        return try this.getMuted();
    }
    pub fn putVolumePercent(self: *@This(), value: f32) core.HResult!void {
        const this: *IAudioDeviceController = @ptrCast(self);
        return try this.putVolumePercent(value);
    }
    pub fn getVolumePercent(self: *@This()) core.HResult!f32 {
        const this: *IAudioDeviceController = @ptrCast(self);
        return try this.getVolumePercent();
    }
    pub fn GetAvailableMediaStreamProperties(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IVectorView(IMediaEncodingProperties) {
        var this: ?*IMediaDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAvailableMediaStreamProperties(mediaStreamType);
    }
    pub fn GetMediaStreamProperties(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IMediaEncodingProperties {
        var this: ?*IMediaDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMediaStreamProperties(mediaStreamType);
    }
    pub fn SetMediaStreamPropertiesAsync(self: *@This(), mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties) core.HResult!*IAsyncAction {
        var this: ?*IMediaDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetMediaStreamPropertiesAsync(mediaStreamType, mediaEncodingProperties);
    }
    pub fn getAudioCaptureEffectsManager(self: *@This()) core.HResult!*AudioCaptureEffectsManager {
        var this: ?*IAudioDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioCaptureEffectsManager();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.AudioDeviceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioDeviceController.GUID;
    pub const IID: Guid = IAudioDeviceController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioDeviceController.SIGNATURE);
};
pub const AudioDeviceModule = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IAudioDeviceModule = @ptrCast(self);
        return try this.getClassId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAudioDeviceModule = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getInstanceId(self: *@This()) core.HResult!u32 {
        const this: *IAudioDeviceModule = @ptrCast(self);
        return try this.getInstanceId();
    }
    pub fn getMajorVersion(self: *@This()) core.HResult!u32 {
        const this: *IAudioDeviceModule = @ptrCast(self);
        return try this.getMajorVersion();
    }
    pub fn getMinorVersion(self: *@This()) core.HResult!u32 {
        const this: *IAudioDeviceModule = @ptrCast(self);
        return try this.getMinorVersion();
    }
    pub fn SendCommandAsync(self: *@This(), Command: *IBuffer) core.HResult!*IAsyncOperation(ModuleCommandResult) {
        const this: *IAudioDeviceModule = @ptrCast(self);
        return try this.SendCommandAsync(Command);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.AudioDeviceModule";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioDeviceModule.GUID;
    pub const IID: Guid = IAudioDeviceModule.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioDeviceModule.SIGNATURE);
};
pub const AudioDeviceModuleNotificationEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getModule(self: *@This()) core.HResult!*AudioDeviceModule {
        const this: *IAudioDeviceModuleNotificationEventArgs = @ptrCast(self);
        return try this.getModule();
    }
    pub fn getNotificationData(self: *@This()) core.HResult!*IBuffer {
        const this: *IAudioDeviceModuleNotificationEventArgs = @ptrCast(self);
        return try this.getNotificationData();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.AudioDeviceModuleNotificationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioDeviceModuleNotificationEventArgs.GUID;
    pub const IID: Guid = IAudioDeviceModuleNotificationEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioDeviceModuleNotificationEventArgs.SIGNATURE);
};
pub const AudioDeviceModulesManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addModuleNotificationReceived(self: *@This(), handler: *TypedEventHandler(AudioDeviceModulesManager,AudioDeviceModuleNotificationEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAudioDeviceModulesManager = @ptrCast(self);
        return try this.addModuleNotificationReceived(handler);
    }
    pub fn removeModuleNotificationReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAudioDeviceModulesManager = @ptrCast(self);
        return try this.removeModuleNotificationReceived(token);
    }
    pub fn FindAllById(self: *@This(), moduleId: HSTRING) core.HResult!*IVectorView(AudioDeviceModule) {
        const this: *IAudioDeviceModulesManager = @ptrCast(self);
        return try this.FindAllById(moduleId);
    }
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(AudioDeviceModule) {
        const this: *IAudioDeviceModulesManager = @ptrCast(self);
        return try this.FindAll();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(deviceId: HSTRING) core.HResult!*AudioDeviceModulesManager {
        const factory = @This().IAudioDeviceModulesManagerFactoryCache.get();
        return try factory.Create(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.AudioDeviceModulesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioDeviceModulesManager.GUID;
    pub const IID: Guid = IAudioDeviceModulesManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioDeviceModulesManager.SIGNATURE);
    var _IAudioDeviceModulesManagerFactoryCache: FactoryCache(IAudioDeviceModulesManagerFactory, RUNTIME_NAME) = .{};
};
pub const AudioDeviceRole = enum(i32) {
    Default = 0,
    Communications = 1,
};
pub const AutoFocusRange = enum(i32) {
    FullRange = 0,
    Macro = 1,
    Normal = 2,
};
pub const CameraOcclusionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetState(self: *@This()) core.HResult!*CameraOcclusionState {
        const this: *ICameraOcclusionInfo = @ptrCast(self);
        return try this.GetState();
    }
    pub fn IsOcclusionKindSupported(self: *@This(), occlusionKind: CameraOcclusionKind) core.HResult!bool {
        const this: *ICameraOcclusionInfo = @ptrCast(self);
        return try this.IsOcclusionKindSupported(occlusionKind);
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(CameraOcclusionInfo,CameraOcclusionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICameraOcclusionInfo = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICameraOcclusionInfo = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.CameraOcclusionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraOcclusionInfo.GUID;
    pub const IID: Guid = ICameraOcclusionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraOcclusionInfo.SIGNATURE);
};
pub const CameraOcclusionKind = enum(i32) {
    Lid = 0,
    CameraHardware = 1,
};
pub const CameraOcclusionState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsOccluded(self: *@This()) core.HResult!bool {
        const this: *ICameraOcclusionState = @ptrCast(self);
        return try this.getIsOccluded();
    }
    pub fn IsOcclusionKind(self: *@This(), occlusionKind: CameraOcclusionKind) core.HResult!bool {
        const this: *ICameraOcclusionState = @ptrCast(self);
        return try this.IsOcclusionKind(occlusionKind);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.CameraOcclusionState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraOcclusionState.GUID;
    pub const IID: Guid = ICameraOcclusionState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraOcclusionState.SIGNATURE);
};
pub const CameraOcclusionStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!*CameraOcclusionState {
        const this: *ICameraOcclusionStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.CameraOcclusionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraOcclusionStateChangedEventArgs.GUID;
    pub const IID: Guid = ICameraOcclusionStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraOcclusionStateChangedEventArgs.SIGNATURE);
};
pub const CameraStreamState = enum(i32) {
    NotStreaming = 0,
    Streaming = 1,
    BlockedForPrivacy = 2,
    Shutdown = 3,
};
pub const CaptureSceneMode = enum(i32) {
    Auto = 0,
    Manual = 1,
    Macro = 2,
    Portrait = 3,
    Sport = 4,
    Snow = 5,
    Night = 6,
    Beach = 7,
    Sunset = 8,
    Candlelight = 9,
    Landscape = 10,
    NightPortrait = 11,
    Backlit = 12,
};
pub const CaptureUse = enum(i32) {
    None = 0,
    Photo = 1,
    Video = 2,
};
pub const ColorTemperaturePreset = enum(i32) {
    Auto = 0,
    Manual = 1,
    Cloudy = 2,
    Daylight = 3,
    Flash = 4,
    Fluorescent = 5,
    Tungsten = 6,
    Candlelight = 7,
};
pub const DefaultAudioCaptureDeviceChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDefaultAudioDeviceChangedEventArgs = @ptrCast(self);
        return try this.getId();
    }
    pub fn getRole(self: *@This()) core.HResult!AudioDeviceRole {
        const this: *IDefaultAudioDeviceChangedEventArgs = @ptrCast(self);
        return try this.getRole();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DefaultAudioCaptureDeviceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDefaultAudioDeviceChangedEventArgs.GUID;
    pub const IID: Guid = IDefaultAudioDeviceChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDefaultAudioDeviceChangedEventArgs.SIGNATURE);
};
pub const DefaultAudioRenderDeviceChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDefaultAudioDeviceChangedEventArgs = @ptrCast(self);
        return try this.getId();
    }
    pub fn getRole(self: *@This()) core.HResult!AudioDeviceRole {
        const this: *IDefaultAudioDeviceChangedEventArgs = @ptrCast(self);
        return try this.getRole();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DefaultAudioRenderDeviceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDefaultAudioDeviceChangedEventArgs.GUID;
    pub const IID: Guid = IDefaultAudioDeviceChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDefaultAudioDeviceChangedEventArgs.SIGNATURE);
};
pub const DigitalWindowBounds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNormalizedOriginTop(self: *@This()) core.HResult!f64 {
        const this: *IDigitalWindowBounds = @ptrCast(self);
        return try this.getNormalizedOriginTop();
    }
    pub fn putNormalizedOriginTop(self: *@This(), value: f64) core.HResult!void {
        const this: *IDigitalWindowBounds = @ptrCast(self);
        return try this.putNormalizedOriginTop(value);
    }
    pub fn getNormalizedOriginLeft(self: *@This()) core.HResult!f64 {
        const this: *IDigitalWindowBounds = @ptrCast(self);
        return try this.getNormalizedOriginLeft();
    }
    pub fn putNormalizedOriginLeft(self: *@This(), value: f64) core.HResult!void {
        const this: *IDigitalWindowBounds = @ptrCast(self);
        return try this.putNormalizedOriginLeft(value);
    }
    pub fn getScale(self: *@This()) core.HResult!f64 {
        const this: *IDigitalWindowBounds = @ptrCast(self);
        return try this.getScale();
    }
    pub fn putScale(self: *@This(), value: f64) core.HResult!void {
        const this: *IDigitalWindowBounds = @ptrCast(self);
        return try this.putScale(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDigitalWindowBounds.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DigitalWindowBounds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDigitalWindowBounds.GUID;
    pub const IID: Guid = IDigitalWindowBounds.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDigitalWindowBounds.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DigitalWindowCapability = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWidth(self: *@This()) core.HResult!i32 {
        const this: *IDigitalWindowCapability = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!i32 {
        const this: *IDigitalWindowCapability = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getMinScaleValue(self: *@This()) core.HResult!f64 {
        const this: *IDigitalWindowCapability = @ptrCast(self);
        return try this.getMinScaleValue();
    }
    pub fn getMaxScaleValue(self: *@This()) core.HResult!f64 {
        const this: *IDigitalWindowCapability = @ptrCast(self);
        return try this.getMaxScaleValue();
    }
    pub fn getMinScaleValueWithoutUpsampling(self: *@This()) core.HResult!f64 {
        const this: *IDigitalWindowCapability = @ptrCast(self);
        return try this.getMinScaleValueWithoutUpsampling();
    }
    pub fn getNormalizedFieldOfViewLimit(self: *@This()) core.HResult!Rect {
        const this: *IDigitalWindowCapability = @ptrCast(self);
        return try this.getNormalizedFieldOfViewLimit();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DigitalWindowCapability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDigitalWindowCapability.GUID;
    pub const IID: Guid = IDigitalWindowCapability.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDigitalWindowCapability.SIGNATURE);
};
pub const DigitalWindowControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.getIsSupported();
    }
    pub fn getSupportedModes(self: *@This()) core.HResult![*]DigitalWindowMode {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getCurrentMode(self: *@This()) core.HResult!DigitalWindowMode {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.getCurrentMode();
    }
    pub fn GetBounds(self: *@This()) core.HResult!*DigitalWindowBounds {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.GetBounds();
    }
    pub fn Configure(self: *@This(), digitalWindowMode: DigitalWindowMode) core.HResult!void {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.Configure(digitalWindowMode);
    }
    pub fn ConfigureWithDigitalWindowBounds(self: *@This(), digitalWindowMode: DigitalWindowMode, digitalWindowBounds: *DigitalWindowBounds) core.HResult!void {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.ConfigureWithDigitalWindowBounds(digitalWindowMode, digitalWindowBounds);
    }
    pub fn getSupportedCapabilities(self: *@This()) core.HResult!*IVectorView(DigitalWindowCapability) {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.getSupportedCapabilities();
    }
    pub fn GetCapabilityForSize(self: *@This(), width: i32, height: i32) core.HResult!*DigitalWindowCapability {
        const this: *IDigitalWindowControl = @ptrCast(self);
        return try this.GetCapabilityForSize(width, height);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.DigitalWindowControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDigitalWindowControl.GUID;
    pub const IID: Guid = IDigitalWindowControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDigitalWindowControl.SIGNATURE);
};
pub const DigitalWindowMode = enum(i32) {
    Off = 0,
    On = 1,
    Auto = 2,
};
pub const ExposureCompensationControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IExposureCompensationControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!f32 {
        const this: *IExposureCompensationControl = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!f32 {
        const this: *IExposureCompensationControl = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!f32 {
        const this: *IExposureCompensationControl = @ptrCast(self);
        return try this.getStep();
    }
    pub fn getValue(self: *@This()) core.HResult!f32 {
        const this: *IExposureCompensationControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn SetValueAsync(self: *@This(), value: f32) core.HResult!*IAsyncAction {
        const this: *IExposureCompensationControl = @ptrCast(self);
        return try this.SetValueAsync(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ExposureCompensationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExposureCompensationControl.GUID;
    pub const IID: Guid = IExposureCompensationControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExposureCompensationControl.SIGNATURE);
};
pub const ExposureControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IExposureControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        const this: *IExposureControl = @ptrCast(self);
        return try this.getAuto();
    }
    pub fn SetAutoAsync(self: *@This(), value: bool) core.HResult!*IAsyncAction {
        const this: *IExposureControl = @ptrCast(self);
        return try this.SetAutoAsync(value);
    }
    pub fn getMin(self: *@This()) core.HResult!TimeSpan {
        const this: *IExposureControl = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!TimeSpan {
        const this: *IExposureControl = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!TimeSpan {
        const this: *IExposureControl = @ptrCast(self);
        return try this.getStep();
    }
    pub fn getValue(self: *@This()) core.HResult!TimeSpan {
        const this: *IExposureControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn SetValueAsync(self: *@This(), shutterDuration: TimeSpan) core.HResult!*IAsyncAction {
        const this: *IExposureControl = @ptrCast(self);
        return try this.SetValueAsync(shutterDuration);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ExposureControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExposureControl.GUID;
    pub const IID: Guid = IExposureControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExposureControl.SIGNATURE);
};
pub const ExposurePriorityVideoControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IExposurePriorityVideoControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IExposurePriorityVideoControl = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IExposurePriorityVideoControl = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ExposurePriorityVideoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExposurePriorityVideoControl.GUID;
    pub const IID: Guid = IExposurePriorityVideoControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExposurePriorityVideoControl.SIGNATURE);
};
pub const FlashControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getPowerSupported(self: *@This()) core.HResult!bool {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getPowerSupported();
    }
    pub fn getRedEyeReductionSupported(self: *@This()) core.HResult!bool {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getRedEyeReductionSupported();
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IFlashControl = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getAuto();
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const this: *IFlashControl = @ptrCast(self);
        return try this.putAuto(value);
    }
    pub fn getRedEyeReduction(self: *@This()) core.HResult!bool {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getRedEyeReduction();
    }
    pub fn putRedEyeReduction(self: *@This(), value: bool) core.HResult!void {
        const this: *IFlashControl = @ptrCast(self);
        return try this.putRedEyeReduction(value);
    }
    pub fn getPowerPercent(self: *@This()) core.HResult!f32 {
        const this: *IFlashControl = @ptrCast(self);
        return try this.getPowerPercent();
    }
    pub fn putPowerPercent(self: *@This(), value: f32) core.HResult!void {
        const this: *IFlashControl = @ptrCast(self);
        return try this.putPowerPercent(value);
    }
    pub fn getAssistantLightSupported(self: *@This()) core.HResult!bool {
        var this: ?*IFlashControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlashControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAssistantLightSupported();
    }
    pub fn getAssistantLightEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IFlashControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlashControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAssistantLightEnabled();
    }
    pub fn putAssistantLightEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFlashControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlashControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAssistantLightEnabled(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.FlashControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlashControl.GUID;
    pub const IID: Guid = IFlashControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlashControl.SIGNATURE);
};
pub const FocusControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getSupportedPresets(self: *@This()) core.HResult!*IVectorView(FocusPreset) {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getSupportedPresets();
    }
    pub fn getPreset(self: *@This()) core.HResult!FocusPreset {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getPreset();
    }
    pub fn SetPresetAsync(self: *@This(), preset: FocusPreset) core.HResult!*IAsyncAction {
        const this: *IFocusControl = @ptrCast(self);
        return try this.SetPresetAsync(preset);
    }
    pub fn SetPresetAsyncWithCompleteBeforeFocus(self: *@This(), preset: FocusPreset, completeBeforeFocus: bool) core.HResult!*IAsyncAction {
        const this: *IFocusControl = @ptrCast(self);
        return try this.SetPresetAsyncWithCompleteBeforeFocus(preset, completeBeforeFocus);
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getStep();
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        const this: *IFocusControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn SetValueAsync(self: *@This(), focus: u32) core.HResult!*IAsyncAction {
        const this: *IFocusControl = @ptrCast(self);
        return try this.SetValueAsync(focus);
    }
    pub fn FocusAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IFocusControl = @ptrCast(self);
        return try this.FocusAsync();
    }
    pub fn getFocusChangedSupported(self: *@This()) core.HResult!bool {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusChangedSupported();
    }
    pub fn getWaitForFocusSupported(self: *@This()) core.HResult!bool {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWaitForFocusSupported();
    }
    pub fn getSupportedFocusModes(self: *@This()) core.HResult!*IVectorView(FocusMode) {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedFocusModes();
    }
    pub fn getSupportedFocusDistances(self: *@This()) core.HResult!*IVectorView(ManualFocusDistance) {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedFocusDistances();
    }
    pub fn getSupportedFocusRanges(self: *@This()) core.HResult!*IVectorView(AutoFocusRange) {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedFocusRanges();
    }
    pub fn getMode(self: *@This()) core.HResult!FocusMode {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMode();
    }
    pub fn getFocusState(self: *@This()) core.HResult!MediaCaptureFocusState {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusState();
    }
    pub fn UnlockAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UnlockAsync();
    }
    pub fn LockAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LockAsync();
    }
    pub fn Configure(self: *@This(), settings: *FocusSettings) core.HResult!void {
        var this: ?*IFocusControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFocusControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Configure(settings);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.FocusControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusControl.GUID;
    pub const IID: Guid = IFocusControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusControl.SIGNATURE);
};
pub const FocusMode = enum(i32) {
    Auto = 0,
    Single = 1,
    Continuous = 2,
    Manual = 3,
};
pub const FocusPreset = enum(i32) {
    Auto = 0,
    Manual = 1,
    AutoMacro = 2,
    AutoNormal = 3,
    AutoInfinity = 4,
    AutoHyperfocal = 5,
};
pub const FocusSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!FocusMode {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: FocusMode) core.HResult!void {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getAutoFocusRange(self: *@This()) core.HResult!AutoFocusRange {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.getAutoFocusRange();
    }
    pub fn putAutoFocusRange(self: *@This(), value: AutoFocusRange) core.HResult!void {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.putAutoFocusRange(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getDistance(self: *@This()) core.HResult!*IReference(ManualFocusDistance) {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.getDistance();
    }
    pub fn putDistance(self: *@This(), value: *IReference(ManualFocusDistance)) core.HResult!void {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.putDistance(value);
    }
    pub fn getWaitForFocus(self: *@This()) core.HResult!bool {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.getWaitForFocus();
    }
    pub fn putWaitForFocus(self: *@This(), value: bool) core.HResult!void {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.putWaitForFocus(value);
    }
    pub fn getDisableDriverFallback(self: *@This()) core.HResult!bool {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.getDisableDriverFallback();
    }
    pub fn putDisableDriverFallback(self: *@This(), value: bool) core.HResult!void {
        const this: *IFocusSettings = @ptrCast(self);
        return try this.putDisableDriverFallback(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFocusSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.FocusSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusSettings.GUID;
    pub const IID: Guid = IFocusSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const HdrVideoControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IHdrVideoControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(HdrVideoMode) {
        const this: *IHdrVideoControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getMode(self: *@This()) core.HResult!HdrVideoMode {
        const this: *IHdrVideoControl = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: HdrVideoMode) core.HResult!void {
        const this: *IHdrVideoControl = @ptrCast(self);
        return try this.putMode(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.HdrVideoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHdrVideoControl.GUID;
    pub const IID: Guid = IHdrVideoControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHdrVideoControl.SIGNATURE);
};
pub const HdrVideoMode = enum(i32) {
    Off = 0,
    On = 1,
    Auto = 2,
};
pub const IAdvancedPhotoCaptureSettings = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!AdvancedPhotoMode {
        var _r: AdvancedPhotoMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: AdvancedPhotoMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedPhotoCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08f3863a-0018-445b-93d2-646d1c5ed05c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *AdvancedPhotoMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: AdvancedPhotoMode) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedPhotoControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(AdvancedPhotoMode) {
        var _r: *IVectorView(AdvancedPhotoMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!AdvancedPhotoMode {
        var _r: AdvancedPhotoMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Configure(self: *@This(), settings: *AdvancedPhotoCaptureSettings) core.HResult!void {
        const _c = self.vtable.Configure(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedPhotoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5b15486-9001-4682-9309-68eae0080eec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(AdvancedPhotoMode)) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *AdvancedPhotoMode) callconv(.winapi) HRESULT,
        Configure: *const fn(self: *anyopaque, settings: *AdvancedPhotoCaptureSettings) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController = extern struct {
    vtable: *const VTable,
    pub fn SetDeviceProperty(self: *@This(), propertyId: HSTRING, propertyValue: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetDeviceProperty(@ptrCast(self), propertyId, propertyValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeviceProperty(self: *@This(), propertyId: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetDeviceProperty(@ptrCast(self), propertyId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de6ff4d3-2b96-4583-80ab-b5b01dc6a8d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetDeviceProperty: *const fn(self: *anyopaque, propertyId: HSTRING, propertyValue: *IInspectable) callconv(.winapi) HRESULT,
        GetDeviceProperty: *const fn(self: *anyopaque, propertyId: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController10 = extern struct {
    vtable: *const VTable,
    pub fn getCameraOcclusionInfo(self: *@This()) core.HResult!*CameraOcclusionInfo {
        var _r: *CameraOcclusionInfo = undefined;
        const _c = self.vtable.get_CameraOcclusionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController10";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c621b82d-d6f0-5c1b-a388-a6e938407146";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CameraOcclusionInfo: *const fn(self: *anyopaque, _r: **CameraOcclusionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController11 = extern struct {
    vtable: *const VTable,
    pub fn TryAcquireExclusiveControl(self: *@This(), deviceId: HSTRING, mode: MediaCaptureDeviceExclusiveControlReleaseMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryAcquireExclusiveControl(@ptrCast(self), deviceId, mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController11";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5b65ae2-3772-580c-a630-e75de9106904";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryAcquireExclusiveControl: *const fn(self: *anyopaque, deviceId: HSTRING, mode: MediaCaptureDeviceExclusiveControlReleaseMode, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController2 = extern struct {
    vtable: *const VTable,
    pub fn getLowLagPhotoSequence(self: *@This()) core.HResult!*LowLagPhotoSequenceControl {
        var _r: *LowLagPhotoSequenceControl = undefined;
        const _c = self.vtable.get_LowLagPhotoSequence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLowLagPhoto(self: *@This()) core.HResult!*LowLagPhotoControl {
        var _r: *LowLagPhotoControl = undefined;
        const _c = self.vtable.get_LowLagPhoto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSceneModeControl(self: *@This()) core.HResult!*SceneModeControl {
        var _r: *SceneModeControl = undefined;
        const _c = self.vtable.get_SceneModeControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTorchControl(self: *@This()) core.HResult!*TorchControl {
        var _r: *TorchControl = undefined;
        const _c = self.vtable.get_TorchControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlashControl(self: *@This()) core.HResult!*FlashControl {
        var _r: *FlashControl = undefined;
        const _c = self.vtable.get_FlashControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhiteBalanceControl(self: *@This()) core.HResult!*WhiteBalanceControl {
        var _r: *WhiteBalanceControl = undefined;
        const _c = self.vtable.get_WhiteBalanceControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureControl(self: *@This()) core.HResult!*ExposureControl {
        var _r: *ExposureControl = undefined;
        const _c = self.vtable.get_ExposureControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusControl(self: *@This()) core.HResult!*FocusControl {
        var _r: *FocusControl = undefined;
        const _c = self.vtable.get_FocusControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureCompensationControl(self: *@This()) core.HResult!*ExposureCompensationControl {
        var _r: *ExposureCompensationControl = undefined;
        const _c = self.vtable.get_ExposureCompensationControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsoSpeedControl(self: *@This()) core.HResult!*IsoSpeedControl {
        var _r: *IsoSpeedControl = undefined;
        const _c = self.vtable.get_IsoSpeedControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegionsOfInterestControl(self: *@This()) core.HResult!*RegionsOfInterestControl {
        var _r: *RegionsOfInterestControl = undefined;
        const _c = self.vtable.get_RegionsOfInterestControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimaryUse(self: *@This()) core.HResult!CaptureUse {
        var _r: CaptureUse = undefined;
        const _c = self.vtable.get_PrimaryUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrimaryUse(self: *@This(), value: CaptureUse) core.HResult!void {
        const _c = self.vtable.put_PrimaryUse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bb94f8f-f11a-43db-b402-11930b80ae56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LowLagPhotoSequence: *const fn(self: *anyopaque, _r: **LowLagPhotoSequenceControl) callconv(.winapi) HRESULT,
        get_LowLagPhoto: *const fn(self: *anyopaque, _r: **LowLagPhotoControl) callconv(.winapi) HRESULT,
        get_SceneModeControl: *const fn(self: *anyopaque, _r: **SceneModeControl) callconv(.winapi) HRESULT,
        get_TorchControl: *const fn(self: *anyopaque, _r: **TorchControl) callconv(.winapi) HRESULT,
        get_FlashControl: *const fn(self: *anyopaque, _r: **FlashControl) callconv(.winapi) HRESULT,
        get_WhiteBalanceControl: *const fn(self: *anyopaque, _r: **WhiteBalanceControl) callconv(.winapi) HRESULT,
        get_ExposureControl: *const fn(self: *anyopaque, _r: **ExposureControl) callconv(.winapi) HRESULT,
        get_FocusControl: *const fn(self: *anyopaque, _r: **FocusControl) callconv(.winapi) HRESULT,
        get_ExposureCompensationControl: *const fn(self: *anyopaque, _r: **ExposureCompensationControl) callconv(.winapi) HRESULT,
        get_IsoSpeedControl: *const fn(self: *anyopaque, _r: **IsoSpeedControl) callconv(.winapi) HRESULT,
        get_RegionsOfInterestControl: *const fn(self: *anyopaque, _r: **RegionsOfInterestControl) callconv(.winapi) HRESULT,
        get_PrimaryUse: *const fn(self: *anyopaque, _r: *CaptureUse) callconv(.winapi) HRESULT,
        put_PrimaryUse: *const fn(self: *anyopaque, value: CaptureUse) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController3 = extern struct {
    vtable: *const VTable,
    pub fn getVariablePhotoSequenceController(self: *@This()) core.HResult!*VariablePhotoSequenceController {
        var _r: *VariablePhotoSequenceController = undefined;
        const _c = self.vtable.get_VariablePhotoSequenceController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotoConfirmationControl(self: *@This()) core.HResult!*PhotoConfirmationControl {
        var _r: *PhotoConfirmationControl = undefined;
        const _c = self.vtable.get_PhotoConfirmationControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomControl(self: *@This()) core.HResult!*ZoomControl {
        var _r: *ZoomControl = undefined;
        const _c = self.vtable.get_ZoomControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a98b8f34-ee0d-470c-b9f0-4229c4bbd089";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VariablePhotoSequenceController: *const fn(self: *anyopaque, _r: **VariablePhotoSequenceController) callconv(.winapi) HRESULT,
        get_PhotoConfirmationControl: *const fn(self: *anyopaque, _r: **PhotoConfirmationControl) callconv(.winapi) HRESULT,
        get_ZoomControl: *const fn(self: *anyopaque, _r: **ZoomControl) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController4 = extern struct {
    vtable: *const VTable,
    pub fn getExposurePriorityVideoControl(self: *@This()) core.HResult!*ExposurePriorityVideoControl {
        var _r: *ExposurePriorityVideoControl = undefined;
        const _c = self.vtable.get_ExposurePriorityVideoControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredOptimization(self: *@This()) core.HResult!MediaCaptureOptimization {
        var _r: MediaCaptureOptimization = undefined;
        const _c = self.vtable.get_DesiredOptimization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredOptimization(self: *@This(), value: MediaCaptureOptimization) core.HResult!void {
        const _c = self.vtable.put_DesiredOptimization(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHdrVideoControl(self: *@This()) core.HResult!*HdrVideoControl {
        var _r: *HdrVideoControl = undefined;
        const _c = self.vtable.get_HdrVideoControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpticalImageStabilizationControl(self: *@This()) core.HResult!*OpticalImageStabilizationControl {
        var _r: *OpticalImageStabilizationControl = undefined;
        const _c = self.vtable.get_OpticalImageStabilizationControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvancedPhotoControl(self: *@This()) core.HResult!*AdvancedPhotoControl {
        var _r: *AdvancedPhotoControl = undefined;
        const _c = self.vtable.get_AdvancedPhotoControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea9fbfaf-d371-41c3-9a17-824a87ebdfd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExposurePriorityVideoControl: *const fn(self: *anyopaque, _r: **ExposurePriorityVideoControl) callconv(.winapi) HRESULT,
        get_DesiredOptimization: *const fn(self: *anyopaque, _r: *MediaCaptureOptimization) callconv(.winapi) HRESULT,
        put_DesiredOptimization: *const fn(self: *anyopaque, value: MediaCaptureOptimization) callconv(.winapi) HRESULT,
        get_HdrVideoControl: *const fn(self: *anyopaque, _r: **HdrVideoControl) callconv(.winapi) HRESULT,
        get_OpticalImageStabilizationControl: *const fn(self: *anyopaque, _r: **OpticalImageStabilizationControl) callconv(.winapi) HRESULT,
        get_AdvancedPhotoControl: *const fn(self: *anyopaque, _r: **AdvancedPhotoControl) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController5 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDevicePropertyById(self: *@This(), propertyId: HSTRING, maxPropertyValueSize: *IReference(u32)) core.HResult!*VideoDeviceControllerGetDevicePropertyResult {
        var _r: *VideoDeviceControllerGetDevicePropertyResult = undefined;
        const _c = self.vtable.GetDevicePropertyById(@ptrCast(self), propertyId, maxPropertyValueSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDevicePropertyById(self: *@This(), propertyId: HSTRING, propertyValue: *IInspectable) core.HResult!VideoDeviceControllerSetDevicePropertyStatus {
        var _r: VideoDeviceControllerSetDevicePropertyStatus = undefined;
        const _c = self.vtable.SetDevicePropertyById(@ptrCast(self), propertyId, propertyValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDevicePropertyByExtendedId(self: *@This(), extendedPropertyId: [*]u8, maxPropertyValueSize: *IReference(u32)) core.HResult!*VideoDeviceControllerGetDevicePropertyResult {
        var _r: *VideoDeviceControllerGetDevicePropertyResult = undefined;
        const _c = self.vtable.GetDevicePropertyByExtendedId(@ptrCast(self), extendedPropertyId, maxPropertyValueSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDevicePropertyByExtendedId(self: *@This(), extendedPropertyId: [*]u8, propertyValue: [*]u8) core.HResult!VideoDeviceControllerSetDevicePropertyStatus {
        var _r: VideoDeviceControllerSetDevicePropertyStatus = undefined;
        const _c = self.vtable.SetDevicePropertyByExtendedId(@ptrCast(self), extendedPropertyId, propertyValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33512b17-b9cb-4a23-b875-f9eaab535492";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDevicePropertyById: *const fn(self: *anyopaque, propertyId: HSTRING, maxPropertyValueSize: *IReference(u32), _r: **VideoDeviceControllerGetDevicePropertyResult) callconv(.winapi) HRESULT,
        SetDevicePropertyById: *const fn(self: *anyopaque, propertyId: HSTRING, propertyValue: *IInspectable, _r: *VideoDeviceControllerSetDevicePropertyStatus) callconv(.winapi) HRESULT,
        GetDevicePropertyByExtendedId: *const fn(self: *anyopaque, extendedPropertyId: [*]u8, maxPropertyValueSize: *IReference(u32), _r: **VideoDeviceControllerGetDevicePropertyResult) callconv(.winapi) HRESULT,
        SetDevicePropertyByExtendedId: *const fn(self: *anyopaque, extendedPropertyId: [*]u8, propertyValue: [*]u8, _r: *VideoDeviceControllerSetDevicePropertyStatus) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController6 = extern struct {
    vtable: *const VTable,
    pub fn getVideoTemporalDenoisingControl(self: *@This()) core.HResult!*VideoTemporalDenoisingControl {
        var _r: *VideoTemporalDenoisingControl = undefined;
        const _c = self.vtable.get_VideoTemporalDenoisingControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6563a53-68a1-44b7-9f89-b5fa97ac0cbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoTemporalDenoisingControl: *const fn(self: *anyopaque, _r: **VideoTemporalDenoisingControl) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController7 = extern struct {
    vtable: *const VTable,
    pub fn getInfraredTorchControl(self: *@This()) core.HResult!*InfraredTorchControl {
        var _r: *InfraredTorchControl = undefined;
        const _c = self.vtable.get_InfraredTorchControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d2927f0-a054-50e7-b7df-7c04234d10f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InfraredTorchControl: *const fn(self: *anyopaque, _r: **InfraredTorchControl) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController8 = extern struct {
    vtable: *const VTable,
    pub fn getPanelBasedOptimizationControl(self: *@This()) core.HResult!*PanelBasedOptimizationControl {
        var _r: *PanelBasedOptimizationControl = undefined;
        const _c = self.vtable.get_PanelBasedOptimizationControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d843f010-e7fb-595b-9a78-0e54c4532b43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PanelBasedOptimizationControl: *const fn(self: *anyopaque, _r: **PanelBasedOptimizationControl) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedVideoCaptureDeviceController9 = extern struct {
    vtable: *const VTable,
    pub fn getDigitalWindowControl(self: *@This()) core.HResult!*DigitalWindowControl {
        var _r: *DigitalWindowControl = undefined;
        const _c = self.vtable.get_DigitalWindowControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAdvancedVideoCaptureDeviceController9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bdca95d-0255-51bc-a10d-5a169ec1625a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DigitalWindowControl: *const fn(self: *anyopaque, _r: **DigitalWindowControl) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceController = extern struct {
    vtable: *const VTable,
    pub fn putMuted(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Muted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMuted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Muted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVolumePercent(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_VolumePercent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVolumePercent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_VolumePercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAudioDeviceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "edd4a388-79c7-4f7c-90e8-ef934b21580a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Muted: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Muted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_VolumePercent: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_VolumePercent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceController2 = extern struct {
    vtable: *const VTable,
    pub fn getAudioCaptureEffectsManager(self: *@This()) core.HResult!*AudioCaptureEffectsManager {
        var _r: *AudioCaptureEffectsManager = undefined;
        const _c = self.vtable.get_AudioCaptureEffectsManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAudioDeviceController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85326599-4c24-48b0-81dd-0c5cc79ddf05";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioCaptureEffectsManager: *const fn(self: *anyopaque, _r: **AudioCaptureEffectsManager) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceModule = extern struct {
    vtable: *const VTable,
    pub fn getClassId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ClassId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstanceId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_InstanceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMajorVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MajorVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinorVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinorVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendCommandAsync(self: *@This(), Command: *IBuffer) core.HResult!*IAsyncOperation(ModuleCommandResult) {
        var _r: *IAsyncOperation(ModuleCommandResult) = undefined;
        const _c = self.vtable.SendCommandAsync(@ptrCast(self), Command, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAudioDeviceModule";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86cfac36-47c1-4b33-9852-8773ec4be123";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClassId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InstanceId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MajorVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MinorVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SendCommandAsync: *const fn(self: *anyopaque, Command: *IBuffer, _r: **IAsyncOperation(ModuleCommandResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceModuleNotificationEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getModule(self: *@This()) core.HResult!*AudioDeviceModule {
        var _r: *AudioDeviceModule = undefined;
        const _c = self.vtable.get_Module(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotificationData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_NotificationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAudioDeviceModuleNotificationEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3e3ccaf-224c-48be-956b-9a13134e96e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Module: *const fn(self: *anyopaque, _r: **AudioDeviceModule) callconv(.winapi) HRESULT,
        get_NotificationData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceModulesManager = extern struct {
    vtable: *const VTable,
    pub fn addModuleNotificationReceived(self: *@This(), handler: *TypedEventHandler(AudioDeviceModulesManager,AudioDeviceModuleNotificationEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ModuleNotificationReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeModuleNotificationReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ModuleNotificationReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindAllById(self: *@This(), moduleId: HSTRING) core.HResult!*IVectorView(AudioDeviceModule) {
        var _r: *IVectorView(AudioDeviceModule) = undefined;
        const _c = self.vtable.FindAllById(@ptrCast(self), moduleId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(AudioDeviceModule) {
        var _r: *IVectorView(AudioDeviceModule) = undefined;
        const _c = self.vtable.FindAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAudioDeviceModulesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6aa40c4d-960a-4d1c-b318-0022604547ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ModuleNotificationReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioDeviceModulesManager,AudioDeviceModuleNotificationEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ModuleNotificationReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        FindAllById: *const fn(self: *anyopaque, moduleId: HSTRING, _r: **IVectorView(AudioDeviceModule)) callconv(.winapi) HRESULT,
        FindAll: *const fn(self: *anyopaque, _r: **IVectorView(AudioDeviceModule)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioDeviceModulesManagerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), deviceId: HSTRING) core.HResult!*AudioDeviceModulesManager {
        var _r: *AudioDeviceModulesManager = undefined;
        const _c = self.vtable.Create(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IAudioDeviceModulesManagerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8db03670-e64d-4773-96c0-bc7ebf0e063f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **AudioDeviceModulesManager) callconv(.winapi) HRESULT,
    };
};
pub const ICameraOcclusionInfo = extern struct {
    vtable: *const VTable,
    pub fn GetState(self: *@This()) core.HResult!*CameraOcclusionState {
        var _r: *CameraOcclusionState = undefined;
        const _c = self.vtable.GetState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsOcclusionKindSupported(self: *@This(), occlusionKind: CameraOcclusionKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOcclusionKindSupported(@ptrCast(self), occlusionKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(CameraOcclusionInfo,CameraOcclusionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ICameraOcclusionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af6c4ad0-a84d-5db6-be58-a5da21cfe011";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetState: *const fn(self: *anyopaque, _r: **CameraOcclusionState) callconv(.winapi) HRESULT,
        IsOcclusionKindSupported: *const fn(self: *anyopaque, occlusionKind: CameraOcclusionKind, _r: *bool) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CameraOcclusionInfo,CameraOcclusionStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICameraOcclusionState = extern struct {
    vtable: *const VTable,
    pub fn getIsOccluded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOccluded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsOcclusionKind(self: *@This(), occlusionKind: CameraOcclusionKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOcclusionKind(@ptrCast(self), occlusionKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ICameraOcclusionState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "430adeb8-6842-5e55-9bde-04b4ef3a8a57";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsOccluded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsOcclusionKind: *const fn(self: *anyopaque, occlusionKind: CameraOcclusionKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICameraOcclusionStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!*CameraOcclusionState {
        var _r: *CameraOcclusionState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ICameraOcclusionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8512d848-c0de-57ca-a1ca-fb2c3d23df55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: **CameraOcclusionState) callconv(.winapi) HRESULT,
    };
};
pub const IDefaultAudioDeviceChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRole(self: *@This()) core.HResult!AudioDeviceRole {
        var _r: AudioDeviceRole = undefined;
        const _c = self.vtable.get_Role(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "110f882f-1c05-4657-a18e-47c9b69f07ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Role: *const fn(self: *anyopaque, _r: *AudioDeviceRole) callconv(.winapi) HRESULT,
    };
};
pub const IDigitalWindowBounds = extern struct {
    vtable: *const VTable,
    pub fn getNormalizedOriginTop(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NormalizedOriginTop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalizedOriginTop(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_NormalizedOriginTop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalizedOriginLeft(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NormalizedOriginLeft(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalizedOriginLeft(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_NormalizedOriginLeft(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IDigitalWindowBounds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd4f21dd-d173-5c6b-8c25-bdd26d5122b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NormalizedOriginTop: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_NormalizedOriginTop: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_NormalizedOriginLeft: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_NormalizedOriginLeft: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IDigitalWindowCapability = extern struct {
    vtable: *const VTable,
    pub fn getWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinScaleValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinScaleValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxScaleValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxScaleValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinScaleValueWithoutUpsampling(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinScaleValueWithoutUpsampling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedFieldOfViewLimit(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_NormalizedFieldOfViewLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IDigitalWindowCapability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d78bad2c-f721-5244-a196-b56ccbec606c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MinScaleValue: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MaxScaleValue: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MinScaleValueWithoutUpsampling: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NormalizedFieldOfViewLimit: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IDigitalWindowControl = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModes(self: *@This()) core.HResult![*]DigitalWindowMode {
        var _r: [*]DigitalWindowMode = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentMode(self: *@This()) core.HResult!DigitalWindowMode {
        var _r: DigitalWindowMode = undefined;
        const _c = self.vtable.get_CurrentMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBounds(self: *@This()) core.HResult!*DigitalWindowBounds {
        var _r: *DigitalWindowBounds = undefined;
        const _c = self.vtable.GetBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Configure(self: *@This(), digitalWindowMode: DigitalWindowMode) core.HResult!void {
        const _c = self.vtable.Configure(@ptrCast(self), digitalWindowMode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConfigureWithDigitalWindowBounds(self: *@This(), digitalWindowMode: DigitalWindowMode, digitalWindowBounds: *DigitalWindowBounds) core.HResult!void {
        const _c = self.vtable.ConfigureWithDigitalWindowBounds(@ptrCast(self), digitalWindowMode, digitalWindowBounds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportedCapabilities(self: *@This()) core.HResult!*IVectorView(DigitalWindowCapability) {
        var _r: *IVectorView(DigitalWindowCapability) = undefined;
        const _c = self.vtable.get_SupportedCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapabilityForSize(self: *@This(), width: i32, height: i32) core.HResult!*DigitalWindowCapability {
        var _r: *DigitalWindowCapability = undefined;
        const _c = self.vtable.GetCapabilityForSize(@ptrCast(self), width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IDigitalWindowControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23b69eff-65d2-53ea-8780-de582b48b544";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: *[*]DigitalWindowMode) callconv(.winapi) HRESULT,
        get_CurrentMode: *const fn(self: *anyopaque, _r: *DigitalWindowMode) callconv(.winapi) HRESULT,
        GetBounds: *const fn(self: *anyopaque, _r: **DigitalWindowBounds) callconv(.winapi) HRESULT,
        Configure: *const fn(self: *anyopaque, digitalWindowMode: DigitalWindowMode) callconv(.winapi) HRESULT,
        ConfigureWithDigitalWindowBounds: *const fn(self: *anyopaque, digitalWindowMode: DigitalWindowMode, digitalWindowBounds: *DigitalWindowBounds) callconv(.winapi) HRESULT,
        get_SupportedCapabilities: *const fn(self: *anyopaque, _r: **IVectorView(DigitalWindowCapability)) callconv(.winapi) HRESULT,
        GetCapabilityForSize: *const fn(self: *anyopaque, width: i32, height: i32, _r: **DigitalWindowCapability) callconv(.winapi) HRESULT,
    };
};
pub const IExposureCompensationControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValueAsync(self: *@This(), value: f32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetValueAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IExposureCompensationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81c8e834-dcec-4011-a610-1f3847e64aca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        SetValueAsync: *const fn(self: *anyopaque, value: f32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IExposureControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAutoAsync(self: *@This(), value: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAutoAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValueAsync(self: *@This(), shutterDuration: TimeSpan) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetValueAsync(@ptrCast(self), shutterDuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IExposureControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetAutoAsync: *const fn(self: *anyopaque, value: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        SetValueAsync: *const fn(self: *anyopaque, shutterDuration: TimeSpan, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IExposurePriorityVideoControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IExposurePriorityVideoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cb240a3-5168-4271-9ea5-47621a98a352";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IFlashControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PowerSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedEyeReductionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RedEyeReductionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Auto(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRedEyeReduction(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RedEyeReduction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRedEyeReduction(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RedEyeReduction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPowerPercent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PowerPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPowerPercent(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PowerPercent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IFlashControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "def41dbe-7d68-45e3-8c0f-be7bb32837d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PowerSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RedEyeReductionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Auto: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RedEyeReduction: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RedEyeReduction: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PowerPercent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PowerPercent: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IFlashControl2 = extern struct {
    vtable: *const VTable,
    pub fn getAssistantLightSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AssistantLightSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAssistantLightEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AssistantLightEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAssistantLightEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AssistantLightEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IFlashControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AssistantLightSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AssistantLightEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AssistantLightEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IFocusControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedPresets(self: *@This()) core.HResult!*IVectorView(FocusPreset) {
        var _r: *IVectorView(FocusPreset) = undefined;
        const _c = self.vtable.get_SupportedPresets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreset(self: *@This()) core.HResult!FocusPreset {
        var _r: FocusPreset = undefined;
        const _c = self.vtable.get_Preset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPresetAsync(self: *@This(), preset: FocusPreset) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPresetAsync(@ptrCast(self), preset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPresetAsyncWithCompleteBeforeFocus(self: *@This(), preset: FocusPreset, completeBeforeFocus: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPresetAsyncWithCompleteBeforeFocus(@ptrCast(self), preset, completeBeforeFocus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValueAsync(self: *@This(), focus: u32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetValueAsync(@ptrCast(self), focus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FocusAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FocusAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IFocusControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0d889f6-5228-4453-b153-85606592b238";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedPresets: *const fn(self: *anyopaque, _r: **IVectorView(FocusPreset)) callconv(.winapi) HRESULT,
        get_Preset: *const fn(self: *anyopaque, _r: *FocusPreset) callconv(.winapi) HRESULT,
        SetPresetAsync: *const fn(self: *anyopaque, preset: FocusPreset, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetPresetAsyncWithCompleteBeforeFocus: *const fn(self: *anyopaque, preset: FocusPreset, completeBeforeFocus: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetValueAsync: *const fn(self: *anyopaque, focus: u32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FocusAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IFocusControl2 = extern struct {
    vtable: *const VTable,
    pub fn getFocusChangedSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_FocusChangedSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWaitForFocusSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WaitForFocusSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFocusModes(self: *@This()) core.HResult!*IVectorView(FocusMode) {
        var _r: *IVectorView(FocusMode) = undefined;
        const _c = self.vtable.get_SupportedFocusModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFocusDistances(self: *@This()) core.HResult!*IVectorView(ManualFocusDistance) {
        var _r: *IVectorView(ManualFocusDistance) = undefined;
        const _c = self.vtable.get_SupportedFocusDistances(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFocusRanges(self: *@This()) core.HResult!*IVectorView(AutoFocusRange) {
        var _r: *IVectorView(AutoFocusRange) = undefined;
        const _c = self.vtable.get_SupportedFocusRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!FocusMode {
        var _r: FocusMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusState(self: *@This()) core.HResult!MediaCaptureFocusState {
        var _r: MediaCaptureFocusState = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnlockAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnlockAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LockAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LockAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Configure(self: *@This(), settings: *FocusSettings) core.HResult!void {
        const _c = self.vtable.Configure(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IFocusControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f7cff48-c534-4e9e-94c3-52ef2afd5d07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusChangedSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_WaitForFocusSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedFocusModes: *const fn(self: *anyopaque, _r: **IVectorView(FocusMode)) callconv(.winapi) HRESULT,
        get_SupportedFocusDistances: *const fn(self: *anyopaque, _r: **IVectorView(ManualFocusDistance)) callconv(.winapi) HRESULT,
        get_SupportedFocusRanges: *const fn(self: *anyopaque, _r: **IVectorView(AutoFocusRange)) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *FocusMode) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: *MediaCaptureFocusState) callconv(.winapi) HRESULT,
        UnlockAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        LockAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        Configure: *const fn(self: *anyopaque, settings: *FocusSettings) callconv(.winapi) HRESULT,
    };
};
pub const IFocusSettings = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!FocusMode {
        var _r: FocusMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: FocusMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoFocusRange(self: *@This()) core.HResult!AutoFocusRange {
        var _r: AutoFocusRange = undefined;
        const _c = self.vtable.get_AutoFocusRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoFocusRange(self: *@This(), value: AutoFocusRange) core.HResult!void {
        const _c = self.vtable.put_AutoFocusRange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDistance(self: *@This()) core.HResult!*IReference(ManualFocusDistance) {
        var _r: *IReference(ManualFocusDistance) = undefined;
        const _c = self.vtable.get_Distance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDistance(self: *@This(), value: *IReference(ManualFocusDistance)) core.HResult!void {
        const _c = self.vtable.put_Distance(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWaitForFocus(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WaitForFocus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWaitForFocus(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_WaitForFocus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisableDriverFallback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisableDriverFallback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisableDriverFallback(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DisableDriverFallback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IFocusSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79958f6b-3263-4275-85d6-aeae891c96ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *FocusMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: FocusMode) callconv(.winapi) HRESULT,
        get_AutoFocusRange: *const fn(self: *anyopaque, _r: *AutoFocusRange) callconv(.winapi) HRESULT,
        put_AutoFocusRange: *const fn(self: *anyopaque, value: AutoFocusRange) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_Distance: *const fn(self: *anyopaque, _r: **IReference(ManualFocusDistance)) callconv(.winapi) HRESULT,
        put_Distance: *const fn(self: *anyopaque, value: *IReference(ManualFocusDistance)) callconv(.winapi) HRESULT,
        get_WaitForFocus: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_WaitForFocus: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisableDriverFallback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DisableDriverFallback: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IHdrVideoControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(HdrVideoMode) {
        var _r: *IVectorView(HdrVideoMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!HdrVideoMode {
        var _r: HdrVideoMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: HdrVideoMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IHdrVideoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55d8e2d0-30c0-43bf-9b9a-9799d70ced94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(HdrVideoMode)) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *HdrVideoMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: HdrVideoMode) callconv(.winapi) HRESULT,
    };
};
pub const IInfraredTorchControl = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(InfraredTorchMode) {
        var _r: *IVectorView(InfraredTorchMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentMode(self: *@This()) core.HResult!InfraredTorchMode {
        var _r: InfraredTorchMode = undefined;
        const _c = self.vtable.get_CurrentMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrentMode(self: *@This(), value: InfraredTorchMode) core.HResult!void {
        const _c = self.vtable.put_CurrentMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinPower(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinPower(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPower(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxPower(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerStep(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PowerStep(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPower(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Power(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPower(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Power(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IInfraredTorchControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cba2c83-6cb6-5a04-a6fc-3be7b33ff056";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(InfraredTorchMode)) callconv(.winapi) HRESULT,
        get_CurrentMode: *const fn(self: *anyopaque, _r: *InfraredTorchMode) callconv(.winapi) HRESULT,
        put_CurrentMode: *const fn(self: *anyopaque, value: InfraredTorchMode) callconv(.winapi) HRESULT,
        get_MinPower: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxPower: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PowerStep: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Power: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Power: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IIsoSpeedControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedPresets(self: *@This()) core.HResult!*IVectorView(IsoSpeedPreset) {
        var _r: *IVectorView(IsoSpeedPreset) = undefined;
        const _c = self.vtable.get_SupportedPresets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreset(self: *@This()) core.HResult!IsoSpeedPreset {
        var _r: IsoSpeedPreset = undefined;
        const _c = self.vtable.get_Preset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPresetAsync(self: *@This(), preset: IsoSpeedPreset) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPresetAsync(@ptrCast(self), preset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IIsoSpeedControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27b6c322-25ad-4f1b-aaab-524ab376ca33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedPresets: *const fn(self: *anyopaque, _r: **IVectorView(IsoSpeedPreset)) callconv(.winapi) HRESULT,
        get_Preset: *const fn(self: *anyopaque, _r: *IsoSpeedPreset) callconv(.winapi) HRESULT,
        SetPresetAsync: *const fn(self: *anyopaque, preset: IsoSpeedPreset, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IIsoSpeedControl2 = extern struct {
    vtable: *const VTable,
    pub fn getMin(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValueAsync(self: *@This(), isoSpeed: u32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetValueAsync(@ptrCast(self), isoSpeed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAutoAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAutoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IIsoSpeedControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f1578f2-6d77-4f8a-8c2f-6130b6395053";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetValueAsync: *const fn(self: *anyopaque, isoSpeed: u32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetAutoAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagPhotoControl = extern struct {
    vtable: *const VTable,
    pub fn GetHighestConcurrentFrameRate(self: *@This(), captureProperties: *IMediaEncodingProperties) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.GetHighestConcurrentFrameRate(@ptrCast(self), captureProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.GetCurrentFrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnailEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ThumbnailEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnailEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ThumbnailEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnailFormat(self: *@This()) core.HResult!MediaThumbnailFormat {
        var _r: MediaThumbnailFormat = undefined;
        const _c = self.vtable.get_ThumbnailFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnailFormat(self: *@This(), value: MediaThumbnailFormat) core.HResult!void {
        const _c = self.vtable.put_ThumbnailFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredThumbnailSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DesiredThumbnailSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredThumbnailSize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DesiredThumbnailSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHardwareAcceleratedThumbnailSupported(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HardwareAcceleratedThumbnailSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ILowLagPhotoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d5c4dd0-fadf-415d-aee6-3baa529300c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetHighestConcurrentFrameRate: *const fn(self: *anyopaque, captureProperties: *IMediaEncodingProperties, _r: **MediaRatio) callconv(.winapi) HRESULT,
        GetCurrentFrameRate: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
        get_ThumbnailEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ThumbnailEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ThumbnailFormat: *const fn(self: *anyopaque, _r: *MediaThumbnailFormat) callconv(.winapi) HRESULT,
        put_ThumbnailFormat: *const fn(self: *anyopaque, value: MediaThumbnailFormat) callconv(.winapi) HRESULT,
        get_DesiredThumbnailSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DesiredThumbnailSize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HardwareAcceleratedThumbnailSupported: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagPhotoSequenceControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPastPhotos(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPastPhotos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPhotosPerSecond(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxPhotosPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPastPhotoLimit(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PastPhotoLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPastPhotoLimit(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_PastPhotoLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhotosPerSecondLimit(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PhotosPerSecondLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhotosPerSecondLimit(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PhotosPerSecondLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetHighestConcurrentFrameRate(self: *@This(), captureProperties: *IMediaEncodingProperties) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.GetHighestConcurrentFrameRate(@ptrCast(self), captureProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.GetCurrentFrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnailEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ThumbnailEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnailEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ThumbnailEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnailFormat(self: *@This()) core.HResult!MediaThumbnailFormat {
        var _r: MediaThumbnailFormat = undefined;
        const _c = self.vtable.get_ThumbnailFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnailFormat(self: *@This(), value: MediaThumbnailFormat) core.HResult!void {
        const _c = self.vtable.put_ThumbnailFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredThumbnailSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DesiredThumbnailSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredThumbnailSize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DesiredThumbnailSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHardwareAcceleratedThumbnailSupported(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HardwareAcceleratedThumbnailSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ILowLagPhotoSequenceControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3dcf909d-6d16-409c-bafe-b9a594c6fde6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxPastPhotos: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxPhotosPerSecond: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_PastPhotoLimit: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_PastPhotoLimit: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_PhotosPerSecondLimit: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PhotosPerSecondLimit: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        GetHighestConcurrentFrameRate: *const fn(self: *anyopaque, captureProperties: *IMediaEncodingProperties, _r: **MediaRatio) callconv(.winapi) HRESULT,
        GetCurrentFrameRate: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
        get_ThumbnailEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ThumbnailEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ThumbnailFormat: *const fn(self: *anyopaque, _r: *MediaThumbnailFormat) callconv(.winapi) HRESULT,
        put_ThumbnailFormat: *const fn(self: *anyopaque, value: MediaThumbnailFormat) callconv(.winapi) HRESULT,
        get_DesiredThumbnailSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DesiredThumbnailSize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HardwareAcceleratedThumbnailSupported: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMediaDeviceControl = extern struct {
    vtable: *const VTable,
    pub fn getCapabilities(self: *@This()) core.HResult!*MediaDeviceControlCapabilities {
        var _r: *MediaDeviceControlCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetValue(self: *@This(), value: f64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetValue(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetValue(self: *@This(), value: f64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetValue(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetAuto(self: *@This(), value: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetAuto(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetAuto(self: *@This(), value: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetAuto(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IMediaDeviceControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efa8dfa9-6f75-4863-ba0b-583f3036b4de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **MediaDeviceControlCapabilities) callconv(.winapi) HRESULT,
        TryGetValue: *const fn(self: *anyopaque, value: f64, _r: *bool) callconv(.winapi) HRESULT,
        TrySetValue: *const fn(self: *anyopaque, value: f64, _r: *bool) callconv(.winapi) HRESULT,
        TryGetAuto: *const fn(self: *anyopaque, value: bool, _r: *bool) callconv(.winapi) HRESULT,
        TrySetAuto: *const fn(self: *anyopaque, value: bool, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaDeviceControlCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefault(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Default(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoModeSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoModeSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IMediaDeviceControlCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23005816-eb85-43e2-b92b-8240d5ee70ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Default: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AutoModeSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaDeviceController = extern struct {
    vtable: *const VTable,
    pub fn GetAvailableMediaStreamProperties(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IVectorView(IMediaEncodingProperties) {
        var _r: *IVectorView(IMediaEncodingProperties) = undefined;
        const _c = self.vtable.GetAvailableMediaStreamProperties(@ptrCast(self), mediaStreamType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMediaStreamProperties(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IMediaEncodingProperties {
        var _r: *IMediaEncodingProperties = undefined;
        const _c = self.vtable.GetMediaStreamProperties(@ptrCast(self), mediaStreamType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetMediaStreamPropertiesAsync(self: *@This(), mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetMediaStreamPropertiesAsync(@ptrCast(self), mediaStreamType, mediaEncodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IMediaDeviceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6f8f5ce-209a-48fb-86fc-d44578f317e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAvailableMediaStreamProperties: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, _r: **IVectorView(IMediaEncodingProperties)) callconv(.winapi) HRESULT,
        GetMediaStreamProperties: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, _r: **IMediaEncodingProperties) callconv(.winapi) HRESULT,
        SetMediaStreamPropertiesAsync: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMediaDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetAudioCaptureSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAudioCaptureSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioRenderSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAudioRenderSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVideoCaptureSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetVideoCaptureSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAudioCaptureId(self: *@This(), role: AudioDeviceRole) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDefaultAudioCaptureId(@ptrCast(self), role, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAudioRenderId(self: *@This(), role: AudioDeviceRole) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDefaultAudioRenderId(@ptrCast(self), role, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDefaultAudioCaptureDeviceChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,DefaultAudioCaptureDeviceChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DefaultAudioCaptureDeviceChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDefaultAudioCaptureDeviceChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DefaultAudioCaptureDeviceChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDefaultAudioRenderDeviceChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,DefaultAudioRenderDeviceChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DefaultAudioRenderDeviceChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDefaultAudioRenderDeviceChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DefaultAudioRenderDeviceChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IMediaDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa2d9a40-909f-4bba-bf8b-0c0d296f14f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAudioCaptureSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAudioRenderSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetVideoCaptureSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDefaultAudioCaptureId: *const fn(self: *anyopaque, role: AudioDeviceRole, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDefaultAudioRenderId: *const fn(self: *anyopaque, role: AudioDeviceRole, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_DefaultAudioCaptureDeviceChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,DefaultAudioCaptureDeviceChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DefaultAudioCaptureDeviceChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DefaultAudioRenderDeviceChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,DefaultAudioRenderDeviceChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DefaultAudioRenderDeviceChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IModuleCommandResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SendCommandStatus {
        var _r: SendCommandStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IModuleCommandResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "520d1eb4-1374-4c7d-b1e4-39dcdf3eae4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SendCommandStatus) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IOpticalImageStabilizationControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(OpticalImageStabilizationMode) {
        var _r: *IVectorView(OpticalImageStabilizationMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!OpticalImageStabilizationMode {
        var _r: OpticalImageStabilizationMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: OpticalImageStabilizationMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IOpticalImageStabilizationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfad9c1d-00bc-423b-8eb2-a0178ca94247";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(OpticalImageStabilizationMode)) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *OpticalImageStabilizationMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: OpticalImageStabilizationMode) callconv(.winapi) HRESULT,
    };
};
pub const IPanelBasedOptimizationControl = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanel(self: *@This()) core.HResult!Panel {
        var _r: Panel = undefined;
        const _c = self.vtable.get_Panel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPanel(self: *@This(), value: Panel) core.HResult!void {
        const _c = self.vtable.put_Panel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IPanelBasedOptimizationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33323223-6247-5419-a5a4-3d808645d917";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Panel: *const fn(self: *anyopaque, _r: *Panel) callconv(.winapi) HRESULT,
        put_Panel: *const fn(self: *anyopaque, value: Panel) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoConfirmationControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!MediaPixelFormat {
        var _r: MediaPixelFormat = undefined;
        const _c = self.vtable.get_PixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPixelFormat(self: *@This(), format: MediaPixelFormat) core.HResult!void {
        const _c = self.vtable.put_PixelFormat(@ptrCast(self), format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IPhotoConfirmationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8f3f363-ff5e-4582-a9a8-0550f85a4a76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PixelFormat: *const fn(self: *anyopaque, _r: *MediaPixelFormat) callconv(.winapi) HRESULT,
        put_PixelFormat: *const fn(self: *anyopaque, format: MediaPixelFormat) callconv(.winapi) HRESULT,
    };
};
pub const IRegionOfInterest = extern struct {
    vtable: *const VTable,
    pub fn getAutoFocusEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoFocusEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoFocusEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoFocusEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoWhiteBalanceEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoWhiteBalanceEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoWhiteBalanceEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoWhiteBalanceEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoExposureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoExposureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoExposureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoExposureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBounds(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_Bounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IRegionOfInterest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5ecc834-ce66-4e05-a78f-cf391a5ec2d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoFocusEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoFocusEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutoWhiteBalanceEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoWhiteBalanceEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutoExposureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoExposureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_Bounds: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
    };
};
pub const IRegionOfInterest2 = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!RegionOfInterestType {
        var _r: RegionOfInterestType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: RegionOfInterestType) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBoundsNormalized(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BoundsNormalized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBoundsNormalized(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BoundsNormalized(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Weight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Weight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IRegionOfInterest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19fe2a91-73aa-4d51-8a9d-56ccf7db7f54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *RegionOfInterestType) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: RegionOfInterestType) callconv(.winapi) HRESULT,
        get_BoundsNormalized: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BoundsNormalized: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Weight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Weight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IRegionsOfInterestControl = extern struct {
    vtable: *const VTable,
    pub fn getMaxRegions(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxRegions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetRegionsAsync(self: *@This(), regions: *IIterable(RegionOfInterest)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetRegionsAsync(@ptrCast(self), regions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetRegionsAsyncWithLockValues(self: *@This(), regions: *IIterable(RegionOfInterest), lockValues: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetRegionsAsyncWithLockValues(@ptrCast(self), regions, lockValues, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearRegionsAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearRegionsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoFocusSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoFocusSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoWhiteBalanceSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoWhiteBalanceSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoExposureSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoExposureSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IRegionsOfInterestControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c323f527-ab0b-4558-8b5b-df5693db0378";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxRegions: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetRegionsAsync: *const fn(self: *anyopaque, regions: *IIterable(RegionOfInterest), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetRegionsAsyncWithLockValues: *const fn(self: *anyopaque, regions: *IIterable(RegionOfInterest), lockValues: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearRegionsAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_AutoFocusSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AutoWhiteBalanceSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AutoExposureSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISceneModeControl = extern struct {
    vtable: *const VTable,
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(CaptureSceneMode) {
        var _r: *IVectorView(CaptureSceneMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!CaptureSceneMode {
        var _r: CaptureSceneMode = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValueAsync(self: *@This(), sceneMode: CaptureSceneMode) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetValueAsync(@ptrCast(self), sceneMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ISceneModeControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d48e5af7-8d59-4854-8c62-12c70ba89b7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(CaptureSceneMode)) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *CaptureSceneMode) callconv(.winapi) HRESULT,
        SetValueAsync: *const fn(self: *anyopaque, sceneMode: CaptureSceneMode, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ITorchControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PowerSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPowerPercent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PowerPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPowerPercent(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PowerPercent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ITorchControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6053665-8250-416c-919a-724296afa306";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PowerSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PowerPercent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PowerPercent: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IVideoDeviceController = extern struct {
    vtable: *const VTable,
    pub fn getBrightness(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Brightness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContrast(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Contrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHue(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Hue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhiteBalance(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_WhiteBalance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBacklightCompensation(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_BacklightCompensation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPan(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Pan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTilt(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Tilt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoom(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Zoom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoll(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Roll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposure(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Exposure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocus(self: *@This()) core.HResult!*MediaDeviceControl {
        var _r: *MediaDeviceControl = undefined;
        const _c = self.vtable.get_Focus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetPowerlineFrequency(self: *@This(), value: PowerlineFrequency) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetPowerlineFrequency(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPowerlineFrequency(self: *@This(), value: PowerlineFrequency) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetPowerlineFrequency(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IVideoDeviceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99555575-2e2e-40b8-b6c7-f82d10013210";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Brightness: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Contrast: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Hue: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_WhiteBalance: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_BacklightCompensation: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Pan: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Tilt: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Zoom: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Roll: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Exposure: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        get_Focus: *const fn(self: *anyopaque, _r: **MediaDeviceControl) callconv(.winapi) HRESULT,
        TrySetPowerlineFrequency: *const fn(self: *anyopaque, value: PowerlineFrequency, _r: *bool) callconv(.winapi) HRESULT,
        TryGetPowerlineFrequency: *const fn(self: *anyopaque, value: PowerlineFrequency, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVideoDeviceControllerGetDevicePropertyResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!VideoDeviceControllerGetDevicePropertyStatus {
        var _r: VideoDeviceControllerGetDevicePropertyStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IVideoDeviceControllerGetDevicePropertyResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5d88395-6ed5-4790-8b5d-0ef13935d0f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *VideoDeviceControllerGetDevicePropertyStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IVideoTemporalDenoisingControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(VideoTemporalDenoisingMode) {
        var _r: *IVectorView(VideoTemporalDenoisingMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!VideoTemporalDenoisingMode {
        var _r: VideoTemporalDenoisingMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: VideoTemporalDenoisingMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IVideoTemporalDenoisingControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ab34735-3e2a-4a32-baff-4358c4fbdd57";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(VideoTemporalDenoisingMode)) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *VideoTemporalDenoisingMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: VideoTemporalDenoisingMode) callconv(.winapi) HRESULT,
    };
};
pub const IWhiteBalanceControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreset(self: *@This()) core.HResult!ColorTemperaturePreset {
        var _r: ColorTemperaturePreset = undefined;
        const _c = self.vtable.get_Preset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPresetAsync(self: *@This(), preset: ColorTemperaturePreset) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPresetAsync(@ptrCast(self), preset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValueAsync(self: *@This(), temperature: u32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetValueAsync(@ptrCast(self), temperature, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IWhiteBalanceControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "781f047e-7162-49c8-a8f9-9481c565363e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Preset: *const fn(self: *anyopaque, _r: *ColorTemperaturePreset) callconv(.winapi) HRESULT,
        SetPresetAsync: *const fn(self: *anyopaque, preset: ColorTemperaturePreset, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetValueAsync: *const fn(self: *anyopaque, temperature: u32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IZoomControl = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IZoomControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IZoomControl2 = extern struct {
    vtable: *const VTable,
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(ZoomTransitionMode) {
        var _r: *IVectorView(ZoomTransitionMode) = undefined;
        const _c = self.vtable.get_SupportedModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!ZoomTransitionMode {
        var _r: ZoomTransitionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Configure(self: *@This(), settings: *ZoomSettings) core.HResult!void {
        const _c = self.vtable.Configure(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IZoomControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69843db0-2e99-4641-8529-184f319d1671";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedModes: *const fn(self: *anyopaque, _r: **IVectorView(ZoomTransitionMode)) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *ZoomTransitionMode) callconv(.winapi) HRESULT,
        Configure: *const fn(self: *anyopaque, settings: *ZoomSettings) callconv(.winapi) HRESULT,
    };
};
pub const IZoomSettings = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!ZoomTransitionMode {
        var _r: ZoomTransitionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: ZoomTransitionMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IZoomSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ad66b24-14b4-4bfd-b18f-88fe24463b52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *ZoomTransitionMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: ZoomTransitionMode) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const InfraredTorchControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getIsSupported();
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(InfraredTorchMode) {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getCurrentMode(self: *@This()) core.HResult!InfraredTorchMode {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getCurrentMode();
    }
    pub fn putCurrentMode(self: *@This(), value: InfraredTorchMode) core.HResult!void {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.putCurrentMode(value);
    }
    pub fn getMinPower(self: *@This()) core.HResult!i32 {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getMinPower();
    }
    pub fn getMaxPower(self: *@This()) core.HResult!i32 {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getMaxPower();
    }
    pub fn getPowerStep(self: *@This()) core.HResult!i32 {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getPowerStep();
    }
    pub fn getPower(self: *@This()) core.HResult!i32 {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.getPower();
    }
    pub fn putPower(self: *@This(), value: i32) core.HResult!void {
        const this: *IInfraredTorchControl = @ptrCast(self);
        return try this.putPower(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.InfraredTorchControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInfraredTorchControl.GUID;
    pub const IID: Guid = IInfraredTorchControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInfraredTorchControl.SIGNATURE);
};
pub const InfraredTorchMode = enum(i32) {
    Off = 0,
    On = 1,
    AlternatingFrameIllumination = 2,
};
pub const IsoSpeedControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IIsoSpeedControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getSupportedPresets(self: *@This()) core.HResult!*IVectorView(IsoSpeedPreset) {
        const this: *IIsoSpeedControl = @ptrCast(self);
        return try this.getSupportedPresets();
    }
    pub fn getPreset(self: *@This()) core.HResult!IsoSpeedPreset {
        const this: *IIsoSpeedControl = @ptrCast(self);
        return try this.getPreset();
    }
    pub fn SetPresetAsync(self: *@This(), preset: IsoSpeedPreset) core.HResult!*IAsyncAction {
        const this: *IIsoSpeedControl = @ptrCast(self);
        return try this.SetPresetAsync(preset);
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStep();
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValue();
    }
    pub fn SetValueAsync(self: *@This(), isoSpeed: u32) core.HResult!*IAsyncAction {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetValueAsync(isoSpeed);
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAuto();
    }
    pub fn SetAutoAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IIsoSpeedControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsoSpeedControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAutoAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.IsoSpeedControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsoSpeedControl.GUID;
    pub const IID: Guid = IIsoSpeedControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsoSpeedControl.SIGNATURE);
};
pub const IsoSpeedPreset = enum(i32) {
    Auto = 0,
    Iso50 = 1,
    Iso80 = 2,
    Iso100 = 3,
    Iso200 = 4,
    Iso400 = 5,
    Iso800 = 6,
    Iso1600 = 7,
    Iso3200 = 8,
    Iso6400 = 9,
    Iso12800 = 10,
    Iso25600 = 11,
};
pub const LowLagPhotoControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetHighestConcurrentFrameRate(self: *@This(), captureProperties: *IMediaEncodingProperties) core.HResult!*MediaRatio {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.GetHighestConcurrentFrameRate(captureProperties);
    }
    pub fn GetCurrentFrameRate(self: *@This()) core.HResult!*MediaRatio {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.GetCurrentFrameRate();
    }
    pub fn getThumbnailEnabled(self: *@This()) core.HResult!bool {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.getThumbnailEnabled();
    }
    pub fn putThumbnailEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.putThumbnailEnabled(value);
    }
    pub fn getThumbnailFormat(self: *@This()) core.HResult!MediaThumbnailFormat {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.getThumbnailFormat();
    }
    pub fn putThumbnailFormat(self: *@This(), value: MediaThumbnailFormat) core.HResult!void {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.putThumbnailFormat(value);
    }
    pub fn getDesiredThumbnailSize(self: *@This()) core.HResult!u32 {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.getDesiredThumbnailSize();
    }
    pub fn putDesiredThumbnailSize(self: *@This(), value: u32) core.HResult!void {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.putDesiredThumbnailSize(value);
    }
    pub fn getHardwareAcceleratedThumbnailSupported(self: *@This()) core.HResult!u32 {
        const this: *ILowLagPhotoControl = @ptrCast(self);
        return try this.getHardwareAcceleratedThumbnailSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.LowLagPhotoControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLagPhotoControl.GUID;
    pub const IID: Guid = ILowLagPhotoControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLagPhotoControl.SIGNATURE);
};
pub const LowLagPhotoSequenceControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMaxPastPhotos(self: *@This()) core.HResult!u32 {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getMaxPastPhotos();
    }
    pub fn getMaxPhotosPerSecond(self: *@This()) core.HResult!f32 {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getMaxPhotosPerSecond();
    }
    pub fn getPastPhotoLimit(self: *@This()) core.HResult!u32 {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getPastPhotoLimit();
    }
    pub fn putPastPhotoLimit(self: *@This(), value: u32) core.HResult!void {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.putPastPhotoLimit(value);
    }
    pub fn getPhotosPerSecondLimit(self: *@This()) core.HResult!f32 {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getPhotosPerSecondLimit();
    }
    pub fn putPhotosPerSecondLimit(self: *@This(), value: f32) core.HResult!void {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.putPhotosPerSecondLimit(value);
    }
    pub fn GetHighestConcurrentFrameRate(self: *@This(), captureProperties: *IMediaEncodingProperties) core.HResult!*MediaRatio {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.GetHighestConcurrentFrameRate(captureProperties);
    }
    pub fn GetCurrentFrameRate(self: *@This()) core.HResult!*MediaRatio {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.GetCurrentFrameRate();
    }
    pub fn getThumbnailEnabled(self: *@This()) core.HResult!bool {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getThumbnailEnabled();
    }
    pub fn putThumbnailEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.putThumbnailEnabled(value);
    }
    pub fn getThumbnailFormat(self: *@This()) core.HResult!MediaThumbnailFormat {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getThumbnailFormat();
    }
    pub fn putThumbnailFormat(self: *@This(), value: MediaThumbnailFormat) core.HResult!void {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.putThumbnailFormat(value);
    }
    pub fn getDesiredThumbnailSize(self: *@This()) core.HResult!u32 {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getDesiredThumbnailSize();
    }
    pub fn putDesiredThumbnailSize(self: *@This(), value: u32) core.HResult!void {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.putDesiredThumbnailSize(value);
    }
    pub fn getHardwareAcceleratedThumbnailSupported(self: *@This()) core.HResult!u32 {
        const this: *ILowLagPhotoSequenceControl = @ptrCast(self);
        return try this.getHardwareAcceleratedThumbnailSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.LowLagPhotoSequenceControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLagPhotoSequenceControl.GUID;
    pub const IID: Guid = ILowLagPhotoSequenceControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLagPhotoSequenceControl.SIGNATURE);
};
pub const ManualFocusDistance = enum(i32) {
    Infinity = 0,
    Hyperfocal = 1,
    Nearest = 2,
};
pub const MediaCaptureFocusState = enum(i32) {
    Uninitialized = 0,
    Lost = 1,
    Searching = 2,
    Focused = 3,
    Failed = 4,
};
pub const MediaCaptureOptimization = enum(i32) {
    Default = 0,
    Quality = 1,
    Latency = 2,
    Power = 3,
    LatencyThenQuality = 4,
    LatencyThenPower = 5,
    PowerAndQuality = 6,
};
pub const MediaCapturePauseBehavior = enum(i32) {
    RetainHardwareResources = 0,
    ReleaseHardwareResources = 1,
};
pub const MediaDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetAudioCaptureSelector() core.HResult!HSTRING {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.GetAudioCaptureSelector();
    }
    pub fn GetAudioRenderSelector() core.HResult!HSTRING {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.GetAudioRenderSelector();
    }
    pub fn GetVideoCaptureSelector() core.HResult!HSTRING {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.GetVideoCaptureSelector();
    }
    pub fn GetDefaultAudioCaptureId(role: AudioDeviceRole) core.HResult!HSTRING {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.GetDefaultAudioCaptureId(role);
    }
    pub fn GetDefaultAudioRenderId(role: AudioDeviceRole) core.HResult!HSTRING {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.GetDefaultAudioRenderId(role);
    }
    pub fn add_DefaultAudioCaptureDeviceChanged(handler: *TypedEventHandler(IInspectable,DefaultAudioCaptureDeviceChangedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.addDefaultAudioCaptureDeviceChanged(handler);
    }
    pub fn remove_DefaultAudioCaptureDeviceChanged(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.removeDefaultAudioCaptureDeviceChanged(cookie);
    }
    pub fn add_DefaultAudioRenderDeviceChanged(handler: *TypedEventHandler(IInspectable,DefaultAudioRenderDeviceChangedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.addDefaultAudioRenderDeviceChanged(handler);
    }
    pub fn remove_DefaultAudioRenderDeviceChanged(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaDeviceStaticsCache.get();
        return try factory.removeDefaultAudioRenderDeviceChanged(cookie);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.MediaDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMediaDeviceStaticsCache: FactoryCache(IMediaDeviceStatics, RUNTIME_NAME) = .{};
};
pub const MediaDeviceControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapabilities(self: *@This()) core.HResult!*MediaDeviceControlCapabilities {
        const this: *IMediaDeviceControl = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn TryGetValue(self: *@This(), value: f64) core.HResult!bool {
        const this: *IMediaDeviceControl = @ptrCast(self);
        return try this.TryGetValue(value);
    }
    pub fn TrySetValue(self: *@This(), value: f64) core.HResult!bool {
        const this: *IMediaDeviceControl = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn TryGetAuto(self: *@This(), value: bool) core.HResult!bool {
        const this: *IMediaDeviceControl = @ptrCast(self);
        return try this.TryGetAuto(value);
    }
    pub fn TrySetAuto(self: *@This(), value: bool) core.HResult!bool {
        const this: *IMediaDeviceControl = @ptrCast(self);
        return try this.TrySetAuto(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.MediaDeviceControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaDeviceControl.GUID;
    pub const IID: Guid = IMediaDeviceControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaDeviceControl.SIGNATURE);
};
pub const MediaDeviceControlCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IMediaDeviceControlCapabilities = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!f64 {
        const this: *IMediaDeviceControlCapabilities = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!f64 {
        const this: *IMediaDeviceControlCapabilities = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!f64 {
        const this: *IMediaDeviceControlCapabilities = @ptrCast(self);
        return try this.getStep();
    }
    pub fn getDefault(self: *@This()) core.HResult!f64 {
        const this: *IMediaDeviceControlCapabilities = @ptrCast(self);
        return try this.getDefault();
    }
    pub fn getAutoModeSupported(self: *@This()) core.HResult!bool {
        const this: *IMediaDeviceControlCapabilities = @ptrCast(self);
        return try this.getAutoModeSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.MediaDeviceControlCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaDeviceControlCapabilities.GUID;
    pub const IID: Guid = IMediaDeviceControlCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaDeviceControlCapabilities.SIGNATURE);
};
pub const ModuleCommandResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SendCommandStatus {
        const this: *IModuleCommandResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getResult(self: *@This()) core.HResult!*IBuffer {
        const this: *IModuleCommandResult = @ptrCast(self);
        return try this.getResult();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ModuleCommandResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IModuleCommandResult.GUID;
    pub const IID: Guid = IModuleCommandResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IModuleCommandResult.SIGNATURE);
};
pub const OpticalImageStabilizationControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IOpticalImageStabilizationControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(OpticalImageStabilizationMode) {
        const this: *IOpticalImageStabilizationControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getMode(self: *@This()) core.HResult!OpticalImageStabilizationMode {
        const this: *IOpticalImageStabilizationControl = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: OpticalImageStabilizationMode) core.HResult!void {
        const this: *IOpticalImageStabilizationControl = @ptrCast(self);
        return try this.putMode(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.OpticalImageStabilizationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOpticalImageStabilizationControl.GUID;
    pub const IID: Guid = IOpticalImageStabilizationControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOpticalImageStabilizationControl.SIGNATURE);
};
pub const OpticalImageStabilizationMode = enum(i32) {
    Off = 0,
    On = 1,
    Auto = 2,
};
pub const PanelBasedOptimizationControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        const this: *IPanelBasedOptimizationControl = @ptrCast(self);
        return try this.getIsSupported();
    }
    pub fn getPanel(self: *@This()) core.HResult!Panel {
        const this: *IPanelBasedOptimizationControl = @ptrCast(self);
        return try this.getPanel();
    }
    pub fn putPanel(self: *@This(), value: Panel) core.HResult!void {
        const this: *IPanelBasedOptimizationControl = @ptrCast(self);
        return try this.putPanel(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.PanelBasedOptimizationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPanelBasedOptimizationControl.GUID;
    pub const IID: Guid = IPanelBasedOptimizationControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPanelBasedOptimizationControl.SIGNATURE);
};
pub const PhotoConfirmationControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IPhotoConfirmationControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IPhotoConfirmationControl = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhotoConfirmationControl = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!MediaPixelFormat {
        const this: *IPhotoConfirmationControl = @ptrCast(self);
        return try this.getPixelFormat();
    }
    pub fn putPixelFormat(self: *@This(), format: MediaPixelFormat) core.HResult!void {
        const this: *IPhotoConfirmationControl = @ptrCast(self);
        return try this.putPixelFormat(format);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.PhotoConfirmationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoConfirmationControl.GUID;
    pub const IID: Guid = IPhotoConfirmationControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoConfirmationControl.SIGNATURE);
};
pub const RegionOfInterest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutoFocusEnabled(self: *@This()) core.HResult!bool {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.getAutoFocusEnabled();
    }
    pub fn putAutoFocusEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.putAutoFocusEnabled(value);
    }
    pub fn getAutoWhiteBalanceEnabled(self: *@This()) core.HResult!bool {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.getAutoWhiteBalanceEnabled();
    }
    pub fn putAutoWhiteBalanceEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.putAutoWhiteBalanceEnabled(value);
    }
    pub fn getAutoExposureEnabled(self: *@This()) core.HResult!bool {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.getAutoExposureEnabled();
    }
    pub fn putAutoExposureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.putAutoExposureEnabled(value);
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn putBounds(self: *@This(), value: Rect) core.HResult!void {
        const this: *IRegionOfInterest = @ptrCast(self);
        return try this.putBounds(value);
    }
    pub fn getType(self: *@This()) core.HResult!RegionOfInterestType {
        var this: ?*IRegionOfInterest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegionOfInterest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn putType(self: *@This(), value: RegionOfInterestType) core.HResult!void {
        var this: ?*IRegionOfInterest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegionOfInterest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putType(value);
    }
    pub fn getBoundsNormalized(self: *@This()) core.HResult!bool {
        var this: ?*IRegionOfInterest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegionOfInterest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundsNormalized();
    }
    pub fn putBoundsNormalized(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IRegionOfInterest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegionOfInterest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBoundsNormalized(value);
    }
    pub fn getWeight(self: *@This()) core.HResult!u32 {
        var this: ?*IRegionOfInterest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegionOfInterest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWeight();
    }
    pub fn putWeight(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IRegionOfInterest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegionOfInterest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWeight(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRegionOfInterest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.RegionOfInterest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRegionOfInterest.GUID;
    pub const IID: Guid = IRegionOfInterest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRegionOfInterest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RegionOfInterestType = enum(i32) {
    Unknown = 0,
    Face = 1,
};
pub const RegionsOfInterestControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxRegions(self: *@This()) core.HResult!u32 {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.getMaxRegions();
    }
    pub fn SetRegionsAsync(self: *@This(), regions: *IIterable(RegionOfInterest)) core.HResult!*IAsyncAction {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.SetRegionsAsync(regions);
    }
    pub fn SetRegionsAsyncWithLockValues(self: *@This(), regions: *IIterable(RegionOfInterest), lockValues: bool) core.HResult!*IAsyncAction {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.SetRegionsAsyncWithLockValues(regions, lockValues);
    }
    pub fn ClearRegionsAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.ClearRegionsAsync();
    }
    pub fn getAutoFocusSupported(self: *@This()) core.HResult!bool {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.getAutoFocusSupported();
    }
    pub fn getAutoWhiteBalanceSupported(self: *@This()) core.HResult!bool {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.getAutoWhiteBalanceSupported();
    }
    pub fn getAutoExposureSupported(self: *@This()) core.HResult!bool {
        const this: *IRegionsOfInterestControl = @ptrCast(self);
        return try this.getAutoExposureSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.RegionsOfInterestControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRegionsOfInterestControl.GUID;
    pub const IID: Guid = IRegionsOfInterestControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRegionsOfInterestControl.SIGNATURE);
};
pub const SceneModeControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(CaptureSceneMode) {
        const this: *ISceneModeControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getValue(self: *@This()) core.HResult!CaptureSceneMode {
        const this: *ISceneModeControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn SetValueAsync(self: *@This(), sceneMode: CaptureSceneMode) core.HResult!*IAsyncAction {
        const this: *ISceneModeControl = @ptrCast(self);
        return try this.SetValueAsync(sceneMode);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.SceneModeControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneModeControl.GUID;
    pub const IID: Guid = ISceneModeControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneModeControl.SIGNATURE);
};
pub const SendCommandStatus = enum(i32) {
    Success = 0,
    DeviceNotAvailable = 1,
};
pub const TorchControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *ITorchControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getPowerSupported(self: *@This()) core.HResult!bool {
        const this: *ITorchControl = @ptrCast(self);
        return try this.getPowerSupported();
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *ITorchControl = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ITorchControl = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getPowerPercent(self: *@This()) core.HResult!f32 {
        const this: *ITorchControl = @ptrCast(self);
        return try this.getPowerPercent();
    }
    pub fn putPowerPercent(self: *@This(), value: f32) core.HResult!void {
        const this: *ITorchControl = @ptrCast(self);
        return try this.putPowerPercent(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.TorchControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITorchControl.GUID;
    pub const IID: Guid = ITorchControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITorchControl.SIGNATURE);
};
pub const VideoDeviceController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBrightness(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getBrightness();
    }
    pub fn getContrast(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getContrast();
    }
    pub fn getHue(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getHue();
    }
    pub fn getWhiteBalance(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getWhiteBalance();
    }
    pub fn getBacklightCompensation(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getBacklightCompensation();
    }
    pub fn getPan(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getPan();
    }
    pub fn getTilt(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getTilt();
    }
    pub fn getZoom(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getZoom();
    }
    pub fn getRoll(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getRoll();
    }
    pub fn getExposure(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getExposure();
    }
    pub fn getFocus(self: *@This()) core.HResult!*MediaDeviceControl {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.getFocus();
    }
    pub fn TrySetPowerlineFrequency(self: *@This(), value: PowerlineFrequency) core.HResult!bool {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.TrySetPowerlineFrequency(value);
    }
    pub fn TryGetPowerlineFrequency(self: *@This(), value: PowerlineFrequency) core.HResult!bool {
        const this: *IVideoDeviceController = @ptrCast(self);
        return try this.TryGetPowerlineFrequency(value);
    }
    pub fn GetAvailableMediaStreamProperties(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IVectorView(IMediaEncodingProperties) {
        var this: ?*IMediaDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAvailableMediaStreamProperties(mediaStreamType);
    }
    pub fn GetMediaStreamProperties(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IMediaEncodingProperties {
        var this: ?*IMediaDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMediaStreamProperties(mediaStreamType);
    }
    pub fn SetMediaStreamPropertiesAsync(self: *@This(), mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties) core.HResult!*IAsyncAction {
        var this: ?*IMediaDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetMediaStreamPropertiesAsync(mediaStreamType, mediaEncodingProperties);
    }
    pub fn SetDeviceProperty(self: *@This(), propertyId: HSTRING, propertyValue: *IInspectable) core.HResult!void {
        var this: ?*IAdvancedVideoCaptureDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDeviceProperty(propertyId, propertyValue);
    }
    pub fn GetDeviceProperty(self: *@This(), propertyId: HSTRING) core.HResult!*IInspectable {
        var this: ?*IAdvancedVideoCaptureDeviceController = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeviceProperty(propertyId);
    }
    pub fn getLowLagPhotoSequence(self: *@This()) core.HResult!*LowLagPhotoSequenceControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLowLagPhotoSequence();
    }
    pub fn getLowLagPhoto(self: *@This()) core.HResult!*LowLagPhotoControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLowLagPhoto();
    }
    pub fn getSceneModeControl(self: *@This()) core.HResult!*SceneModeControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSceneModeControl();
    }
    pub fn getTorchControl(self: *@This()) core.HResult!*TorchControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTorchControl();
    }
    pub fn getFlashControl(self: *@This()) core.HResult!*FlashControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFlashControl();
    }
    pub fn getWhiteBalanceControl(self: *@This()) core.HResult!*WhiteBalanceControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWhiteBalanceControl();
    }
    pub fn getExposureControl(self: *@This()) core.HResult!*ExposureControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExposureControl();
    }
    pub fn getFocusControl(self: *@This()) core.HResult!*FocusControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusControl();
    }
    pub fn getExposureCompensationControl(self: *@This()) core.HResult!*ExposureCompensationControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExposureCompensationControl();
    }
    pub fn getIsoSpeedControl(self: *@This()) core.HResult!*IsoSpeedControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsoSpeedControl();
    }
    pub fn getRegionsOfInterestControl(self: *@This()) core.HResult!*RegionsOfInterestControl {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRegionsOfInterestControl();
    }
    pub fn getPrimaryUse(self: *@This()) core.HResult!CaptureUse {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrimaryUse();
    }
    pub fn putPrimaryUse(self: *@This(), value: CaptureUse) core.HResult!void {
        var this: ?*IAdvancedVideoCaptureDeviceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrimaryUse(value);
    }
    pub fn getVariablePhotoSequenceController(self: *@This()) core.HResult!*VariablePhotoSequenceController {
        var this: ?*IAdvancedVideoCaptureDeviceController3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVariablePhotoSequenceController();
    }
    pub fn getPhotoConfirmationControl(self: *@This()) core.HResult!*PhotoConfirmationControl {
        var this: ?*IAdvancedVideoCaptureDeviceController3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhotoConfirmationControl();
    }
    pub fn getZoomControl(self: *@This()) core.HResult!*ZoomControl {
        var this: ?*IAdvancedVideoCaptureDeviceController3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZoomControl();
    }
    pub fn getExposurePriorityVideoControl(self: *@This()) core.HResult!*ExposurePriorityVideoControl {
        var this: ?*IAdvancedVideoCaptureDeviceController4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExposurePriorityVideoControl();
    }
    pub fn getDesiredOptimization(self: *@This()) core.HResult!MediaCaptureOptimization {
        var this: ?*IAdvancedVideoCaptureDeviceController4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredOptimization();
    }
    pub fn putDesiredOptimization(self: *@This(), value: MediaCaptureOptimization) core.HResult!void {
        var this: ?*IAdvancedVideoCaptureDeviceController4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredOptimization(value);
    }
    pub fn getHdrVideoControl(self: *@This()) core.HResult!*HdrVideoControl {
        var this: ?*IAdvancedVideoCaptureDeviceController4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHdrVideoControl();
    }
    pub fn getOpticalImageStabilizationControl(self: *@This()) core.HResult!*OpticalImageStabilizationControl {
        var this: ?*IAdvancedVideoCaptureDeviceController4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOpticalImageStabilizationControl();
    }
    pub fn getAdvancedPhotoControl(self: *@This()) core.HResult!*AdvancedPhotoControl {
        var this: ?*IAdvancedVideoCaptureDeviceController4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAdvancedPhotoControl();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAdvancedVideoCaptureDeviceController5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn GetDevicePropertyById(self: *@This(), propertyId: HSTRING, maxPropertyValueSize: *IReference(u32)) core.HResult!*VideoDeviceControllerGetDevicePropertyResult {
        var this: ?*IAdvancedVideoCaptureDeviceController5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDevicePropertyById(propertyId, maxPropertyValueSize);
    }
    pub fn SetDevicePropertyById(self: *@This(), propertyId: HSTRING, propertyValue: *IInspectable) core.HResult!VideoDeviceControllerSetDevicePropertyStatus {
        var this: ?*IAdvancedVideoCaptureDeviceController5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDevicePropertyById(propertyId, propertyValue);
    }
    pub fn GetDevicePropertyByExtendedId(self: *@This(), extendedPropertyId: [*]u8, maxPropertyValueSize: *IReference(u32)) core.HResult!*VideoDeviceControllerGetDevicePropertyResult {
        var this: ?*IAdvancedVideoCaptureDeviceController5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDevicePropertyByExtendedId(extendedPropertyId, maxPropertyValueSize);
    }
    pub fn SetDevicePropertyByExtendedId(self: *@This(), extendedPropertyId: [*]u8, propertyValue: [*]u8) core.HResult!VideoDeviceControllerSetDevicePropertyStatus {
        var this: ?*IAdvancedVideoCaptureDeviceController5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDevicePropertyByExtendedId(extendedPropertyId, propertyValue);
    }
    pub fn getVideoTemporalDenoisingControl(self: *@This()) core.HResult!*VideoTemporalDenoisingControl {
        var this: ?*IAdvancedVideoCaptureDeviceController6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoTemporalDenoisingControl();
    }
    pub fn getInfraredTorchControl(self: *@This()) core.HResult!*InfraredTorchControl {
        var this: ?*IAdvancedVideoCaptureDeviceController7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInfraredTorchControl();
    }
    pub fn getPanelBasedOptimizationControl(self: *@This()) core.HResult!*PanelBasedOptimizationControl {
        var this: ?*IAdvancedVideoCaptureDeviceController8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPanelBasedOptimizationControl();
    }
    pub fn getDigitalWindowControl(self: *@This()) core.HResult!*DigitalWindowControl {
        var this: ?*IAdvancedVideoCaptureDeviceController9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDigitalWindowControl();
    }
    pub fn getCameraOcclusionInfo(self: *@This()) core.HResult!*CameraOcclusionInfo {
        var this: ?*IAdvancedVideoCaptureDeviceController10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCameraOcclusionInfo();
    }
    pub fn TryAcquireExclusiveControl(self: *@This(), deviceId: HSTRING, mode: MediaCaptureDeviceExclusiveControlReleaseMode) core.HResult!bool {
        var this: ?*IAdvancedVideoCaptureDeviceController11 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedVideoCaptureDeviceController11.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryAcquireExclusiveControl(deviceId, mode);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.VideoDeviceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoDeviceController.GUID;
    pub const IID: Guid = IVideoDeviceController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoDeviceController.SIGNATURE);
};
pub const VideoDeviceControllerGetDevicePropertyResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!VideoDeviceControllerGetDevicePropertyStatus {
        const this: *IVideoDeviceControllerGetDevicePropertyResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IVideoDeviceControllerGetDevicePropertyResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoDeviceControllerGetDevicePropertyResult.GUID;
    pub const IID: Guid = IVideoDeviceControllerGetDevicePropertyResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoDeviceControllerGetDevicePropertyResult.SIGNATURE);
};
pub const VideoDeviceControllerGetDevicePropertyStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    BufferTooSmall = 2,
    NotSupported = 3,
    DeviceNotAvailable = 4,
    MaxPropertyValueSizeTooSmall = 5,
    MaxPropertyValueSizeRequired = 6,
};
pub const VideoDeviceControllerSetDevicePropertyStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    NotSupported = 2,
    InvalidValue = 3,
    DeviceNotAvailable = 4,
    NotInControl = 5,
};
pub const VideoTemporalDenoisingControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IVideoTemporalDenoisingControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(VideoTemporalDenoisingMode) {
        const this: *IVideoTemporalDenoisingControl = @ptrCast(self);
        return try this.getSupportedModes();
    }
    pub fn getMode(self: *@This()) core.HResult!VideoTemporalDenoisingMode {
        const this: *IVideoTemporalDenoisingControl = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: VideoTemporalDenoisingMode) core.HResult!void {
        const this: *IVideoTemporalDenoisingControl = @ptrCast(self);
        return try this.putMode(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.VideoTemporalDenoisingControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoTemporalDenoisingControl.GUID;
    pub const IID: Guid = IVideoTemporalDenoisingControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoTemporalDenoisingControl.SIGNATURE);
};
pub const VideoTemporalDenoisingMode = enum(i32) {
    Off = 0,
    On = 1,
    Auto = 2,
};
pub const WhiteBalanceControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getPreset(self: *@This()) core.HResult!ColorTemperaturePreset {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.getPreset();
    }
    pub fn SetPresetAsync(self: *@This(), preset: ColorTemperaturePreset) core.HResult!*IAsyncAction {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.SetPresetAsync(preset);
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.getStep();
    }
    pub fn getValue(self: *@This()) core.HResult!u32 {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn SetValueAsync(self: *@This(), temperature: u32) core.HResult!*IAsyncAction {
        const this: *IWhiteBalanceControl = @ptrCast(self);
        return try this.SetValueAsync(temperature);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.WhiteBalanceControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWhiteBalanceControl.GUID;
    pub const IID: Guid = IWhiteBalanceControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWhiteBalanceControl.SIGNATURE);
};
pub const ZoomControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IZoomControl = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!f32 {
        const this: *IZoomControl = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!f32 {
        const this: *IZoomControl = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!f32 {
        const this: *IZoomControl = @ptrCast(self);
        return try this.getStep();
    }
    pub fn getValue(self: *@This()) core.HResult!f32 {
        const this: *IZoomControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: f32) core.HResult!void {
        const this: *IZoomControl = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getSupportedModes(self: *@This()) core.HResult!*IVectorView(ZoomTransitionMode) {
        var this: ?*IZoomControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IZoomControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedModes();
    }
    pub fn getMode(self: *@This()) core.HResult!ZoomTransitionMode {
        var this: ?*IZoomControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IZoomControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMode();
    }
    pub fn Configure(self: *@This(), settings: *ZoomSettings) core.HResult!void {
        var this: ?*IZoomControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IZoomControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Configure(settings);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ZoomControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IZoomControl.GUID;
    pub const IID: Guid = IZoomControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IZoomControl.SIGNATURE);
};
pub const ZoomSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!ZoomTransitionMode {
        const this: *IZoomSettings = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: ZoomTransitionMode) core.HResult!void {
        const this: *IZoomSettings = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getValue(self: *@This()) core.HResult!f32 {
        const this: *IZoomSettings = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: f32) core.HResult!void {
        const this: *IZoomSettings = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IZoomSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.ZoomSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IZoomSettings.GUID;
    pub const IID: Guid = IZoomSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IZoomSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ZoomTransitionMode = enum(i32) {
    Auto = 0,
    Direct = 1,
    Smooth = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const MediaStreamType = @import("./Capture.zig").MediaStreamType;
const VariablePhotoSequenceController = @import("./Core.zig").VariablePhotoSequenceController;
const MediaThumbnailFormat = @import("./MediaProperties.zig").MediaThumbnailFormat;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const HRESULT = @import("../root.zig").HRESULT;
const MediaRatio = @import("./MediaProperties.zig").MediaRatio;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const AudioCaptureEffectsManager = @import("./Effects.zig").AudioCaptureEffectsManager;
const Rect = @import("../Foundation.zig").Rect;
const PowerlineFrequency = @import("./Capture.zig").PowerlineFrequency;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const Panel = @import("../Devices/Enumeration.zig").Panel;
const HSTRING = @import("../root.zig").HSTRING;
const MediaCaptureDeviceExclusiveControlReleaseMode = @import("./Capture.zig").MediaCaptureDeviceExclusiveControlReleaseMode;
const IMediaEncodingProperties = @import("./MediaProperties.zig").IMediaEncodingProperties;
const IAgileObject = @import("../root.zig").IAgileObject;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const MediaPixelFormat = @import("./MediaProperties.zig").MediaPixelFormat;
pub const Core = @import("./Devices/Core.zig");
