pub const AsyncCausalityTracer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TraceOperationCreation(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, operationName: HSTRING, relatedContext: u64) core.HResult!void {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.TraceOperationCreation(traceLevel, source, platformId, operationId, operationName, relatedContext);
    }
    pub fn TraceOperationCompletion(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, status: AsyncStatus) core.HResult!void {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.TraceOperationCompletion(traceLevel, source, platformId, operationId, status);
    }
    pub fn TraceOperationRelation(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, relation: CausalityRelation) core.HResult!void {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.TraceOperationRelation(traceLevel, source, platformId, operationId, relation);
    }
    pub fn TraceSynchronousWorkStart(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, work: CausalitySynchronousWork) core.HResult!void {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.TraceSynchronousWorkStart(traceLevel, source, platformId, operationId, work);
    }
    pub fn TraceSynchronousWorkCompletion(traceLevel: CausalityTraceLevel, source: CausalitySource, work: CausalitySynchronousWork) core.HResult!void {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.TraceSynchronousWorkCompletion(traceLevel, source, work);
    }
    pub fn add_TracingStatusChanged(handler: *EventHandler(TracingStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.addTracingStatusChanged(handler);
    }
    pub fn remove_TracingStatusChanged(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IAsyncCausalityTracerStaticsCache.get();
        return try factory.removeTracingStatusChanged(cookie);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.AsyncCausalityTracer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAsyncCausalityTracerStaticsCache: FactoryCache(IAsyncCausalityTracerStatics, RUNTIME_NAME) = .{};
};
pub const CausalityRelation = enum(i32) {
    AssignDelegate = 0,
    Join = 1,
    Choice = 2,
    Cancel = 3,
    Error = 4,
};
pub const CausalitySource = enum(i32) {
    Application = 0,
    Library = 1,
    System = 2,
};
pub const CausalitySynchronousWork = enum(i32) {
    CompletionNotification = 0,
    ProgressNotification = 1,
    Execution = 2,
};
pub const CausalityTraceLevel = enum(i32) {
    Required = 0,
    Important = 1,
    Verbose = 2,
};
pub const ErrorDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IErrorDetails = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getLongDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IErrorDetails = @ptrCast(self);
        return try this.getLongDescription();
    }
    pub fn getHelpUri(self: *@This()) core.HResult!*Uri {
        const this: *IErrorDetails = @ptrCast(self);
        return try this.getHelpUri();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromHResultAsync(errorCode: i32) core.HResult!*IAsyncOperation(ErrorDetails) {
        const factory = @This().IErrorDetailsStaticsCache.get();
        return try factory.CreateFromHResultAsync(errorCode);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ErrorDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IErrorDetails.GUID;
    pub const IID: Guid = IErrorDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IErrorDetails.SIGNATURE);
    var _IErrorDetailsStaticsCache: FactoryCache(IErrorDetailsStatics, RUNTIME_NAME) = .{};
};
pub const ErrorOptions = enum(i32) {
    None = 0,
    SuppressExceptions = 1,
    ForceExceptions = 2,
    UseSetErrorInfo = 4,
    SuppressSetErrorInfo = 8,
};
pub const FileLoggingSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.getName();
    }
    pub fn AddLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.AddLoggingChannel(loggingChannel);
    }
    pub fn AddLoggingChannelWithMaxLevel(self: *@This(), loggingChannel: *ILoggingChannel, maxLevel: LoggingLevel) core.HResult!void {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.AddLoggingChannelWithMaxLevel(loggingChannel, maxLevel);
    }
    pub fn RemoveLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.RemoveLoggingChannel(loggingChannel);
    }
    pub fn CloseAndSaveToFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.CloseAndSaveToFileAsync();
    }
    pub fn addLogFileGenerated(self: *@This(), handler: *TypedEventHandler(IFileLoggingSession,LogFileGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.addLogFileGenerated(handler);
    }
    pub fn removeLogFileGenerated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFileLoggingSession = @ptrCast(self);
        return try this.removeLogFileGenerated(token);
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
    pub fn Create(name: HSTRING) core.HResult!*FileLoggingSession {
        const factory = @This().IFileLoggingSessionFactoryCache.get();
        return try factory.Create(name);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.FileLoggingSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileLoggingSession.GUID;
    pub const IID: Guid = IFileLoggingSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileLoggingSession.SIGNATURE);
    var _IFileLoggingSessionFactoryCache: FactoryCache(IFileLoggingSessionFactory, RUNTIME_NAME) = .{};
};
pub const IAsyncCausalityTracerStatics = extern struct {
    vtable: *const VTable,
    pub fn TraceOperationCreation(self: *@This(), traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, operationName: HSTRING, relatedContext: u64) core.HResult!void {
        const _c = self.vtable.TraceOperationCreation(@ptrCast(self), traceLevel, source, platformId, operationId, operationName, relatedContext);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TraceOperationCompletion(self: *@This(), traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, status: AsyncStatus) core.HResult!void {
        const _c = self.vtable.TraceOperationCompletion(@ptrCast(self), traceLevel, source, platformId, operationId, status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TraceOperationRelation(self: *@This(), traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, relation: CausalityRelation) core.HResult!void {
        const _c = self.vtable.TraceOperationRelation(@ptrCast(self), traceLevel, source, platformId, operationId, relation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TraceSynchronousWorkStart(self: *@This(), traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, work: CausalitySynchronousWork) core.HResult!void {
        const _c = self.vtable.TraceSynchronousWorkStart(@ptrCast(self), traceLevel, source, platformId, operationId, work);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TraceSynchronousWorkCompletion(self: *@This(), traceLevel: CausalityTraceLevel, source: CausalitySource, work: CausalitySynchronousWork) core.HResult!void {
        const _c = self.vtable.TraceSynchronousWorkCompletion(@ptrCast(self), traceLevel, source, work);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTracingStatusChanged(self: *@This(), handler: *EventHandler(TracingStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TracingStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTracingStatusChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TracingStatusChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50850b26-267e-451b-a890-ab6a370245ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TraceOperationCreation: *const fn(self: *anyopaque, traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, operationName: HSTRING, relatedContext: u64) callconv(.winapi) HRESULT,
        TraceOperationCompletion: *const fn(self: *anyopaque, traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, status: AsyncStatus) callconv(.winapi) HRESULT,
        TraceOperationRelation: *const fn(self: *anyopaque, traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, relation: CausalityRelation) callconv(.winapi) HRESULT,
        TraceSynchronousWorkStart: *const fn(self: *anyopaque, traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, work: CausalitySynchronousWork) callconv(.winapi) HRESULT,
        TraceSynchronousWorkCompletion: *const fn(self: *anyopaque, traceLevel: CausalityTraceLevel, source: CausalitySource, work: CausalitySynchronousWork) callconv(.winapi) HRESULT,
        add_TracingStatusChanged: *const fn(self: *anyopaque, handler: *EventHandler(TracingStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TracingStatusChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IErrorDetails = extern struct {
    vtable: *const VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLongDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LongDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHelpUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_HelpUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.IErrorDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "378cbb01-2cc9-428f-8c55-2c990d463e8f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LongDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HelpUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IErrorDetailsStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromHResultAsync(self: *@This(), errorCode: i32) core.HResult!*IAsyncOperation(ErrorDetails) {
        var _r: *IAsyncOperation(ErrorDetails) = undefined;
        const _c = self.vtable.CreateFromHResultAsync(@ptrCast(self), errorCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.IErrorDetailsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7703750-0b1d-46c8-aa0e-4b8178e4fce9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromHResultAsync: *const fn(self: *anyopaque, errorCode: i32, _r: **IAsyncOperation(ErrorDetails)) callconv(.winapi) HRESULT,
    };
};
pub const IErrorReportingSettings = extern struct {
    vtable: *const VTable,
    pub fn SetErrorOptions(self: *@This(), value: ErrorOptions) core.HResult!void {
        const _c = self.vtable.SetErrorOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetErrorOptions(self: *@This()) core.HResult!ErrorOptions {
        var _r: ErrorOptions = undefined;
        const _c = self.vtable.GetErrorOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.IErrorReportingSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16369792-b03e-4ba1-8bb8-d28f4ab4d2c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetErrorOptions: *const fn(self: *anyopaque, value: ErrorOptions) callconv(.winapi) HRESULT,
        GetErrorOptions: *const fn(self: *anyopaque, _r: *ErrorOptions) callconv(.winapi) HRESULT,
    };
};
pub const IFileLoggingSession = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const _c = self.vtable.AddLoggingChannel(@ptrCast(self), loggingChannel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddLoggingChannelWithMaxLevel(self: *@This(), loggingChannel: *ILoggingChannel, maxLevel: LoggingLevel) core.HResult!void {
        const _c = self.vtable.AddLoggingChannelWithMaxLevel(@ptrCast(self), loggingChannel, maxLevel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const _c = self.vtable.RemoveLoggingChannel(@ptrCast(self), loggingChannel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CloseAndSaveToFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CloseAndSaveToFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addLogFileGenerated(self: *@This(), handler: *TypedEventHandler(IFileLoggingSession,LogFileGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LogFileGenerated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLogFileGenerated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LogFileGenerated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.IFileLoggingSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24c74216-fed2-404c-895f-1f9699cb02f7";
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
        AddLoggingChannel: *const fn(self: *anyopaque, loggingChannel: *ILoggingChannel) callconv(.winapi) HRESULT,
        AddLoggingChannelWithMaxLevel: *const fn(self: *anyopaque, loggingChannel: *ILoggingChannel, maxLevel: LoggingLevel) callconv(.winapi) HRESULT,
        RemoveLoggingChannel: *const fn(self: *anyopaque, loggingChannel: *ILoggingChannel) callconv(.winapi) HRESULT,
        CloseAndSaveToFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        add_LogFileGenerated: *const fn(self: *anyopaque, handler: *TypedEventHandler(IFileLoggingSession,LogFileGeneratedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LogFileGenerated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFileLoggingSessionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), name: HSTRING) core.HResult!*FileLoggingSession {
        var _r: *FileLoggingSession = undefined;
        const _c = self.vtable.Create(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.IFileLoggingSessionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eea08dce-8447-4daa-9133-12eb46f697d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, name: HSTRING, _r: **FileLoggingSession) callconv(.winapi) HRESULT,
    };
};
pub const ILogFileGeneratedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILogFileGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "269e976f-0d38-4c1a-b53f-b395d881df84";
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
    };
};
pub const ILoggingActivity = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingActivity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc032941-b766-4cb5-9848-97ac6ba6d60c";
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
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingActivity2 = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!*LoggingChannel {
        var _r: *LoggingChannel = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopActivity(self: *@This(), stopEventName: HSTRING) core.HResult!void {
        const _c = self.vtable.StopActivity(@ptrCast(self), stopEventName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopActivityWithFields(self: *@This(), stopEventName: HSTRING, fields: *LoggingFields) core.HResult!void {
        const _c = self.vtable.StopActivityWithFields(@ptrCast(self), stopEventName, fields);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopActivityWithOptions(self: *@This(), stopEventName: HSTRING, fields: *LoggingFields, options: *LoggingOptions) core.HResult!void {
        const _c = self.vtable.StopActivityWithOptions(@ptrCast(self), stopEventName, fields, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingActivity2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26c29808-6322-456a-af82-80c8642f178b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: **LoggingChannel) callconv(.winapi) HRESULT,
        StopActivity: *const fn(self: *anyopaque, stopEventName: HSTRING) callconv(.winapi) HRESULT,
        StopActivityWithFields: *const fn(self: *anyopaque, stopEventName: HSTRING, fields: *LoggingFields) callconv(.winapi) HRESULT,
        StopActivityWithOptions: *const fn(self: *anyopaque, stopEventName: HSTRING, fields: *LoggingFields, options: *LoggingOptions) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingActivityFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateLoggingActivity(self: *@This(), activityName: HSTRING, loggingChannel: *ILoggingChannel) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.CreateLoggingActivity(@ptrCast(self), activityName, loggingChannel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLoggingActivityWithLevel(self: *@This(), activityName: HSTRING, loggingChannel: *ILoggingChannel, level: LoggingLevel) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.CreateLoggingActivityWithLevel(@ptrCast(self), activityName, loggingChannel, level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingActivityFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b33b483-e10a-4c58-97d5-10fb451074fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLoggingActivity: *const fn(self: *anyopaque, activityName: HSTRING, loggingChannel: *ILoggingChannel, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        CreateLoggingActivityWithLevel: *const fn(self: *anyopaque, activityName: HSTRING, loggingChannel: *ILoggingChannel, level: LoggingLevel, _r: **LoggingActivity) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingChannel = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLevel(self: *@This()) core.HResult!LoggingLevel {
        var _r: LoggingLevel = undefined;
        const _c = self.vtable.get_Level(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LogMessage(self: *@This(), eventString: HSTRING) core.HResult!void {
        const _c = self.vtable.LogMessage(@ptrCast(self), eventString);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogMessageWithLevel(self: *@This(), eventString: HSTRING, level: LoggingLevel) core.HResult!void {
        const _c = self.vtable.LogMessageWithLevel(@ptrCast(self), eventString, level);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogValuePair(self: *@This(), value1: HSTRING, value2: i32) core.HResult!void {
        const _c = self.vtable.LogValuePair(@ptrCast(self), value1, value2);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogValuePairWithValue2WithLevel(self: *@This(), value1: HSTRING, value2: i32, level: LoggingLevel) core.HResult!void {
        const _c = self.vtable.LogValuePairWithValue2WithLevel(@ptrCast(self), value1, value2, level);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLoggingEnabled(self: *@This(), handler: *TypedEventHandler(ILoggingChannel,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LoggingEnabled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLoggingEnabled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LoggingEnabled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9a50343-11d7-4f01-b5ca-cf495278c0a8";
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
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Level: *const fn(self: *anyopaque, _r: *LoggingLevel) callconv(.winapi) HRESULT,
        LogMessage: *const fn(self: *anyopaque, eventString: HSTRING) callconv(.winapi) HRESULT,
        LogMessageWithLevel: *const fn(self: *anyopaque, eventString: HSTRING, level: LoggingLevel) callconv(.winapi) HRESULT,
        LogValuePair: *const fn(self: *anyopaque, value1: HSTRING, value2: i32) callconv(.winapi) HRESULT,
        LogValuePairWithValue2WithLevel: *const fn(self: *anyopaque, value1: HSTRING, value2: i32, level: LoggingLevel) callconv(.winapi) HRESULT,
        add_LoggingEnabled: *const fn(self: *anyopaque, handler: *TypedEventHandler(ILoggingChannel,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LoggingEnabled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingChannel2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingChannel2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f4c3cf3-0bac-45a5-9e33-baf3f3a246a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingChannelFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), name: HSTRING) core.HResult!*LoggingChannel {
        var _r: *LoggingChannel = undefined;
        const _c = self.vtable.Create(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingChannelFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4edc5b9c-af80-4a9b-b0dc-398f9ae5207b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, name: HSTRING, _r: **LoggingChannel) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingChannelFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateWithOptions(self: *@This(), name: HSTRING, options: *LoggingChannelOptions) core.HResult!*LoggingChannel {
        var _r: *LoggingChannel = undefined;
        const _c = self.vtable.CreateWithOptions(@ptrCast(self), name, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithOptionsAndId(self: *@This(), name: HSTRING, options: *LoggingChannelOptions, id: *Guid) core.HResult!*LoggingChannel {
        var _r: *LoggingChannel = undefined;
        const _c = self.vtable.CreateWithOptionsAndId(@ptrCast(self), name, options, id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingChannelFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c6ef5dd-3b27-4dc9-99f0-299c6e4603a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithOptions: *const fn(self: *anyopaque, name: HSTRING, options: *LoggingChannelOptions, _r: **LoggingChannel) callconv(.winapi) HRESULT,
        CreateWithOptionsAndId: *const fn(self: *anyopaque, name: HSTRING, options: *LoggingChannelOptions, id: *Guid, _r: **LoggingChannel) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingChannelOptions = extern struct {
    vtable: *const VTable,
    pub fn getGroup(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroup(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_Group(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingChannelOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3e847ff-0ebb-4a53-8c54-dec24926cb2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_Group: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingChannelOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), group: *Guid) core.HResult!*LoggingChannelOptions {
        var _r: *LoggingChannelOptions = undefined;
        const _c = self.vtable.Create(@ptrCast(self), group, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingChannelOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a93151da-7faf-4191-8755-5e86dc65d896";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, group: *Guid, _r: **LoggingChannelOptions) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingFields = extern struct {
    vtable: *const VTable,
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn BeginStruct(self: *@This(), name: HSTRING) core.HResult!void {
        const _c = self.vtable.BeginStruct(@ptrCast(self), name);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn BeginStructWithTags(self: *@This(), name: HSTRING, tags: i32) core.HResult!void {
        const _c = self.vtable.BeginStructWithTags(@ptrCast(self), name, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EndStruct(self: *@This()) core.HResult!void {
        const _c = self.vtable.EndStruct(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddEmpty(self: *@This(), name: HSTRING) core.HResult!void {
        const _c = self.vtable.AddEmpty(@ptrCast(self), name);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddEmptyWithFormat(self: *@This(), name: HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddEmptyWithFormat(@ptrCast(self), name, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddEmptyWithTags(self: *@This(), name: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddEmptyWithTags(@ptrCast(self), name, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8(self: *@This(), name: HSTRING, value: u8) core.HResult!void {
        const _c = self.vtable.AddUInt8(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8WithValueWithFormat(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt8WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8WithFormatWithTags(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt8WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8Array(self: *@This(), name: HSTRING, value: [*]u8) core.HResult!void {
        const _c = self.vtable.AddUInt8Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt8ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt8ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16(self: *@This(), name: HSTRING, value: i16) core.HResult!void {
        const _c = self.vtable.AddInt16(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16WithValueWithFormat(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt16WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16WithFormatWithTags(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt16WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16Array(self: *@This(), name: HSTRING, value: [*]i16) core.HResult!void {
        const _c = self.vtable.AddInt16Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt16ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt16ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const _c = self.vtable.AddUInt16(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16WithValueWithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt16WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16WithFormatWithTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt16WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const _c = self.vtable.AddUInt16Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt16ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt16ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32(self: *@This(), name: HSTRING, value: i32) core.HResult!void {
        const _c = self.vtable.AddInt32(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32WithValueWithFormat(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt32WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32WithFormatWithTags(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt32WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32Array(self: *@This(), name: HSTRING, value: [*]i32) core.HResult!void {
        const _c = self.vtable.AddInt32Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt32ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt32ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32(self: *@This(), name: HSTRING, value: u32) core.HResult!void {
        const _c = self.vtable.AddUInt32(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32WithValueWithFormat(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt32WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32WithFormatWithTags(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt32WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32Array(self: *@This(), name: HSTRING, value: [*]u32) core.HResult!void {
        const _c = self.vtable.AddUInt32Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt32ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt32ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64(self: *@This(), name: HSTRING, value: i64) core.HResult!void {
        const _c = self.vtable.AddInt64(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64WithValueWithFormat(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt64WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64WithFormatWithTags(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt64WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64Array(self: *@This(), name: HSTRING, value: [*]i64) core.HResult!void {
        const _c = self.vtable.AddInt64Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt64ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt64ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64(self: *@This(), name: HSTRING, value: u64) core.HResult!void {
        const _c = self.vtable.AddUInt64(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64WithValueWithFormat(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt64WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64WithFormatWithTags(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt64WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64Array(self: *@This(), name: HSTRING, value: [*]u64) core.HResult!void {
        const _c = self.vtable.AddUInt64Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt64ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt64ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingle(self: *@This(), name: HSTRING, value: f32) core.HResult!void {
        const _c = self.vtable.AddSingle(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleWithValueWithFormat(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSingleWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleWithFormatWithTags(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSingleWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleArray(self: *@This(), name: HSTRING, value: [*]f32) core.HResult!void {
        const _c = self.vtable.AddSingleArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSingleArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSingleArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDouble(self: *@This(), name: HSTRING, value: f64) core.HResult!void {
        const _c = self.vtable.AddDouble(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleWithValueWithFormat(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDoubleWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleWithFormatWithTags(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDoubleWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleArray(self: *@This(), name: HSTRING, value: [*]f64) core.HResult!void {
        const _c = self.vtable.AddDoubleArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDoubleArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDoubleArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const _c = self.vtable.AddChar16(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16WithValueWithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddChar16WithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16WithFormatWithTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddChar16WithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const _c = self.vtable.AddChar16Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddChar16ArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddChar16ArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBoolean(self: *@This(), name: HSTRING, value: bool) core.HResult!void {
        const _c = self.vtable.AddBoolean(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanWithValueWithFormat(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddBooleanWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanWithFormatWithTags(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddBooleanWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanArray(self: *@This(), name: HSTRING, value: [*]bool) core.HResult!void {
        const _c = self.vtable.AddBooleanArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddBooleanArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddBooleanArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddString(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.AddString(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringWithValueWithFormat(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddStringWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringWithFormatWithTags(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddStringWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringArray(self: *@This(), name: HSTRING, value: [*]HSTRING) core.HResult!void {
        const _c = self.vtable.AddStringArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddStringArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddStringArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuid(self: *@This(), name: HSTRING, value: *Guid) core.HResult!void {
        const _c = self.vtable.AddGuid(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidWithValueWithFormat(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddGuidWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidWithFormatWithTags(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddGuidWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidArray(self: *@This(), name: HSTRING, value: [*]Guid) core.HResult!void {
        const _c = self.vtable.AddGuidArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddGuidArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddGuidArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTime(self: *@This(), name: HSTRING, value: DateTime) core.HResult!void {
        const _c = self.vtable.AddDateTime(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeWithValueWithFormat(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDateTimeWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeWithFormatWithTags(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDateTimeWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeArray(self: *@This(), name: HSTRING, value: [*]DateTime) core.HResult!void {
        const _c = self.vtable.AddDateTimeArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDateTimeArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDateTimeArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpan(self: *@This(), name: HSTRING, value: TimeSpan) core.HResult!void {
        const _c = self.vtable.AddTimeSpan(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanWithValueWithFormat(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddTimeSpanWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanWithFormatWithTags(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddTimeSpanWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanArray(self: *@This(), name: HSTRING, value: [*]TimeSpan) core.HResult!void {
        const _c = self.vtable.AddTimeSpanArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddTimeSpanArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddTimeSpanArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPoint(self: *@This(), name: HSTRING, value: Point) core.HResult!void {
        const _c = self.vtable.AddPoint(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointWithValueWithFormat(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddPointWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointWithFormatWithTags(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddPointWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointArray(self: *@This(), name: HSTRING, value: [*]Point) core.HResult!void {
        const _c = self.vtable.AddPointArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddPointArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddPointArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSize(self: *@This(), name: HSTRING, value: Size) core.HResult!void {
        const _c = self.vtable.AddSize(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeWithValueWithFormat(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSizeWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeWithFormatWithTags(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSizeWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeArray(self: *@This(), name: HSTRING, value: [*]Size) core.HResult!void {
        const _c = self.vtable.AddSizeArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSizeArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSizeArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRect(self: *@This(), name: HSTRING, value: Rect) core.HResult!void {
        const _c = self.vtable.AddRect(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectWithValueWithFormat(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddRectWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectWithFormatWithTags(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddRectWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectArray(self: *@This(), name: HSTRING, value: [*]Rect) core.HResult!void {
        const _c = self.vtable.AddRectArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddRectArrayWithValueWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddRectArrayWithFormatWithTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingFields";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7f6b7af-762d-4579-83bd-52c23bc333bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        BeginStruct: *const fn(self: *anyopaque, name: HSTRING) callconv(.winapi) HRESULT,
        BeginStructWithTags: *const fn(self: *anyopaque, name: HSTRING, tags: i32) callconv(.winapi) HRESULT,
        EndStruct: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        AddEmpty: *const fn(self: *anyopaque, name: HSTRING) callconv(.winapi) HRESULT,
        AddEmptyWithFormat: *const fn(self: *anyopaque, name: HSTRING, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddEmptyWithTags: *const fn(self: *anyopaque, name: HSTRING, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt8: *const fn(self: *anyopaque, name: HSTRING, value: u8) callconv(.winapi) HRESULT,
        AddUInt8WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u8, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt8WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: u8, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt8Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u8) callconv(.winapi) HRESULT,
        AddUInt8ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u8, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt8ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u8, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt16: *const fn(self: *anyopaque, name: HSTRING, value: i16) callconv(.winapi) HRESULT,
        AddInt16WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: i16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt16WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: i16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt16Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]i16) callconv(.winapi) HRESULT,
        AddInt16ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]i16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt16ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]i16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt16: *const fn(self: *anyopaque, name: HSTRING, value: u16) callconv(.winapi) HRESULT,
        AddUInt16WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt16WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt16Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16) callconv(.winapi) HRESULT,
        AddUInt16ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt16ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt32: *const fn(self: *anyopaque, name: HSTRING, value: i32) callconv(.winapi) HRESULT,
        AddInt32WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: i32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt32WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: i32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt32Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]i32) callconv(.winapi) HRESULT,
        AddInt32ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]i32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt32ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]i32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt32: *const fn(self: *anyopaque, name: HSTRING, value: u32) callconv(.winapi) HRESULT,
        AddUInt32WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt32WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: u32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt32Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u32) callconv(.winapi) HRESULT,
        AddUInt32ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt32ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt64: *const fn(self: *anyopaque, name: HSTRING, value: i64) callconv(.winapi) HRESULT,
        AddInt64WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: i64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt64WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: i64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt64Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]i64) callconv(.winapi) HRESULT,
        AddInt64ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]i64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt64ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]i64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt64: *const fn(self: *anyopaque, name: HSTRING, value: u64) callconv(.winapi) HRESULT,
        AddUInt64WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt64WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: u64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt64Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u64) callconv(.winapi) HRESULT,
        AddUInt64ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt64ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSingle: *const fn(self: *anyopaque, name: HSTRING, value: f32) callconv(.winapi) HRESULT,
        AddSingleWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: f32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSingleWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: f32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSingleArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]f32) callconv(.winapi) HRESULT,
        AddSingleArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]f32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSingleArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]f32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDouble: *const fn(self: *anyopaque, name: HSTRING, value: f64) callconv(.winapi) HRESULT,
        AddDoubleWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: f64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDoubleWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: f64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDoubleArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]f64) callconv(.winapi) HRESULT,
        AddDoubleArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]f64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDoubleArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]f64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddChar16: *const fn(self: *anyopaque, name: HSTRING, value: u16) callconv(.winapi) HRESULT,
        AddChar16WithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddChar16WithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddChar16Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16) callconv(.winapi) HRESULT,
        AddChar16ArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddChar16ArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddBoolean: *const fn(self: *anyopaque, name: HSTRING, value: bool) callconv(.winapi) HRESULT,
        AddBooleanWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: bool, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddBooleanWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: bool, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddBooleanArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]bool) callconv(.winapi) HRESULT,
        AddBooleanArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]bool, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddBooleanArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]bool, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddString: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        AddStringWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddStringWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddStringArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]HSTRING) callconv(.winapi) HRESULT,
        AddStringArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddStringArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddGuid: *const fn(self: *anyopaque, name: HSTRING, value: *Guid) callconv(.winapi) HRESULT,
        AddGuidWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: *Guid, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddGuidWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: *Guid, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddGuidArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Guid) callconv(.winapi) HRESULT,
        AddGuidArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Guid, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddGuidArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Guid, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDateTime: *const fn(self: *anyopaque, name: HSTRING, value: DateTime) callconv(.winapi) HRESULT,
        AddDateTimeWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: DateTime, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDateTimeWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: DateTime, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDateTimeArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]DateTime) callconv(.winapi) HRESULT,
        AddDateTimeArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDateTimeArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddTimeSpan: *const fn(self: *anyopaque, name: HSTRING, value: TimeSpan) callconv(.winapi) HRESULT,
        AddTimeSpanWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: TimeSpan, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddTimeSpanWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: TimeSpan, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddTimeSpanArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]TimeSpan) callconv(.winapi) HRESULT,
        AddTimeSpanArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddTimeSpanArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddPoint: *const fn(self: *anyopaque, name: HSTRING, value: Point) callconv(.winapi) HRESULT,
        AddPointWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: Point, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddPointWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: Point, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddPointArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Point) callconv(.winapi) HRESULT,
        AddPointArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Point, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddPointArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Point, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSize: *const fn(self: *anyopaque, name: HSTRING, value: Size) callconv(.winapi) HRESULT,
        AddSizeWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: Size, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSizeWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: Size, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSizeArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Size) callconv(.winapi) HRESULT,
        AddSizeArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Size, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSizeArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Size, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddRect: *const fn(self: *anyopaque, name: HSTRING, value: Rect) callconv(.winapi) HRESULT,
        AddRectWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: Rect, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddRectWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: Rect, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddRectArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Rect) callconv(.winapi) HRESULT,
        AddRectArrayWithValueWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Rect, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddRectArrayWithFormatWithTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Rect, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingOptions = extern struct {
    vtable: *const VTable,
    pub fn getKeywords(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeywords(self: *@This(), value: i64) core.HResult!void {
        const _c = self.vtable.put_Keywords(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTags(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Tags(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTags(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Tags(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTask(self: *@This()) core.HResult!i16 {
        var _r: i16 = undefined;
        const _c = self.vtable.get_Task(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTask(self: *@This(), value: i16) core.HResult!void {
        const _c = self.vtable.put_Task(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpcode(self: *@This()) core.HResult!LoggingOpcode {
        var _r: LoggingOpcode = undefined;
        const _c = self.vtable.get_Opcode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpcode(self: *@This(), value: LoggingOpcode) core.HResult!void {
        const _c = self.vtable.put_Opcode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putActivityId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_ActivityId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelatedActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RelatedActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelatedActivityId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_RelatedActivityId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90bc7850-0192-4f5d-ac26-006adaca12d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        put_Keywords: *const fn(self: *anyopaque, value: i64) callconv(.winapi) HRESULT,
        get_Tags: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Tags: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Task: *const fn(self: *anyopaque, _r: *i16) callconv(.winapi) HRESULT,
        put_Task: *const fn(self: *anyopaque, value: i16) callconv(.winapi) HRESULT,
        get_Opcode: *const fn(self: *anyopaque, _r: *LoggingOpcode) callconv(.winapi) HRESULT,
        put_Opcode: *const fn(self: *anyopaque, value: LoggingOpcode) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_ActivityId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        get_RelatedActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_RelatedActivityId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithKeywords(self: *@This(), keywords: i64) core.HResult!*LoggingOptions {
        var _r: *LoggingOptions = undefined;
        const _c = self.vtable.CreateWithKeywords(@ptrCast(self), keywords, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d713c6cb-98ab-464b-9f22-a3268478368a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithKeywords: *const fn(self: *anyopaque, keywords: i64, _r: **LoggingOptions) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingSession = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveToFileAsync(self: *@This(), folder: *IStorageFolder, fileName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.SaveToFileAsync(@ptrCast(self), folder, fileName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const _c = self.vtable.AddLoggingChannel(@ptrCast(self), loggingChannel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddLoggingChannelWithMaxLevel(self: *@This(), loggingChannel: *ILoggingChannel, maxLevel: LoggingLevel) core.HResult!void {
        const _c = self.vtable.AddLoggingChannelWithMaxLevel(@ptrCast(self), loggingChannel, maxLevel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const _c = self.vtable.RemoveLoggingChannel(@ptrCast(self), loggingChannel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6221f306-9380-4ad7-baf5-41ea9310d768";
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
        SaveToFileAsync: *const fn(self: *anyopaque, folder: *IStorageFolder, fileName: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        AddLoggingChannel: *const fn(self: *anyopaque, loggingChannel: *ILoggingChannel) callconv(.winapi) HRESULT,
        AddLoggingChannelWithMaxLevel: *const fn(self: *anyopaque, loggingChannel: *ILoggingChannel, maxLevel: LoggingLevel) callconv(.winapi) HRESULT,
        RemoveLoggingChannel: *const fn(self: *anyopaque, loggingChannel: *ILoggingChannel) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingSessionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), name: HSTRING) core.HResult!*LoggingSession {
        var _r: *LoggingSession = undefined;
        const _c = self.vtable.Create(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingSessionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e937ee5-58fd-45e0-8c2f-a132eff95c1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, name: HSTRING, _r: **LoggingSession) callconv(.winapi) HRESULT,
    };
};
pub const ILoggingTarget = extern struct {
    vtable: *const VTable,
    pub fn IsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEnabled(self: *@This(), level: LoggingLevel) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabled(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEnabled(self: *@This(), level: LoggingLevel, keywords: i64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabled(@ptrCast(self), level, keywords, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LogEvent(self: *@This(), eventName: HSTRING) core.HResult!void {
        const _c = self.vtable.LogEvent(@ptrCast(self), eventName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogEventWithFields(self: *@This(), eventName: HSTRING, fields: *LoggingFields) core.HResult!void {
        const _c = self.vtable.LogEventWithFields(@ptrCast(self), eventName, fields);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogEventWithLevel(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!void {
        const _c = self.vtable.LogEventWithLevel(@ptrCast(self), eventName, fields, level);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogEventWithOptions(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!void {
        const _c = self.vtable.LogEventWithOptions(@ptrCast(self), eventName, fields, level, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartActivity(self: *@This(), startEventName: HSTRING) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.StartActivity(@ptrCast(self), startEventName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartActivityWithFields(self: *@This(), startEventName: HSTRING, fields: *LoggingFields) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.StartActivityWithFields(@ptrCast(self), startEventName, fields, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartActivityWithLevel(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.StartActivityWithLevel(@ptrCast(self), startEventName, fields, level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartActivityWithOptions(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.StartActivityWithOptions(@ptrCast(self), startEventName, fields, level, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ILoggingTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65f16c35-e388-4e26-b17a-f51cd3a83916";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsEnabled: *const fn(self: *anyopaque, level: LoggingLevel, _r: *bool) callconv(.winapi) HRESULT,
        IsEnabled: *const fn(self: *anyopaque, level: LoggingLevel, keywords: i64, _r: *bool) callconv(.winapi) HRESULT,
        LogEvent: *const fn(self: *anyopaque, eventName: HSTRING) callconv(.winapi) HRESULT,
        LogEventWithFields: *const fn(self: *anyopaque, eventName: HSTRING, fields: *LoggingFields) callconv(.winapi) HRESULT,
        LogEventWithLevel: *const fn(self: *anyopaque, eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) callconv(.winapi) HRESULT,
        LogEventWithOptions: *const fn(self: *anyopaque, eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) callconv(.winapi) HRESULT,
        StartActivity: *const fn(self: *anyopaque, startEventName: HSTRING, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        StartActivityWithFields: *const fn(self: *anyopaque, startEventName: HSTRING, fields: *LoggingFields, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        StartActivityWithLevel: *const fn(self: *anyopaque, startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        StartActivityWithOptions: *const fn(self: *anyopaque, startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions, _r: **LoggingActivity) callconv(.winapi) HRESULT,
    };
};
pub const ITracingStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTraceLevel(self: *@This()) core.HResult!CausalityTraceLevel {
        var _r: CausalityTraceLevel = undefined;
        const _c = self.vtable.get_TraceLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.ITracingStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "410b7711-ff3b-477f-9c9a-d2efda302dc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TraceLevel: *const fn(self: *anyopaque, _r: *CausalityTraceLevel) callconv(.winapi) HRESULT,
    };
};
pub const LogFileGeneratedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *ILogFileGeneratedEventArgs = @ptrCast(self);
        return try this.getFile();
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILogFileGeneratedEventArgs.GUID;
    pub const IID: Guid = ILogFileGeneratedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILogFileGeneratedEventArgs.SIGNATURE);
};
pub const LoggingActivity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ILoggingActivity = @ptrCast(self);
        return try this.getName();
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *ILoggingActivity = @ptrCast(self);
        return try this.getId();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getChannel(self: *@This()) core.HResult!*LoggingChannel {
        var this: ?*ILoggingActivity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingActivity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChannel();
    }
    pub fn StopActivity(self: *@This(), stopEventName: HSTRING) core.HResult!void {
        var this: ?*ILoggingActivity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingActivity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopActivity(stopEventName);
    }
    pub fn StopActivityWithFields(self: *@This(), stopEventName: HSTRING, fields: *LoggingFields) core.HResult!void {
        var this: ?*ILoggingActivity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingActivity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopActivityWithFields(stopEventName, fields);
    }
    pub fn StopActivityWithOptions(self: *@This(), stopEventName: HSTRING, fields: *LoggingFields, options: *LoggingOptions) core.HResult!void {
        var this: ?*ILoggingActivity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingActivity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopActivityWithOptions(stopEventName, fields, options);
    }
    pub fn IsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled();
    }
    pub fn IsEnabled(self: *@This(), level: LoggingLevel) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled(level);
    }
    pub fn IsEnabled(self: *@This(), level: LoggingLevel, keywords: i64) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled(level, keywords);
    }
    pub fn LogEvent(self: *@This(), eventName: HSTRING) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEvent(eventName);
    }
    pub fn LogEventWithFields(self: *@This(), eventName: HSTRING, fields: *LoggingFields) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithFields(eventName, fields);
    }
    pub fn LogEventWithLevel(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithLevel(eventName, fields, level);
    }
    pub fn LogEventWithOptions(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithOptions(eventName, fields, level, options);
    }
    pub fn StartActivity(self: *@This(), startEventName: HSTRING) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivity(startEventName);
    }
    pub fn StartActivityWithFields(self: *@This(), startEventName: HSTRING, fields: *LoggingFields) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithFields(startEventName, fields);
    }
    pub fn StartActivityWithLevel(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithLevel(startEventName, fields, level);
    }
    pub fn StartActivityWithOptions(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithOptions(startEventName, fields, level, options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateLoggingActivity(activityName: HSTRING, loggingChannel: *ILoggingChannel) core.HResult!*LoggingActivity {
        const factory = @This().ILoggingActivityFactoryCache.get();
        return try factory.CreateLoggingActivity(activityName, loggingChannel);
    }
    pub fn CreateLoggingActivityWithLevel(activityName: HSTRING, loggingChannel: *ILoggingChannel, level: LoggingLevel) core.HResult!*LoggingActivity {
        const factory = @This().ILoggingActivityFactoryCache.get();
        return try factory.CreateLoggingActivityWithLevel(activityName, loggingChannel, level);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LoggingActivity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoggingActivity.GUID;
    pub const IID: Guid = ILoggingActivity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoggingActivity.SIGNATURE);
    var _ILoggingActivityFactoryCache: FactoryCache(ILoggingActivityFactory, RUNTIME_NAME) = .{};
};
pub const LoggingChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.getName();
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn getLevel(self: *@This()) core.HResult!LoggingLevel {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.getLevel();
    }
    pub fn LogMessage(self: *@This(), eventString: HSTRING) core.HResult!void {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.LogMessage(eventString);
    }
    pub fn LogMessageWithLevel(self: *@This(), eventString: HSTRING, level: LoggingLevel) core.HResult!void {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.LogMessageWithLevel(eventString, level);
    }
    pub fn LogValuePair(self: *@This(), value1: HSTRING, value2: i32) core.HResult!void {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.LogValuePair(value1, value2);
    }
    pub fn LogValuePairWithValue2WithLevel(self: *@This(), value1: HSTRING, value2: i32, level: LoggingLevel) core.HResult!void {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.LogValuePairWithValue2WithLevel(value1, value2, level);
    }
    pub fn addLoggingEnabled(self: *@This(), handler: *TypedEventHandler(ILoggingChannel,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.addLoggingEnabled(handler);
    }
    pub fn removeLoggingEnabled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.removeLoggingEnabled(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var this: ?*ILoggingChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn IsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled();
    }
    pub fn IsEnabled(self: *@This(), level: LoggingLevel) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled(level);
    }
    pub fn IsEnabled(self: *@This(), level: LoggingLevel, keywords: i64) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled(level, keywords);
    }
    pub fn LogEvent(self: *@This(), eventName: HSTRING) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEvent(eventName);
    }
    pub fn LogEventWithFields(self: *@This(), eventName: HSTRING, fields: *LoggingFields) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithFields(eventName, fields);
    }
    pub fn LogEventWithLevel(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithLevel(eventName, fields, level);
    }
    pub fn LogEventWithOptions(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithOptions(eventName, fields, level, options);
    }
    pub fn StartActivity(self: *@This(), startEventName: HSTRING) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivity(startEventName);
    }
    pub fn StartActivityWithFields(self: *@This(), startEventName: HSTRING, fields: *LoggingFields) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithFields(startEventName, fields);
    }
    pub fn StartActivityWithLevel(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithLevel(startEventName, fields, level);
    }
    pub fn StartActivityWithOptions(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithOptions(startEventName, fields, level, options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithOptions(name: HSTRING, options: *LoggingChannelOptions) core.HResult!*LoggingChannel {
        const factory = @This().ILoggingChannelFactory2Cache.get();
        return try factory.CreateWithOptions(name, options);
    }
    pub fn CreateWithOptionsAndId(name: HSTRING, options: *LoggingChannelOptions, id: *Guid) core.HResult!*LoggingChannel {
        const factory = @This().ILoggingChannelFactory2Cache.get();
        return try factory.CreateWithOptionsAndId(name, options, id);
    }
    pub fn Create(name: HSTRING) core.HResult!*LoggingChannel {
        const factory = @This().ILoggingChannelFactoryCache.get();
        return try factory.Create(name);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LoggingChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoggingChannel.GUID;
    pub const IID: Guid = ILoggingChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoggingChannel.SIGNATURE);
    var _ILoggingChannelFactory2Cache: FactoryCache(ILoggingChannelFactory2, RUNTIME_NAME) = .{};
    var _ILoggingChannelFactoryCache: FactoryCache(ILoggingChannelFactory, RUNTIME_NAME) = .{};
};
pub const LoggingChannelOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGroup(self: *@This()) core.HResult!*Guid {
        const this: *ILoggingChannelOptions = @ptrCast(self);
        return try this.getGroup();
    }
    pub fn putGroup(self: *@This(), value: *Guid) core.HResult!void {
        const this: *ILoggingChannelOptions = @ptrCast(self);
        return try this.putGroup(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILoggingChannelOptions.IID)));
    }
    pub fn Create(group: *Guid) core.HResult!*LoggingChannelOptions {
        const factory = @This().ILoggingChannelOptionsFactoryCache.get();
        return try factory.Create(group);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LoggingChannelOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoggingChannelOptions.GUID;
    pub const IID: Guid = ILoggingChannelOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoggingChannelOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILoggingChannelOptionsFactoryCache: FactoryCache(ILoggingChannelOptionsFactory, RUNTIME_NAME) = .{};
};
pub const LoggingFieldFormat = enum(i32) {
    Default = 0,
    Hidden = 1,
    String = 2,
    Boolean = 3,
    Hexadecimal = 4,
    ProcessId = 5,
    ThreadId = 6,
    Port = 7,
    Ipv4Address = 8,
    Ipv6Address = 9,
    SocketAddress = 10,
    Xml = 11,
    Json = 12,
    Win32Error = 13,
    NTStatus = 14,
    HResult = 15,
    FileTime = 16,
    Signed = 17,
    Unsigned = 18,
};
pub const LoggingFields = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.Clear();
    }
    pub fn BeginStruct(self: *@This(), name: HSTRING) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.BeginStruct(name);
    }
    pub fn BeginStructWithTags(self: *@This(), name: HSTRING, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.BeginStructWithTags(name, tags);
    }
    pub fn EndStruct(self: *@This()) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.EndStruct();
    }
    pub fn AddEmpty(self: *@This(), name: HSTRING) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddEmpty(name);
    }
    pub fn AddEmptyWithFormat(self: *@This(), name: HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddEmptyWithFormat(name, format);
    }
    pub fn AddEmptyWithTags(self: *@This(), name: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddEmptyWithTags(name, format, tags);
    }
    pub fn AddUInt8(self: *@This(), name: HSTRING, value: u8) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8(name, value);
    }
    pub fn AddUInt8WithValueWithFormat(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8WithValueWithFormat(name, value, format);
    }
    pub fn AddUInt8WithFormatWithTags(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt8Array(self: *@This(), name: HSTRING, value: [*]u8) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8Array(name, value);
    }
    pub fn AddUInt8ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddUInt8ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddInt16(self: *@This(), name: HSTRING, value: i16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16(name, value);
    }
    pub fn AddInt16WithValueWithFormat(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16WithValueWithFormat(name, value, format);
    }
    pub fn AddInt16WithFormatWithTags(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddInt16Array(self: *@This(), name: HSTRING, value: [*]i16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16Array(name, value);
    }
    pub fn AddInt16ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddInt16ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16(name, value);
    }
    pub fn AddUInt16WithValueWithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16WithValueWithFormat(name, value, format);
    }
    pub fn AddUInt16WithFormatWithTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16Array(name, value);
    }
    pub fn AddUInt16ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddUInt16ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddInt32(self: *@This(), name: HSTRING, value: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32(name, value);
    }
    pub fn AddInt32WithValueWithFormat(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32WithValueWithFormat(name, value, format);
    }
    pub fn AddInt32WithFormatWithTags(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddInt32Array(self: *@This(), name: HSTRING, value: [*]i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32Array(name, value);
    }
    pub fn AddInt32ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddInt32ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt32(self: *@This(), name: HSTRING, value: u32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32(name, value);
    }
    pub fn AddUInt32WithValueWithFormat(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32WithValueWithFormat(name, value, format);
    }
    pub fn AddUInt32WithFormatWithTags(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt32Array(self: *@This(), name: HSTRING, value: [*]u32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32Array(name, value);
    }
    pub fn AddUInt32ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddUInt32ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddInt64(self: *@This(), name: HSTRING, value: i64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64(name, value);
    }
    pub fn AddInt64WithValueWithFormat(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64WithValueWithFormat(name, value, format);
    }
    pub fn AddInt64WithFormatWithTags(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddInt64Array(self: *@This(), name: HSTRING, value: [*]i64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64Array(name, value);
    }
    pub fn AddInt64ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddInt64ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt64(self: *@This(), name: HSTRING, value: u64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64(name, value);
    }
    pub fn AddUInt64WithValueWithFormat(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64WithValueWithFormat(name, value, format);
    }
    pub fn AddUInt64WithFormatWithTags(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddUInt64Array(self: *@This(), name: HSTRING, value: [*]u64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64Array(name, value);
    }
    pub fn AddUInt64ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddUInt64ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddSingle(self: *@This(), name: HSTRING, value: f32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingle(name, value);
    }
    pub fn AddSingleWithValueWithFormat(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleWithValueWithFormat(name, value, format);
    }
    pub fn AddSingleWithFormatWithTags(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddSingleArray(self: *@This(), name: HSTRING, value: [*]f32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleArray(name, value);
    }
    pub fn AddSingleArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddSingleArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddDouble(self: *@This(), name: HSTRING, value: f64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDouble(name, value);
    }
    pub fn AddDoubleWithValueWithFormat(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleWithValueWithFormat(name, value, format);
    }
    pub fn AddDoubleWithFormatWithTags(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddDoubleArray(self: *@This(), name: HSTRING, value: [*]f64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleArray(name, value);
    }
    pub fn AddDoubleArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddDoubleArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddChar16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16(name, value);
    }
    pub fn AddChar16WithValueWithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16WithValueWithFormat(name, value, format);
    }
    pub fn AddChar16WithFormatWithTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16WithFormatWithTags(name, value, format, tags);
    }
    pub fn AddChar16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16Array(name, value);
    }
    pub fn AddChar16ArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16ArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddChar16ArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16ArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddBoolean(self: *@This(), name: HSTRING, value: bool) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBoolean(name, value);
    }
    pub fn AddBooleanWithValueWithFormat(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanWithValueWithFormat(name, value, format);
    }
    pub fn AddBooleanWithFormatWithTags(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddBooleanArray(self: *@This(), name: HSTRING, value: [*]bool) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanArray(name, value);
    }
    pub fn AddBooleanArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddBooleanArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddString(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddString(name, value);
    }
    pub fn AddStringWithValueWithFormat(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringWithValueWithFormat(name, value, format);
    }
    pub fn AddStringWithFormatWithTags(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddStringArray(self: *@This(), name: HSTRING, value: [*]HSTRING) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringArray(name, value);
    }
    pub fn AddStringArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddStringArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddGuid(self: *@This(), name: HSTRING, value: *Guid) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuid(name, value);
    }
    pub fn AddGuidWithValueWithFormat(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidWithValueWithFormat(name, value, format);
    }
    pub fn AddGuidWithFormatWithTags(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddGuidArray(self: *@This(), name: HSTRING, value: [*]Guid) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidArray(name, value);
    }
    pub fn AddGuidArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddGuidArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddDateTime(self: *@This(), name: HSTRING, value: DateTime) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTime(name, value);
    }
    pub fn AddDateTimeWithValueWithFormat(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeWithValueWithFormat(name, value, format);
    }
    pub fn AddDateTimeWithFormatWithTags(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddDateTimeArray(self: *@This(), name: HSTRING, value: [*]DateTime) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeArray(name, value);
    }
    pub fn AddDateTimeArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddDateTimeArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddTimeSpan(self: *@This(), name: HSTRING, value: TimeSpan) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpan(name, value);
    }
    pub fn AddTimeSpanWithValueWithFormat(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanWithValueWithFormat(name, value, format);
    }
    pub fn AddTimeSpanWithFormatWithTags(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddTimeSpanArray(self: *@This(), name: HSTRING, value: [*]TimeSpan) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanArray(name, value);
    }
    pub fn AddTimeSpanArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddTimeSpanArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddPoint(self: *@This(), name: HSTRING, value: Point) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPoint(name, value);
    }
    pub fn AddPointWithValueWithFormat(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointWithValueWithFormat(name, value, format);
    }
    pub fn AddPointWithFormatWithTags(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddPointArray(self: *@This(), name: HSTRING, value: [*]Point) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointArray(name, value);
    }
    pub fn AddPointArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddPointArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddSize(self: *@This(), name: HSTRING, value: Size) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSize(name, value);
    }
    pub fn AddSizeWithValueWithFormat(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeWithValueWithFormat(name, value, format);
    }
    pub fn AddSizeWithFormatWithTags(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddSizeArray(self: *@This(), name: HSTRING, value: [*]Size) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeArray(name, value);
    }
    pub fn AddSizeArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddSizeArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddRect(self: *@This(), name: HSTRING, value: Rect) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRect(name, value);
    }
    pub fn AddRectWithValueWithFormat(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectWithValueWithFormat(name, value, format);
    }
    pub fn AddRectWithFormatWithTags(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectWithFormatWithTags(name, value, format, tags);
    }
    pub fn AddRectArray(self: *@This(), name: HSTRING, value: [*]Rect) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectArray(name, value);
    }
    pub fn AddRectArrayWithValueWithFormat(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectArrayWithValueWithFormat(name, value, format);
    }
    pub fn AddRectArrayWithFormatWithTags(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectArrayWithFormatWithTags(name, value, format, tags);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILoggingFields.IID)));
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LoggingFields";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoggingFields.GUID;
    pub const IID: Guid = ILoggingFields.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoggingFields.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const LoggingLevel = enum(i32) {
    Verbose = 0,
    Information = 1,
    Warning = 2,
    Error = 3,
    Critical = 4,
};
pub const LoggingOpcode = enum(i32) {
    Info = 0,
    Start = 1,
    Stop = 2,
    Reply = 6,
    Resume = 7,
    Suspend = 8,
    Send = 9,
};
pub const LoggingOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeywords(self: *@This()) core.HResult!i64 {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.getKeywords();
    }
    pub fn putKeywords(self: *@This(), value: i64) core.HResult!void {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.putKeywords(value);
    }
    pub fn getTags(self: *@This()) core.HResult!i32 {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.getTags();
    }
    pub fn putTags(self: *@This(), value: i32) core.HResult!void {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.putTags(value);
    }
    pub fn getTask(self: *@This()) core.HResult!i16 {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.getTask();
    }
    pub fn putTask(self: *@This(), value: i16) core.HResult!void {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.putTask(value);
    }
    pub fn getOpcode(self: *@This()) core.HResult!LoggingOpcode {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.getOpcode();
    }
    pub fn putOpcode(self: *@This(), value: LoggingOpcode) core.HResult!void {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.putOpcode(value);
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn putActivityId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.putActivityId(value);
    }
    pub fn getRelatedActivityId(self: *@This()) core.HResult!*Guid {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.getRelatedActivityId();
    }
    pub fn putRelatedActivityId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *ILoggingOptions = @ptrCast(self);
        return try this.putRelatedActivityId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILoggingOptions.IID)));
    }
    pub fn CreateWithKeywords(keywords: i64) core.HResult!*LoggingOptions {
        const factory = @This().ILoggingOptionsFactoryCache.get();
        return try factory.CreateWithKeywords(keywords);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LoggingOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoggingOptions.GUID;
    pub const IID: Guid = ILoggingOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoggingOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILoggingOptionsFactoryCache: FactoryCache(ILoggingOptionsFactory, RUNTIME_NAME) = .{};
};
pub const LoggingSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ILoggingSession = @ptrCast(self);
        return try this.getName();
    }
    pub fn SaveToFileAsync(self: *@This(), folder: *IStorageFolder, fileName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *ILoggingSession = @ptrCast(self);
        return try this.SaveToFileAsync(folder, fileName);
    }
    pub fn AddLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const this: *ILoggingSession = @ptrCast(self);
        return try this.AddLoggingChannel(loggingChannel);
    }
    pub fn AddLoggingChannelWithMaxLevel(self: *@This(), loggingChannel: *ILoggingChannel, maxLevel: LoggingLevel) core.HResult!void {
        const this: *ILoggingSession = @ptrCast(self);
        return try this.AddLoggingChannelWithMaxLevel(loggingChannel, maxLevel);
    }
    pub fn RemoveLoggingChannel(self: *@This(), loggingChannel: *ILoggingChannel) core.HResult!void {
        const this: *ILoggingSession = @ptrCast(self);
        return try this.RemoveLoggingChannel(loggingChannel);
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
    pub fn Create(name: HSTRING) core.HResult!*LoggingSession {
        const factory = @This().ILoggingSessionFactoryCache.get();
        return try factory.Create(name);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.LoggingSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoggingSession.GUID;
    pub const IID: Guid = ILoggingSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoggingSession.SIGNATURE);
    var _ILoggingSessionFactoryCache: FactoryCache(ILoggingSessionFactory, RUNTIME_NAME) = .{};
};
pub const RuntimeBrokerErrorSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetErrorOptions(self: *@This(), value: ErrorOptions) core.HResult!void {
        const this: *IErrorReportingSettings = @ptrCast(self);
        return try this.SetErrorOptions(value);
    }
    pub fn GetErrorOptions(self: *@This()) core.HResult!ErrorOptions {
        const this: *IErrorReportingSettings = @ptrCast(self);
        return try this.GetErrorOptions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IErrorReportingSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.RuntimeBrokerErrorSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IErrorReportingSettings.GUID;
    pub const IID: Guid = IErrorReportingSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IErrorReportingSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TracingStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *ITracingStatusChangedEventArgs = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn getTraceLevel(self: *@This()) core.HResult!CausalityTraceLevel {
        const this: *ITracingStatusChangedEventArgs = @ptrCast(self);
        return try this.getTraceLevel();
    }
    pub const NAME: []const u8 = "Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITracingStatusChangedEventArgs.GUID;
    pub const IID: Guid = ITracingStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITracingStatusChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IStorageFolder = @import("../Storage.zig").IStorageFolder;
const Size = @import("../Foundation.zig").Size;
const Point = @import("../Foundation.zig").Point;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AsyncStatus = @import("../Foundation.zig").AsyncStatus;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Uri = @import("../Foundation.zig").Uri;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const StorageFile = @import("../Storage.zig").StorageFile;
