pub const CustomXamlResourceLoader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetResource(self: *@This(), resourceId: HSTRING, objectType: HSTRING, propertyName: HSTRING, propertyType: HSTRING) core.HResult!*IInspectable {
        var this: ?*ICustomXamlResourceLoaderOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICustomXamlResourceLoaderOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResource(resourceId, objectType, propertyName, propertyType);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*CustomXamlResourceLoader {
        const factory = @This().ICustomXamlResourceLoaderStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn putCurrent(value: *CustomXamlResourceLoader) core.HResult!void {
        const factory = @This().ICustomXamlResourceLoaderStaticsCache.get();
        return try factory.putCurrent(value);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CustomXamlResourceLoader {
        const factory = @This().ICustomXamlResourceLoaderFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Resources.CustomXamlResourceLoader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomXamlResourceLoader.GUID;
    pub const IID: Guid = ICustomXamlResourceLoader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomXamlResourceLoader.SIGNATURE);
    var _ICustomXamlResourceLoaderStaticsCache: FactoryCache(ICustomXamlResourceLoaderStatics, RUNTIME_NAME) = .{};
    var _ICustomXamlResourceLoaderFactoryCache: FactoryCache(ICustomXamlResourceLoaderFactory, RUNTIME_NAME) = .{};
};
pub const ICustomXamlResourceLoader = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Resources.ICustomXamlResourceLoader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "511a84ab-4a88-419f-852e-54083b90b078";
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
pub const ICustomXamlResourceLoaderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CustomXamlResourceLoader {
        var _r: *CustomXamlResourceLoader = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bfd7e49-7886-44f3-8ed3-6fec0463ed69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CustomXamlResourceLoader) callconv(.winapi) HRESULT,
    };
};
pub const ICustomXamlResourceLoaderOverrides = extern struct {
    vtable: *const VTable,
    pub fn GetResource(self: *@This(), resourceId: HSTRING, objectType: HSTRING, propertyName: HSTRING, propertyType: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetResource(@ptrCast(self), resourceId, objectType, propertyName, propertyType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f851e991-af02-46e8-9af8-427b7ebfe9f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetResource: *const fn(self: *anyopaque, resourceId: HSTRING, objectType: HSTRING, propertyName: HSTRING, propertyType: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ICustomXamlResourceLoaderStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*CustomXamlResourceLoader {
        var _r: *CustomXamlResourceLoader = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrent(self: *@This(), value: *CustomXamlResourceLoader) core.HResult!void {
        const _c = self.vtable.put_Current(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "224ff617-e4dc-4c27-ad32-db93d5d0e5da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **CustomXamlResourceLoader) callconv(.winapi) HRESULT,
        put_Current: *const fn(self: *anyopaque, value: *CustomXamlResourceLoader) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
