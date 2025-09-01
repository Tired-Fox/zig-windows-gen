pub const AsyncCausalityTracer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TraceOperationCreation(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, operationName: HSTRING, relatedContext: u64) core.HResult!void {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.TraceOperationCreation(traceLevel, source, platformId, operationId, operationName, relatedContext);
    }
    pub fn TraceOperationCompletion(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, status: AsyncStatus) core.HResult!void {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.TraceOperationCompletion(traceLevel, source, platformId, operationId, status);
    }
    pub fn TraceOperationRelation(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, relation: CausalityRelation) core.HResult!void {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.TraceOperationRelation(traceLevel, source, platformId, operationId, relation);
    }
    pub fn TraceSynchronousWorkStart(traceLevel: CausalityTraceLevel, source: CausalitySource, platformId: *Guid, operationId: u64, work: CausalitySynchronousWork) core.HResult!void {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.TraceSynchronousWorkStart(traceLevel, source, platformId, operationId, work);
    }
    pub fn TraceSynchronousWorkCompletion(traceLevel: CausalityTraceLevel, source: CausalitySource, work: CausalitySynchronousWork) core.HResult!void {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.TraceSynchronousWorkCompletion(traceLevel, source, work);
    }
    pub fn addTracingStatusChanged(handler: *EventHandler(TracingStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.addTracingStatusChanged(handler);
    }
    pub fn removeTracingStatusChanged(cookie: EventRegistrationToken) core.HResult!void {
        const _f = @This().IAsyncCausalityTracerStaticsCache.get();
        return try _f.removeTracingStatusChanged(cookie);
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
        const _f = @This().IErrorDetailsStaticsCache.get();
        return try _f.CreateFromHResultAsync(errorCode);
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
        const _f = @This().IFileLoggingSessionFactoryCache.get();
        return try _f.Create(name);
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
    pub fn StopActivityWithFieldsAndOptions(self: *@This(), stopEventName: HSTRING, fields: *LoggingFields, options: *LoggingOptions) core.HResult!void {
        const _c = self.vtable.StopActivityWithFieldsAndOptions(@ptrCast(self), stopEventName, fields, options);
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
        StopActivityWithFieldsAndOptions: *const fn(self: *anyopaque, stopEventName: HSTRING, fields: *LoggingFields, options: *LoggingOptions) callconv(.winapi) HRESULT,
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
    pub fn LogValuePairWithLevel(self: *@This(), value1: HSTRING, value2: i32, level: LoggingLevel) core.HResult!void {
        const _c = self.vtable.LogValuePairWithLevel(@ptrCast(self), value1, value2, level);
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
        LogValuePairWithLevel: *const fn(self: *anyopaque, value1: HSTRING, value2: i32, level: LoggingLevel) callconv(.winapi) HRESULT,
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
    pub fn AddEmptyWithFormatAndTags(self: *@This(), name: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddEmptyWithFormatAndTags(@ptrCast(self), name, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8(self: *@This(), name: HSTRING, value: u8) core.HResult!void {
        const _c = self.vtable.AddUInt8(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8WithFormat(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt8WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8WithFormatAndTags(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt8WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8Array(self: *@This(), name: HSTRING, value: [*]u8) core.HResult!void {
        const _c = self.vtable.AddUInt8Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt8ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt8ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt8ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16(self: *@This(), name: HSTRING, value: i16) core.HResult!void {
        const _c = self.vtable.AddInt16(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16WithFormat(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt16WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16WithFormatAndTags(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt16WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16Array(self: *@This(), name: HSTRING, value: [*]i16) core.HResult!void {
        const _c = self.vtable.AddInt16Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt16ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt16ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt16ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const _c = self.vtable.AddUInt16(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16WithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt16WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16WithFormatAndTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt16WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const _c = self.vtable.AddUInt16Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt16ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt16ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt16ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32(self: *@This(), name: HSTRING, value: i32) core.HResult!void {
        const _c = self.vtable.AddInt32(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32WithFormat(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt32WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32WithFormatAndTags(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt32WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32Array(self: *@This(), name: HSTRING, value: [*]i32) core.HResult!void {
        const _c = self.vtable.AddInt32Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt32ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt32ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32(self: *@This(), name: HSTRING, value: u32) core.HResult!void {
        const _c = self.vtable.AddUInt32(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32WithFormat(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt32WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32WithFormatAndTags(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt32WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32Array(self: *@This(), name: HSTRING, value: [*]u32) core.HResult!void {
        const _c = self.vtable.AddUInt32Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt32ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt32ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt32ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64(self: *@This(), name: HSTRING, value: i64) core.HResult!void {
        const _c = self.vtable.AddInt64(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64WithFormat(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt64WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64WithFormatAndTags(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt64WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64Array(self: *@This(), name: HSTRING, value: [*]i64) core.HResult!void {
        const _c = self.vtable.AddInt64Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddInt64ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt64ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddInt64ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64(self: *@This(), name: HSTRING, value: u64) core.HResult!void {
        const _c = self.vtable.AddUInt64(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64WithFormat(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt64WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64WithFormatAndTags(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt64WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64Array(self: *@This(), name: HSTRING, value: [*]u64) core.HResult!void {
        const _c = self.vtable.AddUInt64Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddUInt64ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddUInt64ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddUInt64ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingle(self: *@This(), name: HSTRING, value: f32) core.HResult!void {
        const _c = self.vtable.AddSingle(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleWithFormat(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSingleWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleWithFormatAndTags(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSingleWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleArray(self: *@This(), name: HSTRING, value: [*]f32) core.HResult!void {
        const _c = self.vtable.AddSingleArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleArrayWithFormat(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSingleArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSingleArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSingleArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDouble(self: *@This(), name: HSTRING, value: f64) core.HResult!void {
        const _c = self.vtable.AddDouble(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleWithFormat(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDoubleWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleWithFormatAndTags(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDoubleWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleArray(self: *@This(), name: HSTRING, value: [*]f64) core.HResult!void {
        const _c = self.vtable.AddDoubleArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleArrayWithFormat(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDoubleArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDoubleArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const _c = self.vtable.AddChar16(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16WithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddChar16WithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16WithFormatAndTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddChar16WithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const _c = self.vtable.AddChar16Array(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddChar16ArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddChar16ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddChar16ArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBoolean(self: *@This(), name: HSTRING, value: bool) core.HResult!void {
        const _c = self.vtable.AddBoolean(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanWithFormat(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddBooleanWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanWithFormatAndTags(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddBooleanWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanArray(self: *@This(), name: HSTRING, value: [*]bool) core.HResult!void {
        const _c = self.vtable.AddBooleanArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanArrayWithFormat(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddBooleanArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddBooleanArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddBooleanArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddString(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.AddString(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringWithFormat(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddStringWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringWithFormatAndTags(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddStringWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringArray(self: *@This(), name: HSTRING, value: [*]HSTRING) core.HResult!void {
        const _c = self.vtable.AddStringArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringArrayWithFormat(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddStringArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStringArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddStringArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuid(self: *@This(), name: HSTRING, value: *Guid) core.HResult!void {
        const _c = self.vtable.AddGuid(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidWithFormat(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddGuidWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidWithFormatAndTags(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddGuidWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidArray(self: *@This(), name: HSTRING, value: [*]Guid) core.HResult!void {
        const _c = self.vtable.AddGuidArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddGuidArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddGuidArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddGuidArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTime(self: *@This(), name: HSTRING, value: DateTime) core.HResult!void {
        const _c = self.vtable.AddDateTime(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeWithFormat(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDateTimeWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeWithFormatAndTags(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDateTimeWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeArray(self: *@This(), name: HSTRING, value: [*]DateTime) core.HResult!void {
        const _c = self.vtable.AddDateTimeArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeArrayWithFormat(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddDateTimeArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDateTimeArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddDateTimeArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpan(self: *@This(), name: HSTRING, value: TimeSpan) core.HResult!void {
        const _c = self.vtable.AddTimeSpan(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanWithFormat(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddTimeSpanWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanWithFormatAndTags(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddTimeSpanWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanArray(self: *@This(), name: HSTRING, value: [*]TimeSpan) core.HResult!void {
        const _c = self.vtable.AddTimeSpanArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanArrayWithFormat(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddTimeSpanArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTimeSpanArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddTimeSpanArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPoint(self: *@This(), name: HSTRING, value: Point) core.HResult!void {
        const _c = self.vtable.AddPoint(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointWithFormat(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddPointWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointWithFormatAndTags(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddPointWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointArray(self: *@This(), name: HSTRING, value: [*]Point) core.HResult!void {
        const _c = self.vtable.AddPointArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddPointArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPointArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddPointArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSize(self: *@This(), name: HSTRING, value: Size) core.HResult!void {
        const _c = self.vtable.AddSize(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeWithFormat(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSizeWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeWithFormatAndTags(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSizeWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeArray(self: *@This(), name: HSTRING, value: [*]Size) core.HResult!void {
        const _c = self.vtable.AddSizeArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddSizeArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSizeArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddSizeArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRect(self: *@This(), name: HSTRING, value: Rect) core.HResult!void {
        const _c = self.vtable.AddRect(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectWithFormat(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddRectWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectWithFormatAndTags(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddRectWithFormatAndTags(@ptrCast(self), name, value, format, tags);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectArray(self: *@This(), name: HSTRING, value: [*]Rect) core.HResult!void {
        const _c = self.vtable.AddRectArray(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat) core.HResult!void {
        const _c = self.vtable.AddRectArrayWithFormat(@ptrCast(self), name, value, format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddRectArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const _c = self.vtable.AddRectArrayWithFormatAndTags(@ptrCast(self), name, value, format, tags);
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
        AddEmptyWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt8: *const fn(self: *anyopaque, name: HSTRING, value: u8) callconv(.winapi) HRESULT,
        AddUInt8WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u8, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt8WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: u8, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt8Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u8) callconv(.winapi) HRESULT,
        AddUInt8ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u8, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt8ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u8, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt16: *const fn(self: *anyopaque, name: HSTRING, value: i16) callconv(.winapi) HRESULT,
        AddInt16WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: i16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt16WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: i16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt16Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]i16) callconv(.winapi) HRESULT,
        AddInt16ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]i16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt16ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]i16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt16: *const fn(self: *anyopaque, name: HSTRING, value: u16) callconv(.winapi) HRESULT,
        AddUInt16WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt16WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt16Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16) callconv(.winapi) HRESULT,
        AddUInt16ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt16ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt32: *const fn(self: *anyopaque, name: HSTRING, value: i32) callconv(.winapi) HRESULT,
        AddInt32WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: i32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt32WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: i32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt32Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]i32) callconv(.winapi) HRESULT,
        AddInt32ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]i32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt32ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]i32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt32: *const fn(self: *anyopaque, name: HSTRING, value: u32) callconv(.winapi) HRESULT,
        AddUInt32WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt32WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: u32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt32Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u32) callconv(.winapi) HRESULT,
        AddUInt32ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt32ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt64: *const fn(self: *anyopaque, name: HSTRING, value: i64) callconv(.winapi) HRESULT,
        AddInt64WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: i64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt64WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: i64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddInt64Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]i64) callconv(.winapi) HRESULT,
        AddInt64ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]i64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddInt64ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]i64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt64: *const fn(self: *anyopaque, name: HSTRING, value: u64) callconv(.winapi) HRESULT,
        AddUInt64WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt64WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: u64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddUInt64Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u64) callconv(.winapi) HRESULT,
        AddUInt64ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddUInt64ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSingle: *const fn(self: *anyopaque, name: HSTRING, value: f32) callconv(.winapi) HRESULT,
        AddSingleWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: f32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSingleWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: f32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSingleArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]f32) callconv(.winapi) HRESULT,
        AddSingleArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]f32, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSingleArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]f32, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDouble: *const fn(self: *anyopaque, name: HSTRING, value: f64) callconv(.winapi) HRESULT,
        AddDoubleWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: f64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDoubleWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: f64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDoubleArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]f64) callconv(.winapi) HRESULT,
        AddDoubleArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]f64, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDoubleArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]f64, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddChar16: *const fn(self: *anyopaque, name: HSTRING, value: u16) callconv(.winapi) HRESULT,
        AddChar16WithFormat: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddChar16WithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddChar16Array: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16) callconv(.winapi) HRESULT,
        AddChar16ArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddChar16ArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddBoolean: *const fn(self: *anyopaque, name: HSTRING, value: bool) callconv(.winapi) HRESULT,
        AddBooleanWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: bool, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddBooleanWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: bool, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddBooleanArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]bool) callconv(.winapi) HRESULT,
        AddBooleanArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]bool, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddBooleanArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]bool, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddString: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        AddStringWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddStringWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddStringArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]HSTRING) callconv(.winapi) HRESULT,
        AddStringArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddStringArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddGuid: *const fn(self: *anyopaque, name: HSTRING, value: *Guid) callconv(.winapi) HRESULT,
        AddGuidWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: *Guid, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddGuidWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: *Guid, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddGuidArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Guid) callconv(.winapi) HRESULT,
        AddGuidArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Guid, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddGuidArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Guid, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDateTime: *const fn(self: *anyopaque, name: HSTRING, value: DateTime) callconv(.winapi) HRESULT,
        AddDateTimeWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: DateTime, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDateTimeWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: DateTime, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddDateTimeArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]DateTime) callconv(.winapi) HRESULT,
        AddDateTimeArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddDateTimeArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddTimeSpan: *const fn(self: *anyopaque, name: HSTRING, value: TimeSpan) callconv(.winapi) HRESULT,
        AddTimeSpanWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: TimeSpan, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddTimeSpanWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: TimeSpan, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddTimeSpanArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]TimeSpan) callconv(.winapi) HRESULT,
        AddTimeSpanArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddTimeSpanArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddPoint: *const fn(self: *anyopaque, name: HSTRING, value: Point) callconv(.winapi) HRESULT,
        AddPointWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: Point, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddPointWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: Point, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddPointArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Point) callconv(.winapi) HRESULT,
        AddPointArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Point, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddPointArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Point, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSize: *const fn(self: *anyopaque, name: HSTRING, value: Size) callconv(.winapi) HRESULT,
        AddSizeWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: Size, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSizeWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: Size, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddSizeArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Size) callconv(.winapi) HRESULT,
        AddSizeArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Size, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddSizeArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Size, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddRect: *const fn(self: *anyopaque, name: HSTRING, value: Rect) callconv(.winapi) HRESULT,
        AddRectWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: Rect, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddRectWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: Rect, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
        AddRectArray: *const fn(self: *anyopaque, name: HSTRING, value: [*]Rect) callconv(.winapi) HRESULT,
        AddRectArrayWithFormat: *const fn(self: *anyopaque, name: HSTRING, value: [*]Rect, format: LoggingFieldFormat) callconv(.winapi) HRESULT,
        AddRectArrayWithFormatAndTags: *const fn(self: *anyopaque, name: HSTRING, value: [*]Rect, format: LoggingFieldFormat, tags: i32) callconv(.winapi) HRESULT,
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
    pub fn IsEnabledWithLevel(self: *@This(), level: LoggingLevel) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabledWithLevel(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEnabledWithLevelAndKeywords(self: *@This(), level: LoggingLevel, keywords: i64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabledWithLevelAndKeywords(@ptrCast(self), level, keywords, &_r);
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
    pub fn LogEventWithFieldsAndLevel(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!void {
        const _c = self.vtable.LogEventWithFieldsAndLevel(@ptrCast(self), eventName, fields, level);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogEventWithFieldsAndLevelAndOptions(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!void {
        const _c = self.vtable.LogEventWithFieldsAndLevelAndOptions(@ptrCast(self), eventName, fields, level, options);
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
    pub fn StartActivityWithFieldsAndLevel(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.StartActivityWithFieldsAndLevel(@ptrCast(self), startEventName, fields, level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartActivityWithFieldsAndLevelAndOptions(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!*LoggingActivity {
        var _r: *LoggingActivity = undefined;
        const _c = self.vtable.StartActivityWithFieldsAndLevelAndOptions(@ptrCast(self), startEventName, fields, level, options, &_r);
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
        IsEnabledWithLevel: *const fn(self: *anyopaque, level: LoggingLevel, _r: *bool) callconv(.winapi) HRESULT,
        IsEnabledWithLevelAndKeywords: *const fn(self: *anyopaque, level: LoggingLevel, keywords: i64, _r: *bool) callconv(.winapi) HRESULT,
        LogEvent: *const fn(self: *anyopaque, eventName: HSTRING) callconv(.winapi) HRESULT,
        LogEventWithFields: *const fn(self: *anyopaque, eventName: HSTRING, fields: *LoggingFields) callconv(.winapi) HRESULT,
        LogEventWithFieldsAndLevel: *const fn(self: *anyopaque, eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) callconv(.winapi) HRESULT,
        LogEventWithFieldsAndLevelAndOptions: *const fn(self: *anyopaque, eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) callconv(.winapi) HRESULT,
        StartActivity: *const fn(self: *anyopaque, startEventName: HSTRING, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        StartActivityWithFields: *const fn(self: *anyopaque, startEventName: HSTRING, fields: *LoggingFields, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        StartActivityWithFieldsAndLevel: *const fn(self: *anyopaque, startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, _r: **LoggingActivity) callconv(.winapi) HRESULT,
        StartActivityWithFieldsAndLevelAndOptions: *const fn(self: *anyopaque, startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions, _r: **LoggingActivity) callconv(.winapi) HRESULT,
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
    pub fn StopActivityWithFieldsAndOptions(self: *@This(), stopEventName: HSTRING, fields: *LoggingFields, options: *LoggingOptions) core.HResult!void {
        var this: ?*ILoggingActivity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingActivity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopActivityWithFieldsAndOptions(stopEventName, fields, options);
    }
    pub fn IsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabled();
    }
    pub fn IsEnabledWithLevel(self: *@This(), level: LoggingLevel) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabledWithLevel(level);
    }
    pub fn IsEnabledWithLevelAndKeywords(self: *@This(), level: LoggingLevel, keywords: i64) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabledWithLevelAndKeywords(level, keywords);
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
    pub fn LogEventWithFieldsAndLevel(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithFieldsAndLevel(eventName, fields, level);
    }
    pub fn LogEventWithFieldsAndLevelAndOptions(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithFieldsAndLevelAndOptions(eventName, fields, level, options);
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
    pub fn StartActivityWithFieldsAndLevel(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithFieldsAndLevel(startEventName, fields, level);
    }
    pub fn StartActivityWithFieldsAndLevelAndOptions(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithFieldsAndLevelAndOptions(startEventName, fields, level, options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateLoggingActivity(activityName: HSTRING, loggingChannel: *ILoggingChannel) core.HResult!*LoggingActivity {
        const _f = @This().ILoggingActivityFactoryCache.get();
        return try _f.CreateLoggingActivity(activityName, loggingChannel);
    }
    pub fn CreateLoggingActivityWithLevel(activityName: HSTRING, loggingChannel: *ILoggingChannel, level: LoggingLevel) core.HResult!*LoggingActivity {
        const _f = @This().ILoggingActivityFactoryCache.get();
        return try _f.CreateLoggingActivityWithLevel(activityName, loggingChannel, level);
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
    pub fn LogValuePairWithLevel(self: *@This(), value1: HSTRING, value2: i32, level: LoggingLevel) core.HResult!void {
        const this: *ILoggingChannel = @ptrCast(self);
        return try this.LogValuePairWithLevel(value1, value2, level);
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
    pub fn IsEnabledWithLevel(self: *@This(), level: LoggingLevel) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabledWithLevel(level);
    }
    pub fn IsEnabledWithLevelAndKeywords(self: *@This(), level: LoggingLevel, keywords: i64) core.HResult!bool {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabledWithLevelAndKeywords(level, keywords);
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
    pub fn LogEventWithFieldsAndLevel(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithFieldsAndLevel(eventName, fields, level);
    }
    pub fn LogEventWithFieldsAndLevelAndOptions(self: *@This(), eventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!void {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LogEventWithFieldsAndLevelAndOptions(eventName, fields, level, options);
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
    pub fn StartActivityWithFieldsAndLevel(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithFieldsAndLevel(startEventName, fields, level);
    }
    pub fn StartActivityWithFieldsAndLevelAndOptions(self: *@This(), startEventName: HSTRING, fields: *LoggingFields, level: LoggingLevel, options: *LoggingOptions) core.HResult!*LoggingActivity {
        var this: ?*ILoggingTarget = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILoggingTarget.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartActivityWithFieldsAndLevelAndOptions(startEventName, fields, level, options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithOptions(name: HSTRING, options: *LoggingChannelOptions) core.HResult!*LoggingChannel {
        const _f = @This().ILoggingChannelFactory2Cache.get();
        return try _f.CreateWithOptions(name, options);
    }
    pub fn CreateWithOptionsAndId(name: HSTRING, options: *LoggingChannelOptions, id: *Guid) core.HResult!*LoggingChannel {
        const _f = @This().ILoggingChannelFactory2Cache.get();
        return try _f.CreateWithOptionsAndId(name, options, id);
    }
    pub fn Create(name: HSTRING) core.HResult!*LoggingChannel {
        const _f = @This().ILoggingChannelFactoryCache.get();
        return try _f.Create(name);
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
        const _f = @This().ILoggingChannelOptionsFactoryCache.get();
        return try _f.Create(group);
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
    pub fn AddEmptyWithFormatAndTags(self: *@This(), name: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddEmptyWithFormatAndTags(name, format, tags);
    }
    pub fn AddUInt8(self: *@This(), name: HSTRING, value: u8) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8(name, value);
    }
    pub fn AddUInt8WithFormat(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8WithFormat(name, value, format);
    }
    pub fn AddUInt8WithFormatAndTags(self: *@This(), name: HSTRING, value: u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt8Array(self: *@This(), name: HSTRING, value: [*]u8) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8Array(name, value);
    }
    pub fn AddUInt8ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8ArrayWithFormat(name, value, format);
    }
    pub fn AddUInt8ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u8, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt8ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddInt16(self: *@This(), name: HSTRING, value: i16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16(name, value);
    }
    pub fn AddInt16WithFormat(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16WithFormat(name, value, format);
    }
    pub fn AddInt16WithFormatAndTags(self: *@This(), name: HSTRING, value: i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddInt16Array(self: *@This(), name: HSTRING, value: [*]i16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16Array(name, value);
    }
    pub fn AddInt16ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16ArrayWithFormat(name, value, format);
    }
    pub fn AddInt16ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]i16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt16ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16(name, value);
    }
    pub fn AddUInt16WithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16WithFormat(name, value, format);
    }
    pub fn AddUInt16WithFormatAndTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16Array(name, value);
    }
    pub fn AddUInt16ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16ArrayWithFormat(name, value, format);
    }
    pub fn AddUInt16ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt16ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddInt32(self: *@This(), name: HSTRING, value: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32(name, value);
    }
    pub fn AddInt32WithFormat(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32WithFormat(name, value, format);
    }
    pub fn AddInt32WithFormatAndTags(self: *@This(), name: HSTRING, value: i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddInt32Array(self: *@This(), name: HSTRING, value: [*]i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32Array(name, value);
    }
    pub fn AddInt32ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32ArrayWithFormat(name, value, format);
    }
    pub fn AddInt32ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]i32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt32ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt32(self: *@This(), name: HSTRING, value: u32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32(name, value);
    }
    pub fn AddUInt32WithFormat(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32WithFormat(name, value, format);
    }
    pub fn AddUInt32WithFormatAndTags(self: *@This(), name: HSTRING, value: u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt32Array(self: *@This(), name: HSTRING, value: [*]u32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32Array(name, value);
    }
    pub fn AddUInt32ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32ArrayWithFormat(name, value, format);
    }
    pub fn AddUInt32ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt32ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddInt64(self: *@This(), name: HSTRING, value: i64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64(name, value);
    }
    pub fn AddInt64WithFormat(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64WithFormat(name, value, format);
    }
    pub fn AddInt64WithFormatAndTags(self: *@This(), name: HSTRING, value: i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddInt64Array(self: *@This(), name: HSTRING, value: [*]i64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64Array(name, value);
    }
    pub fn AddInt64ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64ArrayWithFormat(name, value, format);
    }
    pub fn AddInt64ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]i64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddInt64ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt64(self: *@This(), name: HSTRING, value: u64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64(name, value);
    }
    pub fn AddUInt64WithFormat(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64WithFormat(name, value, format);
    }
    pub fn AddUInt64WithFormatAndTags(self: *@This(), name: HSTRING, value: u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddUInt64Array(self: *@This(), name: HSTRING, value: [*]u64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64Array(name, value);
    }
    pub fn AddUInt64ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64ArrayWithFormat(name, value, format);
    }
    pub fn AddUInt64ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddUInt64ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddSingle(self: *@This(), name: HSTRING, value: f32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingle(name, value);
    }
    pub fn AddSingleWithFormat(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleWithFormat(name, value, format);
    }
    pub fn AddSingleWithFormatAndTags(self: *@This(), name: HSTRING, value: f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddSingleArray(self: *@This(), name: HSTRING, value: [*]f32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleArray(name, value);
    }
    pub fn AddSingleArrayWithFormat(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleArrayWithFormat(name, value, format);
    }
    pub fn AddSingleArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]f32, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSingleArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddDouble(self: *@This(), name: HSTRING, value: f64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDouble(name, value);
    }
    pub fn AddDoubleWithFormat(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleWithFormat(name, value, format);
    }
    pub fn AddDoubleWithFormatAndTags(self: *@This(), name: HSTRING, value: f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddDoubleArray(self: *@This(), name: HSTRING, value: [*]f64) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleArray(name, value);
    }
    pub fn AddDoubleArrayWithFormat(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleArrayWithFormat(name, value, format);
    }
    pub fn AddDoubleArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]f64, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDoubleArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddChar16(self: *@This(), name: HSTRING, value: u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16(name, value);
    }
    pub fn AddChar16WithFormat(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16WithFormat(name, value, format);
    }
    pub fn AddChar16WithFormatAndTags(self: *@This(), name: HSTRING, value: u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16WithFormatAndTags(name, value, format, tags);
    }
    pub fn AddChar16Array(self: *@This(), name: HSTRING, value: [*]u16) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16Array(name, value);
    }
    pub fn AddChar16ArrayWithFormat(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16ArrayWithFormat(name, value, format);
    }
    pub fn AddChar16ArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]u16, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddChar16ArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddBoolean(self: *@This(), name: HSTRING, value: bool) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBoolean(name, value);
    }
    pub fn AddBooleanWithFormat(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanWithFormat(name, value, format);
    }
    pub fn AddBooleanWithFormatAndTags(self: *@This(), name: HSTRING, value: bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddBooleanArray(self: *@This(), name: HSTRING, value: [*]bool) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanArray(name, value);
    }
    pub fn AddBooleanArrayWithFormat(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanArrayWithFormat(name, value, format);
    }
    pub fn AddBooleanArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]bool, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddBooleanArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddString(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddString(name, value);
    }
    pub fn AddStringWithFormat(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringWithFormat(name, value, format);
    }
    pub fn AddStringWithFormatAndTags(self: *@This(), name: HSTRING, value: HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddStringArray(self: *@This(), name: HSTRING, value: [*]HSTRING) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringArray(name, value);
    }
    pub fn AddStringArrayWithFormat(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringArrayWithFormat(name, value, format);
    }
    pub fn AddStringArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]HSTRING, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddStringArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddGuid(self: *@This(), name: HSTRING, value: *Guid) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuid(name, value);
    }
    pub fn AddGuidWithFormat(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidWithFormat(name, value, format);
    }
    pub fn AddGuidWithFormatAndTags(self: *@This(), name: HSTRING, value: *Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddGuidArray(self: *@This(), name: HSTRING, value: [*]Guid) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidArray(name, value);
    }
    pub fn AddGuidArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidArrayWithFormat(name, value, format);
    }
    pub fn AddGuidArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Guid, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddGuidArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddDateTime(self: *@This(), name: HSTRING, value: DateTime) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTime(name, value);
    }
    pub fn AddDateTimeWithFormat(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeWithFormat(name, value, format);
    }
    pub fn AddDateTimeWithFormatAndTags(self: *@This(), name: HSTRING, value: DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddDateTimeArray(self: *@This(), name: HSTRING, value: [*]DateTime) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeArray(name, value);
    }
    pub fn AddDateTimeArrayWithFormat(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeArrayWithFormat(name, value, format);
    }
    pub fn AddDateTimeArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]DateTime, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddDateTimeArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddTimeSpan(self: *@This(), name: HSTRING, value: TimeSpan) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpan(name, value);
    }
    pub fn AddTimeSpanWithFormat(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanWithFormat(name, value, format);
    }
    pub fn AddTimeSpanWithFormatAndTags(self: *@This(), name: HSTRING, value: TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddTimeSpanArray(self: *@This(), name: HSTRING, value: [*]TimeSpan) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanArray(name, value);
    }
    pub fn AddTimeSpanArrayWithFormat(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanArrayWithFormat(name, value, format);
    }
    pub fn AddTimeSpanArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]TimeSpan, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddTimeSpanArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddPoint(self: *@This(), name: HSTRING, value: Point) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPoint(name, value);
    }
    pub fn AddPointWithFormat(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointWithFormat(name, value, format);
    }
    pub fn AddPointWithFormatAndTags(self: *@This(), name: HSTRING, value: Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddPointArray(self: *@This(), name: HSTRING, value: [*]Point) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointArray(name, value);
    }
    pub fn AddPointArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointArrayWithFormat(name, value, format);
    }
    pub fn AddPointArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Point, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddPointArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddSize(self: *@This(), name: HSTRING, value: Size) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSize(name, value);
    }
    pub fn AddSizeWithFormat(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeWithFormat(name, value, format);
    }
    pub fn AddSizeWithFormatAndTags(self: *@This(), name: HSTRING, value: Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddSizeArray(self: *@This(), name: HSTRING, value: [*]Size) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeArray(name, value);
    }
    pub fn AddSizeArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeArrayWithFormat(name, value, format);
    }
    pub fn AddSizeArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Size, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddSizeArrayWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddRect(self: *@This(), name: HSTRING, value: Rect) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRect(name, value);
    }
    pub fn AddRectWithFormat(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectWithFormat(name, value, format);
    }
    pub fn AddRectWithFormatAndTags(self: *@This(), name: HSTRING, value: Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectWithFormatAndTags(name, value, format, tags);
    }
    pub fn AddRectArray(self: *@This(), name: HSTRING, value: [*]Rect) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectArray(name, value);
    }
    pub fn AddRectArrayWithFormat(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectArrayWithFormat(name, value, format);
    }
    pub fn AddRectArrayWithFormatAndTags(self: *@This(), name: HSTRING, value: [*]Rect, format: LoggingFieldFormat, tags: i32) core.HResult!void {
        const this: *ILoggingFields = @ptrCast(self);
        return try this.AddRectArrayWithFormatAndTags(name, value, format, tags);
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
        const _f = @This().ILoggingOptionsFactoryCache.get();
        return try _f.CreateWithKeywords(keywords);
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
        const _f = @This().ILoggingSessionFactoryCache.get();
        return try _f.Create(name);
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
