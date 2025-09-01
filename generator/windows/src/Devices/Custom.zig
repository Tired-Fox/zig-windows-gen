pub const CustomDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *ICustomDevice = @ptrCast(self);
        return try this.getInputStream();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *ICustomDevice = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub fn SendIOControlAsync(self: *@This(), ioControlCode: *IIOControlCode, inputBuffer: *IBuffer, outputBuffer: *IBuffer) core.HResult!*IAsyncOperation(u32) {
        const this: *ICustomDevice = @ptrCast(self);
        return try this.SendIOControlAsync(ioControlCode, inputBuffer, outputBuffer);
    }
    pub fn TrySendIOControlAsync(self: *@This(), ioControlCode: *IIOControlCode, inputBuffer: *IBuffer, outputBuffer: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        const this: *ICustomDevice = @ptrCast(self);
        return try this.TrySendIOControlAsync(ioControlCode, inputBuffer, outputBuffer);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector(classGuid: *Guid) core.HResult!HSTRING {
        const _f = @This().ICustomDeviceStaticsCache.get();
        return try _f.GetDeviceSelector(classGuid);
    }
    pub fn FromIdAsync(deviceId: HSTRING, desiredAccess: DeviceAccessMode, sharingMode: DeviceSharingMode) core.HResult!*IAsyncOperation(CustomDevice) {
        const _f = @This().ICustomDeviceStaticsCache.get();
        return try _f.FromIdAsync(deviceId, desiredAccess, sharingMode);
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.CustomDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomDevice.GUID;
    pub const IID: Guid = ICustomDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomDevice.SIGNATURE);
    var _ICustomDeviceStaticsCache: FactoryCache(ICustomDeviceStatics, RUNTIME_NAME) = .{};
};
pub const DeviceAccessMode = enum(i32) {
    Read = 0,
    Write = 1,
    ReadWrite = 2,
};
pub const DeviceSharingMode = enum(i32) {
    Shared = 0,
    Exclusive = 1,
};
pub const ICustomDevice = extern struct {
    vtable: *const VTable,
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendIOControlAsync(self: *@This(), ioControlCode: *IIOControlCode, inputBuffer: *IBuffer, outputBuffer: *IBuffer) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.SendIOControlAsync(@ptrCast(self), ioControlCode, inputBuffer, outputBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySendIOControlAsync(self: *@This(), ioControlCode: *IIOControlCode, inputBuffer: *IBuffer, outputBuffer: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySendIOControlAsync(@ptrCast(self), ioControlCode, inputBuffer, outputBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.ICustomDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd30251f-c48b-43bd-bcb1-dec88f15143e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        SendIOControlAsync: *const fn(self: *anyopaque, ioControlCode: *IIOControlCode, inputBuffer: *IBuffer, outputBuffer: *IBuffer, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        TrySendIOControlAsync: *const fn(self: *anyopaque, ioControlCode: *IIOControlCode, inputBuffer: *IBuffer, outputBuffer: *IBuffer, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ICustomDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), classGuid: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), classGuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING, desiredAccess: DeviceAccessMode, sharingMode: DeviceSharingMode) core.HResult!*IAsyncOperation(CustomDevice) {
        var _r: *IAsyncOperation(CustomDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, desiredAccess, sharingMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.ICustomDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8220312-ef4c-46b1-a58e-eeb308dc8917";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, classGuid: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, desiredAccess: DeviceAccessMode, sharingMode: DeviceSharingMode, _r: **IAsyncOperation(CustomDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IIOControlCode = extern struct {
    vtable: *const VTable,
    pub fn getAccessMode(self: *@This()) core.HResult!IOControlAccessMode {
        var _r: IOControlAccessMode = undefined;
        const _c = self.vtable.get_AccessMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBufferingMethod(self: *@This()) core.HResult!IOControlBufferingMethod {
        var _r: IOControlBufferingMethod = undefined;
        const _c = self.vtable.get_BufferingMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFunction(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Function(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceType(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_DeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControlCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ControlCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.IIOControlCode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e9559e7-60c8-4375-a761-7f8808066c60";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccessMode: *const fn(self: *anyopaque, _r: *IOControlAccessMode) callconv(.winapi) HRESULT,
        get_BufferingMethod: *const fn(self: *anyopaque, _r: *IOControlBufferingMethod) callconv(.winapi) HRESULT,
        get_Function: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_DeviceType: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ControlCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IIOControlCodeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateIOControlCode(self: *@This(), deviceType: u16, function: u16, accessMode: IOControlAccessMode, bufferingMethod: IOControlBufferingMethod) core.HResult!*IOControlCode {
        var _r: *IOControlCode = undefined;
        const _c = self.vtable.CreateIOControlCode(@ptrCast(self), deviceType, function, accessMode, bufferingMethod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.IIOControlCodeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "856a7cf0-4c11-44ae-afc6-b8d4a212788f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateIOControlCode: *const fn(self: *anyopaque, deviceType: u16, function: u16, accessMode: IOControlAccessMode, bufferingMethod: IOControlBufferingMethod, _r: **IOControlCode) callconv(.winapi) HRESULT,
    };
};
pub const IKnownDeviceTypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getUnknown(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Unknown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.IKnownDeviceTypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee5479c2-5448-45da-ad1b-24948c239094";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unknown: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IOControlAccessMode = enum(i32) {
    Any = 0,
    Read = 1,
    Write = 2,
    ReadWrite = 3,
};
pub const IOControlBufferingMethod = enum(i32) {
    Buffered = 0,
    DirectInput = 1,
    DirectOutput = 2,
    Neither = 3,
};
pub const IOControlCode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccessMode(self: *@This()) core.HResult!IOControlAccessMode {
        const this: *IIOControlCode = @ptrCast(self);
        return try this.getAccessMode();
    }
    pub fn getBufferingMethod(self: *@This()) core.HResult!IOControlBufferingMethod {
        const this: *IIOControlCode = @ptrCast(self);
        return try this.getBufferingMethod();
    }
    pub fn getFunction(self: *@This()) core.HResult!u16 {
        const this: *IIOControlCode = @ptrCast(self);
        return try this.getFunction();
    }
    pub fn getDeviceType(self: *@This()) core.HResult!u16 {
        const this: *IIOControlCode = @ptrCast(self);
        return try this.getDeviceType();
    }
    pub fn getControlCode(self: *@This()) core.HResult!u32 {
        const this: *IIOControlCode = @ptrCast(self);
        return try this.getControlCode();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateIOControlCode(deviceType: u16, function: u16, accessMode: IOControlAccessMode, bufferingMethod: IOControlBufferingMethod) core.HResult!*IOControlCode {
        const _f = @This().IIOControlCodeFactoryCache.get();
        return try _f.CreateIOControlCode(deviceType, function, accessMode, bufferingMethod);
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.IOControlCode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIOControlCode.GUID;
    pub const IID: Guid = IIOControlCode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIOControlCode.SIGNATURE);
    var _IIOControlCodeFactoryCache: FactoryCache(IIOControlCodeFactory, RUNTIME_NAME) = .{};
};
pub const KnownDeviceTypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getUnknown() core.HResult!u16 {
        const _f = @This().IKnownDeviceTypesStaticsCache.get();
        return try _f.getUnknown();
    }
    pub const NAME: []const u8 = "Windows.Devices.Custom.KnownDeviceTypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownDeviceTypesStaticsCache: FactoryCache(IKnownDeviceTypesStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
