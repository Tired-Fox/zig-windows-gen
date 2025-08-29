pub const Buffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapacity(self: *@This()) core.HResult!u32 {
        const this: *IBuffer = @ptrCast(self);
        return try this.getCapacity();
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IBuffer = @ptrCast(self);
        return try this.getLength();
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const this: *IBuffer = @ptrCast(self);
        return try this.putLength(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(capacity: u32) core.HResult!*Buffer {
        const factory = @This().IBufferFactoryCache.get();
        return try factory.Create(capacity);
    }
    pub fn CreateCopyFromMemoryBuffer(input: *IMemoryBuffer) core.HResult!*Buffer {
        const factory = @This().IBufferStaticsCache.get();
        return try factory.CreateCopyFromMemoryBuffer(input);
    }
    pub fn CreateMemoryBufferOverIBuffer(input: *IBuffer) core.HResult!*MemoryBuffer {
        const factory = @This().IBufferStaticsCache.get();
        return try factory.CreateMemoryBufferOverIBuffer(input);
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.Buffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBuffer.GUID;
    pub const IID: Guid = IBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBuffer.SIGNATURE);
    var _IBufferFactoryCache: FactoryCache(IBufferFactory, RUNTIME_NAME) = .{};
    var _IBufferStaticsCache: FactoryCache(IBufferStatics, RUNTIME_NAME) = .{};
};
pub const ByteOrder = enum(i32) {
    LittleEndian = 0,
    BigEndian = 1,
};
pub const DataReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnconsumedBufferLength(self: *@This()) core.HResult!u32 {
        const this: *IDataReader = @ptrCast(self);
        return try this.getUnconsumedBufferLength();
    }
    pub fn getUnicodeEncoding(self: *@This()) core.HResult!UnicodeEncoding {
        const this: *IDataReader = @ptrCast(self);
        return try this.getUnicodeEncoding();
    }
    pub fn putUnicodeEncoding(self: *@This(), value: UnicodeEncoding) core.HResult!void {
        const this: *IDataReader = @ptrCast(self);
        return try this.putUnicodeEncoding(value);
    }
    pub fn getByteOrder(self: *@This()) core.HResult!ByteOrder {
        const this: *IDataReader = @ptrCast(self);
        return try this.getByteOrder();
    }
    pub fn putByteOrder(self: *@This(), value: ByteOrder) core.HResult!void {
        const this: *IDataReader = @ptrCast(self);
        return try this.putByteOrder(value);
    }
    pub fn getInputStreamOptions(self: *@This()) core.HResult!InputStreamOptions {
        const this: *IDataReader = @ptrCast(self);
        return try this.getInputStreamOptions();
    }
    pub fn putInputStreamOptions(self: *@This(), value: InputStreamOptions) core.HResult!void {
        const this: *IDataReader = @ptrCast(self);
        return try this.putInputStreamOptions(value);
    }
    pub fn ReadByte(self: *@This()) core.HResult!u8 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadByte();
    }
    pub fn ReadBytes(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadBytes(value);
    }
    pub fn ReadBuffer(self: *@This(), length: u32) core.HResult!*IBuffer {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadBuffer(length);
    }
    pub fn ReadBoolean(self: *@This()) core.HResult!bool {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadBoolean();
    }
    pub fn ReadGuid(self: *@This()) core.HResult!*Guid {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadGuid();
    }
    pub fn ReadInt16(self: *@This()) core.HResult!i16 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadInt16();
    }
    pub fn ReadInt32(self: *@This()) core.HResult!i32 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadInt32();
    }
    pub fn ReadInt64(self: *@This()) core.HResult!i64 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadInt64();
    }
    pub fn ReadUInt16(self: *@This()) core.HResult!u16 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadUInt16();
    }
    pub fn ReadUInt32(self: *@This()) core.HResult!u32 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadUInt32();
    }
    pub fn ReadUInt64(self: *@This()) core.HResult!u64 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadUInt64();
    }
    pub fn ReadSingle(self: *@This()) core.HResult!f32 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadSingle();
    }
    pub fn ReadDouble(self: *@This()) core.HResult!f64 {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadDouble();
    }
    pub fn ReadString(self: *@This(), codeUnitCount: u32) core.HResult!HSTRING {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadString(codeUnitCount);
    }
    pub fn ReadDateTime(self: *@This()) core.HResult!DateTime {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadDateTime();
    }
    pub fn ReadTimeSpan(self: *@This()) core.HResult!TimeSpan {
        const this: *IDataReader = @ptrCast(self);
        return try this.ReadTimeSpan();
    }
    pub fn LoadAsync(self: *@This(), count: u32) core.HResult!*DataReaderLoadOperation {
        const this: *IDataReader = @ptrCast(self);
        return try this.LoadAsync(count);
    }
    pub fn DetachBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IDataReader = @ptrCast(self);
        return try this.DetachBuffer();
    }
    pub fn DetachStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IDataReader = @ptrCast(self);
        return try this.DetachStream();
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
    pub fn CreateDataReader(inputStream: *IInputStream) core.HResult!*DataReader {
        const factory = @This().IDataReaderFactoryCache.get();
        return try factory.CreateDataReader(inputStream);
    }
    pub fn FromBuffer(buffer: *IBuffer) core.HResult!*DataReader {
        const factory = @This().IDataReaderStaticsCache.get();
        return try factory.FromBuffer(buffer);
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.DataReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataReader.GUID;
    pub const IID: Guid = IDataReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataReader.SIGNATURE);
    var _IDataReaderFactoryCache: FactoryCache(IDataReaderFactory, RUNTIME_NAME) = .{};
    var _IDataReaderStaticsCache: FactoryCache(IDataReaderStatics, RUNTIME_NAME) = .{};
};
pub const DataReaderLoadOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncOperationCompletedHandler(u32)) core.HResult!void {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationCompletedHandler(u32) {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!u32 {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.DataReaderLoadOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncOperation.GUID;
    pub const IID: Guid = IAsyncOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncOperation.SIGNATURE);
};
pub const DataWriter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnstoredBufferLength(self: *@This()) core.HResult!u32 {
        const this: *IDataWriter = @ptrCast(self);
        return try this.getUnstoredBufferLength();
    }
    pub fn getUnicodeEncoding(self: *@This()) core.HResult!UnicodeEncoding {
        const this: *IDataWriter = @ptrCast(self);
        return try this.getUnicodeEncoding();
    }
    pub fn putUnicodeEncoding(self: *@This(), value: UnicodeEncoding) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.putUnicodeEncoding(value);
    }
    pub fn getByteOrder(self: *@This()) core.HResult!ByteOrder {
        const this: *IDataWriter = @ptrCast(self);
        return try this.getByteOrder();
    }
    pub fn putByteOrder(self: *@This(), value: ByteOrder) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.putByteOrder(value);
    }
    pub fn WriteByte(self: *@This(), value: u8) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteByte(value);
    }
    pub fn WriteBytes(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteBytes(value);
    }
    pub fn WriteBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteBuffer(buffer);
    }
    pub fn WriteBufferWithCount(self: *@This(), buffer: *IBuffer, start: u32, count: u32) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteBufferWithCount(buffer, start, count);
    }
    pub fn WriteBoolean(self: *@This(), value: bool) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteBoolean(value);
    }
    pub fn WriteGuid(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteGuid(value);
    }
    pub fn WriteInt16(self: *@This(), value: i16) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteInt16(value);
    }
    pub fn WriteInt32(self: *@This(), value: i32) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteInt32(value);
    }
    pub fn WriteInt64(self: *@This(), value: i64) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteInt64(value);
    }
    pub fn WriteUInt16(self: *@This(), value: u16) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteUInt16(value);
    }
    pub fn WriteUInt32(self: *@This(), value: u32) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteUInt32(value);
    }
    pub fn WriteUInt64(self: *@This(), value: u64) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteUInt64(value);
    }
    pub fn WriteSingle(self: *@This(), value: f32) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteSingle(value);
    }
    pub fn WriteDouble(self: *@This(), value: f64) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteDouble(value);
    }
    pub fn WriteDateTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteDateTime(value);
    }
    pub fn WriteTimeSpan(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteTimeSpan(value);
    }
    pub fn WriteString(self: *@This(), value: HSTRING) core.HResult!u32 {
        const this: *IDataWriter = @ptrCast(self);
        return try this.WriteString(value);
    }
    pub fn MeasureString(self: *@This(), value: HSTRING) core.HResult!u32 {
        const this: *IDataWriter = @ptrCast(self);
        return try this.MeasureString(value);
    }
    pub fn StoreAsync(self: *@This()) core.HResult!*DataWriterStoreOperation {
        const this: *IDataWriter = @ptrCast(self);
        return try this.StoreAsync();
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IDataWriter = @ptrCast(self);
        return try this.FlushAsync();
    }
    pub fn DetachBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IDataWriter = @ptrCast(self);
        return try this.DetachBuffer();
    }
    pub fn DetachStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IDataWriter = @ptrCast(self);
        return try this.DetachStream();
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
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDataWriter.IID)));
    }
    pub fn CreateDataWriter(outputStream: *IOutputStream) core.HResult!*DataWriter {
        const factory = @This().IDataWriterFactoryCache.get();
        return try factory.CreateDataWriter(outputStream);
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.DataWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataWriter.GUID;
    pub const IID: Guid = IDataWriter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataWriter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDataWriterFactoryCache: FactoryCache(IDataWriterFactory, RUNTIME_NAME) = .{};
};
pub const DataWriterStoreOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncOperationCompletedHandler(u32)) core.HResult!void {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationCompletedHandler(u32) {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!u32 {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.DataWriterStoreOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncOperation.GUID;
    pub const IID: Guid = IAsyncOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncOperation.SIGNATURE);
};
pub const FileInputStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        const this: *IInputStream = @ptrCast(self);
        return try this.ReadAsync(buffer, count, options);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.FileInputStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputStream.GUID;
    pub const IID: Guid = IInputStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputStream.SIGNATURE);
};
pub const FileOpenDisposition = enum(i32) {
    OpenExisting = 0,
    OpenAlways = 1,
    CreateNew = 2,
    CreateAlways = 3,
    TruncateExisting = 4,
};
pub const FileOutputStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        const this: *IOutputStream = @ptrCast(self);
        return try this.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IOutputStream = @ptrCast(self);
        return try this.FlushAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.FileOutputStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOutputStream.GUID;
    pub const IID: Guid = IOutputStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOutputStream.SIGNATURE);
};
pub const FileRandomAccessStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenAsync(filePath: HSTRING, accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenAsync(filePath, accessMode);
    }
    pub fn OpenAsyncWithSharingOptionsWithOpenDisposition(filePath: HSTRING, accessMode: FileAccessMode, sharingOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenAsyncWithSharingOptionsWithOpenDisposition(filePath, accessMode, sharingOptions, openDisposition);
    }
    pub fn OpenTransactedWriteAsync(filePath: HSTRING) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenTransactedWriteAsync(filePath);
    }
    pub fn OpenTransactedWriteAsyncWithOpenDisposition(filePath: HSTRING, openOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenTransactedWriteAsyncWithOpenDisposition(filePath, openOptions, openDisposition);
    }
    pub fn OpenForUserAsync(user: *User, filePath: HSTRING, accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenForUserAsync(user, filePath, accessMode);
    }
    pub fn OpenForUserAsyncWithAccessModeWithSharingOptionsWithOpenDisposition(user: *User, filePath: HSTRING, accessMode: FileAccessMode, sharingOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenForUserAsyncWithAccessModeWithSharingOptionsWithOpenDisposition(user, filePath, accessMode, sharingOptions, openDisposition);
    }
    pub fn OpenTransactedWriteForUserAsync(user: *User, filePath: HSTRING) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenTransactedWriteForUserAsync(user, filePath);
    }
    pub fn OpenTransactedWriteForUserAsyncWithOpenOptionsWithOpenDisposition(user: *User, filePath: HSTRING, openOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        const factory = @This().IFileRandomAccessStreamStaticsCache.get();
        return try factory.OpenTransactedWriteForUserAsyncWithOpenOptionsWithOpenDisposition(user, filePath, openOptions, openDisposition);
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.FileRandomAccessStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStream.GUID;
    pub const IID: Guid = IRandomAccessStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStream.SIGNATURE);
    var _IFileRandomAccessStreamStaticsCache: FactoryCache(IFileRandomAccessStreamStatics, RUNTIME_NAME) = .{};
};
pub const IBuffer = extern struct {
    vtable: *const VTable,
    pub fn getCapacity(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Capacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Length(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905a0fe0-bc53-11df-8c49-001e4fc686da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capacity: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Length: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IBufferFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), capacity: u32) core.HResult!*Buffer {
        var _r: *Buffer = undefined;
        const _c = self.vtable.Create(@ptrCast(self), capacity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IBufferFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71af914d-c10f-484b-bc50-14bc623b3a27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, capacity: u32, _r: **Buffer) callconv(.winapi) HRESULT,
    };
};
pub const IBufferStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateCopyFromMemoryBuffer(self: *@This(), input: *IMemoryBuffer) core.HResult!*Buffer {
        var _r: *Buffer = undefined;
        const _c = self.vtable.CreateCopyFromMemoryBuffer(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMemoryBufferOverIBuffer(self: *@This(), input: *IBuffer) core.HResult!*MemoryBuffer {
        var _r: *MemoryBuffer = undefined;
        const _c = self.vtable.CreateMemoryBufferOverIBuffer(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IBufferStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e901e65b-d716-475a-a90a-af7229b1e741";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCopyFromMemoryBuffer: *const fn(self: *anyopaque, input: *IMemoryBuffer, _r: **Buffer) callconv(.winapi) HRESULT,
        CreateMemoryBufferOverIBuffer: *const fn(self: *anyopaque, input: *IBuffer, _r: **MemoryBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IContentTypeProvider = extern struct {
    vtable: *const VTable,
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IContentTypeProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97d098a5-3b99-4de9-88a5-e11d2f50c795";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataReader = extern struct {
    vtable: *const VTable,
    pub fn getUnconsumedBufferLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UnconsumedBufferLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnicodeEncoding(self: *@This()) core.HResult!UnicodeEncoding {
        var _r: UnicodeEncoding = undefined;
        const _c = self.vtable.get_UnicodeEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnicodeEncoding(self: *@This(), value: UnicodeEncoding) core.HResult!void {
        const _c = self.vtable.put_UnicodeEncoding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getByteOrder(self: *@This()) core.HResult!ByteOrder {
        var _r: ByteOrder = undefined;
        const _c = self.vtable.get_ByteOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putByteOrder(self: *@This(), value: ByteOrder) core.HResult!void {
        const _c = self.vtable.put_ByteOrder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputStreamOptions(self: *@This()) core.HResult!InputStreamOptions {
        var _r: InputStreamOptions = undefined;
        const _c = self.vtable.get_InputStreamOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputStreamOptions(self: *@This(), value: InputStreamOptions) core.HResult!void {
        const _c = self.vtable.put_InputStreamOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadByte(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.ReadByte(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadBytes(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.ReadBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadBuffer(self: *@This(), length: u32) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.ReadBuffer(@ptrCast(self), length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadBoolean(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ReadBoolean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadGuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.ReadGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadInt16(self: *@This()) core.HResult!i16 {
        var _r: i16 = undefined;
        const _c = self.vtable.ReadInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadInt32(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.ReadInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadInt64(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.ReadInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadUInt16(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.ReadUInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadUInt32(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.ReadUInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadUInt64(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.ReadUInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadSingle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.ReadSingle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadDouble(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.ReadDouble(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadString(self: *@This(), codeUnitCount: u32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ReadString(@ptrCast(self), codeUnitCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadDateTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.ReadDateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadTimeSpan(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.ReadTimeSpan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadAsync(self: *@This(), count: u32) core.HResult!*DataReaderLoadOperation {
        var _r: *DataReaderLoadOperation = undefined;
        const _c = self.vtable.LoadAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DetachBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.DetachBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DetachStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.DetachStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IDataReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2b50029-b4c1-4314-a4b8-fb813a2f275e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnconsumedBufferLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UnicodeEncoding: *const fn(self: *anyopaque, _r: *UnicodeEncoding) callconv(.winapi) HRESULT,
        put_UnicodeEncoding: *const fn(self: *anyopaque, value: UnicodeEncoding) callconv(.winapi) HRESULT,
        get_ByteOrder: *const fn(self: *anyopaque, _r: *ByteOrder) callconv(.winapi) HRESULT,
        put_ByteOrder: *const fn(self: *anyopaque, value: ByteOrder) callconv(.winapi) HRESULT,
        get_InputStreamOptions: *const fn(self: *anyopaque, _r: *InputStreamOptions) callconv(.winapi) HRESULT,
        put_InputStreamOptions: *const fn(self: *anyopaque, value: InputStreamOptions) callconv(.winapi) HRESULT,
        ReadByte: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        ReadBytes: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        ReadBuffer: *const fn(self: *anyopaque, length: u32, _r: **IBuffer) callconv(.winapi) HRESULT,
        ReadBoolean: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ReadGuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        ReadInt16: *const fn(self: *anyopaque, _r: *i16) callconv(.winapi) HRESULT,
        ReadInt32: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        ReadInt64: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        ReadUInt16: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        ReadUInt32: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        ReadUInt64: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        ReadSingle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        ReadDouble: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        ReadString: *const fn(self: *anyopaque, codeUnitCount: u32, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReadDateTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        ReadTimeSpan: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        LoadAsync: *const fn(self: *anyopaque, count: u32, _r: **DataReaderLoadOperation) callconv(.winapi) HRESULT,
        DetachBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        DetachStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IDataReaderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateDataReader(self: *@This(), inputStream: *IInputStream) core.HResult!*DataReader {
        var _r: *DataReader = undefined;
        const _c = self.vtable.CreateDataReader(@ptrCast(self), inputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IDataReaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7527847-57da-4e15-914c-06806699a098";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDataReader: *const fn(self: *anyopaque, inputStream: *IInputStream, _r: **DataReader) callconv(.winapi) HRESULT,
    };
};
pub const IDataReaderStatics = extern struct {
    vtable: *const VTable,
    pub fn FromBuffer(self: *@This(), buffer: *IBuffer) core.HResult!*DataReader {
        var _r: *DataReader = undefined;
        const _c = self.vtable.FromBuffer(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IDataReaderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11fcbfc8-f93a-471b-b121-f379e349313c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromBuffer: *const fn(self: *anyopaque, buffer: *IBuffer, _r: **DataReader) callconv(.winapi) HRESULT,
    };
};
pub const IDataWriter = extern struct {
    vtable: *const VTable,
    pub fn getUnstoredBufferLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UnstoredBufferLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnicodeEncoding(self: *@This()) core.HResult!UnicodeEncoding {
        var _r: UnicodeEncoding = undefined;
        const _c = self.vtable.get_UnicodeEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnicodeEncoding(self: *@This(), value: UnicodeEncoding) core.HResult!void {
        const _c = self.vtable.put_UnicodeEncoding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getByteOrder(self: *@This()) core.HResult!ByteOrder {
        var _r: ByteOrder = undefined;
        const _c = self.vtable.get_ByteOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putByteOrder(self: *@This(), value: ByteOrder) core.HResult!void {
        const _c = self.vtable.put_ByteOrder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteByte(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.WriteByte(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteBytes(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.WriteBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.WriteBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteBufferWithCount(self: *@This(), buffer: *IBuffer, start: u32, count: u32) core.HResult!void {
        const _c = self.vtable.WriteBufferWithCount(@ptrCast(self), buffer, start, count);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteBoolean(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.WriteBoolean(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteGuid(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.WriteGuid(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteInt16(self: *@This(), value: i16) core.HResult!void {
        const _c = self.vtable.WriteInt16(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteInt32(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.WriteInt32(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteInt64(self: *@This(), value: i64) core.HResult!void {
        const _c = self.vtable.WriteInt64(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteUInt16(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.WriteUInt16(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteUInt32(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.WriteUInt32(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteUInt64(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.WriteUInt64(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteSingle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.WriteSingle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteDouble(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.WriteDouble(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteDateTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.WriteDateTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteTimeSpan(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.WriteTimeSpan(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteString(self: *@This(), value: HSTRING) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.WriteString(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MeasureString(self: *@This(), value: HSTRING) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.MeasureString(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StoreAsync(self: *@This()) core.HResult!*DataWriterStoreOperation {
        var _r: *DataWriterStoreOperation = undefined;
        const _c = self.vtable.StoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.FlushAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DetachBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.DetachBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DetachStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.DetachStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IDataWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64b89265-d341-4922-b38a-dd4af8808c4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnstoredBufferLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UnicodeEncoding: *const fn(self: *anyopaque, _r: *UnicodeEncoding) callconv(.winapi) HRESULT,
        put_UnicodeEncoding: *const fn(self: *anyopaque, value: UnicodeEncoding) callconv(.winapi) HRESULT,
        get_ByteOrder: *const fn(self: *anyopaque, _r: *ByteOrder) callconv(.winapi) HRESULT,
        put_ByteOrder: *const fn(self: *anyopaque, value: ByteOrder) callconv(.winapi) HRESULT,
        WriteByte: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        WriteBytes: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        WriteBuffer: *const fn(self: *anyopaque, buffer: *IBuffer) callconv(.winapi) HRESULT,
        WriteBufferWithCount: *const fn(self: *anyopaque, buffer: *IBuffer, start: u32, count: u32) callconv(.winapi) HRESULT,
        WriteBoolean: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        WriteGuid: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        WriteInt16: *const fn(self: *anyopaque, value: i16) callconv(.winapi) HRESULT,
        WriteInt32: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        WriteInt64: *const fn(self: *anyopaque, value: i64) callconv(.winapi) HRESULT,
        WriteUInt16: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        WriteUInt32: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        WriteUInt64: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        WriteSingle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        WriteDouble: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        WriteDateTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        WriteTimeSpan: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        WriteString: *const fn(self: *anyopaque, value: HSTRING, _r: *u32) callconv(.winapi) HRESULT,
        MeasureString: *const fn(self: *anyopaque, value: HSTRING, _r: *u32) callconv(.winapi) HRESULT,
        StoreAsync: *const fn(self: *anyopaque, _r: **DataWriterStoreOperation) callconv(.winapi) HRESULT,
        FlushAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        DetachBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        DetachStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
    };
};
pub const IDataWriterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateDataWriter(self: *@This(), outputStream: *IOutputStream) core.HResult!*DataWriter {
        var _r: *DataWriter = undefined;
        const _c = self.vtable.CreateDataWriter(@ptrCast(self), outputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IDataWriterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "338c67c2-8b84-4c2b-9c50-7b8767847a1f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDataWriter: *const fn(self: *anyopaque, outputStream: *IOutputStream, _r: **DataWriter) callconv(.winapi) HRESULT,
    };
};
pub const IFileRandomAccessStreamStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenAsync(self: *@This(), filePath: HSTRING, accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), filePath, accessMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenAsyncWithSharingOptionsWithOpenDisposition(self: *@This(), filePath: HSTRING, accessMode: FileAccessMode, sharingOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.OpenAsyncWithSharingOptionsWithOpenDisposition(@ptrCast(self), filePath, accessMode, sharingOptions, openDisposition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenTransactedWriteAsync(self: *@This(), filePath: HSTRING) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var _r: *IAsyncOperation(StorageStreamTransaction) = undefined;
        const _c = self.vtable.OpenTransactedWriteAsync(@ptrCast(self), filePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenTransactedWriteAsyncWithOpenDisposition(self: *@This(), filePath: HSTRING, openOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var _r: *IAsyncOperation(StorageStreamTransaction) = undefined;
        const _c = self.vtable.OpenTransactedWriteAsyncWithOpenDisposition(@ptrCast(self), filePath, openOptions, openDisposition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenForUserAsync(self: *@This(), user: *User, filePath: HSTRING, accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.OpenForUserAsync(@ptrCast(self), user, filePath, accessMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenForUserAsyncWithAccessModeWithSharingOptionsWithOpenDisposition(self: *@This(), user: *User, filePath: HSTRING, accessMode: FileAccessMode, sharingOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.OpenForUserAsyncWithAccessModeWithSharingOptionsWithOpenDisposition(@ptrCast(self), user, filePath, accessMode, sharingOptions, openDisposition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenTransactedWriteForUserAsync(self: *@This(), user: *User, filePath: HSTRING) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var _r: *IAsyncOperation(StorageStreamTransaction) = undefined;
        const _c = self.vtable.OpenTransactedWriteForUserAsync(@ptrCast(self), user, filePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenTransactedWriteForUserAsyncWithOpenOptionsWithOpenDisposition(self: *@This(), user: *User, filePath: HSTRING, openOptions: StorageOpenOptions, openDisposition: FileOpenDisposition) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var _r: *IAsyncOperation(StorageStreamTransaction) = undefined;
        const _c = self.vtable.OpenTransactedWriteForUserAsyncWithOpenOptionsWithOpenDisposition(@ptrCast(self), user, filePath, openOptions, openDisposition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IFileRandomAccessStreamStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73550107-3b57-4b5d-8345-554d2fc621f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, filePath: HSTRING, accessMode: FileAccessMode, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        OpenAsyncWithSharingOptionsWithOpenDisposition: *const fn(self: *anyopaque, filePath: HSTRING, accessMode: FileAccessMode, sharingOptions: StorageOpenOptions, openDisposition: FileOpenDisposition, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        OpenTransactedWriteAsync: *const fn(self: *anyopaque, filePath: HSTRING, _r: **IAsyncOperation(StorageStreamTransaction)) callconv(.winapi) HRESULT,
        OpenTransactedWriteAsyncWithOpenDisposition: *const fn(self: *anyopaque, filePath: HSTRING, openOptions: StorageOpenOptions, openDisposition: FileOpenDisposition, _r: **IAsyncOperation(StorageStreamTransaction)) callconv(.winapi) HRESULT,
        OpenForUserAsync: *const fn(self: *anyopaque, user: *User, filePath: HSTRING, accessMode: FileAccessMode, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        OpenForUserAsyncWithAccessModeWithSharingOptionsWithOpenDisposition: *const fn(self: *anyopaque, user: *User, filePath: HSTRING, accessMode: FileAccessMode, sharingOptions: StorageOpenOptions, openDisposition: FileOpenDisposition, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        OpenTransactedWriteForUserAsync: *const fn(self: *anyopaque, user: *User, filePath: HSTRING, _r: **IAsyncOperation(StorageStreamTransaction)) callconv(.winapi) HRESULT,
        OpenTransactedWriteForUserAsyncWithOpenOptionsWithOpenDisposition: *const fn(self: *anyopaque, user: *User, filePath: HSTRING, openOptions: StorageOpenOptions, openDisposition: FileOpenDisposition, _r: **IAsyncOperation(StorageStreamTransaction)) callconv(.winapi) HRESULT,
    };
};
pub const IInputStream = extern struct {
    vtable: *const VTable,
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var _r: *IAsyncOperationWithProgress(IBuffer,u32) = undefined;
        const _c = self.vtable.ReadAsync(@ptrCast(self), buffer, count, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IInputStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905a0fe2-bc53-11df-8c49-001e4fc686da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadAsync: *const fn(self: *anyopaque, buffer: *IBuffer, count: u32, options: InputStreamOptions, _r: **IAsyncOperationWithProgress(IBuffer,u32)) callconv(.winapi) HRESULT,
    };
};
pub const IInputStreamReference = extern struct {
    vtable: *const VTable,
    pub fn OpenSequentialReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IInputStream) {
        var _r: *IAsyncOperation(IInputStream) = undefined;
        const _c = self.vtable.OpenSequentialReadAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IInputStreamReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43929d18-5ec9-4b5a-919c-4205b0c804b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenSequentialReadAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IInputStream)) callconv(.winapi) HRESULT,
    };
};
pub const IOutputStream = extern struct {
    vtable: *const VTable,
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var _r: *IAsyncOperationWithProgress(u32,u32) = undefined;
        const _c = self.vtable.WriteAsync(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.FlushAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IOutputStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905a0fe6-bc53-11df-8c49-001e4fc686da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        WriteAsync: *const fn(self: *anyopaque, buffer: *IBuffer, _r: **IAsyncOperationWithProgress(u32,u32)) callconv(.winapi) HRESULT,
        FlushAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPropertySetSerializer = extern struct {
    vtable: *const VTable,
    pub fn Serialize(self: *@This(), propertySet: *IPropertySet) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.Serialize(@ptrCast(self), propertySet, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Deserialize(self: *@This(), propertySet: *IPropertySet, buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.Deserialize(@ptrCast(self), propertySet, buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IPropertySetSerializer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e8ebf1c-ef3d-4376-b20e-5be638aeac77";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Serialize: *const fn(self: *anyopaque, propertySet: *IPropertySet, _r: **IBuffer) callconv(.winapi) HRESULT,
        Deserialize: *const fn(self: *anyopaque, propertySet: *IPropertySet, buffer: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IRandomAccessStream = extern struct {
    vtable: *const VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetInputStreamAt(@ptrCast(self), position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.GetOutputStreamAt(@ptrCast(self), position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        const _c = self.vtable.Seek(@ptrCast(self), position);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.CloneStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanWrite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IRandomAccessStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905a0fe1-bc53-11df-8c49-001e4fc686da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        GetInputStreamAt: *const fn(self: *anyopaque, position: u64, _r: **IInputStream) callconv(.winapi) HRESULT,
        GetOutputStreamAt: *const fn(self: *anyopaque, position: u64, _r: **IOutputStream) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        Seek: *const fn(self: *anyopaque, position: u64) callconv(.winapi) HRESULT,
        CloneStream: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        get_CanRead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanWrite: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRandomAccessStreamReference = extern struct {
    vtable: *const VTable,
    pub fn OpenReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var _r: *IAsyncOperation(IRandomAccessStreamWithContentType) = undefined;
        const _c = self.vtable.OpenReadAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IRandomAccessStreamReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33ee3134-1dd6-4e3a-8067-d1c162e8642b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenReadAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStreamWithContentType)) callconv(.winapi) HRESULT,
    };
};
pub const IRandomAccessStreamReferenceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromFile(self: *@This(), file: *IStorageFile) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.CreateFromFile(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUri(self: *@This(), uri: *Uri) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.CreateFromUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStream(self: *@This(), stream: *IRandomAccessStream) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.CreateFromStream(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IRandomAccessStreamReferenceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "857309dc-3fbf-4e7d-986f-ef3b1a07a964";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromFile: *const fn(self: *anyopaque, file: *IStorageFile, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        CreateFromUri: *const fn(self: *anyopaque, uri: *Uri, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        CreateFromStream: *const fn(self: *anyopaque, stream: *IRandomAccessStream, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IRandomAccessStreamStatics = extern struct {
    vtable: *const VTable,
    pub fn CopyAsync(self: *@This(), source: *IInputStream, destination: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        var _r: *IAsyncOperationWithProgress(u64,u64) = undefined;
        const _c = self.vtable.CopyAsync(@ptrCast(self), source, destination, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyAsyncWithDestinationWithBytesToCopy(self: *@This(), source: *IInputStream, destination: *IOutputStream, bytesToCopy: u64) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        var _r: *IAsyncOperationWithProgress(u64,u64) = undefined;
        const _c = self.vtable.CopyAsyncWithDestinationWithBytesToCopy(@ptrCast(self), source, destination, bytesToCopy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyAndCloseAsync(self: *@This(), source: *IInputStream, destination: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        var _r: *IAsyncOperationWithProgress(u64,u64) = undefined;
        const _c = self.vtable.CopyAndCloseAsync(@ptrCast(self), source, destination, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.IRandomAccessStreamStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "524cedcf-6e29-4ce5-9573-6b753db66c3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CopyAsync: *const fn(self: *anyopaque, source: *IInputStream, destination: *IOutputStream, _r: **IAsyncOperationWithProgress(u64,u64)) callconv(.winapi) HRESULT,
        CopyAsyncWithDestinationWithBytesToCopy: *const fn(self: *anyopaque, source: *IInputStream, destination: *IOutputStream, bytesToCopy: u64, _r: **IAsyncOperationWithProgress(u64,u64)) callconv(.winapi) HRESULT,
        CopyAndCloseAsync: *const fn(self: *anyopaque, source: *IInputStream, destination: *IOutputStream, _r: **IAsyncOperationWithProgress(u64,u64)) callconv(.winapi) HRESULT,
    };
};
pub const IRandomAccessStreamWithContentType = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Storage.Streams.IRandomAccessStreamWithContentType";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc254827-4b3d-438f-9232-10c76bc7e038";
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
pub const InMemoryRandomAccessStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRandomAccessStream.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.InMemoryRandomAccessStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStream.GUID;
    pub const IID: Guid = IRandomAccessStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStream.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InputStreamOptions = enum(i32) {
    None = 0,
    Partial = 1,
    ReadAhead = 2,
};
pub const InputStreamOverStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        const this: *IInputStream = @ptrCast(self);
        return try this.ReadAsync(buffer, count, options);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.InputStreamOverStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputStream.GUID;
    pub const IID: Guid = IInputStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputStream.SIGNATURE);
};
pub const OutputStreamOverStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        const this: *IOutputStream = @ptrCast(self);
        return try this.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IOutputStream = @ptrCast(self);
        return try this.FlushAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.OutputStreamOverStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOutputStream.GUID;
    pub const IID: Guid = IOutputStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOutputStream.SIGNATURE);
};
pub const RandomAccessStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CopyAsync(source: *IInputStream, destination: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const factory = @This().IRandomAccessStreamStaticsCache.get();
        return try factory.CopyAsync(source, destination);
    }
    pub fn CopyAsyncWithDestinationWithBytesToCopy(source: *IInputStream, destination: *IOutputStream, bytesToCopy: u64) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const factory = @This().IRandomAccessStreamStaticsCache.get();
        return try factory.CopyAsyncWithDestinationWithBytesToCopy(source, destination, bytesToCopy);
    }
    pub fn CopyAndCloseAsync(source: *IInputStream, destination: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const factory = @This().IRandomAccessStreamStaticsCache.get();
        return try factory.CopyAndCloseAsync(source, destination);
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.RandomAccessStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRandomAccessStreamStaticsCache: FactoryCache(IRandomAccessStreamStatics, RUNTIME_NAME) = .{};
};
pub const RandomAccessStreamOverStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        const this: *IRandomAccessStream = @ptrCast(self);
        return try this.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
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
    pub const NAME: []const u8 = "Windows.Storage.Streams.RandomAccessStreamOverStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStream.GUID;
    pub const IID: Guid = IRandomAccessStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStream.SIGNATURE);
};
pub const RandomAccessStreamReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn OpenReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        const this: *IRandomAccessStreamReference = @ptrCast(self);
        return try this.OpenReadAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromFile(file: *IStorageFile) core.HResult!*RandomAccessStreamReference {
        const factory = @This().IRandomAccessStreamReferenceStaticsCache.get();
        return try factory.CreateFromFile(file);
    }
    pub fn CreateFromUri(uri: *Uri) core.HResult!*RandomAccessStreamReference {
        const factory = @This().IRandomAccessStreamReferenceStaticsCache.get();
        return try factory.CreateFromUri(uri);
    }
    pub fn CreateFromStream(stream: *IRandomAccessStream) core.HResult!*RandomAccessStreamReference {
        const factory = @This().IRandomAccessStreamReferenceStaticsCache.get();
        return try factory.CreateFromStream(stream);
    }
    pub const NAME: []const u8 = "Windows.Storage.Streams.RandomAccessStreamReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStreamReference.GUID;
    pub const IID: Guid = IRandomAccessStreamReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStreamReference.SIGNATURE);
    var _IRandomAccessStreamReferenceStaticsCache: FactoryCache(IRandomAccessStreamReferenceStatics, RUNTIME_NAME) = .{};
};
pub const UnicodeEncoding = enum(i32) {
    Utf8 = 0,
    Utf16LE = 1,
    Utf16BE = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const AsyncOperationCompletedHandler = @import("../Foundation.zig").AsyncOperationCompletedHandler;
const IMemoryBuffer = @import("../Foundation.zig").IMemoryBuffer;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const MemoryBuffer = @import("../Foundation.zig").MemoryBuffer;
const HSTRING = @import("../root.zig").HSTRING;
const FileAccessMode = @import("../Storage.zig").FileAccessMode;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AsyncStatus = @import("../Foundation.zig").AsyncStatus;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const StorageStreamTransaction = @import("../Storage.zig").StorageStreamTransaction;
const Uri = @import("../Foundation.zig").Uri;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const User = @import("../System.zig").User;
const StorageOpenOptions = @import("../Storage.zig").StorageOpenOptions;
const IAsyncInfo = @import("../Foundation.zig").IAsyncInfo;
