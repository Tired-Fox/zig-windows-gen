pub const BindableVectorChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, vector: *IBindableObservableVector, e: *IInspectable) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, vector: *IBindableObservableVector, e: *IInspectable) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, vector: *IBindableObservableVector, e: *IInspectable) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, vector, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.BindableVectorChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "624cd4e1-d007-43b1-9c03-af4d3e6258c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, vector: *IBindableObservableVector, e: *IInspectable) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IBindableIterable = extern struct {
    vtable: *const VTable,
    pub fn First(self: *@This()) core.HResult!*IBindableIterator {
        var _r: *IBindableIterator = undefined;
        const _c = self.vtable.First(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.IBindableIterable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "036d2c08-df29-41af-8aa2-d774be62ba6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        First: *const fn(self: *anyopaque, _r: **IBindableIterator) callconv(.winapi) HRESULT,
    };
};
pub const IBindableIterator = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasCurrent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasCurrent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveNext(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveNext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.IBindableIterator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a1d6c07-076d-49f2-8314-f52c9c9a8331";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_HasCurrent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        MoveNext: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBindableObservableVector = extern struct {
    vtable: *const VTable,
    pub fn addVectorChanged(self: *@This(), handler: *BindableVectorChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VectorChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVectorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VectorChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.IBindableObservableVector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe1eb536-7e7f-4f90-ac9a-474984aae512";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_VectorChanged: *const fn(self: *anyopaque, handler: *BindableVectorChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VectorChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBindableVector = extern struct {
    vtable: *const VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetView(self: *@This()) core.HResult!*IBindableVectorView {
        var _r: *IBindableVectorView = undefined;
        const _c = self.vtable.GetView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IndexOf(self: *@This(), value: *IInspectable, index: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IndexOf(@ptrCast(self), value, index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAt(self: *@This(), index: u32, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetAt(@ptrCast(self), index, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertAt(self: *@This(), index: u32, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.InsertAt(@ptrCast(self), index, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const _c = self.vtable.RemoveAt(@ptrCast(self), index);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Append(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAtEnd(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.IBindableVector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "393de7de-6fd0-4c0d-bb71-47244a113e93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAt: *const fn(self: *anyopaque, index: u32, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetView: *const fn(self: *anyopaque, _r: **IBindableVectorView) callconv(.winapi) HRESULT,
        IndexOf: *const fn(self: *anyopaque, value: *IInspectable, index: u32, _r: *bool) callconv(.winapi) HRESULT,
        SetAt: *const fn(self: *anyopaque, index: u32, value: *IInspectable) callconv(.winapi) HRESULT,
        InsertAt: *const fn(self: *anyopaque, index: u32, value: *IInspectable) callconv(.winapi) HRESULT,
        RemoveAt: *const fn(self: *anyopaque, index: u32) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        RemoveAtEnd: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBindableVectorView = extern struct {
    vtable: *const VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IndexOf(self: *@This(), value: *IInspectable, index: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IndexOf(@ptrCast(self), value, index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.IBindableVectorView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "346dd6e7-976e-4bc3-815d-ece243bc0f33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAt: *const fn(self: *anyopaque, index: u32, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        IndexOf: *const fn(self: *anyopaque, value: *IInspectable, index: u32, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const INotifyCollectionChanged = extern struct {
    vtable: *const VTable,
    pub fn addCollectionChanged(self: *@This(), handler: *NotifyCollectionChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CollectionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCollectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CollectionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.INotifyCollectionChanged";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28b167d5-1a31-465b-9b25-d5c3ae686c40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CollectionChanged: *const fn(self: *anyopaque, handler: *NotifyCollectionChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CollectionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const INotifyCollectionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!NotifyCollectionChangedAction {
        var _r: NotifyCollectionChangedAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewItems(self: *@This()) core.HResult!*IBindableVector {
        var _r: *IBindableVector = undefined;
        const _c = self.vtable.get_NewItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldItems(self: *@This()) core.HResult!*IBindableVector {
        var _r: *IBindableVector = undefined;
        const _c = self.vtable.get_OldItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewStartingIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NewStartingIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldStartingIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_OldStartingIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.INotifyCollectionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4cf68d33-e3f2-4964-b85e-945b4f7e2f21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *NotifyCollectionChangedAction) callconv(.winapi) HRESULT,
        get_NewItems: *const fn(self: *anyopaque, _r: **IBindableVector) callconv(.winapi) HRESULT,
        get_OldItems: *const fn(self: *anyopaque, _r: **IBindableVector) callconv(.winapi) HRESULT,
        get_NewStartingIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_OldStartingIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const INotifyCollectionChangedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithAllParameters(self: *@This(), action: NotifyCollectionChangedAction, newItems: *IBindableVector, oldItems: *IBindableVector, newIndex: i32, oldIndex: i32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NotifyCollectionChangedEventArgs {
        var _r: *NotifyCollectionChangedEventArgs = undefined;
        const _c = self.vtable.CreateInstanceWithAllParameters(@ptrCast(self), action, newItems, oldItems, newIndex, oldIndex, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.INotifyCollectionChangedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b30c3e3a-df8d-44a5-9a38-7ac0d08ce63d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithAllParameters: *const fn(self: *anyopaque, action: NotifyCollectionChangedAction, newItems: *IBindableVector, oldItems: *IBindableVector, newIndex: i32, oldIndex: i32, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **NotifyCollectionChangedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const NotifyCollectionChangedAction = enum(i32) {
    Add = 0,
    Remove = 1,
    Replace = 2,
    Move = 3,
    Reset = 4,
};
pub const NotifyCollectionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!NotifyCollectionChangedAction {
        const this: *INotifyCollectionChangedEventArgs = @ptrCast(self);
        return try this.getAction();
    }
    pub fn getNewItems(self: *@This()) core.HResult!*IBindableVector {
        const this: *INotifyCollectionChangedEventArgs = @ptrCast(self);
        return try this.getNewItems();
    }
    pub fn getOldItems(self: *@This()) core.HResult!*IBindableVector {
        const this: *INotifyCollectionChangedEventArgs = @ptrCast(self);
        return try this.getOldItems();
    }
    pub fn getNewStartingIndex(self: *@This()) core.HResult!i32 {
        const this: *INotifyCollectionChangedEventArgs = @ptrCast(self);
        return try this.getNewStartingIndex();
    }
    pub fn getOldStartingIndex(self: *@This()) core.HResult!i32 {
        const this: *INotifyCollectionChangedEventArgs = @ptrCast(self);
        return try this.getOldStartingIndex();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithAllParameters(action: NotifyCollectionChangedAction, newItems: *IBindableVector, oldItems: *IBindableVector, newIndex: i32, oldIndex: i32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NotifyCollectionChangedEventArgs {
        const _f = @This().INotifyCollectionChangedEventArgsFactoryCache.get();
        return try _f.CreateInstanceWithAllParameters(action, newItems, oldItems, newIndex, oldIndex, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.NotifyCollectionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotifyCollectionChangedEventArgs.GUID;
    pub const IID: Guid = INotifyCollectionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotifyCollectionChangedEventArgs.SIGNATURE);
    var _INotifyCollectionChangedEventArgsFactoryCache: FactoryCache(INotifyCollectionChangedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const NotifyCollectionChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *NotifyCollectionChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *NotifyCollectionChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *NotifyCollectionChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Interop.NotifyCollectionChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca10b37c-f382-4591-8557-5e24965279b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *NotifyCollectionChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TypeKind = enum(i32) {
    Primitive = 0,
    Metadata = 1,
    Custom = 2,
};
pub const TypeName = extern struct {
    Name: HSTRING,
    Kind: TypeKind,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IAgileObject = @import("../../root.zig").IAgileObject;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
