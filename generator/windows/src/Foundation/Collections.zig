pub const CollectionChange = enum(i32) {
    Reset = 0,
    ItemInserted = 1,
    ItemRemoved = 2,
    ItemChanged = 3,
};
pub fn IIterable(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var _r: *IIterator(T) = undefined;
            const _c = self.vtable.First(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IIterable";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("faa585ea-6214-4217-afda-7f46de5869b3", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            First: *const fn(self: *anyopaque, _r: **IIterator(T)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IIterator(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn getCurrent(self: *@This()) core.HResult!core.generic(T) {
        var _r: core.generic(T) = undefined;
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
        pub fn GetMany(self: *@This(), items: [*]core.generic(T)) core.HResult!u32 {
        var _r: u32 = undefined;
            const _c = self.vtable.GetMany(@ptrCast(self), items, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IIterator";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("6a79e863-4300-459a-9966-cbb660963ee1", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            get_Current: *const fn(self: *anyopaque, _r: *core.generic(T)) callconv(.winapi) HRESULT,
            get_HasCurrent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
            MoveNext: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
            GetMany: *const fn(self: *anyopaque, items: [*]core.generic(T), _r: *u32) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IKeyValuePair(K: type, V: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn getKey(self: *@This()) core.HResult!core.generic(K) {
        var _r: core.generic(K) = undefined;
            const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn getValue(self: *@This()) core.HResult!core.generic(V) {
        var _r: core.generic(V) = undefined;
            const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IKeyValuePair";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("02b51929-c1c4-4a7e-8940-0312b5c18500", &.{core.Signature.get(K),core.Signature.get(V)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            get_Key: *const fn(self: *anyopaque, _r: *core.generic(K)) callconv(.winapi) HRESULT,
            get_Value: *const fn(self: *anyopaque, _r: *core.generic(V)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IMapChangedEventArgs(K: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn getCollectionChange(self: *@This()) core.HResult!CollectionChange {
        var _r: CollectionChange = undefined;
            const _c = self.vtable.get_CollectionChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn getKey(self: *@This()) core.HResult!core.generic(K) {
        var _r: core.generic(K) = undefined;
            const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IMapChangedEventArgs";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("9939f4df-050a-4c0f-aa60-77075f9c4777", &.{core.Signature.get(K)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            get_CollectionChange: *const fn(self: *anyopaque, _r: *CollectionChange) callconv(.winapi) HRESULT,
            get_Key: *const fn(self: *anyopaque, _r: *core.generic(K)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IMapView(K: type, V: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn Lookup(self: *@This(), key: core.generic(K)) core.HResult!core.generic(V) {
        var _r: core.generic(V) = undefined;
            const _c = self.vtable.Lookup(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
            const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn HasKey(self: *@This(), key: core.generic(K)) core.HResult!bool {
        var _r: bool = undefined;
            const _c = self.vtable.HasKey(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn Split(self: *@This(), first: *IMapView(K,V), second: *IMapView(K,V)) core.HResult!void {
            const _c = self.vtable.Split(@ptrCast(self), first, second);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IMapView";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("e480ce40-a338-4ada-adcf-272272e48cb9", &.{core.Signature.get(K),core.Signature.get(V)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            Lookup: *const fn(self: *anyopaque, key: core.generic(K), _r: *core.generic(V)) callconv(.winapi) HRESULT,
            get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
            HasKey: *const fn(self: *anyopaque, key: core.generic(K), _r: *bool) callconv(.winapi) HRESULT,
            Split: *const fn(self: *anyopaque, first: *IMapView(K,V), second: *IMapView(K,V)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IMap(K: type, V: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn Lookup(self: *@This(), key: core.generic(K)) core.HResult!core.generic(V) {
        var _r: core.generic(V) = undefined;
            const _c = self.vtable.Lookup(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
            const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn HasKey(self: *@This(), key: core.generic(K)) core.HResult!bool {
        var _r: bool = undefined;
            const _c = self.vtable.HasKey(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn GetView(self: *@This()) core.HResult!*IMapView(K,V) {
        var _r: *IMapView(K,V) = undefined;
            const _c = self.vtable.GetView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn Insert(self: *@This(), key: core.generic(K), value: core.generic(V)) core.HResult!bool {
        var _r: bool = undefined;
            const _c = self.vtable.Insert(@ptrCast(self), key, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn Remove(self: *@This(), key: core.generic(K)) core.HResult!void {
            const _c = self.vtable.Remove(@ptrCast(self), key);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn Clear(self: *@This()) core.HResult!void {
            const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IMap";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("3c2925fe-8519-45c1-aa79-197b6718c1c1", &.{core.Signature.get(K),core.Signature.get(V)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            Lookup: *const fn(self: *anyopaque, key: core.generic(K), _r: *core.generic(V)) callconv(.winapi) HRESULT,
            get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
            HasKey: *const fn(self: *anyopaque, key: core.generic(K), _r: *bool) callconv(.winapi) HRESULT,
            GetView: *const fn(self: *anyopaque, _r: **IMapView(K,V)) callconv(.winapi) HRESULT,
            Insert: *const fn(self: *anyopaque, key: core.generic(K), value: core.generic(V), _r: *bool) callconv(.winapi) HRESULT,
            Remove: *const fn(self: *anyopaque, key: core.generic(K)) callconv(.winapi) HRESULT,
            Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IObservableMap(K: type, V: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(K,V)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
            const _c = self.vtable.add_MapChanged(@ptrCast(self), vhnd, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
            const _c = self.vtable.remove_MapChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IObservableMap";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("65df2bf5-bf39-41b5-aebc-5a9d865e472b", &.{core.Signature.get(K),core.Signature.get(V)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            add_MapChanged: *const fn(self: *anyopaque, vhnd: *MapChangedEventHandler(K,V), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
            remove_MapChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IObservableVector(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn addVectorChanged(self: *@This(), vhnd: *VectorChangedEventHandler(T)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
            const _c = self.vtable.add_VectorChanged(@ptrCast(self), vhnd, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn removeVectorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
            const _c = self.vtable.remove_VectorChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IObservableVector";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("5917eb53-50b4-4a0d-b309-65862b3f1dbc", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            add_VectorChanged: *const fn(self: *anyopaque, vhnd: *VectorChangedEventHandler(T), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
            remove_VectorChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        };
    };
}
pub const IPropertySet = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Collections.IPropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a43ed9f-f4e6-4421-acf9-1dab2986820c";
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
pub const IVectorChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCollectionChange(self: *@This()) core.HResult!CollectionChange {
        var _r: CollectionChange = undefined;
        const _c = self.vtable.get_CollectionChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Index(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Collections.IVectorChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "575933df-34fe-4480-af15-07691f3d5d9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CollectionChange: *const fn(self: *anyopaque, _r: *CollectionChange) callconv(.winapi) HRESULT,
        get_Index: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub fn IVectorView(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var _r: core.generic(T) = undefined;
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
        pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var _r: bool = undefined;
            const _c = self.vtable.IndexOf(@ptrCast(self), value, index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var _r: u32 = undefined;
            const _c = self.vtable.GetMany(@ptrCast(self), startIndex, items, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IVectorView";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("bbe1fa4c-b0e3-4583-baef-1f1b2e483e56", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            GetAt: *const fn(self: *anyopaque, index: u32, _r: *core.generic(T)) callconv(.winapi) HRESULT,
            get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
            IndexOf: *const fn(self: *anyopaque, value: core.generic(T), index: u32, _r: *bool) callconv(.winapi) HRESULT,
            GetMany: *const fn(self: *anyopaque, startIndex: u32, items: [*]core.generic(T), _r: *u32) callconv(.winapi) HRESULT,
        };
    };
}
pub fn IVector(T: type) type {
    return extern struct {
        vtable: *const VTable,
        pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var _r: core.generic(T) = undefined;
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
        pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        var _r: *IVectorView(T) = undefined;
            const _c = self.vtable.GetView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var _r: bool = undefined;
            const _c = self.vtable.IndexOf(@ptrCast(self), value, index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
            const _c = self.vtable.SetAt(@ptrCast(self), index, value);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
            const _c = self.vtable.InsertAt(@ptrCast(self), index, value);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
            const _c = self.vtable.RemoveAt(@ptrCast(self), index);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
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
        pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var _r: u32 = undefined;
            const _c = self.vtable.GetMany(@ptrCast(self), startIndex, items, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
        }
        pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
            const _c = self.vtable.ReplaceAll(@ptrCast(self), items);
        if (_c != 0) return core.hresultToError(_c).err;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.IVector";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("913337e9-11a1-4345-a3a2-4e7f956e222d", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
            GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
            GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
            GetAt: *const fn(self: *anyopaque, index: u32, _r: *core.generic(T)) callconv(.winapi) HRESULT,
            get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
            GetView: *const fn(self: *anyopaque, _r: **IVectorView(T)) callconv(.winapi) HRESULT,
            IndexOf: *const fn(self: *anyopaque, value: core.generic(T), index: u32, _r: *bool) callconv(.winapi) HRESULT,
            SetAt: *const fn(self: *anyopaque, index: u32, value: core.generic(T)) callconv(.winapi) HRESULT,
            InsertAt: *const fn(self: *anyopaque, index: u32, value: core.generic(T)) callconv(.winapi) HRESULT,
            RemoveAt: *const fn(self: *anyopaque, index: u32) callconv(.winapi) HRESULT,
            Append: *const fn(self: *anyopaque, value: core.generic(T)) callconv(.winapi) HRESULT,
            RemoveAtEnd: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
            Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
            GetMany: *const fn(self: *anyopaque, startIndex: u32, items: [*]core.generic(T), _r: *u32) callconv(.winapi) HRESULT,
            ReplaceAll: *const fn(self: *anyopaque, items: [*]core.generic(T)) callconv(.winapi) HRESULT,
        };
    };
}
pub fn MapChangedEventHandler(K: type, V: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, k: core.generic(K), v: core.generic(V)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, sender: *IObservableMap(K,V), event: *IMapChangedEventArgs(K)) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, sender: *IObservableMap(K,V), event: *IMapChangedEventArgs(K)) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, sender: *IObservableMap(K,V), event: *IMapChangedEventArgs(K)) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, sender, event);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.MapChangedEventHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("179517f3-94ee-41f8-bddc-768a895544f3", &.{core.Signature.get(K),core.Signature.get(V)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, sender: *IObservableMap(K,V), event: *IMapChangedEventArgs(K)) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
pub const PropertySet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IObservableMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IObservableMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapChanged(token);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPropertySet.IID)));
    }
    pub const NAME: []const u8 = "Windows.Foundation.Collections.PropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertySet.GUID;
    pub const IID: Guid = IPropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertySet.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StringMap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMap(HSTRING,HSTRING) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *IMap(HSTRING,HSTRING) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IMap(HSTRING,HSTRING) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,HSTRING)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,HSTRING)) core.HResult!EventRegistrationToken {
        var this: ?*IObservableMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IObservableMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMap.IID)));
    }
    pub const NAME: []const u8 = "Windows.Foundation.Collections.StringMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMap.GUID;
    pub const IID: Guid = IMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMap.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ValueSet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IObservableMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IObservableMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapChanged(token);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPropertySet.IID)));
    }
    pub const NAME: []const u8 = "Windows.Foundation.Collections.ValueSet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertySet.GUID;
    pub const IID: Guid = IPropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertySet.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub fn VectorChangedEventHandler(T: type) type {
    return extern struct {
        vtable: *const VTable,
        _refs: @import("std").atomic.Value(u32),
        _cb: *const fn (context: ?*anyopaque, t: core.generic(T)) callconv(.winapi) void,
        _context: ?*anyopaque = null,
        /// This creates a heap allocated instance that only frees/destroys when all
        /// references are released including any references Windows makes.
        pub fn init(
            cb: *const fn(?*anyopaque, sender: *IObservableVector(T), event: *IVectorChangedEventArgs) callconv(.winapi) void,
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
            cb: *const fn(?*anyopaque, sender: *IObservableVector(T), event: *IVectorChangedEventArgs) callconv(.winapi) void,
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
        pub fn Invoke(self: *anyopaque, sender: *IObservableVector(T), event: *IVectorChangedEventArgs) callconv(.winapi) HRESULT {
            const this: *@This() = @ptrCast(@alignCast(self));
            this._cb(this._context, sender, event);
            return 0;
        }
        pub const NAME: []const u8 = "Windows.Foundation.Collections.VectorChangedEventHandler";
        pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
        pub const SIGNATURE: []const u8 = core.Signature.pinterface("0c051752-9fbf-4c70-aa0c-0e4c82d9a761", &.{core.Signature.get(T)});
        pub const IID: Guid = core.Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = &core.guidToString(IID);
        pub const VTable = extern struct {
            QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
            AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
            Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
            Invoke: *const fn(self: *anyopaque, sender: *IObservableVector(T), event: *IVectorChangedEventArgs) callconv(.winapi) HRESULT
        };
        pub const VTABLE = VTable {
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
            .Invoke = Invoke,
        };
    };
}
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IAgileObject = @import("../root.zig").IAgileObject;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
