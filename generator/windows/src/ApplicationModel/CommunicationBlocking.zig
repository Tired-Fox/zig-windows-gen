pub const CommunicationBlockingAccessManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsBlockingActive() core.HResult!bool {
        const factory = @This().ICommunicationBlockingAccessManagerStaticsCache.get();
        return try factory.getIsBlockingActive();
    }
    pub fn IsBlockedNumberAsync(number: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ICommunicationBlockingAccessManagerStaticsCache.get();
        return try factory.IsBlockedNumberAsync(number);
    }
    pub fn ShowBlockNumbersUI(phoneNumbers: *IIterable(HSTRING)) core.HResult!bool {
        const factory = @This().ICommunicationBlockingAccessManagerStaticsCache.get();
        return try factory.ShowBlockNumbersUI(phoneNumbers);
    }
    pub fn ShowUnblockNumbersUI(phoneNumbers: *IIterable(HSTRING)) core.HResult!bool {
        const factory = @This().ICommunicationBlockingAccessManagerStaticsCache.get();
        return try factory.ShowUnblockNumbersUI(phoneNumbers);
    }
    pub fn ShowBlockedCallsUI() core.HResult!void {
        const factory = @This().ICommunicationBlockingAccessManagerStaticsCache.get();
        return try factory.ShowBlockedCallsUI();
    }
    pub fn ShowBlockedMessagesUI() core.HResult!void {
        const factory = @This().ICommunicationBlockingAccessManagerStaticsCache.get();
        return try factory.ShowBlockedMessagesUI();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.CommunicationBlocking.CommunicationBlockingAccessManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICommunicationBlockingAccessManagerStaticsCache: FactoryCache(ICommunicationBlockingAccessManagerStatics, RUNTIME_NAME) = .{};
};
pub const CommunicationBlockingAppManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsCurrentAppActiveBlockingApp() core.HResult!bool {
        const factory = @This().ICommunicationBlockingAppManagerStaticsCache.get();
        return try factory.getIsCurrentAppActiveBlockingApp();
    }
    pub fn ShowCommunicationBlockingSettingsUI() core.HResult!void {
        const factory = @This().ICommunicationBlockingAppManagerStaticsCache.get();
        return try factory.ShowCommunicationBlockingSettingsUI();
    }
    pub fn RequestSetAsActiveBlockingAppAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ICommunicationBlockingAppManagerStatics2Cache.get();
        return try factory.RequestSetAsActiveBlockingAppAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.CommunicationBlocking.CommunicationBlockingAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICommunicationBlockingAppManagerStaticsCache: FactoryCache(ICommunicationBlockingAppManagerStatics, RUNTIME_NAME) = .{};
    var _ICommunicationBlockingAppManagerStatics2Cache: FactoryCache(ICommunicationBlockingAppManagerStatics2, RUNTIME_NAME) = .{};
};
pub const ICommunicationBlockingAccessManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsBlockingActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBlockingActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsBlockedNumberAsync(self: *@This(), number: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsBlockedNumberAsync(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowBlockNumbersUI(self: *@This(), phoneNumbers: *IIterable(HSTRING)) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShowBlockNumbersUI(@ptrCast(self), phoneNumbers, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowUnblockNumbersUI(self: *@This(), phoneNumbers: *IIterable(HSTRING)) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShowUnblockNumbersUI(@ptrCast(self), phoneNumbers, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowBlockedCallsUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowBlockedCallsUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowBlockedMessagesUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowBlockedMessagesUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.CommunicationBlocking.ICommunicationBlockingAccessManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c969998-9d2a-5db7-edd5-0ce407fc2595";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBlockingActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsBlockedNumberAsync: *const fn(self: *anyopaque, number: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowBlockNumbersUI: *const fn(self: *anyopaque, phoneNumbers: *IIterable(HSTRING), _r: *bool) callconv(.winapi) HRESULT,
        ShowUnblockNumbersUI: *const fn(self: *anyopaque, phoneNumbers: *IIterable(HSTRING), _r: *bool) callconv(.winapi) HRESULT,
        ShowBlockedCallsUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ShowBlockedMessagesUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICommunicationBlockingAppManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsCurrentAppActiveBlockingApp(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentAppActiveBlockingApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowCommunicationBlockingSettingsUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowCommunicationBlockingSettingsUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.CommunicationBlocking.ICommunicationBlockingAppManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77db58ec-14a6-4baa-942a-6a673d999bf2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCurrentAppActiveBlockingApp: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowCommunicationBlockingSettingsUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICommunicationBlockingAppManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RequestSetAsActiveBlockingAppAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestSetAsActiveBlockingAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.CommunicationBlocking.ICommunicationBlockingAppManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14a68edd-ed88-457a-a364-a3634d6f166d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestSetAsActiveBlockingAppAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
