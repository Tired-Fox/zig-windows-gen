const std = @import("std");
const core = @import("../core.zig");
const win32 = @import("win32");
const winrt = @import("../../root.zig");

const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const HSTRING = winrt.HSTRING;

const IInspectable = winrt.IInspectable;
const IUnknown = winrt.IUnknown;
const Implements = core.Implements;
const IID_IAgileObject = win32.system.com.IID_IAgileObject;

const Signature = core.Signature;
const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;
const E_NOINTERFACE = winrt.E_NOINTERFACE;
const TrustLevel = winrt.TrustLevel;
const WindowsGetString = winrt.WindowsGetString;
const wiredGuid = winrt.foundation.wiredGuid;
const S_OK = winrt.S_OK;

pub const CollectionChange = enum(i32) {
    reset = 0,
    item_inserted = 1,
    item_removed = 2,
    item_changed = 3,
};

pub fn IMapChangedEventArgs(K: type) type {
    const KEY = if (core.isInterface(K)) *K else K;
    return extern struct {
        vtable: *const VTable,

        pub fn collectionChange(self: *@This()) CollectionChange {
            var result: CollectionChange = undefined;
            _ = self.vtable.CollectionChange(@ptrCast(self), &result);
            return result;
        }

        pub fn key(self: *@This()) KEY {
            var result: KEY = undefined;
            _ = self.vtable.Key(@ptrCast(self), &result);
            return result;
        }

        pub const SIGNATURE: []const u8 = Signature.pinterface("9939f4df-050a-4c0f-aa60-77075f9c4777", &.{ K.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IMapChangedEventArgs";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const VTable = Implements(IInspectable.VTable, struct {
            CollectionChange: *const fn(*anyopaque, *CollectionChange) callconv(.c) HRESULT,
            Key: *const fn(*anyopaque, *KEY) callconv(.c) HRESULT,
        });
    };
}

// The type erased interface for a MapChangedEventHandler
//
// The first part of the memory layout is the same as `MapChangedEventHandler(K,V)`
// so it functions as expected when the pointers are cast between the two types
// when crossing the boundry between zig and windows.
pub const IMapChangedEventHandler = extern struct {
    // COM vtable layout
    vtable: *const VTable,

    pub const VTable = extern struct {
        QueryInterface: *const fn (
            self: *anyopaque,
            riid: *const Guid,
            ppvObject: *?*anyopaque,
        ) callconv(.c) HRESULT,
        AddRef: *const fn (
            self: *anyopaque,
        ) callconv(.c) u32,
        Release: *const fn (
            self: *anyopaque,
        ) callconv(.c) u32,

        // Invoke method for the delegate
        Invoke: *const fn (
            self: *IMapChangedEventHandler,
            sender: *anyopaque,
            args: *anyopaque,
        ) callconv(.c) HRESULT,
    };
};

/// Represents a method that handles general events
///
/// This method handles delegating the invoked callback for a
/// given typed event.
pub fn MapChangedEventHandler(K: type, V: type) type {
    const KEY = if (core.isInterface(K)) *K else K;
    const VALUE = if (core.isInterface(V)) *V else V;


    const signature: []const u8 = Signature.pinterface("179517f3-94ee-41f8-bddc-768a895544f3", &.{ K.SIGNATURE, Signature.cinterface(V) });
    const iid = Signature.guid(signature);

    return extern struct {
        const SIGNATURE = signature;
        const IID = iid;
        const GUID = Signature.guid_string(iid);

        pub const VTABLE = IMapChangedEventHandler.VTable{
            .QueryInterface = queryInterface,
            .AddRef = addRef,
            .Release = release,
            .Invoke = invoke,
        };

        vtable: *const IMapChangedEventHandler.VTable,
        refs: std.atomic.Value(u32),
        cb: *const fn (context: ?*anyopaque, sender: KEY, args: VALUE) callconv(.c) void,
        context: ?*anyopaque = null,

        pub fn init(callback: *const fn (context: ?*anyopaque, sender: KEY, args: VALUE) callconv(.c) void) @This() {
            return .{
                .vtable = &VTABLE,
                .refs = std.atomic.Value(u32).init(1),
                .cb = callback,
            };
        }

        pub fn initWithState(callback: *const fn (context: ?*anyopaque, sender: KEY, args: VALUE) callconv(.c) void, context: anytype) @This() {
            return .{
                .vtable = &VTABLE,
                .refs = std.atomic.Value(u32).init(1),
                .cb = callback,
                .context = @ptrCast(context),
            };
        }

        fn queryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
            const me: *@This() = @ptrCast(@alignCast(self));
            // TODO: Handle IMarshal
            if (std.mem.eql(u8, &riid.Bytes, &wiredGuid(&IID).Bytes) or
                std.mem.eql(u8, &riid.Bytes, &wiredGuid(&IUnknown.IID).Bytes) or
                std.mem.eql(u8, &riid.Bytes, &wiredGuid(IID_IAgileObject).Bytes))
            {
                out.* = @as(?*anyopaque, @ptrCast(me));
                _ = addRef(self);
                return S_OK;
            }
            out.* = null;
            return @bitCast(E_NOINTERFACE);
        }

        fn addRef(self: *anyopaque) callconv(.c) u32 {
            const me: *@This() = @ptrCast(@alignCast(self));
            return me.refs.fetchAdd(1, .monotonic) + 1;
        }

        fn release(self: *anyopaque) callconv(.c) u32 {
            const me: *@This() = @ptrCast(@alignCast(self));
            const left = me.refs.fetchSub(1, .acq_rel) - 1;
            return left;
        }

        // Invoke(sender, args) - Convert sender to `I` and pass it to the stored callback
        //
        // This will always return `S_OK` because event callbacks shouldn't fail
        fn invoke(self: *IMapChangedEventHandler, sender: *anyopaque, args: *anyopaque) callconv(.c) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            // TODO: Allow user to store a pointer to some state in this delegate so it can be
            //       passed to the callback
            this.cb(this.context, @ptrCast(@alignCast(sender)), @ptrCast(@alignCast(args)));
            return S_OK;
        }
    };
}

pub fn IIterable(I: type) type {
    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn first(self: *@This()) !*IIterator(I) {
            var result: *IIterable(I) = undefined;
            if (self.vtable.First(@ptrCast(self), &result) != S_OK) {
                return error.InitIterator;
            }
            return result;
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IIterable";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("faa585ea-6214-4217-afda-7f46de5869b3", &.{ I.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            First: *const fn(*anyopaque, **IIterator(I)) callconv(.c) HRESULT,
        });
    };
}

pub fn IIterator(I: type) type {
    const TYPE = if (core.isInterface(I)) *I else I;

    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn current(self: *@This()) !TYPE {
            var result: TYPE = undefined;
            if (self.vtable.Current(@ptrCast(self), &result) != S_OK) {
                return error.NoCurrentItem;
            }
            return result;
        }

        pub fn hasCurrent(self: *@This()) bool {
            var result: bool = false;
            _ = self.vtable.HasCurrent(@ptrCast(self), &result);
            return result;
        }

        pub fn moveNext(self: *@This()) bool {
            var result: bool = false;
            _ = self.vtable.MoveNext(@ptrCast(self), &result);
            return result;
        }

        pub fn getMany(self: *@This(), count: u32) []I {
            var result: [*]I = undefined;
            var actual: u32 = 0;
            _ = self.vtable.GetMany(@ptrCast(self), count, &result, &actual);
            return result[0..@as(usize, @intCast(actual))];
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IIterator";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("6a79e863-4300-459a-9966-cbb660963ee1", &.{ I.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            Current: *const fn(*anyopaque, *TYPE) callconv(.c) HRESULT,
            HasCurrent: *const fn(*anyopaque, *bool) callconv(.c) HRESULT,
            MoveNext: *const fn(*anyopaque, *bool) callconv(.c) HRESULT,
            GetMany: *const fn(*anyopaque, u32, *[*]I, *u32) callconv(.c) HRESULT,
        });
    };
}

pub fn IVectorView(I: type) type {
    const TYPE = if (core.isInterface(I)) *I else I;

    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn getAt(self: *@This(), idx: u32) !TYPE {
            var result: TYPE = undefined;
            if (self.vtable.GetAt(@ptrCast(self), idx, &result) != S_OK) {
                return error.OutOfBounds;
            }
            return result;
        }

        pub fn size(self: *@This()) u32 {
            var result: u32 = 0;
            _ = self.vtable.Size(@ptrCast(self), &result);
            return result;
        }

        pub fn indexOf(self: *@This(), item: TYPE) ?u32 {
            var result: u32 = 0;
            var found: bool = false;
            _ = self.vtable.IndexOf(@ptrCast(self), item, &result, &found);
            return if (found) result else null;
        }

        pub fn getMany(self: *@This(), start: u32, end: u32) ![]I {
            var count: u32 = 0;
            var result: [*]I = undefined;
            if (self.vtable.GetMany(@ptrCast(self), start, end, &result, &count) != S_OK) {
                return error.OutOfBounds;
            }
            return result[0..count];
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IVectorView";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("bbe1fa4c-b0e3-4583-baef-1f1b2e483e56", &.{ I.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            GetAt: *const fn(*anyopaque, u32, *TYPE) callconv(.c) HRESULT,
            Size: *const fn(*anyopaque, *u32) callconv(.c) HRESULT,
            IndexOf: *const fn(*anyopaque, TYPE, *u32, *bool) callconv(.c) HRESULT,
            GetMany: *const fn(*anyopaque, u32, u32, *[*]I, *u32) callconv(.c) HRESULT,
        });
    };
}

pub fn IKeyValuePair(K: type, V: type) type {
    const KEY = if (core.isInterface(K)) *K else K;
    const VALUE = if (core.isInterface(V)) *V else V;

    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn key(self: *@This()) KEY {
            var result: KEY = undefined;
            _ = self.vtable.Key(@ptrCast(self), &result);
            return result;
        }

        pub fn value(self: *@This()) VALUE {
            var result: VALUE = undefined;
            _ = self.vtable.Value(@ptrCast(self), &result);
            return result;
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IKeyValuePair";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("02b51929-c1c4-4a7e-8940-0312b5c18500", &.{ K.SIGNATURE, V.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            Key: *const fn(*anyopaque, *KEY) callconv(.c) HRESULT,
            Value: *const fn(*anyopaque, *VALUE) callconv(.c) HRESULT,
        });
    };
}

pub fn IMap(K: type, V: type) type {
    const KEY = if (core.isInterface(K)) *K else K;
    const VALUE = if (core.isInterface(V)) *V else V;

    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn lookup(self: *@This(), key: *K) !*V {
            var result: *V = undefined;
            if (self.vtable.Lookup(@ptrCast(self), key, &result) != S_OK) {
                return error.Bounds;
            }
            return result;
        }

        pub fn size(self: *@This()) u32 {
            var result: u32 = 0;
            _ = self.vtable.Size(@ptrCast(self), &result);
            return result;
        }

        pub fn hasKey(self: *@This(), key: KEY) bool {
            var result: bool = false;
            _ = self.vtable.HasKey(@ptrCast(self), key, &result);
            return result;
        }

        pub fn getView(self: *@This()) *IMapView(K, V) {
            var result: *IMapView(K, V) = undefined;
            _ = self.vtable.GetView(@ptrCast(self), &result);
            return result;
        }

        pub fn insert(self: *@This(), key: KEY, value: VALUE) bool {
            var result: bool = false;
            _ = self.vtable.Insert(@ptrCast(self), key, value, &result);
            return result;
        }

        pub fn remove(self: *@This(), key: KEY) void {
            _ = self.vtable.Remove(@ptrCast(self), key);
        }

        pub fn clear(self: *@This()) void {
            _ = self.vtable.Clear(@ptrCast(self));
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IMap";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("3c2925fe-8519-45c1-aa79-197b6718c1c1", &.{ K.SIGNATURE, V.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            Lookup: *const fn(*anyopaque, KEY, *VALUE) callconv(.c) HRESULT,
            Size: *const fn(*anyopaque, *u32) callconv(.c) HRESULT,
            HasKey: *const fn(*anyopaque, KEY, *bool) callconv(.c) HRESULT,
            GetView: *const fn(*anyopaque, **IMapView(K, V)) callconv(.c) HRESULT,
            Insert: *const fn(*anyopaque, KEY, VALUE, *bool) callconv(.c) HRESULT,
            Remove: *const fn(*anyopaque, KEY) callconv(.c) HRESULT,
            Clear: *const fn(*anyopaque) callconv(.c) HRESULT,
        });
    };
}

pub fn IMapView(K: type, V: type) type {
    const KEY = if (core.isInterface(K)) *K else K;
    const VALUE = if (core.isInterface(V)) *V else V;

    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn lookup(self: *@This(), key: KEY) !VALUE {
            var result: VALUE = undefined;
            if (self.vtable.Lookup(@ptrCast(self), key, &result) != S_OK) {
                return error.Bounds;
            }
            return result;
        }

        pub fn size(self: *@This()) u32 {
            var result: u32 = 0;
            _ = self.vtable.Size(@ptrCast(self), &result);
            return result;
        }

        pub fn hasKey(self: *@This(), key: KEY) bool {
            var result: bool = false;
            _ = self.vtable.HasKey(@ptrCast(self), key, &result);
            return result;
        }

        pub fn split(self: *@This()) std.meta.Tuple(&.{ IMapView(K,V), IMapView(K,V) }) {
            var a: *IMapView(K, V) = undefined;
            var b: *IMapView(K, V) = undefined;
            _ = self.vtable.Split(@ptrCast(self), &a, &b);
            return .{ a, b };
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IMapView";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("e480ce40-a338-4ada-adcf-272272e48cb9", &.{ K.SIGNATURE, V.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            // TODO: Update params to be the correct type
            Lookup: *const fn(*anyopaque, KEY, *VALUE) callconv(.c) HRESULT,
            Size: *const fn(*anyopaque, *u32) callconv(.c) HRESULT,
            HasKey: *const fn(*anyopaque, KEY, *bool) callconv(.c) HRESULT,
            Split: *const fn(*anyopaque, **IMapView(K,V), **IMapView(K,V)) callconv(.c) HRESULT,
        });
    };
}

pub fn IObservableMap(K: type, V: type) type {
    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn mapChanged(self: *@This(), handler: *MapChangedEventHandler(K, V)) i64 {
            var handle: i64 = 0;
            if (self.vtable.MapChanged(@ptrCast(self), handler, &handle) != S_OK) {
                return error.BindHookFailure;
            }
            return handle;
        }

        pub fn removeMapChanged(self: *@This(), handle: i64) void {
            _ = self.vtable.RemoveMapChanged(@ptrCast(self), handle);
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IObservableMap";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("65df2bf5-bf39-41b5-aebc-5a9d865e472b", &.{ K.SIGNATURE, V.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            // TODO: Update params to be the correct type
            MapChanged: *const fn(*anyopaque, *anyopaque, *i64) callconv(.c) HRESULT,
            RemoveMapChanged: *const fn(*anyopaque, i64) callconv(.c) HRESULT,
        });
    };
}

pub const IPropertySet = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IPropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = "8a43ed9f-f4e6-4421-acf9-1dab2986820c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = IInspectable.VTable;
};

pub const ValueSet = extern struct {
    vtable: *const IPropertySet.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn first(self: *@This()) !*IIterator(IKeyValuePair(HSTRING, IInspectable)) {
        const this: *IIterable(IKeyValuePair(HSTRING, IInspectable)) = try self.queryInterface(IIterable(IKeyValuePair(HSTRING, IInspectable)));
        return this.first(self);
    }

    pub fn lookup(self: *@This(), key: HSTRING) !*IInspectable {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        return this.lookup(self, key);
    }

    pub fn size(self: *@This()) bool {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        return this.size(self);
    }

    pub fn hasKey(self: *@This(), key: HSTRING) !bool {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        return this.hasKey(self, key);
    }

    pub fn insert(self: *@This(), key: HSTRING, value: *IInspectable) !bool {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        return this.insert(self, key, value);
    }

    pub fn remove(self: *@This(), key: HSTRING) !void {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        this.remove(self, key);
    }

    pub fn getView(self: *@This()) !*IMapView(HSTRING,IInspectable) {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        return this.getView(self);
    }

    pub fn clear(self: *@This()) !void {
        const this: *IMap(HSTRING, IInspectable) = try self.queryInterface(IMap(HSTRING, IInspectable));
        return this.clear(self);
    }

    pub fn mapChanged(self: *@This(), handler: *MapChangedEventHandler(HSTRING, IInspectable)) !i64 {
        const this: *IObservableMap(HSTRING, IInspectable) = try self.queryInterface(IObservableMap(HSTRING, IInspectable));
        return this.mapChanged(self, handler);
    }

    pub fn removeMapChanged(self: *@This(), handle: i64) !void {
        const this: *IObservableMap(HSTRING, IInspectable) = try self.queryInterface(IObservableMap(HSTRING, IInspectable));
        this.removeMapChanged(self, handle);
    }

    pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.ValueSet";
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = IPropertySet.GUID;
    pub const IID: Guid = IPropertySet.IID;
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, &.{ IPropertySet.SIGNATURE });
};
