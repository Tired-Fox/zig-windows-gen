pub const CreateSharedPackageContainerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMembers(self: *@This()) core.HResult!*IVector(SharedPackageContainerMember) {
        const this: *ICreateSharedPackageContainerOptions = @ptrCast(self);
        return try this.getMembers();
    }
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        const this: *ICreateSharedPackageContainerOptions = @ptrCast(self);
        return try this.getForceAppShutdown();
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *ICreateSharedPackageContainerOptions = @ptrCast(self);
        return try this.putForceAppShutdown(value);
    }
    pub fn getCreateCollisionOption(self: *@This()) core.HResult!SharedPackageContainerCreationCollisionOptions {
        const this: *ICreateSharedPackageContainerOptions = @ptrCast(self);
        return try this.getCreateCollisionOption();
    }
    pub fn putCreateCollisionOption(self: *@This(), value: SharedPackageContainerCreationCollisionOptions) core.HResult!void {
        const this: *ICreateSharedPackageContainerOptions = @ptrCast(self);
        return try this.putCreateCollisionOption(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICreateSharedPackageContainerOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.CreateSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateSharedPackageContainerOptions.GUID;
    pub const IID: Guid = ICreateSharedPackageContainerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateSharedPackageContainerOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CreateSharedPackageContainerResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContainer(self: *@This()) core.HResult!*SharedPackageContainer {
        const this: *ICreateSharedPackageContainerResult = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn getStatus(self: *@This()) core.HResult!SharedPackageContainerOperationStatus {
        const this: *ICreateSharedPackageContainerResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *ICreateSharedPackageContainerResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.CreateSharedPackageContainerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICreateSharedPackageContainerResult.GUID;
    pub const IID: Guid = ICreateSharedPackageContainerResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICreateSharedPackageContainerResult.SIGNATURE);
};
pub const DeleteSharedPackageContainerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        const this: *IDeleteSharedPackageContainerOptions = @ptrCast(self);
        return try this.getForceAppShutdown();
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeleteSharedPackageContainerOptions = @ptrCast(self);
        return try this.putForceAppShutdown(value);
    }
    pub fn getAllUsers(self: *@This()) core.HResult!bool {
        const this: *IDeleteSharedPackageContainerOptions = @ptrCast(self);
        return try this.getAllUsers();
    }
    pub fn putAllUsers(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeleteSharedPackageContainerOptions = @ptrCast(self);
        return try this.putAllUsers(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDeleteSharedPackageContainerOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.DeleteSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeleteSharedPackageContainerOptions.GUID;
    pub const IID: Guid = IDeleteSharedPackageContainerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeleteSharedPackageContainerOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DeleteSharedPackageContainerResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SharedPackageContainerOperationStatus {
        const this: *IDeleteSharedPackageContainerResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IDeleteSharedPackageContainerResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.DeleteSharedPackageContainerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeleteSharedPackageContainerResult.GUID;
    pub const IID: Guid = IDeleteSharedPackageContainerResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeleteSharedPackageContainerResult.SIGNATURE);
};
pub const FindSharedPackageContainerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IFindSharedPackageContainerOptions = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFindSharedPackageContainerOptions = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IFindSharedPackageContainerOptions = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn putPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFindSharedPackageContainerOptions = @ptrCast(self);
        return try this.putPackageFamilyName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFindSharedPackageContainerOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.FindSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFindSharedPackageContainerOptions.GUID;
    pub const IID: Guid = IFindSharedPackageContainerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFindSharedPackageContainerOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ICreateSharedPackageContainerOptions = extern struct {
    vtable: *const VTable,
    pub fn getMembers(self: *@This()) core.HResult!*IVector(SharedPackageContainerMember) {
        var _r: *IVector(SharedPackageContainerMember) = undefined;
        const _c = self.vtable.get_Members(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCreateCollisionOption(self: *@This()) core.HResult!SharedPackageContainerCreationCollisionOptions {
        var _r: SharedPackageContainerCreationCollisionOptions = undefined;
        const _c = self.vtable.get_CreateCollisionOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCreateCollisionOption(self: *@This(), value: SharedPackageContainerCreationCollisionOptions) core.HResult!void {
        const _c = self.vtable.put_CreateCollisionOption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ICreateSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2ab6ece-f664-5c8e-a4b3-2a33276d3dde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Members: *const fn(self: *anyopaque, _r: **IVector(SharedPackageContainerMember)) callconv(.winapi) HRESULT,
        get_ForceAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CreateCollisionOption: *const fn(self: *anyopaque, _r: *SharedPackageContainerCreationCollisionOptions) callconv(.winapi) HRESULT,
        put_CreateCollisionOption: *const fn(self: *anyopaque, value: SharedPackageContainerCreationCollisionOptions) callconv(.winapi) HRESULT,
    };
};
pub const ICreateSharedPackageContainerResult = extern struct {
    vtable: *const VTable,
    pub fn getContainer(self: *@This()) core.HResult!*SharedPackageContainer {
        var _r: *SharedPackageContainer = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!SharedPackageContainerOperationStatus {
        var _r: SharedPackageContainerOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ICreateSharedPackageContainerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce8810bf-151c-5707-b936-497e564afc7a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **SharedPackageContainer) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SharedPackageContainerOperationStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IDeleteSharedPackageContainerOptions = extern struct {
    vtable: *const VTable,
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllUsers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllUsers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllUsers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllUsers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IDeleteSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d81865f-986e-5138-8b5d-384d8e66ed6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ForceAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllUsers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllUsers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeleteSharedPackageContainerResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SharedPackageContainerOperationStatus {
        var _r: SharedPackageContainerOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IDeleteSharedPackageContainerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35398884-5736-517b-85bc-e598c81ab284";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SharedPackageContainerOperationStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IFindSharedPackageContainerOptions = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PackageFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IFindSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b40fc8fe-8384-54cc-817d-ae09d3b6a606";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PackageFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISharedPackageContainer = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMembers(self: *@This()) core.HResult!*IVector(SharedPackageContainerMember) {
        var _r: *IVector(SharedPackageContainerMember) = undefined;
        const _c = self.vtable.GetMembers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemovePackageFamily(self: *@This(), packageFamilyName: HSTRING, options: *UpdateSharedPackageContainerOptions) core.HResult!*UpdateSharedPackageContainerResult {
        var _r: *UpdateSharedPackageContainerResult = undefined;
        const _c = self.vtable.RemovePackageFamily(@ptrCast(self), packageFamilyName, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetData(self: *@This()) core.HResult!*UpdateSharedPackageContainerResult {
        var _r: *UpdateSharedPackageContainerResult = undefined;
        const _c = self.vtable.ResetData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ISharedPackageContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "177f1aa9-151e-5ef7-b1d9-2fba0b4b0d17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetMembers: *const fn(self: *anyopaque, _r: **IVector(SharedPackageContainerMember)) callconv(.winapi) HRESULT,
        RemovePackageFamily: *const fn(self: *anyopaque, packageFamilyName: HSTRING, options: *UpdateSharedPackageContainerOptions, _r: **UpdateSharedPackageContainerResult) callconv(.winapi) HRESULT,
        ResetData: *const fn(self: *anyopaque, _r: **UpdateSharedPackageContainerResult) callconv(.winapi) HRESULT,
    };
};
pub const ISharedPackageContainerManager = extern struct {
    vtable: *const VTable,
    pub fn CreateContainer(self: *@This(), name: HSTRING, options: *CreateSharedPackageContainerOptions) core.HResult!*CreateSharedPackageContainerResult {
        var _r: *CreateSharedPackageContainerResult = undefined;
        const _c = self.vtable.CreateContainer(@ptrCast(self), name, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteContainer(self: *@This(), id: HSTRING, options: *DeleteSharedPackageContainerOptions) core.HResult!*DeleteSharedPackageContainerResult {
        var _r: *DeleteSharedPackageContainerResult = undefined;
        const _c = self.vtable.DeleteContainer(@ptrCast(self), id, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContainer(self: *@This(), id: HSTRING) core.HResult!*SharedPackageContainer {
        var _r: *SharedPackageContainer = undefined;
        const _c = self.vtable.GetContainer(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContainers(self: *@This()) core.HResult!*IVector(SharedPackageContainer) {
        var _r: *IVector(SharedPackageContainer) = undefined;
        const _c = self.vtable.FindContainers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContainersWithOptions(self: *@This(), options: *FindSharedPackageContainerOptions) core.HResult!*IVector(SharedPackageContainer) {
        var _r: *IVector(SharedPackageContainer) = undefined;
        const _c = self.vtable.FindContainersWithOptions(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ISharedPackageContainerManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be353068-1ef7-5ac8-ab3f-0b9f612f0274";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateContainer: *const fn(self: *anyopaque, name: HSTRING, options: *CreateSharedPackageContainerOptions, _r: **CreateSharedPackageContainerResult) callconv(.winapi) HRESULT,
        DeleteContainer: *const fn(self: *anyopaque, id: HSTRING, options: *DeleteSharedPackageContainerOptions, _r: **DeleteSharedPackageContainerResult) callconv(.winapi) HRESULT,
        GetContainer: *const fn(self: *anyopaque, id: HSTRING, _r: **SharedPackageContainer) callconv(.winapi) HRESULT,
        FindContainers: *const fn(self: *anyopaque, _r: **IVector(SharedPackageContainer)) callconv(.winapi) HRESULT,
        FindContainersWithOptions: *const fn(self: *anyopaque, options: *FindSharedPackageContainerOptions, _r: **IVector(SharedPackageContainer)) callconv(.winapi) HRESULT,
    };
};
pub const ISharedPackageContainerManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*SharedPackageContainerManager {
        var _r: *SharedPackageContainerManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), userSid: HSTRING) core.HResult!*SharedPackageContainerManager {
        var _r: *SharedPackageContainerManager = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), userSid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForProvisioning(self: *@This()) core.HResult!*SharedPackageContainerManager {
        var _r: *SharedPackageContainerManager = undefined;
        const _c = self.vtable.GetForProvisioning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ISharedPackageContainerManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ef56348-838a-5f55-a89e-1198a2c627e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SharedPackageContainerManager) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, userSid: HSTRING, _r: **SharedPackageContainerManager) callconv(.winapi) HRESULT,
        GetForProvisioning: *const fn(self: *anyopaque, _r: **SharedPackageContainerManager) callconv(.winapi) HRESULT,
    };
};
pub const ISharedPackageContainerMember = extern struct {
    vtable: *const VTable,
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ISharedPackageContainerMember";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe0d0438-43c9-5426-b89c-f79bf85ddff4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISharedPackageContainerMemberFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), packageFamilyName: HSTRING) core.HResult!*SharedPackageContainerMember {
        var _r: *SharedPackageContainerMember = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.ISharedPackageContainerMemberFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49b0ceeb-498f-5a62-b738-b3ca0d436704";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **SharedPackageContainerMember) callconv(.winapi) HRESULT,
    };
};
pub const IUpdateSharedPackageContainerOptions = extern struct {
    vtable: *const VTable,
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequirePackagesPresent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequirePackagesPresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequirePackagesPresent(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequirePackagesPresent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IUpdateSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80672e83-7194-59f9-b5b9-daa5375f130a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ForceAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RequirePackagesPresent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequirePackagesPresent: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IUpdateSharedPackageContainerResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SharedPackageContainerOperationStatus {
        var _r: SharedPackageContainerOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IUpdateSharedPackageContainerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa407df7-c72d-5458-aea3-4645b6a8ee99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SharedPackageContainerOperationStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const SharedPackageContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ISharedPackageContainer = @ptrCast(self);
        return try this.getName();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISharedPackageContainer = @ptrCast(self);
        return try this.getId();
    }
    pub fn GetMembers(self: *@This()) core.HResult!*IVector(SharedPackageContainerMember) {
        const this: *ISharedPackageContainer = @ptrCast(self);
        return try this.GetMembers();
    }
    pub fn RemovePackageFamily(self: *@This(), packageFamilyName: HSTRING, options: *UpdateSharedPackageContainerOptions) core.HResult!*UpdateSharedPackageContainerResult {
        const this: *ISharedPackageContainer = @ptrCast(self);
        return try this.RemovePackageFamily(packageFamilyName, options);
    }
    pub fn ResetData(self: *@This()) core.HResult!*UpdateSharedPackageContainerResult {
        const this: *ISharedPackageContainer = @ptrCast(self);
        return try this.ResetData();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.SharedPackageContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISharedPackageContainer.GUID;
    pub const IID: Guid = ISharedPackageContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISharedPackageContainer.SIGNATURE);
};
pub const SharedPackageContainerCreationCollisionOptions = enum(i32) {
    FailIfExists = 0,
    MergeWithExisting = 1,
    ReplaceExisting = 2,
};
pub const SharedPackageContainerManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateContainer(self: *@This(), name: HSTRING, options: *CreateSharedPackageContainerOptions) core.HResult!*CreateSharedPackageContainerResult {
        const this: *ISharedPackageContainerManager = @ptrCast(self);
        return try this.CreateContainer(name, options);
    }
    pub fn DeleteContainer(self: *@This(), id: HSTRING, options: *DeleteSharedPackageContainerOptions) core.HResult!*DeleteSharedPackageContainerResult {
        const this: *ISharedPackageContainerManager = @ptrCast(self);
        return try this.DeleteContainer(id, options);
    }
    pub fn GetContainer(self: *@This(), id: HSTRING) core.HResult!*SharedPackageContainer {
        const this: *ISharedPackageContainerManager = @ptrCast(self);
        return try this.GetContainer(id);
    }
    pub fn FindContainers(self: *@This()) core.HResult!*IVector(SharedPackageContainer) {
        const this: *ISharedPackageContainerManager = @ptrCast(self);
        return try this.FindContainers();
    }
    pub fn FindContainersWithOptions(self: *@This(), options: *FindSharedPackageContainerOptions) core.HResult!*IVector(SharedPackageContainer) {
        const this: *ISharedPackageContainerManager = @ptrCast(self);
        return try this.FindContainersWithOptions(options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*SharedPackageContainerManager {
        const _f = @This().ISharedPackageContainerManagerStaticsCache.get();
        return try _f.GetDefault();
    }
    pub fn GetForUser(userSid: HSTRING) core.HResult!*SharedPackageContainerManager {
        const _f = @This().ISharedPackageContainerManagerStaticsCache.get();
        return try _f.GetForUser(userSid);
    }
    pub fn GetForProvisioning() core.HResult!*SharedPackageContainerManager {
        const _f = @This().ISharedPackageContainerManagerStaticsCache.get();
        return try _f.GetForProvisioning();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.SharedPackageContainerManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISharedPackageContainerManager.GUID;
    pub const IID: Guid = ISharedPackageContainerManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISharedPackageContainerManager.SIGNATURE);
    var _ISharedPackageContainerManagerStaticsCache: FactoryCache(ISharedPackageContainerManagerStatics, RUNTIME_NAME) = .{};
};
pub const SharedPackageContainerMember = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *ISharedPackageContainerMember = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(packageFamilyName: HSTRING) core.HResult!*SharedPackageContainerMember {
        const _f = @This().ISharedPackageContainerMemberFactoryCache.get();
        return try _f.CreateInstance(packageFamilyName);
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.SharedPackageContainerMember";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISharedPackageContainerMember.GUID;
    pub const IID: Guid = ISharedPackageContainerMember.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISharedPackageContainerMember.SIGNATURE);
    var _ISharedPackageContainerMemberFactoryCache: FactoryCache(ISharedPackageContainerMemberFactory, RUNTIME_NAME) = .{};
};
pub const SharedPackageContainerOperationStatus = enum(i32) {
    Success = 0,
    BlockedByPolicy = 1,
    AlreadyExists = 2,
    PackageFamilyExistsInAnotherContainer = 3,
    NotFound = 4,
    UnknownFailure = 5,
};
pub const UpdateSharedPackageContainerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        const this: *IUpdateSharedPackageContainerOptions = @ptrCast(self);
        return try this.getForceAppShutdown();
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *IUpdateSharedPackageContainerOptions = @ptrCast(self);
        return try this.putForceAppShutdown(value);
    }
    pub fn getRequirePackagesPresent(self: *@This()) core.HResult!bool {
        const this: *IUpdateSharedPackageContainerOptions = @ptrCast(self);
        return try this.getRequirePackagesPresent();
    }
    pub fn putRequirePackagesPresent(self: *@This(), value: bool) core.HResult!void {
        const this: *IUpdateSharedPackageContainerOptions = @ptrCast(self);
        return try this.putRequirePackagesPresent(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUpdateSharedPackageContainerOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.UpdateSharedPackageContainerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUpdateSharedPackageContainerOptions.GUID;
    pub const IID: Guid = IUpdateSharedPackageContainerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUpdateSharedPackageContainerOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UpdateSharedPackageContainerResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SharedPackageContainerOperationStatus {
        const this: *IUpdateSharedPackageContainerResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IUpdateSharedPackageContainerResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.UpdateSharedPackageContainerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUpdateSharedPackageContainerResult.GUID;
    pub const IID: Guid = IUpdateSharedPackageContainerResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUpdateSharedPackageContainerResult.SIGNATURE);
};
pub const AddPackageByAppInstallerOptions = enum(i32) {
    None = 0,
    InstallAllResources = 32,
    ForceTargetAppShutdown = 64,
    RequiredContentGroupOnly = 256,
    LimitToExistingPackages = 512,
};
pub const AddPackageOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getDependencyPackageUris();
    }
    pub fn getTargetVolume(self: *@This()) core.HResult!*PackageVolume {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getTargetVolume();
    }
    pub fn putTargetVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putTargetVolume(value);
    }
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getOptionalPackageFamilyNames();
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getOptionalPackageUris();
    }
    pub fn getRelatedPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getRelatedPackageUris();
    }
    pub fn getExternalLocationUri(self: *@This()) core.HResult!*Uri {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getExternalLocationUri();
    }
    pub fn putExternalLocationUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putExternalLocationUri(value);
    }
    pub fn getStubPackageOption(self: *@This()) core.HResult!StubPackageOption {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getStubPackageOption();
    }
    pub fn putStubPackageOption(self: *@This(), value: StubPackageOption) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putStubPackageOption(value);
    }
    pub fn getDeveloperMode(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getDeveloperMode();
    }
    pub fn putDeveloperMode(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putDeveloperMode(value);
    }
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getForceAppShutdown();
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putForceAppShutdown(value);
    }
    pub fn getForceTargetAppShutdown(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getForceTargetAppShutdown();
    }
    pub fn putForceTargetAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putForceTargetAppShutdown(value);
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getForceUpdateFromAnyVersion();
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putForceUpdateFromAnyVersion(value);
    }
    pub fn getInstallAllResources(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getInstallAllResources();
    }
    pub fn putInstallAllResources(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putInstallAllResources(value);
    }
    pub fn getRequiredContentGroupOnly(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getRequiredContentGroupOnly();
    }
    pub fn putRequiredContentGroupOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putRequiredContentGroupOnly(value);
    }
    pub fn getRetainFilesOnFailure(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getRetainFilesOnFailure();
    }
    pub fn putRetainFilesOnFailure(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putRetainFilesOnFailure(value);
    }
    pub fn getStageInPlace(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getStageInPlace();
    }
    pub fn putStageInPlace(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putStageInPlace(value);
    }
    pub fn getAllowUnsigned(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getAllowUnsigned();
    }
    pub fn putAllowUnsigned(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putAllowUnsigned(value);
    }
    pub fn getDeferRegistrationWhenPackagesAreInUse(self: *@This()) core.HResult!bool {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.getDeferRegistrationWhenPackagesAreInUse();
    }
    pub fn putDeferRegistrationWhenPackagesAreInUse(self: *@This(), value: bool) core.HResult!void {
        const this: *IAddPackageOptions = @ptrCast(self);
        return try this.putDeferRegistrationWhenPackagesAreInUse(value);
    }
    pub fn getExpectedDigests(self: *@This()) core.HResult!*IMap(Uri,HSTRING) {
        var this: ?*IAddPackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAddPackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpectedDigests();
    }
    pub fn getLimitToExistingPackages(self: *@This()) core.HResult!bool {
        var this: ?*IAddPackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAddPackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLimitToExistingPackages();
    }
    pub fn putLimitToExistingPackages(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAddPackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAddPackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLimitToExistingPackages(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAddPackageOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.AddPackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAddPackageOptions.GUID;
    pub const IID: Guid = IAddPackageOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAddPackageOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppInstallerManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetAutoUpdateSettings(self: *@This(), packageFamilyName: HSTRING, appInstallerInfo: *AutoUpdateSettingsOptions) core.HResult!void {
        const this: *IAppInstallerManager = @ptrCast(self);
        return try this.SetAutoUpdateSettings(packageFamilyName, appInstallerInfo);
    }
    pub fn ClearAutoUpdateSettings(self: *@This(), packageFamilyName: HSTRING) core.HResult!void {
        const this: *IAppInstallerManager = @ptrCast(self);
        return try this.ClearAutoUpdateSettings(packageFamilyName);
    }
    pub fn PauseAutoUpdatesUntil(self: *@This(), packageFamilyName: HSTRING, dateTime: DateTime) core.HResult!void {
        const this: *IAppInstallerManager = @ptrCast(self);
        return try this.PauseAutoUpdatesUntil(packageFamilyName, dateTime);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*AppInstallerManager {
        const _f = @This().IAppInstallerManagerStaticsCache.get();
        return try _f.GetDefault();
    }
    pub fn GetForSystem() core.HResult!*AppInstallerManager {
        const _f = @This().IAppInstallerManagerStaticsCache.get();
        return try _f.GetForSystem();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.AppInstallerManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallerManager.GUID;
    pub const IID: Guid = IAppInstallerManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallerManager.SIGNATURE);
    var _IAppInstallerManagerStaticsCache: FactoryCache(IAppInstallerManagerStatics, RUNTIME_NAME) = .{};
};
pub const AutoUpdateSettingsOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVersion(self: *@This()) core.HResult!PackageVersion {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn putVersion(self: *@This(), value: PackageVersion) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putVersion(value);
    }
    pub fn getAppInstallerUri(self: *@This()) core.HResult!*Uri {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getAppInstallerUri();
    }
    pub fn putAppInstallerUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putAppInstallerUri(value);
    }
    pub fn getOnLaunch(self: *@This()) core.HResult!bool {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getOnLaunch();
    }
    pub fn putOnLaunch(self: *@This(), value: bool) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putOnLaunch(value);
    }
    pub fn getHoursBetweenUpdateChecks(self: *@This()) core.HResult!u32 {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getHoursBetweenUpdateChecks();
    }
    pub fn putHoursBetweenUpdateChecks(self: *@This(), value: u32) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putHoursBetweenUpdateChecks(value);
    }
    pub fn getShowPrompt(self: *@This()) core.HResult!bool {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getShowPrompt();
    }
    pub fn putShowPrompt(self: *@This(), value: bool) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putShowPrompt(value);
    }
    pub fn getUpdateBlocksActivation(self: *@This()) core.HResult!bool {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getUpdateBlocksActivation();
    }
    pub fn putUpdateBlocksActivation(self: *@This(), value: bool) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putUpdateBlocksActivation(value);
    }
    pub fn getAutomaticBackgroundTask(self: *@This()) core.HResult!bool {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getAutomaticBackgroundTask();
    }
    pub fn putAutomaticBackgroundTask(self: *@This(), value: bool) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putAutomaticBackgroundTask(value);
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getForceUpdateFromAnyVersion();
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putForceUpdateFromAnyVersion(value);
    }
    pub fn getIsAutoRepairEnabled(self: *@This()) core.HResult!bool {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getIsAutoRepairEnabled();
    }
    pub fn putIsAutoRepairEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.putIsAutoRepairEnabled(value);
    }
    pub fn getUpdateUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getUpdateUris();
    }
    pub fn getRepairUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getRepairUris();
    }
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getDependencyPackageUris();
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IAutoUpdateSettingsOptions = @ptrCast(self);
        return try this.getOptionalPackageUris();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAutoUpdateSettingsOptions.IID)));
    }
    pub fn CreateFromAppInstallerInfo(appInstallerInfo: *AppInstallerInfo) core.HResult!*AutoUpdateSettingsOptions {
        const _f = @This().IAutoUpdateSettingsOptionsStaticsCache.get();
        return try _f.CreateFromAppInstallerInfo(appInstallerInfo);
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.AutoUpdateSettingsOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutoUpdateSettingsOptions.GUID;
    pub const IID: Guid = IAutoUpdateSettingsOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutoUpdateSettingsOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAutoUpdateSettingsOptionsStaticsCache: FactoryCache(IAutoUpdateSettingsOptionsStatics, RUNTIME_NAME) = .{};
};
pub const DeploymentOptions = enum(i32) {
    None = 0,
    ForceApplicationShutdown = 1,
    DevelopmentMode = 2,
    InstallAllResources = 32,
    ForceTargetApplicationShutdown = 64,
    RequiredContentGroupOnly = 256,
    ForceUpdateFromAnyVersion = 262144,
    RetainFilesOnFailure = 2097152,
    StageInPlace = 4194304,
};
pub const DeploymentProgress = extern struct {
    state: DeploymentProgressState,
    percentage: u32,
};
pub const DeploymentProgressState = enum(i32) {
    Queued = 0,
    Processing = 1,
};
pub const DeploymentResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentResult = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IDeploymentResult = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IDeploymentResult = @ptrCast(self);
        return try this.getExtendedErrorCode();
    }
    pub fn getIsRegistered(self: *@This()) core.HResult!bool {
        var this: ?*IDeploymentResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeploymentResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRegistered();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.DeploymentResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeploymentResult.GUID;
    pub const IID: Guid = IDeploymentResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeploymentResult.SIGNATURE);
};
pub const IAddPackageOptions = extern struct {
    vtable: *const VTable,
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_DependencyPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetVolume(self: *@This()) core.HResult!*PackageVolume {
        var _r: *PackageVolume = undefined;
        const _c = self.vtable.get_TargetVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const _c = self.vtable.put_TargetVolume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_OptionalPackageFamilyNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_OptionalPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelatedPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_RelatedPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExternalLocationUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ExternalLocationUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExternalLocationUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ExternalLocationUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStubPackageOption(self: *@This()) core.HResult!StubPackageOption {
        var _r: StubPackageOption = undefined;
        const _c = self.vtable.get_StubPackageOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStubPackageOption(self: *@This(), value: StubPackageOption) core.HResult!void {
        const _c = self.vtable.put_StubPackageOption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeveloperMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeveloperMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeveloperMode(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeveloperMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceTargetAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceTargetAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceTargetAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceTargetAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceUpdateFromAnyVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceUpdateFromAnyVersion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallAllResources(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InstallAllResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallAllResources(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_InstallAllResources(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequiredContentGroupOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequiredContentGroupOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequiredContentGroupOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequiredContentGroupOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRetainFilesOnFailure(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RetainFilesOnFailure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRetainFilesOnFailure(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RetainFilesOnFailure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStageInPlace(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StageInPlace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStageInPlace(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StageInPlace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowUnsigned(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowUnsigned(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowUnsigned(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowUnsigned(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeferRegistrationWhenPackagesAreInUse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeferRegistrationWhenPackagesAreInUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeferRegistrationWhenPackagesAreInUse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeferRegistrationWhenPackagesAreInUse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IAddPackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05cee018-f68f-422b-95a4-66679ec77fc0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DependencyPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_TargetVolume: *const fn(self: *anyopaque, _r: **PackageVolume) callconv(.winapi) HRESULT,
        put_TargetVolume: *const fn(self: *anyopaque, value: *PackageVolume) callconv(.winapi) HRESULT,
        get_OptionalPackageFamilyNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_OptionalPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_RelatedPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_ExternalLocationUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ExternalLocationUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_StubPackageOption: *const fn(self: *anyopaque, _r: *StubPackageOption) callconv(.winapi) HRESULT,
        put_StubPackageOption: *const fn(self: *anyopaque, value: StubPackageOption) callconv(.winapi) HRESULT,
        get_DeveloperMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeveloperMode: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceTargetAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceTargetAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InstallAllResources: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_InstallAllResources: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RequiredContentGroupOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequiredContentGroupOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RetainFilesOnFailure: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RetainFilesOnFailure: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StageInPlace: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StageInPlace: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowUnsigned: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowUnsigned: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DeferRegistrationWhenPackagesAreInUse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeferRegistrationWhenPackagesAreInUse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAddPackageOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getExpectedDigests(self: *@This()) core.HResult!*IMap(Uri,HSTRING) {
        var _r: *IMap(Uri,HSTRING) = undefined;
        const _c = self.vtable.get_ExpectedDigests(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLimitToExistingPackages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LimitToExistingPackages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLimitToExistingPackages(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_LimitToExistingPackages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IAddPackageOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee515828-bf33-40f7-84af-1b6fad2919d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpectedDigests: *const fn(self: *anyopaque, _r: **IMap(Uri,HSTRING)) callconv(.winapi) HRESULT,
        get_LimitToExistingPackages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_LimitToExistingPackages: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallerManager = extern struct {
    vtable: *const VTable,
    pub fn SetAutoUpdateSettings(self: *@This(), packageFamilyName: HSTRING, appInstallerInfo: *AutoUpdateSettingsOptions) core.HResult!void {
        const _c = self.vtable.SetAutoUpdateSettings(@ptrCast(self), packageFamilyName, appInstallerInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearAutoUpdateSettings(self: *@This(), packageFamilyName: HSTRING) core.HResult!void {
        const _c = self.vtable.ClearAutoUpdateSettings(@ptrCast(self), packageFamilyName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PauseAutoUpdatesUntil(self: *@This(), packageFamilyName: HSTRING, dateTime: DateTime) core.HResult!void {
        const _c = self.vtable.PauseAutoUpdatesUntil(@ptrCast(self), packageFamilyName, dateTime);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IAppInstallerManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7ee21c3-2103-53ee-9b18-68afeab0033d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAutoUpdateSettings: *const fn(self: *anyopaque, packageFamilyName: HSTRING, appInstallerInfo: *AutoUpdateSettingsOptions) callconv(.winapi) HRESULT,
        ClearAutoUpdateSettings: *const fn(self: *anyopaque, packageFamilyName: HSTRING) callconv(.winapi) HRESULT,
        PauseAutoUpdatesUntil: *const fn(self: *anyopaque, packageFamilyName: HSTRING, dateTime: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallerManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*AppInstallerManager {
        var _r: *AppInstallerManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForSystem(self: *@This()) core.HResult!*AppInstallerManager {
        var _r: *AppInstallerManager = undefined;
        const _c = self.vtable.GetForSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IAppInstallerManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c95a6ed5-fc59-5336-9b2e-2b07c5e61434";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AppInstallerManager) callconv(.winapi) HRESULT,
        GetForSystem: *const fn(self: *anyopaque, _r: **AppInstallerManager) callconv(.winapi) HRESULT,
    };
};
pub const IAutoUpdateSettingsOptions = extern struct {
    vtable: *const VTable,
    pub fn getVersion(self: *@This()) core.HResult!PackageVersion {
        var _r: PackageVersion = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVersion(self: *@This(), value: PackageVersion) core.HResult!void {
        const _c = self.vtable.put_Version(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppInstallerUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_AppInstallerUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppInstallerUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_AppInstallerUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOnLaunch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OnLaunch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOnLaunch(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_OnLaunch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHoursBetweenUpdateChecks(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HoursBetweenUpdateChecks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHoursBetweenUpdateChecks(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_HoursBetweenUpdateChecks(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowPrompt(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowPrompt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowPrompt(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowPrompt(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdateBlocksActivation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UpdateBlocksActivation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUpdateBlocksActivation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UpdateBlocksActivation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutomaticBackgroundTask(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutomaticBackgroundTask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutomaticBackgroundTask(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutomaticBackgroundTask(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceUpdateFromAnyVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceUpdateFromAnyVersion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAutoRepairEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutoRepairEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAutoRepairEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAutoRepairEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdateUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_UpdateUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRepairUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_RepairUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_DependencyPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_OptionalPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IAutoUpdateSettingsOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67491d87-35e1-512a-8968-1ae88d1be6d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *PackageVersion) callconv(.winapi) HRESULT,
        put_Version: *const fn(self: *anyopaque, value: PackageVersion) callconv(.winapi) HRESULT,
        get_AppInstallerUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_AppInstallerUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_OnLaunch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_OnLaunch: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_HoursBetweenUpdateChecks: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HoursBetweenUpdateChecks: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ShowPrompt: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowPrompt: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UpdateBlocksActivation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UpdateBlocksActivation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutomaticBackgroundTask: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutomaticBackgroundTask: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAutoRepairEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAutoRepairEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UpdateUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_RepairUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_DependencyPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_OptionalPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
    };
};
pub const IAutoUpdateSettingsOptionsStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromAppInstallerInfo(self: *@This(), appInstallerInfo: *AppInstallerInfo) core.HResult!*AutoUpdateSettingsOptions {
        var _r: *AutoUpdateSettingsOptions = undefined;
        const _c = self.vtable.CreateFromAppInstallerInfo(@ptrCast(self), appInstallerInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IAutoUpdateSettingsOptionsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "887b337d-0c05-54d0-bd49-3bb7a2c084cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromAppInstallerInfo: *const fn(self: *anyopaque, appInstallerInfo: *AppInstallerInfo, _r: **AutoUpdateSettingsOptions) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentResult = extern struct {
    vtable: *const VTable,
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IDeploymentResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2563b9ae-b77d-4c1f-8a7b-20e6ad515ef3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ExtendedErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentResult2 = extern struct {
    vtable: *const VTable,
    pub fn getIsRegistered(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRegistered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IDeploymentResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc0e715c-5a01-4bd7-bcf1-381c8c82e04a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRegistered: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageAllUserProvisioningOptions = extern struct {
    vtable: *const VTable,
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_OptionalPackageFamilyNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProjectionOrderPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ProjectionOrderPackageFamilyNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageAllUserProvisioningOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da35aa22-1de0-5d3e-99ff-d24f3118bf5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OptionalPackageFamilyNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ProjectionOrderPackageFamilyNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageAllUserProvisioningOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getDeferAutomaticRegistration(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeferAutomaticRegistration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeferAutomaticRegistration(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeferAutomaticRegistration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageAllUserProvisioningOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9e3cab5-2d97-579f-9368-d10bb4d4542b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeferAutomaticRegistration: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeferAutomaticRegistration: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager = extern struct {
    vtable: *const VTable,
    pub fn AddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.AddPackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdatePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.UpdatePackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemovePackageAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RemovePackageAsync(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StagePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StagePackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterPackageAsync(self: *@This(), manifestUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RegisterPackageAsync(@ptrCast(self), manifestUri, dependencyPackageUris, deploymentOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackages(self: *@This()) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUser(self: *@This(), userSecurityId: HSTRING) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesForUser(@ptrCast(self), userSecurityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageNameAndPackagePublisher(self: *@This(), packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageNameAndPackagePublisher(@ptrCast(self), packageName, packagePublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageNameAndPackagePublisher(self: *@This(), userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageNameAndPackagePublisher(@ptrCast(self), userSecurityId, packageName, packagePublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindUsers(self: *@This(), packageFullName: HSTRING) core.HResult!*IIterable(PackageUserInformation) {
        var _r: *IIterable(PackageUserInformation) = undefined;
        const _c = self.vtable.FindUsers(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPackageState(self: *@This(), packageFullName: HSTRING, packageState: PackageState) core.HResult!void {
        const _c = self.vtable.SetPackageState(@ptrCast(self), packageFullName, packageState);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindPackage(self: *@This(), packageFullName: HSTRING) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.FindPackage(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CleanupPackageForUserAsync(self: *@This(), packageName: HSTRING, userSecurityId: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.CleanupPackageForUserAsync(@ptrCast(self), packageName, userSecurityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageFamilyName(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageFamilyName(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageFamilyName(self: *@This(), userSecurityId: HSTRING, packageFamilyName: HSTRING) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageFamilyName(@ptrCast(self), userSecurityId, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackageForUser(self: *@This(), userSecurityId: HSTRING, packageFullName: HSTRING) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.FindPackageForUser(@ptrCast(self), userSecurityId, packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddPackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        UpdatePackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RemovePackageAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StagePackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RegisterPackageAsync: *const fn(self: *anyopaque, manifestUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        FindPackages: *const fn(self: *anyopaque, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUser: *const fn(self: *anyopaque, userSecurityId: HSTRING, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageNameAndPackagePublisher: *const fn(self: *anyopaque, packageName: HSTRING, packagePublisher: HSTRING, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageNameAndPackagePublisher: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindUsers: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **IIterable(PackageUserInformation)) callconv(.winapi) HRESULT,
        SetPackageState: *const fn(self: *anyopaque, packageFullName: HSTRING, packageState: PackageState) callconv(.winapi) HRESULT,
        FindPackage: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **Package) callconv(.winapi) HRESULT,
        CleanupPackageForUserAsync: *const fn(self: *anyopaque, packageName: HSTRING, userSecurityId: HSTRING, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageFamilyName: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageFamilyName: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageFamilyName: HSTRING, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackageForUser: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageFullName: HSTRING, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager10 = extern struct {
    vtable: *const VTable,
    pub fn ProvisionPackageForAllUsersAsync(self: *@This(), mainPackageFamilyName: HSTRING, options: *PackageAllUserProvisioningOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.ProvisionPackageForAllUsersAsync(@ptrCast(self), mainPackageFamilyName, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager10";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7d7d07e-2e66-4093-aed5-e093ed87b3bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProvisionPackageForAllUsersAsync: *const fn(self: *anyopaque, mainPackageFamilyName: HSTRING, options: *PackageAllUserProvisioningOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager11 = extern struct {
    vtable: *const VTable,
    pub fn RemovePackageByUriAsync(self: *@This(), packageUri: *Uri, options: *RemovePackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RemovePackageByUriAsync(@ptrCast(self), packageUri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager11";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12950b24-c77e-4ea7-8859-325318074e15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RemovePackageByUriAsync: *const fn(self: *anyopaque, packageUri: *Uri, options: *RemovePackageOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager12 = extern struct {
    vtable: *const VTable,
    pub fn IsPackageRemovalPending(self: *@This(), packageFullName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPackageRemovalPending(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPackageRemovalPendingForUser(self: *@This(), packageFullName: HSTRING, userSecurityId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPackageRemovalPendingForUser(@ptrCast(self), packageFullName, userSecurityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPackageRemovalPendingByUri(self: *@This(), packageUri: *Uri) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPackageRemovalPendingByUri(@ptrCast(self), packageUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPackageRemovalPendingByUriForUser(self: *@This(), packageUri: *Uri, userSecurityId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPackageRemovalPendingByUriForUser(@ptrCast(self), packageUri, userSecurityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager12";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d233adf-f9e3-4d96-b40d-96788e39539f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPackageRemovalPending: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsPackageRemovalPendingForUser: *const fn(self: *anyopaque, packageFullName: HSTRING, userSecurityId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsPackageRemovalPendingByUri: *const fn(self: *anyopaque, packageUri: *Uri, _r: *bool) callconv(.winapi) HRESULT,
        IsPackageRemovalPendingByUriForUser: *const fn(self: *anyopaque, packageUri: *Uri, userSecurityId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager2 = extern struct {
    vtable: *const VTable,
    pub fn RemovePackageAsync(self: *@This(), packageFullName: HSTRING, removalOptions: RemovalOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RemovePackageAsync(@ptrCast(self), packageFullName, removalOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StagePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StagePackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterPackageByFullNameAsync(self: *@This(), mainPackageFullName: HSTRING, dependencyPackageFullNames: *IIterable(HSTRING), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RegisterPackageByFullNameAsync(@ptrCast(self), mainPackageFullName, dependencyPackageFullNames, deploymentOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageTypes(self: *@This(), packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageTypes(@ptrCast(self), packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageTypes(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageTypes(@ptrCast(self), userSecurityId, packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(self: *@This(), packageName: HSTRING, packagePublisher: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(@ptrCast(self), packageName, packagePublisher, packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(self: *@This(), userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(@ptrCast(self), userSecurityId, packageName, packagePublisher, packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageTypesWithPackageFamilyNameAndPackageTypes(self: *@This(), packageFamilyName: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageTypesWithPackageFamilyNameAndPackageTypes(@ptrCast(self), packageFamilyName, packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageFamilyNameAndPackageTypes(self: *@This(), userSecurityId: HSTRING, packageFamilyName: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var _r: *IIterable(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageTypesWithPackageFamilyNameAndPackageTypes(@ptrCast(self), userSecurityId, packageFamilyName, packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StageUserDataAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StageUserDataAsync(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7aad08d-0840-46f2-b5d8-cad47693a095";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RemovePackageAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, removalOptions: RemovalOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StagePackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RegisterPackageByFullNameAsync: *const fn(self: *anyopaque, mainPackageFullName: HSTRING, dependencyPackageFullNames: *IIterable(HSTRING), deploymentOptions: DeploymentOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageTypes: *const fn(self: *anyopaque, packageTypes: PackageTypes, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageTypes: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageTypes: PackageTypes, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes: *const fn(self: *anyopaque, packageName: HSTRING, packagePublisher: HSTRING, packageTypes: PackageTypes, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING, packageTypes: PackageTypes, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageTypesWithPackageFamilyNameAndPackageTypes: *const fn(self: *anyopaque, packageFamilyName: HSTRING, packageTypes: PackageTypes, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageTypesWithPackageFamilyNameAndPackageTypes: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageFamilyName: HSTRING, packageTypes: PackageTypes, _r: **IIterable(Package)) callconv(.winapi) HRESULT,
        StageUserDataAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager3 = extern struct {
    vtable: *const VTable,
    pub fn AddPackageVolumeAsync(self: *@This(), packageStorePath: HSTRING) core.HResult!*IAsyncOperation(PackageVolume) {
        var _r: *IAsyncOperation(PackageVolume) = undefined;
        const _c = self.vtable.AddPackageVolumeAsync(@ptrCast(self), packageStorePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.AddPackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearPackageStatus(self: *@This(), packageFullName: HSTRING, status: PackageStatus) core.HResult!void {
        const _c = self.vtable.ClearPackageStatus(@ptrCast(self), packageFullName, status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterPackageAsync(self: *@This(), manifestUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, appDataVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RegisterPackageAsync(@ptrCast(self), manifestUri, dependencyPackageUris, deploymentOptions, appDataVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackageVolume(self: *@This(), volumeName: HSTRING) core.HResult!*PackageVolume {
        var _r: *PackageVolume = undefined;
        const _c = self.vtable.FindPackageVolume(@ptrCast(self), volumeName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackageVolumes(self: *@This()) core.HResult!*IIterable(PackageVolume) {
        var _r: *IIterable(PackageVolume) = undefined;
        const _c = self.vtable.FindPackageVolumes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultPackageVolume(self: *@This()) core.HResult!*PackageVolume {
        var _r: *PackageVolume = undefined;
        const _c = self.vtable.GetDefaultPackageVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MovePackageToVolumeAsync(self: *@This(), packageFullName: HSTRING, deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.MovePackageToVolumeAsync(@ptrCast(self), packageFullName, deploymentOptions, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemovePackageVolumeAsync(self: *@This(), volume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RemovePackageVolumeAsync(@ptrCast(self), volume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDefaultPackageVolume(self: *@This(), volume: *PackageVolume) core.HResult!void {
        const _c = self.vtable.SetDefaultPackageVolume(@ptrCast(self), volume);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPackageStatus(self: *@This(), packageFullName: HSTRING, status: PackageStatus) core.HResult!void {
        const _c = self.vtable.SetPackageStatus(@ptrCast(self), packageFullName, status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPackageVolumeOfflineAsync(self: *@This(), packageVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.SetPackageVolumeOfflineAsync(@ptrCast(self), packageVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPackageVolumeOnlineAsync(self: *@This(), packageVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.SetPackageVolumeOnlineAsync(@ptrCast(self), packageVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StagePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StagePackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StageUserDataAsync(self: *@This(), packageFullName: HSTRING, deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StageUserDataAsync(@ptrCast(self), packageFullName, deploymentOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "daad9948-36f1-41a7-9188-bc263e0dcb72";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddPackageVolumeAsync: *const fn(self: *anyopaque, packageStorePath: HSTRING, _r: **IAsyncOperation(PackageVolume)) callconv(.winapi) HRESULT,
        AddPackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        ClearPackageStatus: *const fn(self: *anyopaque, packageFullName: HSTRING, status: PackageStatus) callconv(.winapi) HRESULT,
        RegisterPackageAsync: *const fn(self: *anyopaque, manifestUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, appDataVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        FindPackageVolume: *const fn(self: *anyopaque, volumeName: HSTRING, _r: **PackageVolume) callconv(.winapi) HRESULT,
        FindPackageVolumes: *const fn(self: *anyopaque, _r: **IIterable(PackageVolume)) callconv(.winapi) HRESULT,
        GetDefaultPackageVolume: *const fn(self: *anyopaque, _r: **PackageVolume) callconv(.winapi) HRESULT,
        MovePackageToVolumeAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RemovePackageVolumeAsync: *const fn(self: *anyopaque, volume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        SetDefaultPackageVolume: *const fn(self: *anyopaque, volume: *PackageVolume) callconv(.winapi) HRESULT,
        SetPackageStatus: *const fn(self: *anyopaque, packageFullName: HSTRING, status: PackageStatus) callconv(.winapi) HRESULT,
        SetPackageVolumeOfflineAsync: *const fn(self: *anyopaque, packageVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        SetPackageVolumeOnlineAsync: *const fn(self: *anyopaque, packageVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StagePackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StageUserDataAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, deploymentOptions: DeploymentOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager4 = extern struct {
    vtable: *const VTable,
    pub fn GetPackageVolumesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PackageVolume)) {
        var _r: *IAsyncOperation(IVectorView(PackageVolume)) = undefined;
        const _c = self.vtable.GetPackageVolumesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c719963-bab6-46bf-8ff7-da4719230ae6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPackageVolumesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PackageVolume))) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager5 = extern struct {
    vtable: *const VTable,
    pub fn AddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), externalPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.AddPackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, externalPackageUris, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StagePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), externalPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StagePackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, externalPackageUris, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterPackageByFamilyNameAsync(self: *@This(), mainPackageFamilyName: HSTRING, dependencyPackageFamilyNames: *IIterable(HSTRING), deploymentOptions: DeploymentOptions, appDataVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RegisterPackageByFamilyNameAsync(@ptrCast(self), mainPackageFamilyName, dependencyPackageFamilyNames, deploymentOptions, appDataVolume, optionalPackageFamilyNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDebugSettings(self: *@This()) core.HResult!*PackageManagerDebugSettings {
        var _r: *PackageManagerDebugSettings = undefined;
        const _c = self.vtable.get_DebugSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "711f3117-1afd-4313-978c-9bb6e1b864a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddPackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), externalPackageUris: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StagePackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), externalPackageUris: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RegisterPackageByFamilyNameAsync: *const fn(self: *anyopaque, mainPackageFamilyName: HSTRING, dependencyPackageFamilyNames: *IIterable(HSTRING), deploymentOptions: DeploymentOptions, appDataVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        get_DebugSettings: *const fn(self: *anyopaque, _r: **PackageManagerDebugSettings) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager6 = extern struct {
    vtable: *const VTable,
    pub fn ProvisionPackageForAllUsersAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.ProvisionPackageForAllUsersAsync(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddPackageByAppInstallerFileAsync(self: *@This(), appInstallerFileUri: *Uri, options: AddPackageByAppInstallerOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.AddPackageByAppInstallerFileAsync(@ptrCast(self), appInstallerFileUri, options, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAddPackageByAppInstallerFileAsync(self: *@This(), appInstallerFileUri: *Uri, options: AddPackageByAppInstallerOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RequestAddPackageByAppInstallerFileAsync(@ptrCast(self), appInstallerFileUri, options, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), options: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), packageUrisToInstall: *IIterable(Uri), relatedPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.AddPackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, options, targetVolume, optionalPackageFamilyNames, packageUrisToInstall, relatedPackageUris, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StagePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), options: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), packageUrisToInstall: *IIterable(Uri), relatedPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StagePackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, options, targetVolume, optionalPackageFamilyNames, packageUrisToInstall, relatedPackageUris, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), relatedPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RequestAddPackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, relatedPackageUris, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0847e909-53cd-4e4f-832e-57d180f6e447";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProvisionPackageForAllUsersAsync: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        AddPackageByAppInstallerFileAsync: *const fn(self: *anyopaque, appInstallerFileUri: *Uri, options: AddPackageByAppInstallerOptions, targetVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RequestAddPackageByAppInstallerFileAsync: *const fn(self: *anyopaque, appInstallerFileUri: *Uri, options: AddPackageByAppInstallerOptions, targetVolume: *PackageVolume, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        AddPackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), options: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), packageUrisToInstall: *IIterable(Uri), relatedPackageUris: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StagePackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), options: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), packageUrisToInstall: *IIterable(Uri), relatedPackageUris: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RequestAddPackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), relatedPackageUris: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager7 = extern struct {
    vtable: *const VTable,
    pub fn RequestAddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), relatedPackageUris: *IIterable(Uri), packageUrisToInstall: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RequestAddPackageAsync(@ptrCast(self), packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, relatedPackageUris, packageUrisToInstall, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f28654f4-2ba7-4b80-88d6-be15f9a23fba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAddPackageAsync: *const fn(self: *anyopaque, packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), relatedPackageUris: *IIterable(Uri), packageUrisToInstall: *IIterable(Uri), _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager8 = extern struct {
    vtable: *const VTable,
    pub fn DeprovisionPackageForAllUsersAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.DeprovisionPackageForAllUsersAsync(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8575330-1298-4ee2-80ee-7f659c5d2782";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DeprovisionPackageForAllUsersAsync: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManager9 = extern struct {
    vtable: *const VTable,
    pub fn FindProvisionedPackages(self: *@This()) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindProvisionedPackages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddPackageByUriAsync(self: *@This(), packageUri: *Uri, options: *AddPackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.AddPackageByUriAsync(@ptrCast(self), packageUri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StagePackageByUriAsync(self: *@This(), packageUri: *Uri, options: *StagePackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.StagePackageByUriAsync(@ptrCast(self), packageUri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterPackageByUriAsync(self: *@This(), manifestUri: *Uri, options: *RegisterPackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RegisterPackageByUriAsync(@ptrCast(self), manifestUri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterPackagesByFullNameAsync(self: *@This(), packageFullNames: *IIterable(HSTRING), options: *RegisterPackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var _r: *IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) = undefined;
        const _c = self.vtable.RegisterPackagesByFullNameAsync(@ptrCast(self), packageFullNames, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPackageStubPreference(self: *@This(), packageFamilyName: HSTRING, useStub: PackageStubPreference) core.HResult!void {
        const _c = self.vtable.SetPackageStubPreference(@ptrCast(self), packageFamilyName, useStub);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPackageStubPreference(self: *@This(), packageFamilyName: HSTRING) core.HResult!PackageStubPreference {
        var _r: PackageStubPreference = undefined;
        const _c = self.vtable.GetPackageStubPreference(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManager9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1aa79035-cc71-4b2e-80a6-c7041d8579a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindProvisionedPackages: *const fn(self: *anyopaque, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        AddPackageByUriAsync: *const fn(self: *anyopaque, packageUri: *Uri, options: *AddPackageOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        StagePackageByUriAsync: *const fn(self: *anyopaque, packageUri: *Uri, options: *StagePackageOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RegisterPackageByUriAsync: *const fn(self: *anyopaque, manifestUri: *Uri, options: *RegisterPackageOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        RegisterPackagesByFullNameAsync: *const fn(self: *anyopaque, packageFullNames: *IIterable(HSTRING), options: *RegisterPackageOptions, _r: **IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress)) callconv(.winapi) HRESULT,
        SetPackageStubPreference: *const fn(self: *anyopaque, packageFamilyName: HSTRING, useStub: PackageStubPreference) callconv(.winapi) HRESULT,
        GetPackageStubPreference: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: *PackageStubPreference) callconv(.winapi) HRESULT,
    };
};
pub const IPackageManagerDebugSettings = extern struct {
    vtable: *const VTable,
    pub fn SetContentGroupStateAsync(self: *@This(), package: *Package, contentGroupName: HSTRING, state: PackageContentGroupState) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetContentGroupStateAsync(@ptrCast(self), package, contentGroupName, state, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetContentGroupStateAsyncWithCompletionPercentage(self: *@This(), package: *Package, contentGroupName: HSTRING, state: PackageContentGroupState, completionPercentage: f64) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetContentGroupStateAsyncWithCompletionPercentage(@ptrCast(self), package, contentGroupName, state, completionPercentage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageManagerDebugSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a611683-a988-4fcf-8f0f-ce175898e8eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetContentGroupStateAsync: *const fn(self: *anyopaque, package: *Package, contentGroupName: HSTRING, state: PackageContentGroupState, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetContentGroupStateAsyncWithCompletionPercentage: *const fn(self: *anyopaque, package: *Package, contentGroupName: HSTRING, state: PackageContentGroupState, completionPercentage: f64, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPackageUserInformation = extern struct {
    vtable: *const VTable,
    pub fn getUserSecurityId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserSecurityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstallState(self: *@This()) core.HResult!PackageInstallState {
        var _r: PackageInstallState = undefined;
        const _c = self.vtable.get_InstallState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageUserInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6383423-fa09-4cbc-9055-15ca275e2e7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserSecurityId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InstallState: *const fn(self: *anyopaque, _r: *PackageInstallState) callconv(.winapi) HRESULT,
    };
};
pub const IPackageVolume = extern struct {
    vtable: *const VTable,
    pub fn getIsOffline(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOffline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSystemVolume(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSystemVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMountPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MountPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageStorePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageStorePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsHardLinks(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsHardLinks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackages(self: *@This()) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageNameAndPackagePublisher(self: *@This(), packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageNameAndPackagePublisher(@ptrCast(self), packageName, packagePublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageFamilyName(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageFamilyName(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageTypes(self: *@This(), packageTypes: PackageTypes) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageTypes(@ptrCast(self), packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageTypesWithPackageNameAndPackagePublisher(self: *@This(), packageTypes: PackageTypes, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageTypesWithPackageNameAndPackagePublisher(@ptrCast(self), packageTypes, packageName, packagePublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesWithPackageTypesWithPackageFamilyName(self: *@This(), packageTypes: PackageTypes, packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesWithPackageTypesWithPackageFamilyName(@ptrCast(self), packageTypes, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackage(self: *@This(), packageFullName: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackage(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUser(self: *@This(), userSecurityId: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesForUser(@ptrCast(self), userSecurityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageNameAndPackagePublisher(self: *@This(), userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageNameAndPackagePublisher(@ptrCast(self), userSecurityId, packageName, packagePublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageFamilyName(self: *@This(), userSecurityId: HSTRING, packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageFamilyName(@ptrCast(self), userSecurityId, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageTypes(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageTypes(@ptrCast(self), userSecurityId, packageTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisher(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisher(@ptrCast(self), userSecurityId, packageTypes, packageName, packagePublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageFamilyName(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes, packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackagesForUserWithPackageTypesWithPackageFamilyName(@ptrCast(self), userSecurityId, packageTypes, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackageForUser(self: *@This(), userSecurityId: HSTRING, packageFullName: HSTRING) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindPackageForUser(@ptrCast(self), userSecurityId, packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageVolume";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf2672c3-1a40-4450-9739-2ace2e898853";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsOffline: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSystemVolume: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MountPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PackageStorePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportsHardLinks: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        FindPackages: *const fn(self: *anyopaque, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageNameAndPackagePublisher: *const fn(self: *anyopaque, packageName: HSTRING, packagePublisher: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageFamilyName: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageTypes: *const fn(self: *anyopaque, packageTypes: PackageTypes, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageTypesWithPackageNameAndPackagePublisher: *const fn(self: *anyopaque, packageTypes: PackageTypes, packageName: HSTRING, packagePublisher: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesWithPackageTypesWithPackageFamilyName: *const fn(self: *anyopaque, packageTypes: PackageTypes, packageFamilyName: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackage: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUser: *const fn(self: *anyopaque, userSecurityId: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageNameAndPackagePublisher: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageFamilyName: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageFamilyName: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageTypes: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageTypes: PackageTypes, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisher: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageTypes: PackageTypes, packageName: HSTRING, packagePublisher: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackagesForUserWithPackageTypesWithPackageFamilyName: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageTypes: PackageTypes, packageFamilyName: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        FindPackageForUser: *const fn(self: *anyopaque, userSecurityId: HSTRING, packageFullName: HSTRING, _r: **IVector(Package)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageVolume2 = extern struct {
    vtable: *const VTable,
    pub fn getIsFullTrustPackageSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFullTrustPackageSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAppxInstallSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppxInstallSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAvailableSpaceAsync(self: *@This()) core.HResult!*IAsyncOperation(u64) {
        var _r: *IAsyncOperation(u64) = undefined;
        const _c = self.vtable.GetAvailableSpaceAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IPackageVolume2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46abcf2e-9dd4-47a2-ab8c-c6408349bcd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFullTrustPackageSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAppxInstallSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetAvailableSpaceAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u64)) callconv(.winapi) HRESULT,
    };
};
pub const IRegisterPackageOptions = extern struct {
    vtable: *const VTable,
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_DependencyPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppDataVolume(self: *@This()) core.HResult!*PackageVolume {
        var _r: *PackageVolume = undefined;
        const _c = self.vtable.get_AppDataVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppDataVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const _c = self.vtable.put_AppDataVolume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_OptionalPackageFamilyNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExternalLocationUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ExternalLocationUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExternalLocationUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ExternalLocationUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeveloperMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeveloperMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeveloperMode(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeveloperMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceTargetAppShutdown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceTargetAppShutdown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceTargetAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceTargetAppShutdown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceUpdateFromAnyVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceUpdateFromAnyVersion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallAllResources(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InstallAllResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallAllResources(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_InstallAllResources(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStageInPlace(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StageInPlace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStageInPlace(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StageInPlace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowUnsigned(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowUnsigned(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowUnsigned(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowUnsigned(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeferRegistrationWhenPackagesAreInUse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeferRegistrationWhenPackagesAreInUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeferRegistrationWhenPackagesAreInUse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeferRegistrationWhenPackagesAreInUse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IRegisterPackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "677112a7-50d4-496c-8415-0602b4c6d3bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DependencyPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_AppDataVolume: *const fn(self: *anyopaque, _r: **PackageVolume) callconv(.winapi) HRESULT,
        put_AppDataVolume: *const fn(self: *anyopaque, value: *PackageVolume) callconv(.winapi) HRESULT,
        get_OptionalPackageFamilyNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ExternalLocationUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ExternalLocationUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_DeveloperMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeveloperMode: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceTargetAppShutdown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceTargetAppShutdown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InstallAllResources: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_InstallAllResources: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StageInPlace: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StageInPlace: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowUnsigned: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowUnsigned: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DeferRegistrationWhenPackagesAreInUse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeferRegistrationWhenPackagesAreInUse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRegisterPackageOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getExpectedDigests(self: *@This()) core.HResult!*IMap(Uri,HSTRING) {
        var _r: *IMap(Uri,HSTRING) = undefined;
        const _c = self.vtable.get_ExpectedDigests(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IRegisterPackageOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3dfa9743-86ff-4a11-bc93-434eb6be3a0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpectedDigests: *const fn(self: *anyopaque, _r: **IMap(Uri,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IRemovePackageOptions = extern struct {
    vtable: *const VTable,
    pub fn getPreserveApplicationData(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PreserveApplicationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreserveApplicationData(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PreserveApplicationData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreserveRoamableApplicationData(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PreserveRoamableApplicationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreserveRoamableApplicationData(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PreserveRoamableApplicationData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoveForAllUsers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RemoveForAllUsers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoveForAllUsers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RemoveForAllUsers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IRemovePackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13cf01f3-c450-4f7c-a5a3-5e3c631b7462";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreserveApplicationData: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PreserveApplicationData: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PreserveRoamableApplicationData: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PreserveRoamableApplicationData: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RemoveForAllUsers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RemoveForAllUsers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRemovePackageOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getDeferRemovalWhenPackagesAreInUse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeferRemovalWhenPackagesAreInUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeferRemovalWhenPackagesAreInUse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeferRemovalWhenPackagesAreInUse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IRemovePackageOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fcc61e5-22c5-423b-b4b4-cf10bb50830c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeferRemovalWhenPackagesAreInUse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeferRemovalWhenPackagesAreInUse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStagePackageOptions = extern struct {
    vtable: *const VTable,
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_DependencyPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetVolume(self: *@This()) core.HResult!*PackageVolume {
        var _r: *PackageVolume = undefined;
        const _c = self.vtable.get_TargetVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const _c = self.vtable.put_TargetVolume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_OptionalPackageFamilyNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_OptionalPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelatedPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_RelatedPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExternalLocationUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ExternalLocationUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExternalLocationUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ExternalLocationUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStubPackageOption(self: *@This()) core.HResult!StubPackageOption {
        var _r: StubPackageOption = undefined;
        const _c = self.vtable.get_StubPackageOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStubPackageOption(self: *@This(), value: StubPackageOption) core.HResult!void {
        const _c = self.vtable.put_StubPackageOption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeveloperMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeveloperMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeveloperMode(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DeveloperMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceUpdateFromAnyVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceUpdateFromAnyVersion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallAllResources(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InstallAllResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallAllResources(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_InstallAllResources(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequiredContentGroupOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequiredContentGroupOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequiredContentGroupOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequiredContentGroupOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStageInPlace(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StageInPlace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStageInPlace(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StageInPlace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowUnsigned(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowUnsigned(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowUnsigned(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowUnsigned(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IStagePackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b110c9c-b95d-4c56-bd36-6d656800d06b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DependencyPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_TargetVolume: *const fn(self: *anyopaque, _r: **PackageVolume) callconv(.winapi) HRESULT,
        put_TargetVolume: *const fn(self: *anyopaque, value: *PackageVolume) callconv(.winapi) HRESULT,
        get_OptionalPackageFamilyNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_OptionalPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_RelatedPackageUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_ExternalLocationUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ExternalLocationUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_StubPackageOption: *const fn(self: *anyopaque, _r: *StubPackageOption) callconv(.winapi) HRESULT,
        put_StubPackageOption: *const fn(self: *anyopaque, value: StubPackageOption) callconv(.winapi) HRESULT,
        get_DeveloperMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DeveloperMode: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InstallAllResources: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_InstallAllResources: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RequiredContentGroupOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequiredContentGroupOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StageInPlace: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StageInPlace: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowUnsigned: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowUnsigned: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStagePackageOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getExpectedDigests(self: *@This()) core.HResult!*IMap(Uri,HSTRING) {
        var _r: *IMap(Uri,HSTRING) = undefined;
        const _c = self.vtable.get_ExpectedDigests(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.IStagePackageOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "990c4ccc-6226-4192-ba92-79875fce0d9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpectedDigests: *const fn(self: *anyopaque, _r: **IMap(Uri,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const PackageAllUserProvisioningOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IPackageAllUserProvisioningOptions = @ptrCast(self);
        return try this.getOptionalPackageFamilyNames();
    }
    pub fn getProjectionOrderPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IPackageAllUserProvisioningOptions = @ptrCast(self);
        return try this.getProjectionOrderPackageFamilyNames();
    }
    pub fn getDeferAutomaticRegistration(self: *@This()) core.HResult!bool {
        var this: ?*IPackageAllUserProvisioningOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageAllUserProvisioningOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeferAutomaticRegistration();
    }
    pub fn putDeferAutomaticRegistration(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPackageAllUserProvisioningOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageAllUserProvisioningOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDeferAutomaticRegistration(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPackageAllUserProvisioningOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.PackageAllUserProvisioningOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageAllUserProvisioningOptions.GUID;
    pub const IID: Guid = IPackageAllUserProvisioningOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageAllUserProvisioningOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PackageInstallState = enum(i32) {
    NotInstalled = 0,
    Staged = 1,
    Installed = 2,
    Paused = 6,
};
pub const PackageManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.AddPackageAsync(packageUri, dependencyPackageUris, deploymentOptions);
    }
    pub fn UpdatePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.UpdatePackageAsync(packageUri, dependencyPackageUris, deploymentOptions);
    }
    pub fn RemovePackageAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.RemovePackageAsync(packageFullName);
    }
    pub fn StagePackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.StagePackageAsync(packageUri, dependencyPackageUris);
    }
    pub fn RegisterPackageAsync(self: *@This(), manifestUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.RegisterPackageAsync(manifestUri, dependencyPackageUris, deploymentOptions);
    }
    pub fn FindPackages(self: *@This()) core.HResult!*IIterable(Package) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackages();
    }
    pub fn FindPackagesForUser(self: *@This(), userSecurityId: HSTRING) core.HResult!*IIterable(Package) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackagesForUser(userSecurityId);
    }
    pub fn FindPackagesWithPackageNameAndPackagePublisher(self: *@This(), packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IIterable(Package) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackagesWithPackageNameAndPackagePublisher(packageName, packagePublisher);
    }
    pub fn FindPackagesForUserWithPackageNameAndPackagePublisher(self: *@This(), userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IIterable(Package) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageNameAndPackagePublisher(userSecurityId, packageName, packagePublisher);
    }
    pub fn FindUsers(self: *@This(), packageFullName: HSTRING) core.HResult!*IIterable(PackageUserInformation) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindUsers(packageFullName);
    }
    pub fn SetPackageState(self: *@This(), packageFullName: HSTRING, packageState: PackageState) core.HResult!void {
        const this: *IPackageManager = @ptrCast(self);
        return try this.SetPackageState(packageFullName, packageState);
    }
    pub fn FindPackage(self: *@This(), packageFullName: HSTRING) core.HResult!*Package {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackage(packageFullName);
    }
    pub fn CleanupPackageForUserAsync(self: *@This(), packageName: HSTRING, userSecurityId: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.CleanupPackageForUserAsync(packageName, userSecurityId);
    }
    pub fn FindPackagesWithPackageFamilyName(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IIterable(Package) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackagesWithPackageFamilyName(packageFamilyName);
    }
    pub fn FindPackagesForUserWithPackageFamilyName(self: *@This(), userSecurityId: HSTRING, packageFamilyName: HSTRING) core.HResult!*IIterable(Package) {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageFamilyName(userSecurityId, packageFamilyName);
    }
    pub fn FindPackageForUser(self: *@This(), userSecurityId: HSTRING, packageFullName: HSTRING) core.HResult!*Package {
        const this: *IPackageManager = @ptrCast(self);
        return try this.FindPackageForUser(userSecurityId, packageFullName);
    }
    pub fn RemovePackageAsyncWithRemovalOptions(self: *@This(), packageFullName: HSTRING, removalOptions: RemovalOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemovePackageAsyncWithRemovalOptions(packageFullName, removalOptions);
    }
    pub fn StagePackageAsyncWithDeploymentOptions(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StagePackageAsyncWithDeploymentOptions(packageUri, dependencyPackageUris, deploymentOptions);
    }
    pub fn RegisterPackageByFullNameAsync(self: *@This(), mainPackageFullName: HSTRING, dependencyPackageFullNames: *IIterable(HSTRING), deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterPackageByFullNameAsync(mainPackageFullName, dependencyPackageFullNames, deploymentOptions);
    }
    pub fn FindPackagesWithPackageTypes(self: *@This(), packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackagesWithPackageTypes(packageTypes);
    }
    pub fn FindPackagesForUserWithPackageTypes(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackagesForUserWithPackageTypes(userSecurityId, packageTypes);
    }
    pub fn FindPackagesWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(self: *@This(), packageName: HSTRING, packagePublisher: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackagesWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(packageName, packagePublisher, packageTypes);
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(self: *@This(), userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisherAndPackageTypes(userSecurityId, packageName, packagePublisher, packageTypes);
    }
    pub fn FindPackagesWithPackageTypesWithPackageFamilyNameAndPackageTypes(self: *@This(), packageFamilyName: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackagesWithPackageTypesWithPackageFamilyNameAndPackageTypes(packageFamilyName, packageTypes);
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageFamilyNameAndPackageTypes(self: *@This(), userSecurityId: HSTRING, packageFamilyName: HSTRING, packageTypes: PackageTypes) core.HResult!*IIterable(Package) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackagesForUserWithPackageTypesWithPackageFamilyNameAndPackageTypes(userSecurityId, packageFamilyName, packageTypes);
    }
    pub fn StageUserDataAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StageUserDataAsync(packageFullName);
    }
    pub fn AddPackageVolumeAsync(self: *@This(), packageStorePath: HSTRING) core.HResult!*IAsyncOperation(PackageVolume) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPackageVolumeAsync(packageStorePath);
    }
    pub fn AddPackageAsyncWithTargetVolume(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPackageAsyncWithTargetVolume(packageUri, dependencyPackageUris, deploymentOptions, targetVolume);
    }
    pub fn ClearPackageStatus(self: *@This(), packageFullName: HSTRING, status: PackageStatus) core.HResult!void {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ClearPackageStatus(packageFullName, status);
    }
    pub fn RegisterPackageAsyncWithAppDataVolume(self: *@This(), manifestUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, appDataVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterPackageAsyncWithAppDataVolume(manifestUri, dependencyPackageUris, deploymentOptions, appDataVolume);
    }
    pub fn FindPackageVolume(self: *@This(), volumeName: HSTRING) core.HResult!*PackageVolume {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackageVolume(volumeName);
    }
    pub fn FindPackageVolumes(self: *@This()) core.HResult!*IIterable(PackageVolume) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindPackageVolumes();
    }
    pub fn GetDefaultPackageVolume(self: *@This()) core.HResult!*PackageVolume {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDefaultPackageVolume();
    }
    pub fn MovePackageToVolumeAsync(self: *@This(), packageFullName: HSTRING, deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MovePackageToVolumeAsync(packageFullName, deploymentOptions, targetVolume);
    }
    pub fn RemovePackageVolumeAsync(self: *@This(), volume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemovePackageVolumeAsync(volume);
    }
    pub fn SetDefaultPackageVolume(self: *@This(), volume: *PackageVolume) core.HResult!void {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDefaultPackageVolume(volume);
    }
    pub fn SetPackageStatus(self: *@This(), packageFullName: HSTRING, status: PackageStatus) core.HResult!void {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPackageStatus(packageFullName, status);
    }
    pub fn SetPackageVolumeOfflineAsync(self: *@This(), packageVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPackageVolumeOfflineAsync(packageVolume);
    }
    pub fn SetPackageVolumeOnlineAsync(self: *@This(), packageVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPackageVolumeOnlineAsync(packageVolume);
    }
    pub fn StagePackageAsyncWithDeploymentOptionsAndTargetVolume(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StagePackageAsyncWithDeploymentOptionsAndTargetVolume(packageUri, dependencyPackageUris, deploymentOptions, targetVolume);
    }
    pub fn StageUserDataAsyncWithDeploymentOptions(self: *@This(), packageFullName: HSTRING, deploymentOptions: DeploymentOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StageUserDataAsyncWithDeploymentOptions(packageFullName, deploymentOptions);
    }
    pub fn GetPackageVolumesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PackageVolume)) {
        var this: ?*IPackageManager4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPackageVolumesAsync();
    }
    pub fn AddPackageAsyncWithTargetVolumeAndOptionalPackageFamilyNamesAndExternalPackageUris(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), externalPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPackageAsyncWithTargetVolumeAndOptionalPackageFamilyNamesAndExternalPackageUris(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, externalPackageUris);
    }
    pub fn StagePackageAsyncWithDeploymentOptionsAndTargetVolumeAndOptionalPackageFamilyNamesAndExternalPackageUris(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), externalPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StagePackageAsyncWithDeploymentOptionsAndTargetVolumeAndOptionalPackageFamilyNamesAndExternalPackageUris(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, externalPackageUris);
    }
    pub fn RegisterPackageByFamilyNameAsync(self: *@This(), mainPackageFamilyName: HSTRING, dependencyPackageFamilyNames: *IIterable(HSTRING), deploymentOptions: DeploymentOptions, appDataVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterPackageByFamilyNameAsync(mainPackageFamilyName, dependencyPackageFamilyNames, deploymentOptions, appDataVolume, optionalPackageFamilyNames);
    }
    pub fn getDebugSettings(self: *@This()) core.HResult!*PackageManagerDebugSettings {
        var this: ?*IPackageManager5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDebugSettings();
    }
    pub fn ProvisionPackageForAllUsersAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProvisionPackageForAllUsersAsync(packageFamilyName);
    }
    pub fn AddPackageByAppInstallerFileAsync(self: *@This(), appInstallerFileUri: *Uri, options: AddPackageByAppInstallerOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPackageByAppInstallerFileAsync(appInstallerFileUri, options, targetVolume);
    }
    pub fn RequestAddPackageByAppInstallerFileAsync(self: *@This(), appInstallerFileUri: *Uri, options: AddPackageByAppInstallerOptions, targetVolume: *PackageVolume) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAddPackageByAppInstallerFileAsync(appInstallerFileUri, options, targetVolume);
    }
    pub fn AddPackageAsyncWithTargetVolumeAndOptionalPackageFamilyNamesAndPackageUrisToInstallAndRelatedPackageUris(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), options: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), packageUrisToInstall: *IIterable(Uri), relatedPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPackageAsyncWithTargetVolumeAndOptionalPackageFamilyNamesAndPackageUrisToInstallAndRelatedPackageUris(packageUri, dependencyPackageUris, options, targetVolume, optionalPackageFamilyNames, packageUrisToInstall, relatedPackageUris);
    }
    pub fn StagePackageAsyncWithOptionsAndTargetVolumeAndOptionalPackageFamilyNamesAndPackageUrisToInstallAndRelatedPackageUris(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), options: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), packageUrisToInstall: *IIterable(Uri), relatedPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StagePackageAsyncWithOptionsAndTargetVolumeAndOptionalPackageFamilyNamesAndPackageUrisToInstallAndRelatedPackageUris(packageUri, dependencyPackageUris, options, targetVolume, optionalPackageFamilyNames, packageUrisToInstall, relatedPackageUris);
    }
    pub fn RequestAddPackageAsync(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), relatedPackageUris: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAddPackageAsync(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, relatedPackageUris);
    }
    pub fn RequestAddPackageAsyncWithPackageUrisToInstall(self: *@This(), packageUri: *Uri, dependencyPackageUris: *IIterable(Uri), deploymentOptions: DeploymentOptions, targetVolume: *PackageVolume, optionalPackageFamilyNames: *IIterable(HSTRING), relatedPackageUris: *IIterable(Uri), packageUrisToInstall: *IIterable(Uri)) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAddPackageAsyncWithPackageUrisToInstall(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, relatedPackageUris, packageUrisToInstall);
    }
    pub fn DeprovisionPackageForAllUsersAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeprovisionPackageForAllUsersAsync(packageFamilyName);
    }
    pub fn FindProvisionedPackages(self: *@This()) core.HResult!*IVector(Package) {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindProvisionedPackages();
    }
    pub fn AddPackageByUriAsync(self: *@This(), packageUri: *Uri, options: *AddPackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPackageByUriAsync(packageUri, options);
    }
    pub fn StagePackageByUriAsync(self: *@This(), packageUri: *Uri, options: *StagePackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StagePackageByUriAsync(packageUri, options);
    }
    pub fn RegisterPackageByUriAsync(self: *@This(), manifestUri: *Uri, options: *RegisterPackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterPackageByUriAsync(manifestUri, options);
    }
    pub fn RegisterPackagesByFullNameAsync(self: *@This(), packageFullNames: *IIterable(HSTRING), options: *RegisterPackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterPackagesByFullNameAsync(packageFullNames, options);
    }
    pub fn SetPackageStubPreference(self: *@This(), packageFamilyName: HSTRING, useStub: PackageStubPreference) core.HResult!void {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPackageStubPreference(packageFamilyName, useStub);
    }
    pub fn GetPackageStubPreference(self: *@This(), packageFamilyName: HSTRING) core.HResult!PackageStubPreference {
        var this: ?*IPackageManager9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPackageStubPreference(packageFamilyName);
    }
    pub fn ProvisionPackageForAllUsersAsyncWithOptions(self: *@This(), mainPackageFamilyName: HSTRING, options: *PackageAllUserProvisioningOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager10 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager10.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProvisionPackageForAllUsersAsyncWithOptions(mainPackageFamilyName, options);
    }
    pub fn RemovePackageByUriAsync(self: *@This(), packageUri: *Uri, options: *RemovePackageOptions) core.HResult!*IAsyncOperationWithProgress(DeploymentResult,DeploymentProgress) {
        var this: ?*IPackageManager11 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager11.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemovePackageByUriAsync(packageUri, options);
    }
    pub fn IsPackageRemovalPending(self: *@This(), packageFullName: HSTRING) core.HResult!bool {
        var this: ?*IPackageManager12 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager12.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPackageRemovalPending(packageFullName);
    }
    pub fn IsPackageRemovalPendingForUser(self: *@This(), packageFullName: HSTRING, userSecurityId: HSTRING) core.HResult!bool {
        var this: ?*IPackageManager12 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager12.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPackageRemovalPendingForUser(packageFullName, userSecurityId);
    }
    pub fn IsPackageRemovalPendingByUri(self: *@This(), packageUri: *Uri) core.HResult!bool {
        var this: ?*IPackageManager12 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager12.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPackageRemovalPendingByUri(packageUri);
    }
    pub fn IsPackageRemovalPendingByUriForUser(self: *@This(), packageUri: *Uri, userSecurityId: HSTRING) core.HResult!bool {
        var this: ?*IPackageManager12 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageManager12.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPackageRemovalPendingByUriForUser(packageUri, userSecurityId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPackageManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.PackageManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageManager.GUID;
    pub const IID: Guid = IPackageManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PackageManagerDebugSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetContentGroupStateAsync(self: *@This(), package: *Package, contentGroupName: HSTRING, state: PackageContentGroupState) core.HResult!*IAsyncAction {
        const this: *IPackageManagerDebugSettings = @ptrCast(self);
        return try this.SetContentGroupStateAsync(package, contentGroupName, state);
    }
    pub fn SetContentGroupStateAsyncWithCompletionPercentage(self: *@This(), package: *Package, contentGroupName: HSTRING, state: PackageContentGroupState, completionPercentage: f64) core.HResult!*IAsyncAction {
        const this: *IPackageManagerDebugSettings = @ptrCast(self);
        return try this.SetContentGroupStateAsyncWithCompletionPercentage(package, contentGroupName, state, completionPercentage);
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.PackageManagerDebugSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageManagerDebugSettings.GUID;
    pub const IID: Guid = IPackageManagerDebugSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageManagerDebugSettings.SIGNATURE);
};
pub const PackageState = enum(i32) {
    Normal = 0,
    LicenseInvalid = 1,
    Modified = 2,
    Tampered = 3,
};
pub const PackageStatus = enum(i32) {
    OK = 0,
    LicenseIssue = 1,
    Modified = 2,
    Tampered = 4,
    Disabled = 8,
};
pub const PackageStubPreference = enum(i32) {
    Full = 0,
    Stub = 1,
};
pub const PackageTypes = enum(i32) {
    None = 0,
    Main = 1,
    Framework = 2,
    Resource = 4,
    Bundle = 8,
    Xap = 16,
    Optional = 32,
    All = -1,
};
pub const PackageUserInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserSecurityId(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageUserInformation = @ptrCast(self);
        return try this.getUserSecurityId();
    }
    pub fn getInstallState(self: *@This()) core.HResult!PackageInstallState {
        const this: *IPackageUserInformation = @ptrCast(self);
        return try this.getInstallState();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.PackageUserInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageUserInformation.GUID;
    pub const IID: Guid = IPackageUserInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageUserInformation.SIGNATURE);
};
pub const PackageVolume = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsOffline(self: *@This()) core.HResult!bool {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.getIsOffline();
    }
    pub fn getIsSystemVolume(self: *@This()) core.HResult!bool {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.getIsSystemVolume();
    }
    pub fn getMountPoint(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.getMountPoint();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.getName();
    }
    pub fn getPackageStorePath(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.getPackageStorePath();
    }
    pub fn getSupportsHardLinks(self: *@This()) core.HResult!bool {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.getSupportsHardLinks();
    }
    pub fn FindPackages(self: *@This()) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackages();
    }
    pub fn FindPackagesWithPackageNameAndPackagePublisher(self: *@This(), packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesWithPackageNameAndPackagePublisher(packageName, packagePublisher);
    }
    pub fn FindPackagesWithPackageFamilyName(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesWithPackageFamilyName(packageFamilyName);
    }
    pub fn FindPackagesWithPackageTypes(self: *@This(), packageTypes: PackageTypes) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesWithPackageTypes(packageTypes);
    }
    pub fn FindPackagesWithPackageTypesWithPackageNameAndPackagePublisher(self: *@This(), packageTypes: PackageTypes, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesWithPackageTypesWithPackageNameAndPackagePublisher(packageTypes, packageName, packagePublisher);
    }
    pub fn FindPackagesWithPackageTypesWithPackageFamilyName(self: *@This(), packageTypes: PackageTypes, packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesWithPackageTypesWithPackageFamilyName(packageTypes, packageFamilyName);
    }
    pub fn FindPackage(self: *@This(), packageFullName: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackage(packageFullName);
    }
    pub fn FindPackagesForUser(self: *@This(), userSecurityId: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesForUser(userSecurityId);
    }
    pub fn FindPackagesForUserWithPackageNameAndPackagePublisher(self: *@This(), userSecurityId: HSTRING, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageNameAndPackagePublisher(userSecurityId, packageName, packagePublisher);
    }
    pub fn FindPackagesForUserWithPackageFamilyName(self: *@This(), userSecurityId: HSTRING, packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageFamilyName(userSecurityId, packageFamilyName);
    }
    pub fn FindPackagesForUserWithPackageTypes(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageTypes(userSecurityId, packageTypes);
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisher(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes, packageName: HSTRING, packagePublisher: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageTypesWithPackageNameAndPackagePublisher(userSecurityId, packageTypes, packageName, packagePublisher);
    }
    pub fn FindPackagesForUserWithPackageTypesWithPackageFamilyName(self: *@This(), userSecurityId: HSTRING, packageTypes: PackageTypes, packageFamilyName: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackagesForUserWithPackageTypesWithPackageFamilyName(userSecurityId, packageTypes, packageFamilyName);
    }
    pub fn FindPackageForUser(self: *@This(), userSecurityId: HSTRING, packageFullName: HSTRING) core.HResult!*IVector(Package) {
        const this: *IPackageVolume = @ptrCast(self);
        return try this.FindPackageForUser(userSecurityId, packageFullName);
    }
    pub fn getIsFullTrustPackageSupported(self: *@This()) core.HResult!bool {
        var this: ?*IPackageVolume2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageVolume2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFullTrustPackageSupported();
    }
    pub fn getIsAppxInstallSupported(self: *@This()) core.HResult!bool {
        var this: ?*IPackageVolume2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageVolume2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAppxInstallSupported();
    }
    pub fn GetAvailableSpaceAsync(self: *@This()) core.HResult!*IAsyncOperation(u64) {
        var this: ?*IPackageVolume2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageVolume2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAvailableSpaceAsync();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.PackageVolume";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageVolume.GUID;
    pub const IID: Guid = IPackageVolume.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageVolume.SIGNATURE);
};
pub const RegisterPackageOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getDependencyPackageUris();
    }
    pub fn getAppDataVolume(self: *@This()) core.HResult!*PackageVolume {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getAppDataVolume();
    }
    pub fn putAppDataVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putAppDataVolume(value);
    }
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getOptionalPackageFamilyNames();
    }
    pub fn getExternalLocationUri(self: *@This()) core.HResult!*Uri {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getExternalLocationUri();
    }
    pub fn putExternalLocationUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putExternalLocationUri(value);
    }
    pub fn getDeveloperMode(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getDeveloperMode();
    }
    pub fn putDeveloperMode(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putDeveloperMode(value);
    }
    pub fn getForceAppShutdown(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getForceAppShutdown();
    }
    pub fn putForceAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putForceAppShutdown(value);
    }
    pub fn getForceTargetAppShutdown(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getForceTargetAppShutdown();
    }
    pub fn putForceTargetAppShutdown(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putForceTargetAppShutdown(value);
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getForceUpdateFromAnyVersion();
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putForceUpdateFromAnyVersion(value);
    }
    pub fn getInstallAllResources(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getInstallAllResources();
    }
    pub fn putInstallAllResources(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putInstallAllResources(value);
    }
    pub fn getStageInPlace(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getStageInPlace();
    }
    pub fn putStageInPlace(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putStageInPlace(value);
    }
    pub fn getAllowUnsigned(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getAllowUnsigned();
    }
    pub fn putAllowUnsigned(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putAllowUnsigned(value);
    }
    pub fn getDeferRegistrationWhenPackagesAreInUse(self: *@This()) core.HResult!bool {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.getDeferRegistrationWhenPackagesAreInUse();
    }
    pub fn putDeferRegistrationWhenPackagesAreInUse(self: *@This(), value: bool) core.HResult!void {
        const this: *IRegisterPackageOptions = @ptrCast(self);
        return try this.putDeferRegistrationWhenPackagesAreInUse(value);
    }
    pub fn getExpectedDigests(self: *@This()) core.HResult!*IMap(Uri,HSTRING) {
        var this: ?*IRegisterPackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRegisterPackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpectedDigests();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRegisterPackageOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.RegisterPackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRegisterPackageOptions.GUID;
    pub const IID: Guid = IRegisterPackageOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRegisterPackageOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RemovalOptions = enum(i32) {
    None = 0,
    PreserveApplicationData = 4096,
    PreserveRoamableApplicationData = 128,
    DeferRemovalWhenPackagesAreInUse = 8192,
    RemoveForAllUsers = 524288,
};
pub const RemovePackageOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreserveApplicationData(self: *@This()) core.HResult!bool {
        const this: *IRemovePackageOptions = @ptrCast(self);
        return try this.getPreserveApplicationData();
    }
    pub fn putPreserveApplicationData(self: *@This(), value: bool) core.HResult!void {
        const this: *IRemovePackageOptions = @ptrCast(self);
        return try this.putPreserveApplicationData(value);
    }
    pub fn getPreserveRoamableApplicationData(self: *@This()) core.HResult!bool {
        const this: *IRemovePackageOptions = @ptrCast(self);
        return try this.getPreserveRoamableApplicationData();
    }
    pub fn putPreserveRoamableApplicationData(self: *@This(), value: bool) core.HResult!void {
        const this: *IRemovePackageOptions = @ptrCast(self);
        return try this.putPreserveRoamableApplicationData(value);
    }
    pub fn getRemoveForAllUsers(self: *@This()) core.HResult!bool {
        const this: *IRemovePackageOptions = @ptrCast(self);
        return try this.getRemoveForAllUsers();
    }
    pub fn putRemoveForAllUsers(self: *@This(), value: bool) core.HResult!void {
        const this: *IRemovePackageOptions = @ptrCast(self);
        return try this.putRemoveForAllUsers(value);
    }
    pub fn getDeferRemovalWhenPackagesAreInUse(self: *@This()) core.HResult!bool {
        var this: ?*IRemovePackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemovePackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeferRemovalWhenPackagesAreInUse();
    }
    pub fn putDeferRemovalWhenPackagesAreInUse(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IRemovePackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemovePackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDeferRemovalWhenPackagesAreInUse(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRemovePackageOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.RemovePackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemovePackageOptions.GUID;
    pub const IID: Guid = IRemovePackageOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemovePackageOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StagePackageOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getDependencyPackageUris();
    }
    pub fn getTargetVolume(self: *@This()) core.HResult!*PackageVolume {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getTargetVolume();
    }
    pub fn putTargetVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putTargetVolume(value);
    }
    pub fn getOptionalPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getOptionalPackageFamilyNames();
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getOptionalPackageUris();
    }
    pub fn getRelatedPackageUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getRelatedPackageUris();
    }
    pub fn getExternalLocationUri(self: *@This()) core.HResult!*Uri {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getExternalLocationUri();
    }
    pub fn putExternalLocationUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putExternalLocationUri(value);
    }
    pub fn getStubPackageOption(self: *@This()) core.HResult!StubPackageOption {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getStubPackageOption();
    }
    pub fn putStubPackageOption(self: *@This(), value: StubPackageOption) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putStubPackageOption(value);
    }
    pub fn getDeveloperMode(self: *@This()) core.HResult!bool {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getDeveloperMode();
    }
    pub fn putDeveloperMode(self: *@This(), value: bool) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putDeveloperMode(value);
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getForceUpdateFromAnyVersion();
    }
    pub fn putForceUpdateFromAnyVersion(self: *@This(), value: bool) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putForceUpdateFromAnyVersion(value);
    }
    pub fn getInstallAllResources(self: *@This()) core.HResult!bool {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getInstallAllResources();
    }
    pub fn putInstallAllResources(self: *@This(), value: bool) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putInstallAllResources(value);
    }
    pub fn getRequiredContentGroupOnly(self: *@This()) core.HResult!bool {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getRequiredContentGroupOnly();
    }
    pub fn putRequiredContentGroupOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putRequiredContentGroupOnly(value);
    }
    pub fn getStageInPlace(self: *@This()) core.HResult!bool {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getStageInPlace();
    }
    pub fn putStageInPlace(self: *@This(), value: bool) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putStageInPlace(value);
    }
    pub fn getAllowUnsigned(self: *@This()) core.HResult!bool {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.getAllowUnsigned();
    }
    pub fn putAllowUnsigned(self: *@This(), value: bool) core.HResult!void {
        const this: *IStagePackageOptions = @ptrCast(self);
        return try this.putAllowUnsigned(value);
    }
    pub fn getExpectedDigests(self: *@This()) core.HResult!*IMap(Uri,HSTRING) {
        var this: ?*IStagePackageOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStagePackageOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpectedDigests();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStagePackageOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.StagePackageOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStagePackageOptions.GUID;
    pub const IID: Guid = IStagePackageOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStagePackageOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StubPackageOption = enum(i32) {
    Default = 0,
    InstallFull = 1,
    InstallStub = 2,
    UsePreference = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IMap = @import("../Foundation/Collections.zig").IMap;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const PackageContentGroupState = @import("../ApplicationModel.zig").PackageContentGroupState;
const Uri = @import("../Foundation.zig").Uri;
const HResult = @import("../Foundation.zig").HResult;
const AppInstallerInfo = @import("../ApplicationModel.zig").AppInstallerInfo;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const PackageVersion = @import("../ApplicationModel.zig").PackageVersion;
const Package = @import("../ApplicationModel.zig").Package;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Preview = @import("./Deployment/Preview.zig");
