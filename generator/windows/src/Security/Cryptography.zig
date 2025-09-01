pub const BinaryStringEncoding = enum(i32) {
    Utf8 = 0,
    Utf16LE = 1,
    Utf16BE = 2,
};
pub const CryptographicBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Compare(object1: *IBuffer, object2: *IBuffer) core.HResult!bool {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.Compare(object1, object2);
    }
    pub fn GenerateRandom(length: u32) core.HResult!*IBuffer {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.GenerateRandom(length);
    }
    pub fn GenerateRandomNumber() core.HResult!u32 {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.GenerateRandomNumber();
    }
    pub fn CreateFromByteArray(value: [*]u8) core.HResult!*IBuffer {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.CreateFromByteArray(value);
    }
    pub fn CopyToByteArray(buffer: *IBuffer, value: u8) core.HResult!void {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.CopyToByteArray(buffer, value);
    }
    pub fn DecodeFromHexString(value: HSTRING) core.HResult!*IBuffer {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.DecodeFromHexString(value);
    }
    pub fn EncodeToHexString(buffer: *IBuffer) core.HResult!HSTRING {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.EncodeToHexString(buffer);
    }
    pub fn DecodeFromBase64String(value: HSTRING) core.HResult!*IBuffer {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.DecodeFromBase64String(value);
    }
    pub fn EncodeToBase64String(buffer: *IBuffer) core.HResult!HSTRING {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.EncodeToBase64String(buffer);
    }
    pub fn ConvertStringToBinary(value: HSTRING, encoding: BinaryStringEncoding) core.HResult!*IBuffer {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.ConvertStringToBinary(value, encoding);
    }
    pub fn ConvertBinaryToString(encoding: BinaryStringEncoding, buffer: *IBuffer) core.HResult!HSTRING {
        const _f = @This().ICryptographicBufferStaticsCache.get();
        return try _f.ConvertBinaryToString(encoding, buffer);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.CryptographicBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICryptographicBufferStaticsCache: FactoryCache(ICryptographicBufferStatics, RUNTIME_NAME) = .{};
};
pub const ICryptographicBufferStatics = extern struct {
    vtable: *const VTable,
    pub fn Compare(self: *@This(), object1: *IBuffer, object2: *IBuffer) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Compare(@ptrCast(self), object1, object2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GenerateRandom(self: *@This(), length: u32) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GenerateRandom(@ptrCast(self), length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GenerateRandomNumber(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.GenerateRandomNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromByteArray(self: *@This(), value: [*]u8) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.CreateFromByteArray(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyToByteArray(self: *@This(), buffer: *IBuffer, value: u8) core.HResult!void {
        const _c = self.vtable.CopyToByteArray(@ptrCast(self), buffer, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DecodeFromHexString(self: *@This(), value: HSTRING) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.DecodeFromHexString(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EncodeToHexString(self: *@This(), buffer: *IBuffer) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.EncodeToHexString(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DecodeFromBase64String(self: *@This(), value: HSTRING) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.DecodeFromBase64String(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EncodeToBase64String(self: *@This(), buffer: *IBuffer) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.EncodeToBase64String(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertStringToBinary(self: *@This(), value: HSTRING, encoding: BinaryStringEncoding) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.ConvertStringToBinary(@ptrCast(self), value, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertBinaryToString(self: *@This(), encoding: BinaryStringEncoding, buffer: *IBuffer) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ConvertBinaryToString(@ptrCast(self), encoding, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.ICryptographicBufferStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "320b7e22-3cb0-4cdf-8663-1d28910065eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Compare: *const fn(self: *anyopaque, object1: *IBuffer, object2: *IBuffer, _r: *bool) callconv(.winapi) HRESULT,
        GenerateRandom: *const fn(self: *anyopaque, length: u32, _r: **IBuffer) callconv(.winapi) HRESULT,
        GenerateRandomNumber: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        CreateFromByteArray: *const fn(self: *anyopaque, value: [*]u8, _r: **IBuffer) callconv(.winapi) HRESULT,
        CopyToByteArray: *const fn(self: *anyopaque, buffer: *IBuffer, value: u8) callconv(.winapi) HRESULT,
        DecodeFromHexString: *const fn(self: *anyopaque, value: HSTRING, _r: **IBuffer) callconv(.winapi) HRESULT,
        EncodeToHexString: *const fn(self: *anyopaque, buffer: *IBuffer, _r: *HSTRING) callconv(.winapi) HRESULT,
        DecodeFromBase64String: *const fn(self: *anyopaque, value: HSTRING, _r: **IBuffer) callconv(.winapi) HRESULT,
        EncodeToBase64String: *const fn(self: *anyopaque, buffer: *IBuffer, _r: *HSTRING) callconv(.winapi) HRESULT,
        ConvertStringToBinary: *const fn(self: *anyopaque, value: HSTRING, encoding: BinaryStringEncoding, _r: **IBuffer) callconv(.winapi) HRESULT,
        ConvertBinaryToString: *const fn(self: *anyopaque, encoding: BinaryStringEncoding, buffer: *IBuffer, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
pub const Certificates = @import("./Cryptography/Certificates.zig");
pub const Core = @import("./Cryptography/Core.zig");
pub const DataProtection = @import("./Cryptography/DataProtection.zig");
