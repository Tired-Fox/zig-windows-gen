pub const BufferProtectUnprotectResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IBufferProtectUnprotectResult = @ptrCast(self);
        return try this.getBuffer();
    }
    pub fn getProtectionInfo(self: *@This()) core.HResult!*DataProtectionInfo {
        const this: *IBufferProtectUnprotectResult = @ptrCast(self);
        return try this.getProtectionInfo();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.BufferProtectUnprotectResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBufferProtectUnprotectResult.GUID;
    pub const IID: Guid = IBufferProtectUnprotectResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBufferProtectUnprotectResult.SIGNATURE);
};
pub const DataProtectionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DataProtectionStatus {
        const this: *IDataProtectionInfo = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIdentity(self: *@This()) core.HResult!HSTRING {
        const this: *IDataProtectionInfo = @ptrCast(self);
        return try this.getIdentity();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.DataProtectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataProtectionInfo.GUID;
    pub const IID: Guid = IDataProtectionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataProtectionInfo.SIGNATURE);
};
pub const DataProtectionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ProtectAsync(data: *IBuffer, identity: HSTRING) core.HResult!*IAsyncOperation(BufferProtectUnprotectResult) {
        const factory = @This().IDataProtectionManagerStaticsCache.get();
        return try factory.ProtectAsync(data, identity);
    }
    pub fn UnprotectAsync(data: *IBuffer) core.HResult!*IAsyncOperation(BufferProtectUnprotectResult) {
        const factory = @This().IDataProtectionManagerStaticsCache.get();
        return try factory.UnprotectAsync(data);
    }
    pub fn ProtectStreamAsync(unprotectedStream: *IInputStream, identity: HSTRING, protectedStream: *IOutputStream) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        const factory = @This().IDataProtectionManagerStaticsCache.get();
        return try factory.ProtectStreamAsync(unprotectedStream, identity, protectedStream);
    }
    pub fn UnprotectStreamAsync(protectedStream: *IInputStream, unprotectedStream: *IOutputStream) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        const factory = @This().IDataProtectionManagerStaticsCache.get();
        return try factory.UnprotectStreamAsync(protectedStream, unprotectedStream);
    }
    pub fn GetProtectionInfoAsync(protectedData: *IBuffer) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        const factory = @This().IDataProtectionManagerStaticsCache.get();
        return try factory.GetProtectionInfoAsync(protectedData);
    }
    pub fn GetStreamProtectionInfoAsync(protectedStream: *IInputStream) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        const factory = @This().IDataProtectionManagerStaticsCache.get();
        return try factory.GetStreamProtectionInfoAsync(protectedStream);
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.DataProtectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IDataProtectionManagerStaticsCache: FactoryCache(IDataProtectionManagerStatics, RUNTIME_NAME) = .{};
};
pub const DataProtectionStatus = enum(i32) {
    ProtectedToOtherIdentity = 0,
    Protected = 1,
    Revoked = 2,
    Unprotected = 3,
    LicenseExpired = 4,
    AccessSuspended = 5,
};
pub const EnforcementLevel = enum(i32) {
    NoProtection = 0,
    Silent = 1,
    Override = 2,
    Block = 3,
};
pub const FileProtectionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!FileProtectionStatus {
        const this: *IFileProtectionInfo = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIsRoamable(self: *@This()) core.HResult!bool {
        const this: *IFileProtectionInfo = @ptrCast(self);
        return try this.getIsRoamable();
    }
    pub fn getIdentity(self: *@This()) core.HResult!HSTRING {
        const this: *IFileProtectionInfo = @ptrCast(self);
        return try this.getIdentity();
    }
    pub fn getIsProtectWhileOpenSupported(self: *@This()) core.HResult!bool {
        var this: ?*IFileProtectionInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileProtectionInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsProtectWhileOpenSupported();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.FileProtectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileProtectionInfo.GUID;
    pub const IID: Guid = IFileProtectionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileProtectionInfo.SIGNATURE);
};
pub const FileProtectionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsContainerAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IFileProtectionManagerStatics2Cache.get();
        return try factory.IsContainerAsync(file);
    }
    pub fn LoadFileFromContainerAsyncWithTargetWithCollisionOption(containerFile: *IStorageFile, target: *IStorageItem, collisionOption: NameCollisionOption) core.HResult!*IAsyncOperation(ProtectedContainerImportResult) {
        const factory = @This().IFileProtectionManagerStatics2Cache.get();
        return try factory.LoadFileFromContainerAsync(containerFile, target, collisionOption);
    }
    pub fn SaveFileAsContainerAsyncWithSharedWithIdentities(protectedFile: *IStorageFile, sharedWithIdentities: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ProtectedContainerExportResult) {
        const factory = @This().IFileProtectionManagerStatics2Cache.get();
        return try factory.SaveFileAsContainerAsync(protectedFile, sharedWithIdentities);
    }
    pub fn ProtectAsync(target: *IStorageItem, identity: HSTRING) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.ProtectAsync(target, identity);
    }
    pub fn CopyProtectionAsync(source: *IStorageItem, target: *IStorageItem) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.CopyProtectionAsync(source, target);
    }
    pub fn GetProtectionInfoAsync(source: *IStorageItem) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.GetProtectionInfoAsync(source);
    }
    pub fn SaveFileAsContainerAsync(protectedFile: *IStorageFile) core.HResult!*IAsyncOperation(ProtectedContainerExportResult) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.SaveFileAsContainerAsync(protectedFile);
    }
    pub fn LoadFileFromContainerAsync(containerFile: *IStorageFile) core.HResult!*IAsyncOperation(ProtectedContainerImportResult) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.LoadFileFromContainerAsync(containerFile);
    }
    pub fn LoadFileFromContainerAsyncWithTarget(containerFile: *IStorageFile, target: *IStorageItem) core.HResult!*IAsyncOperation(ProtectedContainerImportResult) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.LoadFileFromContainerAsyncWithTarget(containerFile, target);
    }
    pub fn CreateProtectedAndOpenAsync(parentFolder: *IStorageFolder, desiredName: HSTRING, identity: HSTRING, collisionOption: CreationCollisionOption) core.HResult!*IAsyncOperation(ProtectedFileCreateResult) {
        const factory = @This().IFileProtectionManagerStaticsCache.get();
        return try factory.CreateProtectedAndOpenAsync(parentFolder, desiredName, identity, collisionOption);
    }
    pub fn UnprotectAsync(target: *IStorageItem) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        const factory = @This().IFileProtectionManagerStatics3Cache.get();
        return try factory.UnprotectAsync(target);
    }
    pub fn UnprotectAsyncWithOptions(target: *IStorageItem, options: *FileUnprotectOptions) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        const factory = @This().IFileProtectionManagerStatics3Cache.get();
        return try factory.UnprotectAsyncWithOptions(target, options);
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.FileProtectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IFileProtectionManagerStatics2Cache: FactoryCache(IFileProtectionManagerStatics2, RUNTIME_NAME) = .{};
    var _IFileProtectionManagerStaticsCache: FactoryCache(IFileProtectionManagerStatics, RUNTIME_NAME) = .{};
    var _IFileProtectionManagerStatics3Cache: FactoryCache(IFileProtectionManagerStatics3, RUNTIME_NAME) = .{};
};
pub const FileProtectionStatus = enum(i32) {
    Undetermined = 0,
    Unknown = 0,
    Unprotected = 1,
    Revoked = 2,
    Protected = 3,
    ProtectedByOtherUser = 4,
    ProtectedToOtherEnterprise = 5,
    NotProtectable = 6,
    ProtectedToOtherIdentity = 7,
    LicenseExpired = 8,
    AccessSuspended = 9,
    FileInUse = 10,
};
pub const FileRevocationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ProtectAsync(storageItem: *IStorageItem, enterpriseIdentity: HSTRING) core.HResult!*IAsyncOperation(FileProtectionStatus) {
        const factory = @This().IFileRevocationManagerStaticsCache.get();
        return try factory.ProtectAsync(storageItem, enterpriseIdentity);
    }
    pub fn CopyProtectionAsync(sourceStorageItem: *IStorageItem, targetStorageItem: *IStorageItem) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IFileRevocationManagerStaticsCache.get();
        return try factory.CopyProtectionAsync(sourceStorageItem, targetStorageItem);
    }
    pub fn Revoke(enterpriseIdentity: HSTRING) core.HResult!void {
        const factory = @This().IFileRevocationManagerStaticsCache.get();
        return try factory.Revoke(enterpriseIdentity);
    }
    pub fn GetStatusAsync(storageItem: *IStorageItem) core.HResult!*IAsyncOperation(FileProtectionStatus) {
        const factory = @This().IFileRevocationManagerStaticsCache.get();
        return try factory.GetStatusAsync(storageItem);
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.FileRevocationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IFileRevocationManagerStaticsCache: FactoryCache(IFileRevocationManagerStatics, RUNTIME_NAME) = .{};
};
pub const FileUnprotectOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAudit(self: *@This(), value: bool) core.HResult!void {
        const this: *IFileUnprotectOptions = @ptrCast(self);
        return try this.putAudit(value);
    }
    pub fn getAudit(self: *@This()) core.HResult!bool {
        const this: *IFileUnprotectOptions = @ptrCast(self);
        return try this.getAudit();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(audit: bool) core.HResult!*FileUnprotectOptions {
        const factory = @This().IFileUnprotectOptionsFactoryCache.get();
        return try factory.Create(audit);
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.FileUnprotectOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileUnprotectOptions.GUID;
    pub const IID: Guid = IFileUnprotectOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileUnprotectOptions.SIGNATURE);
    var _IFileUnprotectOptionsFactoryCache: FactoryCache(IFileUnprotectOptionsFactory, RUNTIME_NAME) = .{};
};
pub const IBufferProtectUnprotectResult = extern struct {
    vtable: *const VTable,
    pub fn getBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Buffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionInfo(self: *@This()) core.HResult!*DataProtectionInfo {
        var _r: *DataProtectionInfo = undefined;
        const _c = self.vtable.get_ProtectionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IBufferProtectUnprotectResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47995edc-6cec-4e3a-b251-9e7485d79e7a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Buffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_ProtectionInfo: *const fn(self: *anyopaque, _r: **DataProtectionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IDataProtectionInfo = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DataProtectionStatus {
        var _r: DataProtectionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIdentity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Identity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IDataProtectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8420b0c1-5e31-4405-9540-3f943af0cb26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DataProtectionStatus) callconv(.winapi) HRESULT,
        get_Identity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataProtectionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ProtectAsync(self: *@This(), data: *IBuffer, identity: HSTRING) core.HResult!*IAsyncOperation(BufferProtectUnprotectResult) {
        var _r: *IAsyncOperation(BufferProtectUnprotectResult) = undefined;
        const _c = self.vtable.ProtectAsync(@ptrCast(self), data, identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprotectAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(BufferProtectUnprotectResult) {
        var _r: *IAsyncOperation(BufferProtectUnprotectResult) = undefined;
        const _c = self.vtable.UnprotectAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProtectStreamAsync(self: *@This(), unprotectedStream: *IInputStream, identity: HSTRING, protectedStream: *IOutputStream) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        var _r: *IAsyncOperation(DataProtectionInfo) = undefined;
        const _c = self.vtable.ProtectStreamAsync(@ptrCast(self), unprotectedStream, identity, protectedStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprotectStreamAsync(self: *@This(), protectedStream: *IInputStream, unprotectedStream: *IOutputStream) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        var _r: *IAsyncOperation(DataProtectionInfo) = undefined;
        const _c = self.vtable.UnprotectStreamAsync(@ptrCast(self), protectedStream, unprotectedStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProtectionInfoAsync(self: *@This(), protectedData: *IBuffer) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        var _r: *IAsyncOperation(DataProtectionInfo) = undefined;
        const _c = self.vtable.GetProtectionInfoAsync(@ptrCast(self), protectedData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStreamProtectionInfoAsync(self: *@This(), protectedStream: *IInputStream) core.HResult!*IAsyncOperation(DataProtectionInfo) {
        var _r: *IAsyncOperation(DataProtectionInfo) = undefined;
        const _c = self.vtable.GetStreamProtectionInfoAsync(@ptrCast(self), protectedStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IDataProtectionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6149b74-9144-4ee4-8a8a-30b5f361430e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProtectAsync: *const fn(self: *anyopaque, data: *IBuffer, identity: HSTRING, _r: **IAsyncOperation(BufferProtectUnprotectResult)) callconv(.winapi) HRESULT,
        UnprotectAsync: *const fn(self: *anyopaque, data: *IBuffer, _r: **IAsyncOperation(BufferProtectUnprotectResult)) callconv(.winapi) HRESULT,
        ProtectStreamAsync: *const fn(self: *anyopaque, unprotectedStream: *IInputStream, identity: HSTRING, protectedStream: *IOutputStream, _r: **IAsyncOperation(DataProtectionInfo)) callconv(.winapi) HRESULT,
        UnprotectStreamAsync: *const fn(self: *anyopaque, protectedStream: *IInputStream, unprotectedStream: *IOutputStream, _r: **IAsyncOperation(DataProtectionInfo)) callconv(.winapi) HRESULT,
        GetProtectionInfoAsync: *const fn(self: *anyopaque, protectedData: *IBuffer, _r: **IAsyncOperation(DataProtectionInfo)) callconv(.winapi) HRESULT,
        GetStreamProtectionInfoAsync: *const fn(self: *anyopaque, protectedStream: *IInputStream, _r: **IAsyncOperation(DataProtectionInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IFileProtectionInfo = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!FileProtectionStatus {
        var _r: FileProtectionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRoamable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRoamable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIdentity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Identity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileProtectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ee96486-147e-4dd0-8faf-5253ed91ad0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *FileProtectionStatus) callconv(.winapi) HRESULT,
        get_IsRoamable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Identity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileProtectionInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getIsProtectWhileOpenSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProtectWhileOpenSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileProtectionInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82123a4c-557a-498d-8e94-944cd5836432";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsProtectWhileOpenSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFileProtectionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ProtectAsync(self: *@This(), target: *IStorageItem, identity: HSTRING) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        var _r: *IAsyncOperation(FileProtectionInfo) = undefined;
        const _c = self.vtable.ProtectAsync(@ptrCast(self), target, identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyProtectionAsync(self: *@This(), source: *IStorageItem, target: *IStorageItem) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.CopyProtectionAsync(@ptrCast(self), source, target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProtectionInfoAsync(self: *@This(), source: *IStorageItem) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        var _r: *IAsyncOperation(FileProtectionInfo) = undefined;
        const _c = self.vtable.GetProtectionInfoAsync(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveFileAsContainerAsync(self: *@This(), protectedFile: *IStorageFile) core.HResult!*IAsyncOperation(ProtectedContainerExportResult) {
        var _r: *IAsyncOperation(ProtectedContainerExportResult) = undefined;
        const _c = self.vtable.SaveFileAsContainerAsync(@ptrCast(self), protectedFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFileFromContainerAsync(self: *@This(), containerFile: *IStorageFile) core.HResult!*IAsyncOperation(ProtectedContainerImportResult) {
        var _r: *IAsyncOperation(ProtectedContainerImportResult) = undefined;
        const _c = self.vtable.LoadFileFromContainerAsync(@ptrCast(self), containerFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFileFromContainerAsyncWithTarget(self: *@This(), containerFile: *IStorageFile, target: *IStorageItem) core.HResult!*IAsyncOperation(ProtectedContainerImportResult) {
        var _r: *IAsyncOperation(ProtectedContainerImportResult) = undefined;
        const _c = self.vtable.LoadFileFromContainerAsyncWithTarget(@ptrCast(self), containerFile, target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateProtectedAndOpenAsync(self: *@This(), parentFolder: *IStorageFolder, desiredName: HSTRING, identity: HSTRING, collisionOption: CreationCollisionOption) core.HResult!*IAsyncOperation(ProtectedFileCreateResult) {
        var _r: *IAsyncOperation(ProtectedFileCreateResult) = undefined;
        const _c = self.vtable.CreateProtectedAndOpenAsync(@ptrCast(self), parentFolder, desiredName, identity, collisionOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileProtectionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5846fc9b-e613-426b-bb38-88cba1dc9adb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProtectAsync: *const fn(self: *anyopaque, target: *IStorageItem, identity: HSTRING, _r: **IAsyncOperation(FileProtectionInfo)) callconv(.winapi) HRESULT,
        CopyProtectionAsync: *const fn(self: *anyopaque, source: *IStorageItem, target: *IStorageItem, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetProtectionInfoAsync: *const fn(self: *anyopaque, source: *IStorageItem, _r: **IAsyncOperation(FileProtectionInfo)) callconv(.winapi) HRESULT,
        SaveFileAsContainerAsync: *const fn(self: *anyopaque, protectedFile: *IStorageFile, _r: **IAsyncOperation(ProtectedContainerExportResult)) callconv(.winapi) HRESULT,
        LoadFileFromContainerAsync: *const fn(self: *anyopaque, containerFile: *IStorageFile, _r: **IAsyncOperation(ProtectedContainerImportResult)) callconv(.winapi) HRESULT,
        LoadFileFromContainerAsyncWithTarget: *const fn(self: *anyopaque, containerFile: *IStorageFile, target: *IStorageItem, _r: **IAsyncOperation(ProtectedContainerImportResult)) callconv(.winapi) HRESULT,
        CreateProtectedAndOpenAsync: *const fn(self: *anyopaque, parentFolder: *IStorageFolder, desiredName: HSTRING, identity: HSTRING, collisionOption: CreationCollisionOption, _r: **IAsyncOperation(ProtectedFileCreateResult)) callconv(.winapi) HRESULT,
    };
};
pub const IFileProtectionManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsContainerAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsContainerAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFileFromContainerAsync(self: *@This(), containerFile: *IStorageFile, target: *IStorageItem, collisionOption: NameCollisionOption) core.HResult!*IAsyncOperation(ProtectedContainerImportResult) {
        var _r: *IAsyncOperation(ProtectedContainerImportResult) = undefined;
        const _c = self.vtable.LoadFileFromContainerAsync(@ptrCast(self), containerFile, target, collisionOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveFileAsContainerAsync(self: *@This(), protectedFile: *IStorageFile, sharedWithIdentities: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ProtectedContainerExportResult) {
        var _r: *IAsyncOperation(ProtectedContainerExportResult) = undefined;
        const _c = self.vtable.SaveFileAsContainerAsync(@ptrCast(self), protectedFile, sharedWithIdentities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileProtectionManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83d2a745-0483-41ab-b2d5-bc7f23d74ebb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsContainerAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LoadFileFromContainerAsync: *const fn(self: *anyopaque, containerFile: *IStorageFile, target: *IStorageItem, collisionOption: NameCollisionOption, _r: **IAsyncOperation(ProtectedContainerImportResult)) callconv(.winapi) HRESULT,
        SaveFileAsContainerAsync: *const fn(self: *anyopaque, protectedFile: *IStorageFile, sharedWithIdentities: *IIterable(HSTRING), _r: **IAsyncOperation(ProtectedContainerExportResult)) callconv(.winapi) HRESULT,
    };
};
pub const IFileProtectionManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn UnprotectAsync(self: *@This(), target: *IStorageItem) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        var _r: *IAsyncOperation(FileProtectionInfo) = undefined;
        const _c = self.vtable.UnprotectAsync(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprotectAsyncWithOptions(self: *@This(), target: *IStorageItem, options: *FileUnprotectOptions) core.HResult!*IAsyncOperation(FileProtectionInfo) {
        var _r: *IAsyncOperation(FileProtectionInfo) = undefined;
        const _c = self.vtable.UnprotectAsyncWithOptions(@ptrCast(self), target, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileProtectionManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6918849a-624f-46d6-b241-e9cd5fdf3e3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UnprotectAsync: *const fn(self: *anyopaque, target: *IStorageItem, _r: **IAsyncOperation(FileProtectionInfo)) callconv(.winapi) HRESULT,
        UnprotectAsyncWithOptions: *const fn(self: *anyopaque, target: *IStorageItem, options: *FileUnprotectOptions, _r: **IAsyncOperation(FileProtectionInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IFileRevocationManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ProtectAsync(self: *@This(), storageItem: *IStorageItem, enterpriseIdentity: HSTRING) core.HResult!*IAsyncOperation(FileProtectionStatus) {
        var _r: *IAsyncOperation(FileProtectionStatus) = undefined;
        const _c = self.vtable.ProtectAsync(@ptrCast(self), storageItem, enterpriseIdentity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyProtectionAsync(self: *@This(), sourceStorageItem: *IStorageItem, targetStorageItem: *IStorageItem) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.CopyProtectionAsync(@ptrCast(self), sourceStorageItem, targetStorageItem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Revoke(self: *@This(), enterpriseIdentity: HSTRING) core.HResult!void {
        const _c = self.vtable.Revoke(@ptrCast(self), enterpriseIdentity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetStatusAsync(self: *@This(), storageItem: *IStorageItem) core.HResult!*IAsyncOperation(FileProtectionStatus) {
        var _r: *IAsyncOperation(FileProtectionStatus) = undefined;
        const _c = self.vtable.GetStatusAsync(@ptrCast(self), storageItem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileRevocationManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "256bbc3d-1c5d-4260-8c75-9144cfb78ba9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProtectAsync: *const fn(self: *anyopaque, storageItem: *IStorageItem, enterpriseIdentity: HSTRING, _r: **IAsyncOperation(FileProtectionStatus)) callconv(.winapi) HRESULT,
        CopyProtectionAsync: *const fn(self: *anyopaque, sourceStorageItem: *IStorageItem, targetStorageItem: *IStorageItem, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        Revoke: *const fn(self: *anyopaque, enterpriseIdentity: HSTRING) callconv(.winapi) HRESULT,
        GetStatusAsync: *const fn(self: *anyopaque, storageItem: *IStorageItem, _r: **IAsyncOperation(FileProtectionStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IFileUnprotectOptions = extern struct {
    vtable: *const VTable,
    pub fn putAudit(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Audit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudit(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Audit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileUnprotectOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d1312f1-3b0d-4dd8-a1f8-1ec53822e2f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Audit: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Audit: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFileUnprotectOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), audit: bool) core.HResult!*FileUnprotectOptions {
        var _r: *FileUnprotectOptions = undefined;
        const _c = self.vtable.Create(@ptrCast(self), audit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IFileUnprotectOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51aeb39c-da8c-4c3f-9bfb-cb73a7cce0dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, audit: bool, _r: **FileUnprotectOptions) callconv(.winapi) HRESULT,
    };
};
pub const IProtectedAccessResumedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIdentities(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Identities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectedAccessResumedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac4dca59-5d80-4e95-8c5f-8539450eebe0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Identities: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IProtectedAccessSuspendingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIdentities(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Identities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectedAccessSuspendingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75a193e0-a344-429f-b975-04fc1f88c185";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Identities: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IProtectedContainerExportResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ProtectedImportExportStatus {
        var _r: ProtectedImportExportStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectedContainerExportResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3948ef95-f7fb-4b42-afb0-df70b41543c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ProtectedImportExportStatus) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IProtectedContainerImportResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ProtectedImportExportStatus {
        var _r: ProtectedImportExportStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectedContainerImportResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cdb780d1-e7bb-4d1a-9339-34dc41149f9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ProtectedImportExportStatus) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IProtectedContentRevokedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIdentities(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Identities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectedContentRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63686821-58b9-47ee-93d9-f0f741cf43f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Identities: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IProtectedFileCreateResult = extern struct {
    vtable: *const VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_Stream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionInfo(self: *@This()) core.HResult!*FileProtectionInfo {
        var _r: *FileProtectionInfo = undefined;
        const _c = self.vtable.get_ProtectionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectedFileCreateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28e3ed6a-e9e7-4a03-9f53-bdb16172699b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
        get_Stream: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        get_ProtectionInfo: *const fn(self: *anyopaque, _r: **FileProtectionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyAuditInfo = extern struct {
    vtable: *const VTable,
    pub fn putAction(self: *@This(), value: ProtectionPolicyAuditAction) core.HResult!void {
        const _c = self.vtable.put_Action(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAction(self: *@This()) core.HResult!ProtectionPolicyAuditAction {
        var _r: ProtectionPolicyAuditAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DataDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDataDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DataDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SourceDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Action: *const fn(self: *anyopaque, value: ProtectionPolicyAuditAction) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *ProtectionPolicyAuditAction) callconv(.winapi) HRESULT,
        put_DataDescription: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DataDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SourceDescription: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SourceDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetDescription: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TargetDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyAuditInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), action: ProtectionPolicyAuditAction, dataDescription: HSTRING, sourceDescription: HSTRING, targetDescription: HSTRING) core.HResult!*ProtectionPolicyAuditInfo {
        var _r: *ProtectionPolicyAuditInfo = undefined;
        const _c = self.vtable.Create(@ptrCast(self), action, dataDescription, sourceDescription, targetDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithActionAndDataDescription(self: *@This(), action: ProtectionPolicyAuditAction, dataDescription: HSTRING) core.HResult!*ProtectionPolicyAuditInfo {
        var _r: *ProtectionPolicyAuditInfo = undefined;
        const _c = self.vtable.CreateWithActionAndDataDescription(@ptrCast(self), action, dataDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyAuditInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ed4180b-92e8-42d5-83d4-25440b423549";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, action: ProtectionPolicyAuditAction, dataDescription: HSTRING, sourceDescription: HSTRING, targetDescription: HSTRING, _r: **ProtectionPolicyAuditInfo) callconv(.winapi) HRESULT,
        CreateWithActionAndDataDescription: *const fn(self: *anyopaque, action: ProtectionPolicyAuditAction, dataDescription: HSTRING, _r: **ProtectionPolicyAuditInfo) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyManager = extern struct {
    vtable: *const VTable,
    pub fn putIdentity(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Identity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIdentity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Identity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5703e18-a08d-47e6-a240-9934d7165eb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Identity: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Identity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyManager2 = extern struct {
    vtable: *const VTable,
    pub fn putShowEnterpriseIndicator(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowEnterpriseIndicator(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowEnterpriseIndicator(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowEnterpriseIndicator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "abf7527a-8435-417f-99b6-51beaf365888";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ShowEnterpriseIndicator: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShowEnterpriseIndicator: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsIdentityManaged(self: *@This(), identity: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsIdentityManaged(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryApplyProcessUIPolicy(self: *@This(), identity: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryApplyProcessUIPolicy(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearProcessUIPolicy(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearProcessUIPolicy(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateCurrentThreadNetworkContext(self: *@This(), identity: HSTRING) core.HResult!*ThreadNetworkContext {
        var _r: *ThreadNetworkContext = undefined;
        const _c = self.vtable.CreateCurrentThreadNetworkContext(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrimaryManagedIdentityForNetworkEndpointAsync(self: *@This(), endpointHost: *HostName) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetPrimaryManagedIdentityForNetworkEndpointAsync(@ptrCast(self), endpointHost, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RevokeContent(self: *@This(), identity: HSTRING) core.HResult!void {
        const _c = self.vtable.RevokeContent(@ptrCast(self), identity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetForCurrentView(self: *@This()) core.HResult!*ProtectionPolicyManager {
        var _r: *ProtectionPolicyManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addProtectedAccessSuspending(self: *@This(), handler: *EventHandler(ProtectedAccessSuspendingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProtectedAccessSuspending(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProtectedAccessSuspending(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProtectedAccessSuspending(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProtectedAccessResumed(self: *@This(), handler: *EventHandler(ProtectedAccessResumedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProtectedAccessResumed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProtectedAccessResumed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProtectedAccessResumed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProtectedContentRevoked(self: *@This(), handler: *EventHandler(ProtectedContentRevokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProtectedContentRevoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProtectedContentRevoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProtectedContentRevoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CheckAccess(self: *@This(), sourceIdentity: HSTRING, targetIdentity: HSTRING) core.HResult!ProtectionPolicyEvaluationResult {
        var _r: ProtectionPolicyEvaluationResult = undefined;
        const _c = self.vtable.CheckAccess(@ptrCast(self), sourceIdentity, targetIdentity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This(), sourceIdentity: HSTRING, targetIdentity: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), sourceIdentity, targetIdentity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0bffc66-8c3d-4d56-8804-c68f0ad32ec5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsIdentityManaged: *const fn(self: *anyopaque, identity: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        TryApplyProcessUIPolicy: *const fn(self: *anyopaque, identity: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        ClearProcessUIPolicy: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        CreateCurrentThreadNetworkContext: *const fn(self: *anyopaque, identity: HSTRING, _r: **ThreadNetworkContext) callconv(.winapi) HRESULT,
        GetPrimaryManagedIdentityForNetworkEndpointAsync: *const fn(self: *anyopaque, endpointHost: *HostName, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        RevokeContent: *const fn(self: *anyopaque, identity: HSTRING) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **ProtectionPolicyManager) callconv(.winapi) HRESULT,
        add_ProtectedAccessSuspending: *const fn(self: *anyopaque, handler: *EventHandler(ProtectedAccessSuspendingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProtectedAccessSuspending: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProtectedAccessResumed: *const fn(self: *anyopaque, handler: *EventHandler(ProtectedAccessResumedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProtectedAccessResumed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProtectedContentRevoked: *const fn(self: *anyopaque, handler: *EventHandler(ProtectedContentRevokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProtectedContentRevoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CheckAccess: *const fn(self: *anyopaque, sourceIdentity: HSTRING, targetIdentity: HSTRING, _r: *ProtectionPolicyEvaluationResult) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, sourceIdentity: HSTRING, targetIdentity: HSTRING, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn HasContentBeenRevokedSince(self: *@This(), identity: HSTRING, since: DateTime) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasContentBeenRevokedSince(@ptrCast(self), identity, since, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckAccessForApp(self: *@This(), sourceIdentity: HSTRING, appPackageFamilyName: HSTRING) core.HResult!ProtectionPolicyEvaluationResult {
        var _r: ProtectionPolicyEvaluationResult = undefined;
        const _c = self.vtable.CheckAccessForApp(@ptrCast(self), sourceIdentity, appPackageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessForAppAsync(self: *@This(), sourceIdentity: HSTRING, appPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessForAppAsync(@ptrCast(self), sourceIdentity, appPackageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEnforcementLevel(self: *@This(), identity: HSTRING) core.HResult!EnforcementLevel {
        var _r: EnforcementLevel = undefined;
        const _c = self.vtable.GetEnforcementLevel(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsUserDecryptionAllowed(self: *@This(), identity: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsUserDecryptionAllowed(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsProtectionUnderLockRequired(self: *@This(), identity: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsProtectionUnderLockRequired(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPolicyChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PolicyChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePolicyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PolicyChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsProtectionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProtectionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b68f9a8c-39e0-4649-b2e4-070ab8a579b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        HasContentBeenRevokedSince: *const fn(self: *anyopaque, identity: HSTRING, since: DateTime, _r: *bool) callconv(.winapi) HRESULT,
        CheckAccessForApp: *const fn(self: *anyopaque, sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, _r: *ProtectionPolicyEvaluationResult) callconv(.winapi) HRESULT,
        RequestAccessForAppAsync: *const fn(self: *anyopaque, sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        GetEnforcementLevel: *const fn(self: *anyopaque, identity: HSTRING, _r: *EnforcementLevel) callconv(.winapi) HRESULT,
        IsUserDecryptionAllowed: *const fn(self: *anyopaque, identity: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsProtectionUnderLockRequired: *const fn(self: *anyopaque, identity: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        add_PolicyChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PolicyChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsProtectionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This(), sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), sourceIdentity, targetIdentity, auditInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsyncWithTargetIdentityWithAuditInfoWithMessageFromApp(self: *@This(), sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessAsyncWithTargetIdentityWithAuditInfoWithMessageFromApp(@ptrCast(self), sourceIdentity, targetIdentity, auditInfo, messageFromApp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessForAppAsync(self: *@This(), sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessForAppAsync(@ptrCast(self), sourceIdentity, appPackageFamilyName, auditInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessForAppAsyncWithAppPackageFamilyNameWithAuditInfoWithMessageFromApp(self: *@This(), sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessForAppAsyncWithAppPackageFamilyNameWithAuditInfoWithMessageFromApp(@ptrCast(self), sourceIdentity, appPackageFamilyName, auditInfo, messageFromApp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LogAuditEvent(self: *@This(), sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!void {
        const _c = self.vtable.LogAuditEvent(@ptrCast(self), sourceIdentity, targetIdentity, auditInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48ff9e8c-6a6f-4d9f-bced-18ab537aa015";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessAsyncWithTargetIdentityWithAuditInfoWithMessageFromApp: *const fn(self: *anyopaque, sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessForAppAsync: *const fn(self: *anyopaque, sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessForAppAsyncWithAppPackageFamilyNameWithAuditInfoWithMessageFromApp: *const fn(self: *anyopaque, sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        LogAuditEvent: *const fn(self: *anyopaque, sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionPolicyManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn IsRoamableProtectionEnabled(self: *@This(), identity: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsRoamableProtectionEnabled(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This(), sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), sourceIdentity, targetIdentity, auditInfo, messageFromApp, behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessForAppAsync(self: *@This(), sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessForAppAsync(@ptrCast(self), sourceIdentity, appPackageFamilyName, auditInfo, messageFromApp, behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessToFilesForAppAsync(self: *@This(), sourceItemList: *IIterable(IStorageItem), appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessToFilesForAppAsync(@ptrCast(self), sourceItemList, appPackageFamilyName, auditInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessToFilesForAppAsyncWithAuditInfoWithMessageFromAppWithBehavior(self: *@This(), sourceItemList: *IIterable(IStorageItem), appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessToFilesForAppAsyncWithAuditInfoWithMessageFromAppWithBehavior(@ptrCast(self), sourceItemList, appPackageFamilyName, auditInfo, messageFromApp, behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessToFilesForProcessAsync(self: *@This(), sourceItemList: *IIterable(IStorageItem), processId: u32, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessToFilesForProcessAsync(@ptrCast(self), sourceItemList, processId, auditInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessToFilesForProcessAsyncWithAuditInfoWithMessageFromAppWithBehavior(self: *@This(), sourceItemList: *IIterable(IStorageItem), processId: u32, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessToFilesForProcessAsyncWithAuditInfoWithMessageFromAppWithBehavior(@ptrCast(self), sourceItemList, processId, auditInfo, messageFromApp, behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsFileProtectionRequiredAsync(self: *@This(), target: *IStorageItem, identity: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsFileProtectionRequiredAsync(@ptrCast(self), target, identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsFileProtectionRequiredForNewFileAsync(self: *@This(), parentFolder: *IStorageFolder, identity: HSTRING, desiredName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsFileProtectionRequiredForNewFileAsync(@ptrCast(self), parentFolder, identity, desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimaryManagedIdentity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrimaryManagedIdentity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrimaryManagedIdentityForIdentity(self: *@This(), identity: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetPrimaryManagedIdentityForIdentity(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20b794db-ccbd-490f-8c83-49ccb77aea6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsRoamableProtectionEnabled: *const fn(self: *anyopaque, identity: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessForAppAsync: *const fn(self: *anyopaque, sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessToFilesForAppAsync: *const fn(self: *anyopaque, sourceItemList: *IIterable(IStorageItem), appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessToFilesForAppAsyncWithAuditInfoWithMessageFromAppWithBehavior: *const fn(self: *anyopaque, sourceItemList: *IIterable(IStorageItem), appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessToFilesForProcessAsync: *const fn(self: *anyopaque, sourceItemList: *IIterable(IStorageItem), processId: u32, auditInfo: *ProtectionPolicyAuditInfo, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessToFilesForProcessAsyncWithAuditInfoWithMessageFromAppWithBehavior: *const fn(self: *anyopaque, sourceItemList: *IIterable(IStorageItem), processId: u32, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        IsFileProtectionRequiredAsync: *const fn(self: *anyopaque, target: *IStorageItem, identity: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        IsFileProtectionRequiredForNewFileAsync: *const fn(self: *anyopaque, parentFolder: *IStorageFolder, identity: HSTRING, desiredName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_PrimaryManagedIdentity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetPrimaryManagedIdentityForIdentity: *const fn(self: *anyopaque, identity: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IThreadNetworkContext = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.IThreadNetworkContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa4ea8e9-ef13-405a-b12c-d7348c6f41fc";
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
pub const ProtectedAccessResumedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIdentities(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IProtectedAccessResumedEventArgs = @ptrCast(self);
        return try this.getIdentities();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectedAccessResumedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectedAccessResumedEventArgs.GUID;
    pub const IID: Guid = IProtectedAccessResumedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectedAccessResumedEventArgs.SIGNATURE);
};
pub const ProtectedAccessSuspendingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIdentities(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IProtectedAccessSuspendingEventArgs = @ptrCast(self);
        return try this.getIdentities();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IProtectedAccessSuspendingEventArgs = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IProtectedAccessSuspendingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectedAccessSuspendingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectedAccessSuspendingEventArgs.GUID;
    pub const IID: Guid = IProtectedAccessSuspendingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectedAccessSuspendingEventArgs.SIGNATURE);
};
pub const ProtectedContainerExportResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ProtectedImportExportStatus {
        const this: *IProtectedContainerExportResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IProtectedContainerExportResult = @ptrCast(self);
        return try this.getFile();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectedContainerExportResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectedContainerExportResult.GUID;
    pub const IID: Guid = IProtectedContainerExportResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectedContainerExportResult.SIGNATURE);
};
pub const ProtectedContainerImportResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ProtectedImportExportStatus {
        const this: *IProtectedContainerImportResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IProtectedContainerImportResult = @ptrCast(self);
        return try this.getFile();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectedContainerImportResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectedContainerImportResult.GUID;
    pub const IID: Guid = IProtectedContainerImportResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectedContainerImportResult.SIGNATURE);
};
pub const ProtectedContentRevokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIdentities(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IProtectedContentRevokedEventArgs = @ptrCast(self);
        return try this.getIdentities();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectedContentRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectedContentRevokedEventArgs.GUID;
    pub const IID: Guid = IProtectedContentRevokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectedContentRevokedEventArgs.SIGNATURE);
};
pub const ProtectedFileCreateResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IProtectedFileCreateResult = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IProtectedFileCreateResult = @ptrCast(self);
        return try this.getStream();
    }
    pub fn getProtectionInfo(self: *@This()) core.HResult!*FileProtectionInfo {
        const this: *IProtectedFileCreateResult = @ptrCast(self);
        return try this.getProtectionInfo();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectedFileCreateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectedFileCreateResult.GUID;
    pub const IID: Guid = IProtectedFileCreateResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectedFileCreateResult.SIGNATURE);
};
pub const ProtectedImportExportStatus = enum(i32) {
    Ok = 0,
    Undetermined = 1,
    Unprotected = 2,
    Revoked = 3,
    NotRoamable = 4,
    ProtectedToOtherIdentity = 5,
    LicenseExpired = 6,
    AccessSuspended = 7,
};
pub const ProtectionPolicyAuditAction = enum(i32) {
    Decrypt = 0,
    CopyToLocation = 1,
    SendToRecipient = 2,
    Other = 3,
};
pub const ProtectionPolicyAuditInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAction(self: *@This(), value: ProtectionPolicyAuditAction) core.HResult!void {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.putAction(value);
    }
    pub fn getAction(self: *@This()) core.HResult!ProtectionPolicyAuditAction {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.getAction();
    }
    pub fn putDataDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.putDataDescription(value);
    }
    pub fn getDataDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.getDataDescription();
    }
    pub fn putSourceDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.putSourceDescription(value);
    }
    pub fn getSourceDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.getSourceDescription();
    }
    pub fn putTargetDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.putTargetDescription(value);
    }
    pub fn getTargetDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IProtectionPolicyAuditInfo = @ptrCast(self);
        return try this.getTargetDescription();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(action: ProtectionPolicyAuditAction, dataDescription: HSTRING, sourceDescription: HSTRING, targetDescription: HSTRING) core.HResult!*ProtectionPolicyAuditInfo {
        const factory = @This().IProtectionPolicyAuditInfoFactoryCache.get();
        return try factory.Create(action, dataDescription, sourceDescription, targetDescription);
    }
    pub fn CreateWithActionAndDataDescription(action: ProtectionPolicyAuditAction, dataDescription: HSTRING) core.HResult!*ProtectionPolicyAuditInfo {
        const factory = @This().IProtectionPolicyAuditInfoFactoryCache.get();
        return try factory.CreateWithActionAndDataDescription(action, dataDescription);
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectionPolicyAuditInfo.GUID;
    pub const IID: Guid = IProtectionPolicyAuditInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectionPolicyAuditInfo.SIGNATURE);
    var _IProtectionPolicyAuditInfoFactoryCache: FactoryCache(IProtectionPolicyAuditInfoFactory, RUNTIME_NAME) = .{};
};
pub const ProtectionPolicyManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putIdentity(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProtectionPolicyManager = @ptrCast(self);
        return try this.putIdentity(value);
    }
    pub fn getIdentity(self: *@This()) core.HResult!HSTRING {
        const this: *IProtectionPolicyManager = @ptrCast(self);
        return try this.getIdentity();
    }
    pub fn putShowEnterpriseIndicator(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IProtectionPolicyManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtectionPolicyManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShowEnterpriseIndicator(value);
    }
    pub fn getShowEnterpriseIndicator(self: *@This()) core.HResult!bool {
        var this: ?*IProtectionPolicyManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProtectionPolicyManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShowEnterpriseIndicator();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsRoamableProtectionEnabled(identity: HSTRING) core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.IsRoamableProtectionEnabled(identity);
    }
    pub fn RequestAccessAsyncWithAuditInfoWithMessageFromAppWithBehavior(sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.RequestAccessAsync(sourceIdentity, targetIdentity, auditInfo, messageFromApp, behavior);
    }
    pub fn RequestAccessForAppAsyncWithAuditInfoWithMessageFromAppWithBehavior(sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.RequestAccessForAppAsync(sourceIdentity, appPackageFamilyName, auditInfo, messageFromApp, behavior);
    }
    pub fn RequestAccessToFilesForAppAsync(sourceItemList: *IIterable(IStorageItem), appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.RequestAccessToFilesForAppAsync(sourceItemList, appPackageFamilyName, auditInfo);
    }
    pub fn RequestAccessToFilesForAppAsyncWithMessageFromAppWithBehavior(sourceItemList: *IIterable(IStorageItem), appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.RequestAccessToFilesForAppAsyncWithMessageFromAppWithBehavior(sourceItemList, appPackageFamilyName, auditInfo, messageFromApp, behavior);
    }
    pub fn RequestAccessToFilesForProcessAsync(sourceItemList: *IIterable(IStorageItem), processId: u32, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.RequestAccessToFilesForProcessAsync(sourceItemList, processId, auditInfo);
    }
    pub fn RequestAccessToFilesForProcessAsyncWithMessageFromAppWithBehavior(sourceItemList: *IIterable(IStorageItem), processId: u32, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING, behavior: ProtectionPolicyRequestAccessBehavior) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.RequestAccessToFilesForProcessAsyncWithMessageFromAppWithBehavior(sourceItemList, processId, auditInfo, messageFromApp, behavior);
    }
    pub fn IsFileProtectionRequiredAsync(target: *IStorageItem, identity: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.IsFileProtectionRequiredAsync(target, identity);
    }
    pub fn IsFileProtectionRequiredForNewFileAsync(parentFolder: *IStorageFolder, identity: HSTRING, desiredName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.IsFileProtectionRequiredForNewFileAsync(parentFolder, identity, desiredName);
    }
    pub fn get_PrimaryManagedIdentity() core.HResult!HSTRING {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.getPrimaryManagedIdentity();
    }
    pub fn GetPrimaryManagedIdentityForIdentity(identity: HSTRING) core.HResult!HSTRING {
        const factory = @This().IProtectionPolicyManagerStatics4Cache.get();
        return try factory.GetPrimaryManagedIdentityForIdentity(identity);
    }
    pub fn HasContentBeenRevokedSince(identity: HSTRING, since: DateTime) core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.HasContentBeenRevokedSince(identity, since);
    }
    pub fn CheckAccessForApp(sourceIdentity: HSTRING, appPackageFamilyName: HSTRING) core.HResult!ProtectionPolicyEvaluationResult {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.CheckAccessForApp(sourceIdentity, appPackageFamilyName);
    }
    pub fn RequestAccessForAppAsync(sourceIdentity: HSTRING, appPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.RequestAccessForAppAsync(sourceIdentity, appPackageFamilyName);
    }
    pub fn GetEnforcementLevel(identity: HSTRING) core.HResult!EnforcementLevel {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.GetEnforcementLevel(identity);
    }
    pub fn IsUserDecryptionAllowed(identity: HSTRING) core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.IsUserDecryptionAllowed(identity);
    }
    pub fn IsProtectionUnderLockRequired(identity: HSTRING) core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.IsProtectionUnderLockRequired(identity);
    }
    pub fn add_PolicyChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.addPolicyChanged(handler);
    }
    pub fn remove_PolicyChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.removePolicyChanged(token);
    }
    pub fn get_IsProtectionEnabled() core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStatics2Cache.get();
        return try factory.getIsProtectionEnabled();
    }
    pub fn IsIdentityManaged(identity: HSTRING) core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.IsIdentityManaged(identity);
    }
    pub fn TryApplyProcessUIPolicy(identity: HSTRING) core.HResult!bool {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.TryApplyProcessUIPolicy(identity);
    }
    pub fn ClearProcessUIPolicy() core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.ClearProcessUIPolicy();
    }
    pub fn CreateCurrentThreadNetworkContext(identity: HSTRING) core.HResult!*ThreadNetworkContext {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.CreateCurrentThreadNetworkContext(identity);
    }
    pub fn GetPrimaryManagedIdentityForNetworkEndpointAsync(endpointHost: *HostName) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.GetPrimaryManagedIdentityForNetworkEndpointAsync(endpointHost);
    }
    pub fn RevokeContent(identity: HSTRING) core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.RevokeContent(identity);
    }
    pub fn GetForCurrentView() core.HResult!*ProtectionPolicyManager {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn add_ProtectedAccessSuspending(handler: *EventHandler(ProtectedAccessSuspendingEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.addProtectedAccessSuspending(handler);
    }
    pub fn remove_ProtectedAccessSuspending(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.removeProtectedAccessSuspending(token);
    }
    pub fn add_ProtectedAccessResumed(handler: *EventHandler(ProtectedAccessResumedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.addProtectedAccessResumed(handler);
    }
    pub fn remove_ProtectedAccessResumed(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.removeProtectedAccessResumed(token);
    }
    pub fn add_ProtectedContentRevoked(handler: *EventHandler(ProtectedContentRevokedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.addProtectedContentRevoked(handler);
    }
    pub fn remove_ProtectedContentRevoked(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.removeProtectedContentRevoked(token);
    }
    pub fn CheckAccess(sourceIdentity: HSTRING, targetIdentity: HSTRING) core.HResult!ProtectionPolicyEvaluationResult {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.CheckAccess(sourceIdentity, targetIdentity);
    }
    pub fn RequestAccessAsync(sourceIdentity: HSTRING, targetIdentity: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStaticsCache.get();
        return try factory.RequestAccessAsync(sourceIdentity, targetIdentity);
    }
    pub fn RequestAccessAsyncWithAuditInfo(sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics3Cache.get();
        return try factory.RequestAccessAsync(sourceIdentity, targetIdentity, auditInfo);
    }
    pub fn RequestAccessAsyncWithAuditInfoWithMessageFromApp(sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics3Cache.get();
        return try factory.RequestAccessAsyncWithMessageFromApp(sourceIdentity, targetIdentity, auditInfo, messageFromApp);
    }
    pub fn RequestAccessForAppAsyncWithAuditInfo(sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics3Cache.get();
        return try factory.RequestAccessForAppAsync(sourceIdentity, appPackageFamilyName, auditInfo);
    }
    pub fn RequestAccessForAppAsyncWithAuditInfoWithMessageFromApp(sourceIdentity: HSTRING, appPackageFamilyName: HSTRING, auditInfo: *ProtectionPolicyAuditInfo, messageFromApp: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        const factory = @This().IProtectionPolicyManagerStatics3Cache.get();
        return try factory.RequestAccessForAppAsyncWithMessageFromApp(sourceIdentity, appPackageFamilyName, auditInfo, messageFromApp);
    }
    pub fn LogAuditEvent(sourceIdentity: HSTRING, targetIdentity: HSTRING, auditInfo: *ProtectionPolicyAuditInfo) core.HResult!void {
        const factory = @This().IProtectionPolicyManagerStatics3Cache.get();
        return try factory.LogAuditEvent(sourceIdentity, targetIdentity, auditInfo);
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ProtectionPolicyManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectionPolicyManager.GUID;
    pub const IID: Guid = IProtectionPolicyManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectionPolicyManager.SIGNATURE);
    var _IProtectionPolicyManagerStatics4Cache: FactoryCache(IProtectionPolicyManagerStatics4, RUNTIME_NAME) = .{};
    var _IProtectionPolicyManagerStatics2Cache: FactoryCache(IProtectionPolicyManagerStatics2, RUNTIME_NAME) = .{};
    var _IProtectionPolicyManagerStaticsCache: FactoryCache(IProtectionPolicyManagerStatics, RUNTIME_NAME) = .{};
    var _IProtectionPolicyManagerStatics3Cache: FactoryCache(IProtectionPolicyManagerStatics3, RUNTIME_NAME) = .{};
};
pub const ProtectionPolicyRequestAccessBehavior = enum(i32) {
    Decrypt = 0,
    TreatOverridePolicyAsBlock = 1,
};
pub const ThreadNetworkContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Security.EnterpriseData.ThreadNetworkContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IThreadNetworkContext.GUID;
    pub const IID: Guid = IThreadNetworkContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IThreadNetworkContext.SIGNATURE);
};
pub const ProtectionPolicyEvaluationResult = enum(i32) {
    Allowed = 0,
    Blocked = 1,
    ConsentRequired = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const NameCollisionOption = @import("../Storage.zig").NameCollisionOption;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../Foundation.zig").Deferral;
const IStorageFolder = @import("../Storage.zig").IStorageFolder;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const CreationCollisionOption = @import("../Storage.zig").CreationCollisionOption;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const HostName = @import("../Networking.zig").HostName;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const StorageFile = @import("../Storage.zig").StorageFile;
