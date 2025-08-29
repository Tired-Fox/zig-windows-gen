pub const IPnpObject = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!PnpObjectType {
        var _r: PnpObjectType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Update(self: *@This(), updateInfo: *PnpObjectUpdate) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self), updateInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.IPnpObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95c66258-733b-4a8f-93a3-db078ac870c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PnpObjectType) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque, updateInfo: *PnpObjectUpdate) callconv(.winapi) HRESULT,
    };
};
pub const IPnpObjectStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromIdAsync(self: *@This(), ty: PnpObjectType, id: HSTRING, requestedProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(PnpObject) {
        var _r: *IAsyncOperation(PnpObject) = undefined;
        const _c = self.vtable.CreateFromIdAsync(@ptrCast(self), ty, id, requestedProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), ty: PnpObjectType, requestedProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(PnpObjectCollection) {
        var _r: *IAsyncOperation(PnpObjectCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), ty, requestedProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsyncWithRequestedPropertiesWithAqsFilter(self: *@This(), ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), aqsFilter: HSTRING) core.HResult!*IAsyncOperation(PnpObjectCollection) {
        var _r: *IAsyncOperation(PnpObjectCollection) = undefined;
        const _c = self.vtable.FindAllAsyncWithRequestedPropertiesWithAqsFilter(@ptrCast(self), ty, requestedProperties, aqsFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), ty: PnpObjectType, requestedProperties: *IIterable(HSTRING)) core.HResult!*PnpObjectWatcher {
        var _r: *PnpObjectWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), ty, requestedProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcherWithRequestedPropertiesWithAqsFilter(self: *@This(), ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), aqsFilter: HSTRING) core.HResult!*PnpObjectWatcher {
        var _r: *PnpObjectWatcher = undefined;
        const _c = self.vtable.CreateWatcherWithRequestedPropertiesWithAqsFilter(@ptrCast(self), ty, requestedProperties, aqsFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.IPnpObjectStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3c32a3d-d168-4660-bbf3-a733b14b6e01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromIdAsync: *const fn(self: *anyopaque, ty: PnpObjectType, id: HSTRING, requestedProperties: *IIterable(HSTRING), _r: **IAsyncOperation(PnpObject)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), _r: **IAsyncOperation(PnpObjectCollection)) callconv(.winapi) HRESULT,
        FindAllAsyncWithRequestedPropertiesWithAqsFilter: *const fn(self: *anyopaque, ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), aqsFilter: HSTRING, _r: **IAsyncOperation(PnpObjectCollection)) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), _r: **PnpObjectWatcher) callconv(.winapi) HRESULT,
        CreateWatcherWithRequestedPropertiesWithAqsFilter: *const fn(self: *anyopaque, ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), aqsFilter: HSTRING, _r: **PnpObjectWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IPnpObjectUpdate = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!PnpObjectType {
        var _r: PnpObjectType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f59e812-001e-4844-bcc6-432886856a17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PnpObjectType) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IPnpObjectWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,PnpObject)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,PnpObjectUpdate)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,PnpObjectUpdate)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        var _r: DeviceWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83c95ca8-4772-4a7a-aca8-e48c42a89c44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(PnpObjectWatcher,PnpObject), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(PnpObjectWatcher,PnpObjectUpdate), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(PnpObjectWatcher,PnpObjectUpdate), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PnpObjectWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PnpObjectWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const PnpObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!PnpObjectType {
        const this: *IPnpObject = @ptrCast(self);
        return try this.getType();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPnpObject = @ptrCast(self);
        return try this.getId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IPnpObject = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn Update(self: *@This(), updateInfo: *PnpObjectUpdate) core.HResult!void {
        const this: *IPnpObject = @ptrCast(self);
        return try this.Update(updateInfo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromIdAsync(ty: PnpObjectType, id: HSTRING, requestedProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(PnpObject) {
        const factory = @This().IPnpObjectStaticsCache.get();
        return try factory.CreateFromIdAsync(ty, id, requestedProperties);
    }
    pub fn FindAllAsync(ty: PnpObjectType, requestedProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(PnpObjectCollection) {
        const factory = @This().IPnpObjectStaticsCache.get();
        return try factory.FindAllAsync(ty, requestedProperties);
    }
    pub fn FindAllAsyncWithAqsFilter(ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), aqsFilter: HSTRING) core.HResult!*IAsyncOperation(PnpObjectCollection) {
        const factory = @This().IPnpObjectStaticsCache.get();
        return try factory.FindAllAsyncWithAqsFilter(ty, requestedProperties, aqsFilter);
    }
    pub fn CreateWatcher(ty: PnpObjectType, requestedProperties: *IIterable(HSTRING)) core.HResult!*PnpObjectWatcher {
        const factory = @This().IPnpObjectStaticsCache.get();
        return try factory.CreateWatcher(ty, requestedProperties);
    }
    pub fn CreateWatcherWithAqsFilter(ty: PnpObjectType, requestedProperties: *IIterable(HSTRING), aqsFilter: HSTRING) core.HResult!*PnpObjectWatcher {
        const factory = @This().IPnpObjectStaticsCache.get();
        return try factory.CreateWatcherWithAqsFilter(ty, requestedProperties, aqsFilter);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.PnpObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPnpObject.GUID;
    pub const IID: Guid = IPnpObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPnpObject.SIGNATURE);
    var _IPnpObjectStaticsCache: FactoryCache(IPnpObjectStatics, RUNTIME_NAME) = .{};
};
pub const PnpObjectCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*PnpObject {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *PnpObject, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]PnpObject) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(PnpObject) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.PnpObjectCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const PnpObjectType = enum(i32) {
    Unknown = 0,
    DeviceInterface = 1,
    DeviceContainer = 2,
    Device = 3,
    DeviceInterfaceClass = 4,
    AssociationEndpoint = 5,
    AssociationEndpointContainer = 6,
    AssociationEndpointService = 7,
    DevicePanel = 8,
    AssociationEndpointProtocol = 9,
};
pub const PnpObjectUpdate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!PnpObjectType {
        const this: *IPnpObjectUpdate = @ptrCast(self);
        return try this.getType();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPnpObjectUpdate = @ptrCast(self);
        return try this.getId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IPnpObjectUpdate = @ptrCast(self);
        return try this.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.PnpObjectUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPnpObjectUpdate.GUID;
    pub const IID: Guid = IPnpObjectUpdate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPnpObjectUpdate.SIGNATURE);
};
pub const PnpObjectWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,PnpObject)) core.HResult!EventRegistrationToken {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,PnpObjectUpdate)) core.HResult!EventRegistrationToken {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,PnpObjectUpdate)) core.HResult!EventRegistrationToken {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PnpObjectWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPnpObjectWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.Pnp.PnpObjectWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPnpObjectWatcher.GUID;
    pub const IID: Guid = IPnpObjectWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPnpObjectWatcher.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const DeviceWatcherStatus = @import("../Enumeration.zig").DeviceWatcherStatus;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
