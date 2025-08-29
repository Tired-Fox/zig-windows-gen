pub const IWorkplaceSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsMicrosoftAccountOptional(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMicrosoftAccountOptional(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Workplace.IWorkplaceSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4676ffd-2d92-4c08-bad4-f6590b54a6d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsMicrosoftAccountOptional: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const WorkplaceSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsMicrosoftAccountOptional() core.HResult!bool {
        const factory = @This().IWorkplaceSettingsStaticsCache.get();
        return try factory.getIsMicrosoftAccountOptional();
    }
    pub const NAME: []const u8 = "Windows.Management.Workplace.WorkplaceSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWorkplaceSettingsStaticsCache: FactoryCache(IWorkplaceSettingsStatics, RUNTIME_NAME) = .{};
};
pub const IMdmAllowPolicyStatics = extern struct {
    vtable: *const VTable,
    pub fn IsBrowserAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsBrowserAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCameraAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCameraAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsMicrosoftAccountAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsMicrosoftAccountAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsStoreAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsStoreAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Workplace.IMdmAllowPolicyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c39709e7-741c-41f2-a4b6-314c31502586";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsBrowserAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsCameraAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsMicrosoftAccountAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsStoreAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMdmPolicyStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetMessagingSyncPolicy(self: *@This()) core.HResult!MessagingSyncPolicy {
        var _r: MessagingSyncPolicy = undefined;
        const _c = self.vtable.GetMessagingSyncPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Workplace.IMdmPolicyStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c99c7526-03d4-49f9-a993-43efccd265c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMessagingSyncPolicy: *const fn(self: *anyopaque, _r: *MessagingSyncPolicy) callconv(.winapi) HRESULT,
    };
};
pub const MdmPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsBrowserAllowed() core.HResult!bool {
        const factory = @This().IMdmAllowPolicyStaticsCache.get();
        return try factory.IsBrowserAllowed();
    }
    pub fn IsCameraAllowed() core.HResult!bool {
        const factory = @This().IMdmAllowPolicyStaticsCache.get();
        return try factory.IsCameraAllowed();
    }
    pub fn IsMicrosoftAccountAllowed() core.HResult!bool {
        const factory = @This().IMdmAllowPolicyStaticsCache.get();
        return try factory.IsMicrosoftAccountAllowed();
    }
    pub fn IsStoreAllowed() core.HResult!bool {
        const factory = @This().IMdmAllowPolicyStaticsCache.get();
        return try factory.IsStoreAllowed();
    }
    pub fn GetMessagingSyncPolicy() core.HResult!MessagingSyncPolicy {
        const factory = @This().IMdmPolicyStatics2Cache.get();
        return try factory.GetMessagingSyncPolicy();
    }
    pub const NAME: []const u8 = "Windows.Management.Workplace.MdmPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMdmAllowPolicyStaticsCache: FactoryCache(IMdmAllowPolicyStatics, RUNTIME_NAME) = .{};
    var _IMdmPolicyStatics2Cache: FactoryCache(IMdmPolicyStatics2, RUNTIME_NAME) = .{};
};
pub const MessagingSyncPolicy = enum(i32) {
    Disallowed = 0,
    Allowed = 1,
    Required = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
