pub const HostMessageReceivedCallback = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, receiverId, message);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.HostMessageReceivedCallback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faf26ffa-8ce1-4cc1-b278-322d31a5e4a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IIsolatedWindowsEnvironment = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartProcessSilentlyAsync(self: *@This(), hostExePath: HSTRING, arguments: HSTRING, activator: IsolatedWindowsEnvironmentActivator) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult) = undefined;
        const _c = self.vtable.StartProcessSilentlyAsync(@ptrCast(self), hostExePath, arguments, activator, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartProcessSilentlyAsyncWithTelemetryParameters(self: *@This(), hostExePath: HSTRING, arguments: HSTRING, activator: IsolatedWindowsEnvironmentActivator, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult) = undefined;
        const _c = self.vtable.StartProcessSilentlyAsyncWithTelemetryParameters(@ptrCast(self), hostExePath, arguments, activator, telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShareFolderAsync(self: *@This(), hostFolder: HSTRING, requestOptions: *IsolatedWindowsEnvironmentShareFolderRequestOptions) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult) = undefined;
        const _c = self.vtable.ShareFolderAsync(@ptrCast(self), hostFolder, requestOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShareFolderAsyncWithTelemetryParameters(self: *@This(), hostFolder: HSTRING, requestOptions: *IsolatedWindowsEnvironmentShareFolderRequestOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult) = undefined;
        const _c = self.vtable.ShareFolderAsyncWithTelemetryParameters(@ptrCast(self), hostFolder, requestOptions, telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFileWithUIAsync(self: *@This(), appExePath: HSTRING, argumentsTemplate: HSTRING, filePath: HSTRING) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult) = undefined;
        const _c = self.vtable.LaunchFileWithUIAsync(@ptrCast(self), appExePath, argumentsTemplate, filePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFileWithUIAsyncWithTelemetryParameters(self: *@This(), appExePath: HSTRING, argumentsTemplate: HSTRING, filePath: HSTRING, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult) = undefined;
        const _c = self.vtable.LaunchFileWithUIAsyncWithTelemetryParameters(@ptrCast(self), appExePath, argumentsTemplate, filePath, telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TerminateAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.TerminateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TerminateAsyncWithTelemetryParameters(self: *@This(), telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.TerminateAsyncWithTelemetryParameters(@ptrCast(self), telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterMessageReceiver(self: *@This(), receiverId: *Guid, messageReceivedCallback: *MessageReceivedCallback) core.HResult!void {
        const _c = self.vtable.RegisterMessageReceiver(@ptrCast(self), receiverId, messageReceivedCallback);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterMessageReceiver(self: *@This(), receiverId: *Guid) core.HResult!void {
        const _c = self.vtable.UnregisterMessageReceiver(@ptrCast(self), receiverId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41d24597-c328-4467-b37f-4dfc6f60b6bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        StartProcessSilentlyAsync: *const fn(self: *anyopaque, hostExePath: HSTRING, arguments: HSTRING, activator: IsolatedWindowsEnvironmentActivator, _r: **IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult)) callconv(.winapi) HRESULT,
        StartProcessSilentlyAsyncWithTelemetryParameters: *const fn(self: *anyopaque, hostExePath: HSTRING, arguments: HSTRING, activator: IsolatedWindowsEnvironmentActivator, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult)) callconv(.winapi) HRESULT,
        ShareFolderAsync: *const fn(self: *anyopaque, hostFolder: HSTRING, requestOptions: *IsolatedWindowsEnvironmentShareFolderRequestOptions, _r: **IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult)) callconv(.winapi) HRESULT,
        ShareFolderAsyncWithTelemetryParameters: *const fn(self: *anyopaque, hostFolder: HSTRING, requestOptions: *IsolatedWindowsEnvironmentShareFolderRequestOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult)) callconv(.winapi) HRESULT,
        LaunchFileWithUIAsync: *const fn(self: *anyopaque, appExePath: HSTRING, argumentsTemplate: HSTRING, filePath: HSTRING, _r: **IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult)) callconv(.winapi) HRESULT,
        LaunchFileWithUIAsyncWithTelemetryParameters: *const fn(self: *anyopaque, appExePath: HSTRING, argumentsTemplate: HSTRING, filePath: HSTRING, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult)) callconv(.winapi) HRESULT,
        TerminateAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TerminateAsyncWithTelemetryParameters: *const fn(self: *anyopaque, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RegisterMessageReceiver: *const fn(self: *anyopaque, receiverId: *Guid, messageReceivedCallback: *MessageReceivedCallback) callconv(.winapi) HRESULT,
        UnregisterMessageReceiver: *const fn(self: *anyopaque, receiverId: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironment2 = extern struct {
    vtable: *const VTable,
    pub fn PostMessageToReceiverAsync(self: *@This(), receiverId: *Guid, message: *IIterable(IInspectable)) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult) = undefined;
        const _c = self.vtable.PostMessageToReceiverAsync(@ptrCast(self), receiverId, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PostMessageToReceiverAsyncWithTelemetryParameters(self: *@This(), receiverId: *Guid, message: *IIterable(IInspectable), telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult) = undefined;
        const _c = self.vtable.PostMessageToReceiverAsyncWithTelemetryParameters(@ptrCast(self), receiverId, message, telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironment2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d365f39-88bd-4ab4-93cf-7e2bcef337c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PostMessageToReceiverAsync: *const fn(self: *anyopaque, receiverId: *Guid, message: *IIterable(IInspectable), _r: **IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult)) callconv(.winapi) HRESULT,
        PostMessageToReceiverAsyncWithTelemetryParameters: *const fn(self: *anyopaque, receiverId: *Guid, message: *IIterable(IInspectable), telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironment3 = extern struct {
    vtable: *const VTable,
    pub fn GetUserInfo(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentUserInfo {
        var _r: *IsolatedWindowsEnvironmentUserInfo = undefined;
        const _c = self.vtable.GetUserInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShareFileAsync(self: *@This(), filePath: HSTRING, options: *IsolatedWindowsEnvironmentShareFileRequestOptions) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult) = undefined;
        const _c = self.vtable.ShareFileAsync(@ptrCast(self), filePath, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShareFileAsyncWithTelemetryParameters(self: *@This(), filePath: HSTRING, options: *IsolatedWindowsEnvironmentShareFileRequestOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult) {
        var _r: *IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult) = undefined;
        const _c = self.vtable.ShareFileAsyncWithTelemetryParameters(@ptrCast(self), filePath, options, telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironment3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb7fc7d2-d06e-4c26-8ada-dacdaaad03f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUserInfo: *const fn(self: *anyopaque, _r: **IsolatedWindowsEnvironmentUserInfo) callconv(.winapi) HRESULT,
        ShareFileAsync: *const fn(self: *anyopaque, filePath: HSTRING, options: *IsolatedWindowsEnvironmentShareFileRequestOptions, _r: **IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult)) callconv(.winapi) HRESULT,
        ShareFileAsyncWithTelemetryParameters: *const fn(self: *anyopaque, filePath: HSTRING, options: *IsolatedWindowsEnvironmentShareFileRequestOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironment4 = extern struct {
    vtable: *const VTable,
    pub fn ChangePriority(self: *@This(), Priority: IsolatedWindowsEnvironmentCreationPriority) core.HResult!void {
        const _c = self.vtable.ChangePriority(@ptrCast(self), Priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironment4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11e3701a-dd9e-4f1b-812c-4020f307f93c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ChangePriority: *const fn(self: *anyopaque, Priority: IsolatedWindowsEnvironmentCreationPriority) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentCreateResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentCreateStatus {
        var _r: IsolatedWindowsEnvironmentCreateStatus = undefined;
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
    pub fn getEnvironment(self: *@This()) core.HResult!*IsolatedWindowsEnvironment {
        var _r: *IsolatedWindowsEnvironment = undefined;
        const _c = self.vtable.get_Environment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentCreateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef9a5e58-dcd7-45c2-9c85-ab642a715e8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentCreateStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Environment: *const fn(self: *anyopaque, _r: **IsolatedWindowsEnvironment) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentCreateResult2 = extern struct {
    vtable: *const VTable,
    pub fn ChangeCreationPriority(self: *@This(), priority: IsolatedWindowsEnvironmentCreationPriority) core.HResult!void {
        const _c = self.vtable.ChangeCreationPriority(@ptrCast(self), priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentCreateResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a547dbc7-61d4-4fb8-ab5c-edefa3d388ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ChangeCreationPriority: *const fn(self: *anyopaque, priority: IsolatedWindowsEnvironmentCreationPriority) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This(), options: *IsolatedWindowsEnvironmentOptions) core.HResult!*IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress) {
        var _r: *IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsyncWithTelemetryParameters(self: *@This(), options: *IsolatedWindowsEnvironmentOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress) {
        var _r: *IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress) = undefined;
        const _c = self.vtable.CreateAsyncWithTelemetryParameters(@ptrCast(self), options, telemetryParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetById(self: *@This(), environmentId: HSTRING) core.HResult!*IsolatedWindowsEnvironment {
        var _r: *IsolatedWindowsEnvironment = undefined;
        const _c = self.vtable.GetById(@ptrCast(self), environmentId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindByOwnerId(self: *@This(), environmentOwnerId: HSTRING) core.HResult!*IVectorView(IsolatedWindowsEnvironment) {
        var _r: *IVectorView(IsolatedWindowsEnvironment) = undefined;
        const _c = self.vtable.FindByOwnerId(@ptrCast(self), environmentOwnerId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1aca93e7-e804-454d-8466-f9897c20b0f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, options: *IsolatedWindowsEnvironmentOptions, _r: **IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress)) callconv(.winapi) HRESULT,
        CreateAsyncWithTelemetryParameters: *const fn(self: *anyopaque, options: *IsolatedWindowsEnvironmentOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters, _r: **IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress)) callconv(.winapi) HRESULT,
        GetById: *const fn(self: *anyopaque, environmentId: HSTRING, _r: **IsolatedWindowsEnvironment) callconv(.winapi) HRESULT,
        FindByOwnerId: *const fn(self: *anyopaque, environmentOwnerId: HSTRING, _r: **IVectorView(IsolatedWindowsEnvironment)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentFile = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHostPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HostPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentFile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d5ae1ef-029f-4101-8c35-fe91bf9cd5f0";
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
        get_HostPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentFile2 = extern struct {
    vtable: *const VTable,
    pub fn getGuestPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GuestPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentFile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4eeb8dec-ad5d-4b0a-b754-f36c3d46d684";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GuestPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentHostStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsReady(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReady(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHostErrors(self: *@This()) core.HResult!*IVectorView(IsolatedWindowsEnvironmentHostError) {
        var _r: *IVectorView(IsolatedWindowsEnvironmentHostError) = undefined;
        const _c = self.vtable.get_HostErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentHostStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c0e22c7-05a0-517a-b81c-6ee8790c381f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReady: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HostErrors: *const fn(self: *anyopaque, _r: **IVectorView(IsolatedWindowsEnvironmentHostError)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentLaunchFileResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentLaunchFileStatus {
        var _r: IsolatedWindowsEnvironmentLaunchFileStatus = undefined;
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
    pub fn getFile(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentFile {
        var _r: *IsolatedWindowsEnvironmentFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentLaunchFileResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "685d4176-f6e0-4569-b1aa-215c0ff5b257";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentLaunchFileStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **IsolatedWindowsEnvironmentFile) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentOptions = extern struct {
    vtable: *const VTable,
    pub fn getEnvironmentOwnerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnvironmentOwnerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnvironmentOwnerId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EnvironmentOwnerId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowedClipboardFormats(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAllowedClipboardFormats {
        var _r: IsolatedWindowsEnvironmentAllowedClipboardFormats = undefined;
        const _c = self.vtable.get_AllowedClipboardFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowedClipboardFormats(self: *@This(), value: IsolatedWindowsEnvironmentAllowedClipboardFormats) core.HResult!void {
        const _c = self.vtable.put_AllowedClipboardFormats(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClipboardCopyPasteDirections(self: *@This()) core.HResult!IsolatedWindowsEnvironmentClipboardCopyPasteDirections {
        var _r: IsolatedWindowsEnvironmentClipboardCopyPasteDirections = undefined;
        const _c = self.vtable.get_ClipboardCopyPasteDirections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClipboardCopyPasteDirections(self: *@This(), value: IsolatedWindowsEnvironmentClipboardCopyPasteDirections) core.HResult!void {
        const _c = self.vtable.put_ClipboardCopyPasteDirections(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAvailablePrinters(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAvailablePrinters {
        var _r: IsolatedWindowsEnvironmentAvailablePrinters = undefined;
        const _c = self.vtable.get_AvailablePrinters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAvailablePrinters(self: *@This(), value: IsolatedWindowsEnvironmentAvailablePrinters) core.HResult!void {
        const _c = self.vtable.put_AvailablePrinters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSharedHostFolderPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SharedHostFolderPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharedFolderNameInEnvironment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SharedFolderNameInEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShareHostFolderForUntrustedItems(self: *@This(), SharedHostFolderPath: HSTRING, ShareFolderNameInEnvironment: HSTRING) core.HResult!void {
        const _c = self.vtable.ShareHostFolderForUntrustedItems(@ptrCast(self), SharedHostFolderPath, ShareFolderNameInEnvironment);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPersistUserProfile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PersistUserProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPersistUserProfile(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PersistUserProfile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowGraphicsHardwareAcceleration(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowGraphicsHardwareAcceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowGraphicsHardwareAcceleration(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowGraphicsHardwareAcceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowCameraAndMicrophoneAccess(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowCameraAndMicrophoneAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowCameraAndMicrophoneAccess(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowCameraAndMicrophoneAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b71d98f7-61f0-4008-b207-0bf9eb2d76f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnvironmentOwnerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EnvironmentOwnerId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AllowedClipboardFormats: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentAllowedClipboardFormats) callconv(.winapi) HRESULT,
        put_AllowedClipboardFormats: *const fn(self: *anyopaque, value: IsolatedWindowsEnvironmentAllowedClipboardFormats) callconv(.winapi) HRESULT,
        get_ClipboardCopyPasteDirections: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentClipboardCopyPasteDirections) callconv(.winapi) HRESULT,
        put_ClipboardCopyPasteDirections: *const fn(self: *anyopaque, value: IsolatedWindowsEnvironmentClipboardCopyPasteDirections) callconv(.winapi) HRESULT,
        get_AvailablePrinters: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentAvailablePrinters) callconv(.winapi) HRESULT,
        put_AvailablePrinters: *const fn(self: *anyopaque, value: IsolatedWindowsEnvironmentAvailablePrinters) callconv(.winapi) HRESULT,
        get_SharedHostFolderPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SharedFolderNameInEnvironment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ShareHostFolderForUntrustedItems: *const fn(self: *anyopaque, SharedHostFolderPath: HSTRING, ShareFolderNameInEnvironment: HSTRING) callconv(.winapi) HRESULT,
        get_PersistUserProfile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PersistUserProfile: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowGraphicsHardwareAcceleration: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowGraphicsHardwareAcceleration: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowCameraAndMicrophoneAccess: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowCameraAndMicrophoneAccess: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getWindowAnnotationOverride(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WindowAnnotationOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWindowAnnotationOverride(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WindowAnnotationOverride(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10d7cc31-8b8f-4b9d-b22c-617103b55b08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WindowAnnotationOverride: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_WindowAnnotationOverride: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentOptions3 = extern struct {
    vtable: *const VTable,
    pub fn getAllowedClipboardFormatsToEnvironment(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAllowedClipboardFormats {
        var _r: IsolatedWindowsEnvironmentAllowedClipboardFormats = undefined;
        const _c = self.vtable.get_AllowedClipboardFormatsToEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowedClipboardFormatsToEnvironment(self: *@This(), value: IsolatedWindowsEnvironmentAllowedClipboardFormats) core.HResult!void {
        const _c = self.vtable.put_AllowedClipboardFormatsToEnvironment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowedClipboardFormatsToHost(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAllowedClipboardFormats {
        var _r: IsolatedWindowsEnvironmentAllowedClipboardFormats = undefined;
        const _c = self.vtable.get_AllowedClipboardFormatsToHost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowedClipboardFormatsToHost(self: *@This(), value: IsolatedWindowsEnvironmentAllowedClipboardFormats) core.HResult!void {
        const _c = self.vtable.put_AllowedClipboardFormatsToHost(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCreationPriority(self: *@This()) core.HResult!IsolatedWindowsEnvironmentCreationPriority {
        var _r: IsolatedWindowsEnvironmentCreationPriority = undefined;
        const _c = self.vtable.get_CreationPriority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCreationPriority(self: *@This(), value: IsolatedWindowsEnvironmentCreationPriority) core.HResult!void {
        const _c = self.vtable.put_CreationPriority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentOptions3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98d5aa23-161f-4cd9-8a9c-269b30122b0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowedClipboardFormatsToEnvironment: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentAllowedClipboardFormats) callconv(.winapi) HRESULT,
        put_AllowedClipboardFormatsToEnvironment: *const fn(self: *anyopaque, value: IsolatedWindowsEnvironmentAllowedClipboardFormats) callconv(.winapi) HRESULT,
        get_AllowedClipboardFormatsToHost: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentAllowedClipboardFormats) callconv(.winapi) HRESULT,
        put_AllowedClipboardFormatsToHost: *const fn(self: *anyopaque, value: IsolatedWindowsEnvironmentAllowedClipboardFormats) callconv(.winapi) HRESULT,
        get_CreationPriority: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentCreationPriority) callconv(.winapi) HRESULT,
        put_CreationPriority: *const fn(self: *anyopaque, value: IsolatedWindowsEnvironmentCreationPriority) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentOwnerRegistrationData = extern struct {
    vtable: *const VTable,
    pub fn getShareableFolders(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ShareableFolders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProcessesRunnableAsSystem(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ProcessesRunnableAsSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProcessesRunnableAsUser(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ProcessesRunnableAsUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivationFileExtensions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ActivationFileExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentOwnerRegistrationData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f888ec22-e8cf-56c0-b1df-90af4ad80e84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShareableFolders: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ProcessesRunnableAsSystem: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ProcessesRunnableAsUser: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ActivationFileExtensions: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentOwnerRegistrationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentOwnerRegistrationStatus {
        var _r: IsolatedWindowsEnvironmentOwnerRegistrationStatus = undefined;
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
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentOwnerRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6dab9451-6169-55df-8f51-790e99d7277d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentOwnerRegistrationStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentOwnerRegistrationStatics = extern struct {
    vtable: *const VTable,
    pub fn Register(self: *@This(), ownerName: HSTRING, ownerRegistrationData: *IsolatedWindowsEnvironmentOwnerRegistrationData) core.HResult!*IsolatedWindowsEnvironmentOwnerRegistrationResult {
        var _r: *IsolatedWindowsEnvironmentOwnerRegistrationResult = undefined;
        const _c = self.vtable.Register(@ptrCast(self), ownerName, ownerRegistrationData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Unregister(self: *@This(), ownerName: HSTRING) core.HResult!void {
        const _c = self.vtable.Unregister(@ptrCast(self), ownerName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentOwnerRegistrationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10951754-204b-5ec9-9de3-df792d074a61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, ownerName: HSTRING, ownerRegistrationData: *IsolatedWindowsEnvironmentOwnerRegistrationData, _r: **IsolatedWindowsEnvironmentOwnerRegistrationResult) callconv(.winapi) HRESULT,
        Unregister: *const fn(self: *anyopaque, ownerName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentPostMessageResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentPostMessageStatus {
        var _r: IsolatedWindowsEnvironmentPostMessageStatus = undefined;
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
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentPostMessageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0dfa28fa-2ef0-4d8f-b341-3171b2df93b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentPostMessageStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentProcess = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!IsolatedWindowsEnvironmentProcessState {
        var _r: IsolatedWindowsEnvironmentProcessState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExitCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WaitForExit(self: *@This()) core.HResult!void {
        const _c = self.vtable.WaitForExit(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WaitForExitWithTimeout(self: *@This(), timeoutMilliseconds: u32) core.HResult!void {
        const _c = self.vtable.WaitForExitWithTimeout(@ptrCast(self), timeoutMilliseconds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WaitForExitAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WaitForExitAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentProcess";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a858c3ef-8172-4f10-af93-cbe60af88d09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentProcessState) callconv(.winapi) HRESULT,
        get_ExitCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        WaitForExit: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        WaitForExitWithTimeout: *const fn(self: *anyopaque, timeoutMilliseconds: u32) callconv(.winapi) HRESULT,
        WaitForExitAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentShareFileRequestOptions = extern struct {
    vtable: *const VTable,
    pub fn getAllowWrite(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWrite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWrite(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWrite(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentShareFileRequestOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9190ed8-0fd0-4946-bb88-117a60737b61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowWrite: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWrite: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentShareFileResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentShareFileStatus {
        var _r: IsolatedWindowsEnvironmentShareFileStatus = undefined;
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
    pub fn getFile(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentFile {
        var _r: *IsolatedWindowsEnvironmentFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentShareFileResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aec7caa7-9ac6-4bf5-8b91-5c1adf0d7d00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentShareFileStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **IsolatedWindowsEnvironmentFile) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentShareFolderRequestOptions = extern struct {
    vtable: *const VTable,
    pub fn getAllowWrite(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWrite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWrite(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWrite(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentShareFolderRequestOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c405eb7d-7053-4f6a-9b87-746846ed19b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowWrite: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWrite: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentShareFolderResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentShareFolderStatus {
        var _r: IsolatedWindowsEnvironmentShareFolderStatus = undefined;
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
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentShareFolderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "556ba72e-ca9d-4211-b143-1cedc86eb2fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentShareFolderStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentStartProcessResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentStartProcessStatus {
        var _r: IsolatedWindowsEnvironmentStartProcessStatus = undefined;
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
    pub fn getProcess(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentProcess {
        var _r: *IsolatedWindowsEnvironmentProcess = undefined;
        const _c = self.vtable.get_Process(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentStartProcessResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8fa1dc2f-57da-4bb5-9c06-fa072d2032e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *IsolatedWindowsEnvironmentStartProcessStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Process: *const fn(self: *anyopaque, _r: **IsolatedWindowsEnvironmentProcess) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentTelemetryParameters = extern struct {
    vtable: *const VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCorrelationId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_CorrelationId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentTelemetryParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebdb3cab-7a3a-4524-a0f4-f96e284d33cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_CorrelationId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentUserInfo = extern struct {
    vtable: *const VTable,
    pub fn getEnvironmentUserSid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnvironmentUserSid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnvironmentUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnvironmentUserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryWaitForSignInAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryWaitForSignInAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentUserInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a9c75ae-69ba-4001-96fc-19a02703b340";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnvironmentUserSid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EnvironmentUserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TryWaitForSignInAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsEnvironmentUserInfo2 = extern struct {
    vtable: *const VTable,
    pub fn TryWaitForSignInWithProgressAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(bool,IsolatedWindowsEnvironmentSignInProgress) {
        var _r: *IAsyncOperationWithProgress(bool,IsolatedWindowsEnvironmentSignInProgress) = undefined;
        const _c = self.vtable.TryWaitForSignInWithProgressAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsEnvironmentUserInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0bdd5dd-91d7-481e-94f2-2a5a6bdf9383";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryWaitForSignInWithProgressAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(bool,IsolatedWindowsEnvironmentSignInProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsHostMessengerStatics = extern struct {
    vtable: *const VTable,
    pub fn PostMessageToReceiver(self: *@This(), receiverId: *Guid, message: *IVectorView(IInspectable)) core.HResult!void {
        const _c = self.vtable.PostMessageToReceiver(@ptrCast(self), receiverId, message);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetFileId(self: *@This(), filePath: HSTRING) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.GetFileId(@ptrCast(self), filePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsHostMessengerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06e444bb-53c0-4889-8fa3-53592e37cf21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PostMessageToReceiver: *const fn(self: *anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) HRESULT,
        GetFileId: *const fn(self: *anyopaque, filePath: HSTRING, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IIsolatedWindowsHostMessengerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RegisterHostMessageReceiver(self: *@This(), receiverId: *Guid, hostMessageReceivedCallback: *HostMessageReceivedCallback) core.HResult!void {
        const _c = self.vtable.RegisterHostMessageReceiver(@ptrCast(self), receiverId, hostMessageReceivedCallback);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterHostMessageReceiver(self: *@This(), receiverId: *Guid) core.HResult!void {
        const _c = self.vtable.UnregisterHostMessageReceiver(@ptrCast(self), receiverId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IIsolatedWindowsHostMessengerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55ef9ebc-0444-42ad-832d-1b89c089d1ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterHostMessageReceiver: *const fn(self: *anyopaque, receiverId: *Guid, hostMessageReceivedCallback: *HostMessageReceivedCallback) callconv(.winapi) HRESULT,
        UnregisterHostMessageReceiver: *const fn(self: *anyopaque, receiverId: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IsolatedWindowsEnvironment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.getId();
    }
    pub fn StartProcessSilentlyAsync(self: *@This(), hostExePath: HSTRING, arguments: HSTRING, activator: IsolatedWindowsEnvironmentActivator) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult) {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.StartProcessSilentlyAsync(hostExePath, arguments, activator);
    }
    pub fn StartProcessSilentlyAsyncWithTelemetryParameters(self: *@This(), hostExePath: HSTRING, arguments: HSTRING, activator: IsolatedWindowsEnvironmentActivator, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentStartProcessResult) {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.StartProcessSilentlyAsyncWithTelemetryParameters(hostExePath, arguments, activator, telemetryParameters);
    }
    pub fn ShareFolderAsync(self: *@This(), hostFolder: HSTRING, requestOptions: *IsolatedWindowsEnvironmentShareFolderRequestOptions) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult) {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.ShareFolderAsync(hostFolder, requestOptions);
    }
    pub fn ShareFolderAsyncWithTelemetryParameters(self: *@This(), hostFolder: HSTRING, requestOptions: *IsolatedWindowsEnvironmentShareFolderRequestOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFolderResult) {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.ShareFolderAsyncWithTelemetryParameters(hostFolder, requestOptions, telemetryParameters);
    }
    pub fn LaunchFileWithUIAsync(self: *@This(), appExePath: HSTRING, argumentsTemplate: HSTRING, filePath: HSTRING) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult) {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.LaunchFileWithUIAsync(appExePath, argumentsTemplate, filePath);
    }
    pub fn LaunchFileWithUIAsyncWithTelemetryParameters(self: *@This(), appExePath: HSTRING, argumentsTemplate: HSTRING, filePath: HSTRING, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentLaunchFileResult) {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.LaunchFileWithUIAsyncWithTelemetryParameters(appExePath, argumentsTemplate, filePath, telemetryParameters);
    }
    pub fn TerminateAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.TerminateAsync();
    }
    pub fn TerminateAsyncWithTelemetryParameters(self: *@This(), telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncAction {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.TerminateAsyncWithTelemetryParameters(telemetryParameters);
    }
    pub fn RegisterMessageReceiver(self: *@This(), receiverId: *Guid, messageReceivedCallback: *MessageReceivedCallback) core.HResult!void {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.RegisterMessageReceiver(receiverId, messageReceivedCallback);
    }
    pub fn UnregisterMessageReceiver(self: *@This(), receiverId: *Guid) core.HResult!void {
        const this: *IIsolatedWindowsEnvironment = @ptrCast(self);
        return try this.UnregisterMessageReceiver(receiverId);
    }
    pub fn PostMessageToReceiverAsync(self: *@This(), receiverId: *Guid, message: *IIterable(IInspectable)) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult) {
        var this: ?*IIsolatedWindowsEnvironment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PostMessageToReceiverAsync(receiverId, message);
    }
    pub fn PostMessageToReceiverAsyncWithTelemetryParameters(self: *@This(), receiverId: *Guid, message: *IIterable(IInspectable), telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentPostMessageResult) {
        var this: ?*IIsolatedWindowsEnvironment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PostMessageToReceiverAsyncWithTelemetryParameters(receiverId, message, telemetryParameters);
    }
    pub fn GetUserInfo(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentUserInfo {
        var this: ?*IIsolatedWindowsEnvironment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetUserInfo();
    }
    pub fn ShareFileAsync(self: *@This(), filePath: HSTRING, options: *IsolatedWindowsEnvironmentShareFileRequestOptions) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult) {
        var this: ?*IIsolatedWindowsEnvironment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShareFileAsync(filePath, options);
    }
    pub fn ShareFileAsyncWithTelemetryParameters(self: *@This(), filePath: HSTRING, options: *IsolatedWindowsEnvironmentShareFileRequestOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperation(IsolatedWindowsEnvironmentShareFileResult) {
        var this: ?*IIsolatedWindowsEnvironment3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironment3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShareFileAsyncWithTelemetryParameters(filePath, options, telemetryParameters);
    }
    pub fn ChangePriority(self: *@This(), Priority: IsolatedWindowsEnvironmentCreationPriority) core.HResult!void {
        var this: ?*IIsolatedWindowsEnvironment4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironment4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ChangePriority(Priority);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync(options: *IsolatedWindowsEnvironmentOptions) core.HResult!*IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress) {
        const _f = @This().IIsolatedWindowsEnvironmentFactoryCache.get();
        return try _f.CreateAsync(options);
    }
    pub fn CreateAsyncWithTelemetryParameters(options: *IsolatedWindowsEnvironmentOptions, telemetryParameters: *IsolatedWindowsEnvironmentTelemetryParameters) core.HResult!*IAsyncOperationWithProgress(IsolatedWindowsEnvironmentCreateResult,IsolatedWindowsEnvironmentCreateProgress) {
        const _f = @This().IIsolatedWindowsEnvironmentFactoryCache.get();
        return try _f.CreateAsyncWithTelemetryParameters(options, telemetryParameters);
    }
    pub fn GetById(environmentId: HSTRING) core.HResult!*IsolatedWindowsEnvironment {
        const _f = @This().IIsolatedWindowsEnvironmentFactoryCache.get();
        return try _f.GetById(environmentId);
    }
    pub fn FindByOwnerId(environmentOwnerId: HSTRING) core.HResult!*IVectorView(IsolatedWindowsEnvironment) {
        const _f = @This().IIsolatedWindowsEnvironmentFactoryCache.get();
        return try _f.FindByOwnerId(environmentOwnerId);
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironment.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironment.SIGNATURE);
    var _IIsolatedWindowsEnvironmentFactoryCache: FactoryCache(IIsolatedWindowsEnvironmentFactory, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentActivator = enum(i32) {
    System = 0,
    User = 1,
};
pub const IsolatedWindowsEnvironmentAllowedClipboardFormats = enum(i32) {
    None = 0,
    Text = 1,
    Image = 2,
    Rtf = 4,
};
pub const IsolatedWindowsEnvironmentAvailablePrinters = enum(i32) {
    None = 0,
    Local = 1,
    Network = 2,
    SystemPrintToPdf = 4,
    SystemPrintToXps = 8,
};
pub const IsolatedWindowsEnvironmentClipboardCopyPasteDirections = enum(i32) {
    None = 0,
    HostToIsolatedWindowsEnvironment = 1,
    IsolatedWindowsEnvironmentToHost = 2,
};
pub const IsolatedWindowsEnvironmentCreateProgress = extern struct {
    State: IsolatedWindowsEnvironmentProgressState,
    PercentComplete: u32,
};
pub const IsolatedWindowsEnvironmentCreateResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentCreateStatus {
        const this: *IIsolatedWindowsEnvironmentCreateResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentCreateResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getEnvironment(self: *@This()) core.HResult!*IsolatedWindowsEnvironment {
        const this: *IIsolatedWindowsEnvironmentCreateResult = @ptrCast(self);
        return try this.getEnvironment();
    }
    pub fn ChangeCreationPriority(self: *@This(), priority: IsolatedWindowsEnvironmentCreationPriority) core.HResult!void {
        var this: ?*IIsolatedWindowsEnvironmentCreateResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentCreateResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ChangeCreationPriority(priority);
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentCreateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentCreateResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentCreateResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentCreateResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentCreateStatus = enum(i32) {
    Success = 0,
    FailureByPolicy = 1,
    UnknownFailure = 2,
};
pub const IsolatedWindowsEnvironmentCreationPriority = enum(i32) {
    Low = 0,
    Normal = 1,
};
pub const IsolatedWindowsEnvironmentFile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *IIsolatedWindowsEnvironmentFile = @ptrCast(self);
        return try this.getId();
    }
    pub fn getHostPath(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironmentFile = @ptrCast(self);
        return try this.getHostPath();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentFile = @ptrCast(self);
        return try this.Close();
    }
    pub fn getGuestPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IIsolatedWindowsEnvironmentFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGuestPath();
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var this: ?*IIsolatedWindowsEnvironmentFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadOnly();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentFile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentFile.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentFile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentFile.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentHost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsReady() core.HResult!bool {
        const _f = @This().IIsolatedWindowsEnvironmentHostStaticsCache.get();
        return try _f.getIsReady();
    }
    pub fn getHostErrors() core.HResult!*IVectorView(IsolatedWindowsEnvironmentHostError) {
        const _f = @This().IIsolatedWindowsEnvironmentHostStaticsCache.get();
        return try _f.getHostErrors();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IIsolatedWindowsEnvironmentHostStaticsCache: FactoryCache(IIsolatedWindowsEnvironmentHostStatics, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentHostError = enum(i32) {
    AdminPolicyIsDisabledOrNotPresent = 0,
    FeatureNotInstalled = 1,
    HardwareRequirementsNotMet = 2,
    RebootRequired = 3,
    UnknownError = 4,
};
pub const IsolatedWindowsEnvironmentLaunchFileResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentLaunchFileStatus {
        const this: *IIsolatedWindowsEnvironmentLaunchFileResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentLaunchFileResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getFile(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentFile {
        const this: *IIsolatedWindowsEnvironmentLaunchFileResult = @ptrCast(self);
        return try this.getFile();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentLaunchFileResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentLaunchFileResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentLaunchFileResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentLaunchFileResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentLaunchFileStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    EnvironmentUnavailable = 2,
    FileNotFound = 3,
    TimedOut = 4,
    AlreadySharedWithConflictingOptions = 5,
};
pub const IsolatedWindowsEnvironmentOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnvironmentOwnerId(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getEnvironmentOwnerId();
    }
    pub fn putEnvironmentOwnerId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putEnvironmentOwnerId(value);
    }
    pub fn getAllowedClipboardFormats(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAllowedClipboardFormats {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getAllowedClipboardFormats();
    }
    pub fn putAllowedClipboardFormats(self: *@This(), value: IsolatedWindowsEnvironmentAllowedClipboardFormats) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putAllowedClipboardFormats(value);
    }
    pub fn getClipboardCopyPasteDirections(self: *@This()) core.HResult!IsolatedWindowsEnvironmentClipboardCopyPasteDirections {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getClipboardCopyPasteDirections();
    }
    pub fn putClipboardCopyPasteDirections(self: *@This(), value: IsolatedWindowsEnvironmentClipboardCopyPasteDirections) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putClipboardCopyPasteDirections(value);
    }
    pub fn getAvailablePrinters(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAvailablePrinters {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getAvailablePrinters();
    }
    pub fn putAvailablePrinters(self: *@This(), value: IsolatedWindowsEnvironmentAvailablePrinters) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putAvailablePrinters(value);
    }
    pub fn getSharedHostFolderPath(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getSharedHostFolderPath();
    }
    pub fn getSharedFolderNameInEnvironment(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getSharedFolderNameInEnvironment();
    }
    pub fn ShareHostFolderForUntrustedItems(self: *@This(), SharedHostFolderPath: HSTRING, ShareFolderNameInEnvironment: HSTRING) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.ShareHostFolderForUntrustedItems(SharedHostFolderPath, ShareFolderNameInEnvironment);
    }
    pub fn getPersistUserProfile(self: *@This()) core.HResult!bool {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getPersistUserProfile();
    }
    pub fn putPersistUserProfile(self: *@This(), value: bool) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putPersistUserProfile(value);
    }
    pub fn getAllowGraphicsHardwareAcceleration(self: *@This()) core.HResult!bool {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getAllowGraphicsHardwareAcceleration();
    }
    pub fn putAllowGraphicsHardwareAcceleration(self: *@This(), value: bool) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putAllowGraphicsHardwareAcceleration(value);
    }
    pub fn getAllowCameraAndMicrophoneAccess(self: *@This()) core.HResult!bool {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.getAllowCameraAndMicrophoneAccess();
    }
    pub fn putAllowCameraAndMicrophoneAccess(self: *@This(), value: bool) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentOptions = @ptrCast(self);
        return try this.putAllowCameraAndMicrophoneAccess(value);
    }
    pub fn getWindowAnnotationOverride(self: *@This()) core.HResult!HSTRING {
        var this: ?*IIsolatedWindowsEnvironmentOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWindowAnnotationOverride();
    }
    pub fn putWindowAnnotationOverride(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IIsolatedWindowsEnvironmentOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWindowAnnotationOverride(value);
    }
    pub fn getAllowedClipboardFormatsToEnvironment(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAllowedClipboardFormats {
        var this: ?*IIsolatedWindowsEnvironmentOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowedClipboardFormatsToEnvironment();
    }
    pub fn putAllowedClipboardFormatsToEnvironment(self: *@This(), value: IsolatedWindowsEnvironmentAllowedClipboardFormats) core.HResult!void {
        var this: ?*IIsolatedWindowsEnvironmentOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowedClipboardFormatsToEnvironment(value);
    }
    pub fn getAllowedClipboardFormatsToHost(self: *@This()) core.HResult!IsolatedWindowsEnvironmentAllowedClipboardFormats {
        var this: ?*IIsolatedWindowsEnvironmentOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowedClipboardFormatsToHost();
    }
    pub fn putAllowedClipboardFormatsToHost(self: *@This(), value: IsolatedWindowsEnvironmentAllowedClipboardFormats) core.HResult!void {
        var this: ?*IIsolatedWindowsEnvironmentOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowedClipboardFormatsToHost(value);
    }
    pub fn getCreationPriority(self: *@This()) core.HResult!IsolatedWindowsEnvironmentCreationPriority {
        var this: ?*IIsolatedWindowsEnvironmentOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCreationPriority();
    }
    pub fn putCreationPriority(self: *@This(), value: IsolatedWindowsEnvironmentCreationPriority) core.HResult!void {
        var this: ?*IIsolatedWindowsEnvironmentOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCreationPriority(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIsolatedWindowsEnvironmentOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentOptions.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentOwnerRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Register(ownerName: HSTRING, ownerRegistrationData: *IsolatedWindowsEnvironmentOwnerRegistrationData) core.HResult!*IsolatedWindowsEnvironmentOwnerRegistrationResult {
        const _f = @This().IIsolatedWindowsEnvironmentOwnerRegistrationStaticsCache.get();
        return try _f.Register(ownerName, ownerRegistrationData);
    }
    pub fn Unregister(ownerName: HSTRING) core.HResult!void {
        const _f = @This().IIsolatedWindowsEnvironmentOwnerRegistrationStaticsCache.get();
        return try _f.Unregister(ownerName);
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentOwnerRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IIsolatedWindowsEnvironmentOwnerRegistrationStaticsCache: FactoryCache(IIsolatedWindowsEnvironmentOwnerRegistrationStatics, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentOwnerRegistrationData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShareableFolders(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIsolatedWindowsEnvironmentOwnerRegistrationData = @ptrCast(self);
        return try this.getShareableFolders();
    }
    pub fn getProcessesRunnableAsSystem(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIsolatedWindowsEnvironmentOwnerRegistrationData = @ptrCast(self);
        return try this.getProcessesRunnableAsSystem();
    }
    pub fn getProcessesRunnableAsUser(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIsolatedWindowsEnvironmentOwnerRegistrationData = @ptrCast(self);
        return try this.getProcessesRunnableAsUser();
    }
    pub fn getActivationFileExtensions(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIsolatedWindowsEnvironmentOwnerRegistrationData = @ptrCast(self);
        return try this.getActivationFileExtensions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIsolatedWindowsEnvironmentOwnerRegistrationData.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentOwnerRegistrationData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentOwnerRegistrationData.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentOwnerRegistrationData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentOwnerRegistrationData.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentOwnerRegistrationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentOwnerRegistrationStatus {
        const this: *IIsolatedWindowsEnvironmentOwnerRegistrationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentOwnerRegistrationResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentOwnerRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentOwnerRegistrationResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentOwnerRegistrationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentOwnerRegistrationResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentOwnerRegistrationStatus = enum(i32) {
    Success = 0,
    InvalidArgument = 1,
    AccessDenied = 2,
    InsufficientMemory = 3,
    UnknownFailure = 4,
};
pub const IsolatedWindowsEnvironmentPostMessageResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentPostMessageStatus {
        const this: *IIsolatedWindowsEnvironmentPostMessageResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentPostMessageResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentPostMessageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentPostMessageResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentPostMessageResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentPostMessageResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentPostMessageStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    EnvironmentUnavailable = 2,
};
pub const IsolatedWindowsEnvironmentProcess = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!IsolatedWindowsEnvironmentProcessState {
        const this: *IIsolatedWindowsEnvironmentProcess = @ptrCast(self);
        return try this.getState();
    }
    pub fn getExitCode(self: *@This()) core.HResult!u32 {
        const this: *IIsolatedWindowsEnvironmentProcess = @ptrCast(self);
        return try this.getExitCode();
    }
    pub fn WaitForExit(self: *@This()) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentProcess = @ptrCast(self);
        return try this.WaitForExit();
    }
    pub fn WaitForExitWithTimeout(self: *@This(), timeoutMilliseconds: u32) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentProcess = @ptrCast(self);
        return try this.WaitForExitWithTimeout(timeoutMilliseconds);
    }
    pub fn WaitForExitAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IIsolatedWindowsEnvironmentProcess = @ptrCast(self);
        return try this.WaitForExitAsync();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentProcess";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentProcess.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentProcess.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentProcess.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentProcessState = enum(i32) {
    Running = 1,
    Aborted = 2,
    Completed = 3,
};
pub const IsolatedWindowsEnvironmentProgressState = enum(i32) {
    Queued = 0,
    Processing = 1,
    Completed = 2,
    Creating = 3,
    Retrying = 4,
    Starting = 5,
    Finalizing = 6,
};
pub const IsolatedWindowsEnvironmentShareFileRequestOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowWrite(self: *@This()) core.HResult!bool {
        const this: *IIsolatedWindowsEnvironmentShareFileRequestOptions = @ptrCast(self);
        return try this.getAllowWrite();
    }
    pub fn putAllowWrite(self: *@This(), value: bool) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentShareFileRequestOptions = @ptrCast(self);
        return try this.putAllowWrite(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIsolatedWindowsEnvironmentShareFileRequestOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentShareFileRequestOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentShareFileRequestOptions.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentShareFileRequestOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentShareFileRequestOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentShareFileResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentShareFileStatus {
        const this: *IIsolatedWindowsEnvironmentShareFileResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentShareFileResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getFile(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentFile {
        const this: *IIsolatedWindowsEnvironmentShareFileResult = @ptrCast(self);
        return try this.getFile();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentShareFileResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentShareFileResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentShareFileResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentShareFileResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentShareFileStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    EnvironmentUnavailable = 2,
    AlreadySharedWithConflictingOptions = 3,
    FileNotFound = 4,
    AccessDenied = 5,
};
pub const IsolatedWindowsEnvironmentShareFolderRequestOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowWrite(self: *@This()) core.HResult!bool {
        const this: *IIsolatedWindowsEnvironmentShareFolderRequestOptions = @ptrCast(self);
        return try this.getAllowWrite();
    }
    pub fn putAllowWrite(self: *@This(), value: bool) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentShareFolderRequestOptions = @ptrCast(self);
        return try this.putAllowWrite(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIsolatedWindowsEnvironmentShareFolderRequestOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentShareFolderRequestOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentShareFolderRequestOptions.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentShareFolderRequestOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentShareFolderRequestOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentShareFolderResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentShareFolderStatus {
        const this: *IIsolatedWindowsEnvironmentShareFolderResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentShareFolderResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentShareFolderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentShareFolderResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentShareFolderResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentShareFolderResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentShareFolderStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    EnvironmentUnavailable = 2,
    FolderNotFound = 3,
    AccessDenied = 4,
};
pub const IsolatedWindowsEnvironmentSignInProgress = enum(i32) {
    Connecting = 0,
    Connected = 1,
    Authenticating = 2,
    SettingUpAccount = 3,
    Finalizing = 4,
    Completed = 5,
};
pub const IsolatedWindowsEnvironmentStartProcessResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!IsolatedWindowsEnvironmentStartProcessStatus {
        const this: *IIsolatedWindowsEnvironmentStartProcessResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIsolatedWindowsEnvironmentStartProcessResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getProcess(self: *@This()) core.HResult!*IsolatedWindowsEnvironmentProcess {
        const this: *IIsolatedWindowsEnvironmentStartProcessResult = @ptrCast(self);
        return try this.getProcess();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentStartProcessResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentStartProcessResult.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentStartProcessResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentStartProcessResult.SIGNATURE);
};
pub const IsolatedWindowsEnvironmentStartProcessStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    EnvironmentUnavailable = 2,
    FileNotFound = 3,
    AppNotRegistered = 4,
};
pub const IsolatedWindowsEnvironmentTelemetryParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        const this: *IIsolatedWindowsEnvironmentTelemetryParameters = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub fn putCorrelationId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IIsolatedWindowsEnvironmentTelemetryParameters = @ptrCast(self);
        return try this.putCorrelationId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIsolatedWindowsEnvironmentTelemetryParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentTelemetryParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentTelemetryParameters.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentTelemetryParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentTelemetryParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IsolatedWindowsEnvironmentUserInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnvironmentUserSid(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironmentUserInfo = @ptrCast(self);
        return try this.getEnvironmentUserSid();
    }
    pub fn getEnvironmentUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IIsolatedWindowsEnvironmentUserInfo = @ptrCast(self);
        return try this.getEnvironmentUserName();
    }
    pub fn TryWaitForSignInAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IIsolatedWindowsEnvironmentUserInfo = @ptrCast(self);
        return try this.TryWaitForSignInAsync();
    }
    pub fn TryWaitForSignInWithProgressAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(bool,IsolatedWindowsEnvironmentSignInProgress) {
        var this: ?*IIsolatedWindowsEnvironmentUserInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIsolatedWindowsEnvironmentUserInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryWaitForSignInWithProgressAsync();
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsEnvironmentUserInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIsolatedWindowsEnvironmentUserInfo.GUID;
    pub const IID: Guid = IIsolatedWindowsEnvironmentUserInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIsolatedWindowsEnvironmentUserInfo.SIGNATURE);
};
pub const IsolatedWindowsHostMessenger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RegisterHostMessageReceiver(receiverId: *Guid, hostMessageReceivedCallback: *HostMessageReceivedCallback) core.HResult!void {
        const _f = @This().IIsolatedWindowsHostMessengerStatics2Cache.get();
        return try _f.RegisterHostMessageReceiver(receiverId, hostMessageReceivedCallback);
    }
    pub fn UnregisterHostMessageReceiver(receiverId: *Guid) core.HResult!void {
        const _f = @This().IIsolatedWindowsHostMessengerStatics2Cache.get();
        return try _f.UnregisterHostMessageReceiver(receiverId);
    }
    pub fn PostMessageToReceiver(receiverId: *Guid, message: *IVectorView(IInspectable)) core.HResult!void {
        const _f = @This().IIsolatedWindowsHostMessengerStaticsCache.get();
        return try _f.PostMessageToReceiver(receiverId, message);
    }
    pub fn GetFileId(filePath: HSTRING) core.HResult!*Guid {
        const _f = @This().IIsolatedWindowsHostMessengerStaticsCache.get();
        return try _f.GetFileId(filePath);
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.IsolatedWindowsHostMessenger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IIsolatedWindowsHostMessengerStatics2Cache: FactoryCache(IIsolatedWindowsHostMessengerStatics2, RUNTIME_NAME) = .{};
    var _IIsolatedWindowsHostMessengerStaticsCache: FactoryCache(IIsolatedWindowsHostMessengerStatics, RUNTIME_NAME) = .{};
};
pub const MessageReceivedCallback = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, receiverId, message);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Security.Isolation.MessageReceivedCallback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5b4c8ff-1d9d-4995-9fea-4d15257c0757";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, receiverId: *Guid, message: *IVectorView(IInspectable)) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAgileObject = @import("../root.zig").IAgileObject;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
