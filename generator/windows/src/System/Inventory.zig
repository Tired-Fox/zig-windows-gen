pub const IInstalledDesktopApp = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Publisher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Inventory.IInstalledDesktopApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75eab8ed-c0bc-5364-4c28-166e0545167a";
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
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Publisher: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IInstalledDesktopAppStatics = extern struct {
    vtable: *const VTable,
    pub fn GetInventoryAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(InstalledDesktopApp)) {
        var _r: *IAsyncOperation(IVectorView(InstalledDesktopApp)) = undefined;
        const _c = self.vtable.GetInventoryAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Inventory.IInstalledDesktopAppStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "264cf74e-21cd-5f9b-6056-7866ad72489a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetInventoryAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(InstalledDesktopApp))) callconv(.winapi) HRESULT,
    };
};
pub const InstalledDesktopApp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IInstalledDesktopApp = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IInstalledDesktopApp = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        const this: *IInstalledDesktopApp = @ptrCast(self);
        return try this.getPublisher();
    }
    pub fn getDisplayVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IInstalledDesktopApp = @ptrCast(self);
        return try this.getDisplayVersion();
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
    pub fn GetInventoryAsync() core.HResult!*IAsyncOperation(IVectorView(InstalledDesktopApp)) {
        const factory = @This().IInstalledDesktopAppStaticsCache.get();
        return try factory.GetInventoryAsync();
    }
    pub const NAME: []const u8 = "Windows.System.Inventory.InstalledDesktopApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInstalledDesktopApp.GUID;
    pub const IID: Guid = IInstalledDesktopApp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInstalledDesktopApp.SIGNATURE);
    var _IInstalledDesktopAppStaticsCache: FactoryCache(IInstalledDesktopAppStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStringable = @import("../Foundation.zig").IStringable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
