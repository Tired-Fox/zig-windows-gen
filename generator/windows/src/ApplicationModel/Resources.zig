pub const IResourceLoader = extern struct {
    vtable: *const VTable,
    pub fn GetString(self: *@This(), resource: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetString(@ptrCast(self), resource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08524908-16ef-45ad-a602-293637d7e61a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetString: *const fn(self: *anyopaque, resource: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IResourceLoader2 = extern struct {
    vtable: *const VTable,
    pub fn GetStringForUri(self: *@This(), uri: *Uri) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStringForUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10eb6ec6-8138-48c1-bc65-e1f14207367c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStringForUri: *const fn(self: *anyopaque, uri: *Uri, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IResourceLoaderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateResourceLoaderByName(self: *@This(), name: HSTRING) core.HResult!*ResourceLoader {
        var _r: *ResourceLoader = undefined;
        const _c = self.vtable.CreateResourceLoaderByName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c33a3603-69dc-4285-a077-d5c0e47ccbe8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateResourceLoaderByName: *const fn(self: *anyopaque, name: HSTRING, _r: **ResourceLoader) callconv(.winapi) HRESULT,
    };
};
pub const IResourceLoaderStatics = extern struct {
    vtable: *const VTable,
    pub fn GetStringForReference(self: *@This(), uri: *Uri) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStringForReference(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoaderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf777ce1-19c8-49c2-953c-47e9227b334e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStringForReference: *const fn(self: *anyopaque, uri: *Uri, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IResourceLoaderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*ResourceLoader {
        var _r: *ResourceLoader = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForCurrentViewWithName(self: *@This(), name: HSTRING) core.HResult!*ResourceLoader {
        var _r: *ResourceLoader = undefined;
        const _c = self.vtable.GetForCurrentViewWithName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForViewIndependentUse(self: *@This()) core.HResult!*ResourceLoader {
        var _r: *ResourceLoader = undefined;
        const _c = self.vtable.GetForViewIndependentUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForViewIndependentUseWithName(self: *@This(), name: HSTRING) core.HResult!*ResourceLoader {
        var _r: *ResourceLoader = undefined;
        const _c = self.vtable.GetForViewIndependentUseWithName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoaderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cc04141-6466-4989-9494-0b82dfc53f1f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **ResourceLoader) callconv(.winapi) HRESULT,
        GetForCurrentViewWithName: *const fn(self: *anyopaque, name: HSTRING, _r: **ResourceLoader) callconv(.winapi) HRESULT,
        GetForViewIndependentUse: *const fn(self: *anyopaque, _r: **ResourceLoader) callconv(.winapi) HRESULT,
        GetForViewIndependentUseWithName: *const fn(self: *anyopaque, name: HSTRING, _r: **ResourceLoader) callconv(.winapi) HRESULT,
    };
};
pub const IResourceLoaderStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetForUIContext(self: *@This(), context: *UIContext) core.HResult!*ResourceLoader {
        var _r: *ResourceLoader = undefined;
        const _c = self.vtable.GetForUIContext(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoaderStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64609dfb-64ac-491b-8100-0e558d61c1d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUIContext: *const fn(self: *anyopaque, context: *UIContext, _r: **ResourceLoader) callconv(.winapi) HRESULT,
    };
};
pub const IResourceLoaderStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultPriPath(self: *@This(), packageFullName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDefaultPriPath(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.IResourceLoaderStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fb36c32-6c8c-4316-962e-909539b5c259";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultPriPath: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ResourceLoader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetString(self: *@This(), resource: HSTRING) core.HResult!HSTRING {
        const this: *IResourceLoader = @ptrCast(self);
        return try this.GetString(resource);
    }
    pub fn GetStringForUri(self: *@This(), uri: *Uri) core.HResult!HSTRING {
        var this: ?*IResourceLoader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IResourceLoader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStringForUri(uri);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IResourceLoader.IID)));
    }
    pub fn CreateResourceLoaderByName(name: HSTRING) core.HResult!*ResourceLoader {
        const _f = @This().IResourceLoaderFactoryCache.get();
        return try _f.CreateResourceLoaderByName(name);
    }
    pub fn GetForCurrentView() core.HResult!*ResourceLoader {
        const _f = @This().IResourceLoaderStatics2Cache.get();
        return try _f.GetForCurrentView();
    }
    pub fn GetForCurrentViewWithName(name: HSTRING) core.HResult!*ResourceLoader {
        const _f = @This().IResourceLoaderStatics2Cache.get();
        return try _f.GetForCurrentViewWithName(name);
    }
    pub fn GetForViewIndependentUse() core.HResult!*ResourceLoader {
        const _f = @This().IResourceLoaderStatics2Cache.get();
        return try _f.GetForViewIndependentUse();
    }
    pub fn GetForViewIndependentUseWithName(name: HSTRING) core.HResult!*ResourceLoader {
        const _f = @This().IResourceLoaderStatics2Cache.get();
        return try _f.GetForViewIndependentUseWithName(name);
    }
    pub fn GetStringForReference(uri: *Uri) core.HResult!HSTRING {
        const _f = @This().IResourceLoaderStaticsCache.get();
        return try _f.GetStringForReference(uri);
    }
    pub fn GetDefaultPriPath(packageFullName: HSTRING) core.HResult!HSTRING {
        const _f = @This().IResourceLoaderStatics4Cache.get();
        return try _f.GetDefaultPriPath(packageFullName);
    }
    pub fn GetForUIContext(context: *UIContext) core.HResult!*ResourceLoader {
        const _f = @This().IResourceLoaderStatics3Cache.get();
        return try _f.GetForUIContext(context);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.ResourceLoader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceLoader.GUID;
    pub const IID: Guid = IResourceLoader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceLoader.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IResourceLoaderFactoryCache: FactoryCache(IResourceLoaderFactory, RUNTIME_NAME) = .{};
    var _IResourceLoaderStatics2Cache: FactoryCache(IResourceLoaderStatics2, RUNTIME_NAME) = .{};
    var _IResourceLoaderStaticsCache: FactoryCache(IResourceLoaderStatics, RUNTIME_NAME) = .{};
    var _IResourceLoaderStatics4Cache: FactoryCache(IResourceLoaderStatics4, RUNTIME_NAME) = .{};
    var _IResourceLoaderStatics3Cache: FactoryCache(IResourceLoaderStatics3, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const Uri = @import("../Foundation.zig").Uri;
const UIContext = @import("../UI.zig").UIContext;
const HSTRING = @import("../root.zig").HSTRING;
pub const Core = @import("./Resources/Core.zig");
pub const Management = @import("./Resources/Management.zig");
