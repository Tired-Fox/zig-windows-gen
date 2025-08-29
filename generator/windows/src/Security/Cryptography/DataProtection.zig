pub const DataProtectionProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ProtectAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IDataProtectionProvider = @ptrCast(self);
        return try this.ProtectAsync(data);
    }
    pub fn UnprotectAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IDataProtectionProvider = @ptrCast(self);
        return try this.UnprotectAsync(data);
    }
    pub fn ProtectStreamAsync(self: *@This(), src: *IInputStream, dest: *IOutputStream) core.HResult!*IAsyncAction {
        const this: *IDataProtectionProvider = @ptrCast(self);
        return try this.ProtectStreamAsync(src, dest);
    }
    pub fn UnprotectStreamAsync(self: *@This(), src: *IInputStream, dest: *IOutputStream) core.HResult!*IAsyncAction {
        const this: *IDataProtectionProvider = @ptrCast(self);
        return try this.UnprotectStreamAsync(src, dest);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDataProtectionProvider.IID)));
    }
    pub fn CreateOverloadExplicit(protectionDescriptor: HSTRING) core.HResult!*DataProtectionProvider {
        const factory = @This().IDataProtectionProviderFactoryCache.get();
        return try factory.CreateOverloadExplicit(protectionDescriptor);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.DataProtection.DataProtectionProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataProtectionProvider.GUID;
    pub const IID: Guid = IDataProtectionProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataProtectionProvider.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDataProtectionProviderFactoryCache: FactoryCache(IDataProtectionProviderFactory, RUNTIME_NAME) = .{};
};
pub const IDataProtectionProvider = extern struct {
    vtable: *const VTable,
    pub fn ProtectAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.ProtectAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprotectAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.UnprotectAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProtectStreamAsync(self: *@This(), src: *IInputStream, dest: *IOutputStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ProtectStreamAsync(@ptrCast(self), src, dest, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprotectStreamAsync(self: *@This(), src: *IInputStream, dest: *IOutputStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnprotectStreamAsync(@ptrCast(self), src, dest, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.DataProtection.IDataProtectionProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09639948-ed22-4270-bd1c-6d72c00f8787";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProtectAsync: *const fn(self: *anyopaque, data: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        UnprotectAsync: *const fn(self: *anyopaque, data: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        ProtectStreamAsync: *const fn(self: *anyopaque, src: *IInputStream, dest: *IOutputStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UnprotectStreamAsync: *const fn(self: *anyopaque, src: *IInputStream, dest: *IOutputStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IDataProtectionProviderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateOverloadExplicit(self: *@This(), protectionDescriptor: HSTRING) core.HResult!*DataProtectionProvider {
        var _r: *DataProtectionProvider = undefined;
        const _c = self.vtable.CreateOverloadExplicit(@ptrCast(self), protectionDescriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.DataProtection.IDataProtectionProviderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adf33dac-4932-4cdf-ac41-7214333514ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateOverloadExplicit: *const fn(self: *anyopaque, protectionDescriptor: HSTRING, _r: **DataProtectionProvider) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const IOutputStream = @import("../../Storage/Streams.zig").IOutputStream;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
