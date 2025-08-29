pub const IPhoneCallOrigin = extern struct {
    vtable: *const VTable,
    pub fn getCategory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCategory(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Category(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCategoryDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CategoryDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCategoryDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CategoryDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.IPhoneCallOrigin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20613479-0ef9-4454-871c-afb66a14b6a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Category: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CategoryDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CategoryDescription: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallOrigin2 = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.IPhoneCallOrigin2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04c7e980-9ac2-4768-b536-b68da4957d02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallOrigin3 = extern struct {
    vtable: *const VTable,
    pub fn getDisplayPicture(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_DisplayPicture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayPicture(self: *@This(), value: *StorageFile) core.HResult!void {
        const _c = self.vtable.put_DisplayPicture(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.IPhoneCallOrigin3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49330fb4-d1a7-43a2-aeee-c07b6dbaf068";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayPicture: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
        put_DisplayPicture: *const fn(self: *anyopaque, value: *StorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallOriginManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsCurrentAppActiveCallOriginApp(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentAppActiveCallOriginApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowPhoneCallOriginSettingsUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowPhoneCallOriginSettingsUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetCallOrigin(self: *@This(), requestId: *Guid, callOrigin: *PhoneCallOrigin) core.HResult!void {
        const _c = self.vtable.SetCallOrigin(@ptrCast(self), requestId, callOrigin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.IPhoneCallOriginManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccfc5a0a-9af7-6149-39d0-e076fcce1395";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCurrentAppActiveCallOriginApp: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowPhoneCallOriginSettingsUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetCallOrigin: *const fn(self: *anyopaque, requestId: *Guid, callOrigin: *PhoneCallOrigin) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallOriginManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RequestSetAsActiveCallOriginAppAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestSetAsActiveCallOriginAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.IPhoneCallOriginManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bf3ee3f-40f4-4380-8c7c-aea2c9b8dd7a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestSetAsActiveCallOriginAppAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallOriginManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.IPhoneCallOriginManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ed69764-a6e3-50f0-b76a-d67cb39bdfde";
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
    };
};
pub const PhoneCallOrigin = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCategory(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallOrigin = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn putCategory(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallOrigin = @ptrCast(self);
        return try this.putCategory(value);
    }
    pub fn getCategoryDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallOrigin = @ptrCast(self);
        return try this.getCategoryDescription();
    }
    pub fn putCategoryDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallOrigin = @ptrCast(self);
        return try this.putCategoryDescription(value);
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallOrigin = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallOrigin = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPhoneCallOrigin2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneCallOrigin2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPhoneCallOrigin2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneCallOrigin2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayPicture(self: *@This()) core.HResult!*StorageFile {
        var this: ?*IPhoneCallOrigin3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneCallOrigin3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayPicture();
    }
    pub fn putDisplayPicture(self: *@This(), value: *StorageFile) core.HResult!void {
        var this: ?*IPhoneCallOrigin3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneCallOrigin3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayPicture(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhoneCallOrigin.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.PhoneCallOrigin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallOrigin.GUID;
    pub const IID: Guid = IPhoneCallOrigin.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallOrigin.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PhoneCallOriginManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestSetAsActiveCallOriginAppAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IPhoneCallOriginManagerStatics2Cache.get();
        return try factory.RequestSetAsActiveCallOriginAppAsync();
    }
    pub fn getIsCurrentAppActiveCallOriginApp() core.HResult!bool {
        const factory = @This().IPhoneCallOriginManagerStaticsCache.get();
        return try factory.getIsCurrentAppActiveCallOriginApp();
    }
    pub fn ShowPhoneCallOriginSettingsUI() core.HResult!void {
        const factory = @This().IPhoneCallOriginManagerStaticsCache.get();
        return try factory.ShowPhoneCallOriginSettingsUI();
    }
    pub fn SetCallOrigin(requestId: *Guid, callOrigin: *PhoneCallOrigin) core.HResult!void {
        const factory = @This().IPhoneCallOriginManagerStaticsCache.get();
        return try factory.SetCallOrigin(requestId, callOrigin);
    }
    pub fn getIsSupported() core.HResult!bool {
        const factory = @This().IPhoneCallOriginManagerStatics3Cache.get();
        return try factory.getIsSupported();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Provider.PhoneCallOriginManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPhoneCallOriginManagerStatics2Cache: FactoryCache(IPhoneCallOriginManagerStatics2, RUNTIME_NAME) = .{};
    var _IPhoneCallOriginManagerStaticsCache: FactoryCache(IPhoneCallOriginManagerStatics, RUNTIME_NAME) = .{};
    var _IPhoneCallOriginManagerStatics3Cache: FactoryCache(IPhoneCallOriginManagerStatics3, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const TrustLevel = @import("../../root.zig").TrustLevel;
const StorageFile = @import("../../Storage.zig").StorageFile;
