pub const CompressAlgorithm = enum(i32) {
    InvalidAlgorithm = 0,
    NullAlgorithm = 1,
    Mszip = 2,
    Xpress = 3,
    XpressHuff = 4,
    Lzms = 5,
};
pub const Compressor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ICompressor = @ptrCast(self);
        return try this.FinishAsync();
    }
    pub fn DetachStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *ICompressor = @ptrCast(self);
        return try this.DetachStream();
    }
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCompressor(underlyingStream: *IOutputStream) core.HResult!*Compressor {
        const _f = @This().ICompressorFactoryCache.get();
        return try _f.CreateCompressor(underlyingStream);
    }
    pub fn CreateCompressorEx(underlyingStream: *IOutputStream, algorithm: CompressAlgorithm, blockSize: u32) core.HResult!*Compressor {
        const _f = @This().ICompressorFactoryCache.get();
        return try _f.CreateCompressorEx(underlyingStream, algorithm, blockSize);
    }
    pub const NAME: []const u8 = "Windows.Storage.Compression.Compressor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompressor.GUID;
    pub const IID: Guid = ICompressor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompressor.SIGNATURE);
    var _ICompressorFactoryCache: FactoryCache(ICompressorFactory, RUNTIME_NAME) = .{};
};
pub const Decompressor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn DetachStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IDecompressor = @ptrCast(self);
        return try this.DetachStream();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateDecompressor(underlyingStream: *IInputStream) core.HResult!*Decompressor {
        const _f = @This().IDecompressorFactoryCache.get();
        return try _f.CreateDecompressor(underlyingStream);
    }
    pub const NAME: []const u8 = "Windows.Storage.Compression.Decompressor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDecompressor.GUID;
    pub const IID: Guid = IDecompressor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDecompressor.SIGNATURE);
    var _IDecompressorFactoryCache: FactoryCache(IDecompressorFactory, RUNTIME_NAME) = .{};
};
pub const ICompressor = extern struct {
    vtable: *const VTable,
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.FinishAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DetachStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.DetachStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Compression.ICompressor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ac3645a-57ac-4ee1-b702-84d39d5424e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FinishAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        DetachStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
    };
};
pub const ICompressorFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCompressor(self: *@This(), underlyingStream: *IOutputStream) core.HResult!*Compressor {
        var _r: *Compressor = undefined;
        const _c = self.vtable.CreateCompressor(@ptrCast(self), underlyingStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCompressorEx(self: *@This(), underlyingStream: *IOutputStream, algorithm: CompressAlgorithm, blockSize: u32) core.HResult!*Compressor {
        var _r: *Compressor = undefined;
        const _c = self.vtable.CreateCompressorEx(@ptrCast(self), underlyingStream, algorithm, blockSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Compression.ICompressorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f3d96a4-2cfb-442c-a8ba-d7d11b039da0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCompressor: *const fn(self: *anyopaque, underlyingStream: *IOutputStream, _r: **Compressor) callconv(.winapi) HRESULT,
        CreateCompressorEx: *const fn(self: *anyopaque, underlyingStream: *IOutputStream, algorithm: CompressAlgorithm, blockSize: u32, _r: **Compressor) callconv(.winapi) HRESULT,
    };
};
pub const IDecompressor = extern struct {
    vtable: *const VTable,
    pub fn DetachStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.DetachStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Compression.IDecompressor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b883fe46-d68a-4c8b-ada0-4ee813fc5283";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DetachStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IDecompressorFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateDecompressor(self: *@This(), underlyingStream: *IInputStream) core.HResult!*Decompressor {
        var _r: *Decompressor = undefined;
        const _c = self.vtable.CreateDecompressor(@ptrCast(self), underlyingStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Compression.IDecompressorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5337e252-1da2-42e1-8834-0379d28d742f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDecompressor: *const fn(self: *anyopaque, underlyingStream: *IInputStream, _r: **Decompressor) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const IBuffer = @import("./Streams.zig").IBuffer;
const InputStreamOptions = @import("./Streams.zig").InputStreamOptions;
const IInputStream = @import("./Streams.zig").IInputStream;
const IOutputStream = @import("./Streams.zig").IOutputStream;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
