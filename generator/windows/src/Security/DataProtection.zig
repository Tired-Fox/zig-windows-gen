pub const IUserDataAvailabilityStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.IUserDataAvailabilityStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a76582c9-06a2-4273-a803-834c9f87fbeb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataBufferUnprotectResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!UserDataBufferUnprotectStatus {
        var _r: UserDataBufferUnprotectStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnprotectedBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_UnprotectedBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.IUserDataBufferUnprotectResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8efd0e90-fa9a-46a4-a377-01cebf1e74d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *UserDataBufferUnprotectStatus) callconv(.winapi) HRESULT,
        get_UnprotectedBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataProtectionManager = extern struct {
    vtable: *const VTable,
    pub fn ProtectStorageItemAsync(self: *@This(), storageItem: *IStorageItem, availability: UserDataAvailability) core.HResult!*IAsyncOperation(UserDataStorageItemProtectionStatus) {
        var _r: *IAsyncOperation(UserDataStorageItemProtectionStatus) = undefined;
        const _c = self.vtable.ProtectStorageItemAsync(@ptrCast(self), storageItem, availability, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStorageItemProtectionInfoAsync(self: *@This(), storageItem: *IStorageItem) core.HResult!*IAsyncOperation(UserDataStorageItemProtectionInfo) {
        var _r: *IAsyncOperation(UserDataStorageItemProtectionInfo) = undefined;
        const _c = self.vtable.GetStorageItemProtectionInfoAsync(@ptrCast(self), storageItem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProtectBufferAsync(self: *@This(), unprotectedBuffer: *IBuffer, availability: UserDataAvailability) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.ProtectBufferAsync(@ptrCast(self), unprotectedBuffer, availability, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprotectBufferAsync(self: *@This(), protectedBuffer: *IBuffer) core.HResult!*IAsyncOperation(UserDataBufferUnprotectResult) {
        var _r: *IAsyncOperation(UserDataBufferUnprotectResult) = undefined;
        const _c = self.vtable.UnprotectBufferAsync(@ptrCast(self), protectedBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsContinuedDataAvailabilityExpected(self: *@This(), availability: UserDataAvailability) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContinuedDataAvailabilityExpected(@ptrCast(self), availability, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDataAvailabilityStateChanged(self: *@This(), handler: *TypedEventHandler(UserDataProtectionManager,UserDataAvailabilityStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataAvailabilityStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataAvailabilityStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataAvailabilityStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.IUserDataProtectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f13237d-b42e-4a88-9480-0f240924c876";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProtectStorageItemAsync: *const fn(self: *anyopaque, storageItem: *IStorageItem, availability: UserDataAvailability, _r: **IAsyncOperation(UserDataStorageItemProtectionStatus)) callconv(.winapi) HRESULT,
        GetStorageItemProtectionInfoAsync: *const fn(self: *anyopaque, storageItem: *IStorageItem, _r: **IAsyncOperation(UserDataStorageItemProtectionInfo)) callconv(.winapi) HRESULT,
        ProtectBufferAsync: *const fn(self: *anyopaque, unprotectedBuffer: *IBuffer, availability: UserDataAvailability, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        UnprotectBufferAsync: *const fn(self: *anyopaque, protectedBuffer: *IBuffer, _r: **IAsyncOperation(UserDataBufferUnprotectResult)) callconv(.winapi) HRESULT,
        IsContinuedDataAvailabilityExpected: *const fn(self: *anyopaque, availability: UserDataAvailability, _r: *bool) callconv(.winapi) HRESULT,
        add_DataAvailabilityStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataProtectionManager,UserDataAvailabilityStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataAvailabilityStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataProtectionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn TryGetDefault(self: *@This()) core.HResult!*UserDataProtectionManager {
        var _r: *UserDataProtectionManager = undefined;
        const _c = self.vtable.TryGetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetForUser(self: *@This(), user: *User) core.HResult!*UserDataProtectionManager {
        var _r: *UserDataProtectionManager = undefined;
        const _c = self.vtable.TryGetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.IUserDataProtectionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "977780e8-6dce-4fae-af85-782ac2cf4572";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetDefault: *const fn(self: *anyopaque, _r: **UserDataProtectionManager) callconv(.winapi) HRESULT,
        TryGetForUser: *const fn(self: *anyopaque, user: *User, _r: **UserDataProtectionManager) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataStorageItemProtectionInfo = extern struct {
    vtable: *const VTable,
    pub fn getAvailability(self: *@This()) core.HResult!UserDataAvailability {
        var _r: UserDataAvailability = undefined;
        const _c = self.vtable.get_Availability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.IUserDataStorageItemProtectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b6680f6-e87f-40a1-b19d-a6187a0c662f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Availability: *const fn(self: *anyopaque, _r: *UserDataAvailability) callconv(.winapi) HRESULT,
    };
};
pub const UserDataAvailability = enum(i32) {
    Always = 0,
    AfterFirstUnlock = 1,
    WhileUnlocked = 2,
};
pub const UserDataAvailabilityStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataAvailabilityStateChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.UserDataAvailabilityStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAvailabilityStateChangedEventArgs.GUID;
    pub const IID: Guid = IUserDataAvailabilityStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAvailabilityStateChangedEventArgs.SIGNATURE);
};
pub const UserDataBufferUnprotectResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!UserDataBufferUnprotectStatus {
        const this: *IUserDataBufferUnprotectResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getUnprotectedBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IUserDataBufferUnprotectResult = @ptrCast(self);
        return try this.getUnprotectedBuffer();
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.UserDataBufferUnprotectResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataBufferUnprotectResult.GUID;
    pub const IID: Guid = IUserDataBufferUnprotectResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataBufferUnprotectResult.SIGNATURE);
};
pub const UserDataBufferUnprotectStatus = enum(i32) {
    Succeeded = 0,
    Unavailable = 1,
};
pub const UserDataProtectionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ProtectStorageItemAsync(self: *@This(), storageItem: *IStorageItem, availability: UserDataAvailability) core.HResult!*IAsyncOperation(UserDataStorageItemProtectionStatus) {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.ProtectStorageItemAsync(storageItem, availability);
    }
    pub fn GetStorageItemProtectionInfoAsync(self: *@This(), storageItem: *IStorageItem) core.HResult!*IAsyncOperation(UserDataStorageItemProtectionInfo) {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.GetStorageItemProtectionInfoAsync(storageItem);
    }
    pub fn ProtectBufferAsync(self: *@This(), unprotectedBuffer: *IBuffer, availability: UserDataAvailability) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.ProtectBufferAsync(unprotectedBuffer, availability);
    }
    pub fn UnprotectBufferAsync(self: *@This(), protectedBuffer: *IBuffer) core.HResult!*IAsyncOperation(UserDataBufferUnprotectResult) {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.UnprotectBufferAsync(protectedBuffer);
    }
    pub fn IsContinuedDataAvailabilityExpected(self: *@This(), availability: UserDataAvailability) core.HResult!bool {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.IsContinuedDataAvailabilityExpected(availability);
    }
    pub fn addDataAvailabilityStateChanged(self: *@This(), handler: *TypedEventHandler(UserDataProtectionManager,UserDataAvailabilityStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.addDataAvailabilityStateChanged(handler);
    }
    pub fn removeDataAvailabilityStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataProtectionManager = @ptrCast(self);
        return try this.removeDataAvailabilityStateChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryGetDefault() core.HResult!*UserDataProtectionManager {
        const _f = @This().IUserDataProtectionManagerStaticsCache.get();
        return try _f.TryGetDefault();
    }
    pub fn TryGetForUser(user: *User) core.HResult!*UserDataProtectionManager {
        const _f = @This().IUserDataProtectionManagerStaticsCache.get();
        return try _f.TryGetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.UserDataProtectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataProtectionManager.GUID;
    pub const IID: Guid = IUserDataProtectionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataProtectionManager.SIGNATURE);
    var _IUserDataProtectionManagerStaticsCache: FactoryCache(IUserDataProtectionManagerStatics, RUNTIME_NAME) = .{};
};
pub const UserDataStorageItemProtectionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAvailability(self: *@This()) core.HResult!UserDataAvailability {
        const this: *IUserDataStorageItemProtectionInfo = @ptrCast(self);
        return try this.getAvailability();
    }
    pub const NAME: []const u8 = "Windows.Security.DataProtection.UserDataStorageItemProtectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataStorageItemProtectionInfo.GUID;
    pub const IID: Guid = IUserDataStorageItemProtectionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataStorageItemProtectionInfo.SIGNATURE);
};
pub const UserDataStorageItemProtectionStatus = enum(i32) {
    Succeeded = 0,
    NotProtectable = 1,
    DataUnavailable = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
