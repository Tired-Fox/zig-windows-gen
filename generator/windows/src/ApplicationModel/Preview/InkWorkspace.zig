pub const IInkWorkspaceHostedAppManager = extern struct {
    vtable: *const VTable,
    pub fn SetThumbnailAsync(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetThumbnailAsync(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.InkWorkspace.IInkWorkspaceHostedAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe0a7990-5e59-4bb7-8a63-7d218cd96300";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetThumbnailAsync: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IInkWorkspaceHostedAppManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentApp(self: *@This()) core.HResult!*InkWorkspaceHostedAppManager {
        var _r: *InkWorkspaceHostedAppManager = undefined;
        const _c = self.vtable.GetForCurrentApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.InkWorkspace.IInkWorkspaceHostedAppManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbfd8cc5-a162-4bc4-84ee-e8716d5233c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentApp: *const fn(self: *anyopaque, _r: **InkWorkspaceHostedAppManager) callconv(.winapi) HRESULT,
    };
};
pub const InkWorkspaceHostedAppManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetThumbnailAsync(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*IAsyncAction {
        const this: *IInkWorkspaceHostedAppManager = @ptrCast(self);
        return try this.SetThumbnailAsync(bitmap);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentApp() core.HResult!*InkWorkspaceHostedAppManager {
        const _f = @This().IInkWorkspaceHostedAppManagerStaticsCache.get();
        return try _f.GetForCurrentApp();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.InkWorkspace.InkWorkspaceHostedAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkWorkspaceHostedAppManager.GUID;
    pub const IID: Guid = IInkWorkspaceHostedAppManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkWorkspaceHostedAppManager.SIGNATURE);
    var _IInkWorkspaceHostedAppManagerStaticsCache: FactoryCache(IInkWorkspaceHostedAppManagerStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const SoftwareBitmap = @import("../../Graphics/Imaging.zig").SoftwareBitmap;
