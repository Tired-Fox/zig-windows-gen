pub const ComponentRenewal = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RenewSystemComponentsAsync(information: *RevocationAndRenewalInformation) core.HResult!*IAsyncOperationWithProgress(RenewalStatus,u32) {
        const _f = @This().IComponentRenewalStaticsCache.get();
        return try _f.RenewSystemComponentsAsync(information);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.ComponentRenewal";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IComponentRenewalStaticsCache: FactoryCache(IComponentRenewalStatics, RUNTIME_NAME) = .{};
};
pub const IComponentRenewalStatics = extern struct {
    vtable: *const VTable,
    pub fn RenewSystemComponentsAsync(self: *@This(), information: *RevocationAndRenewalInformation) core.HResult!*IAsyncOperationWithProgress(RenewalStatus,u32) {
        var _r: *IAsyncOperationWithProgress(RenewalStatus,u32) = undefined;
        const _c = self.vtable.RenewSystemComponentsAsync(@ptrCast(self), information, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IComponentRenewalStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ffbcd67-b795-48c5-8b7b-a7c4efe202e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RenewSystemComponentsAsync: *const fn(self: *anyopaque, information: *RevocationAndRenewalInformation, _r: **IAsyncOperationWithProgress(RenewalStatus,u32)) callconv(.winapi) HRESULT,
    };
};
pub const RenewalStatus = enum(i32) {
    NotStarted = 0,
    UpdatesInProgress = 1,
    UserCancelled = 2,
    AppComponentsMayNeedUpdating = 3,
    NoComponentsFound = 4,
};
pub const ComponentLoadFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInformation(self: *@This()) core.HResult!*RevocationAndRenewalInformation {
        const this: *IComponentLoadFailedEventArgs = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn getCompletion(self: *@This()) core.HResult!*MediaProtectionServiceCompletion {
        const this: *IComponentLoadFailedEventArgs = @ptrCast(self);
        return try this.getCompletion();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.ComponentLoadFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IComponentLoadFailedEventArgs.GUID;
    pub const IID: Guid = IComponentLoadFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IComponentLoadFailedEventArgs.SIGNATURE);
};
pub const ComponentLoadFailedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *MediaProtectionManager, e: *ComponentLoadFailedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *MediaProtectionManager, e: *ComponentLoadFailedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *MediaProtectionManager, e: *ComponentLoadFailedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.ComponentLoadFailedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95da643c-6db9-424b-86ca-091af432081c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *MediaProtectionManager, e: *ComponentLoadFailedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const GraphicsTrustStatus = enum(i32) {
    TrustNotRequired = 0,
    TrustEstablished = 1,
    EnvironmentNotSupported = 2,
    DriverNotSupported = 3,
    DriverSigningFailure = 4,
    UnknownFailure = 5,
};
pub const HdcpProtection = enum(i32) {
    Off = 0,
    On = 1,
    OnWithTypeEnforcement = 2,
};
pub const HdcpSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsEffectiveProtectionAtLeast(self: *@This(), protection: HdcpProtection) core.HResult!bool {
        const this: *IHdcpSession = @ptrCast(self);
        return try this.IsEffectiveProtectionAtLeast(protection);
    }
    pub fn GetEffectiveProtection(self: *@This()) core.HResult!*IReference(HdcpProtection) {
        const this: *IHdcpSession = @ptrCast(self);
        return try this.GetEffectiveProtection();
    }
    pub fn SetDesiredMinProtectionAsync(self: *@This(), protection: HdcpProtection) core.HResult!*IAsyncOperation(HdcpSetProtectionResult) {
        const this: *IHdcpSession = @ptrCast(self);
        return try this.SetDesiredMinProtectionAsync(protection);
    }
    pub fn addProtectionChanged(self: *@This(), handler: *TypedEventHandler(HdcpSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IHdcpSession = @ptrCast(self);
        return try this.addProtectionChanged(handler);
    }
    pub fn removeProtectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHdcpSession = @ptrCast(self);
        return try this.removeProtectionChanged(token);
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
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHdcpSession.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.HdcpSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHdcpSession.GUID;
    pub const IID: Guid = IHdcpSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHdcpSession.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const HdcpSetProtectionResult = enum(i32) {
    Success = 0,
    TimedOut = 1,
    NotSupported = 2,
    UnknownFailure = 3,
};
pub const IComponentLoadFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInformation(self: *@This()) core.HResult!*RevocationAndRenewalInformation {
        var _r: *RevocationAndRenewalInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompletion(self: *@This()) core.HResult!*MediaProtectionServiceCompletion {
        var _r: *MediaProtectionServiceCompletion = undefined;
        const _c = self.vtable.get_Completion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IComponentLoadFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95972e93-7746-417e-8495-f031bbc5862c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **RevocationAndRenewalInformation) callconv(.winapi) HRESULT,
        get_Completion: *const fn(self: *anyopaque, _r: **MediaProtectionServiceCompletion) callconv(.winapi) HRESULT,
    };
};
pub const IHdcpSession = extern struct {
    vtable: *const VTable,
    pub fn IsEffectiveProtectionAtLeast(self: *@This(), protection: HdcpProtection) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEffectiveProtectionAtLeast(@ptrCast(self), protection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEffectiveProtection(self: *@This()) core.HResult!*IReference(HdcpProtection) {
        var _r: *IReference(HdcpProtection) = undefined;
        const _c = self.vtable.GetEffectiveProtection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDesiredMinProtectionAsync(self: *@This(), protection: HdcpProtection) core.HResult!*IAsyncOperation(HdcpSetProtectionResult) {
        var _r: *IAsyncOperation(HdcpSetProtectionResult) = undefined;
        const _c = self.vtable.SetDesiredMinProtectionAsync(@ptrCast(self), protection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addProtectionChanged(self: *@This(), handler: *TypedEventHandler(HdcpSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProtectionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProtectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProtectionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IHdcpSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "718845e9-64d7-426d-809b-1be461941a2a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsEffectiveProtectionAtLeast: *const fn(self: *anyopaque, protection: HdcpProtection, _r: *bool) callconv(.winapi) HRESULT,
        GetEffectiveProtection: *const fn(self: *anyopaque, _r: **IReference(HdcpProtection)) callconv(.winapi) HRESULT,
        SetDesiredMinProtectionAsync: *const fn(self: *anyopaque, protection: HdcpProtection, _r: **IAsyncOperation(HdcpSetProtectionResult)) callconv(.winapi) HRESULT,
        add_ProtectionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(HdcpSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProtectionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProtectionManager = extern struct {
    vtable: *const VTable,
    pub fn addServiceRequested(self: *@This(), handler: *ServiceRequestedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServiceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServiceRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServiceRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRebootNeeded(self: *@This(), handler: *RebootNeededEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RebootNeeded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRebootNeeded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RebootNeeded(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addComponentLoadFailed(self: *@This(), handler: *ComponentLoadFailedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ComponentLoadFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeComponentLoadFailed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ComponentLoadFailed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IMediaProtectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45694947-c741-434b-a79e-474c12d93d2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ServiceRequested: *const fn(self: *anyopaque, handler: *ServiceRequestedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServiceRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RebootNeeded: *const fn(self: *anyopaque, handler: *RebootNeededEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RebootNeeded: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ComponentLoadFailed: *const fn(self: *anyopaque, handler: *ComponentLoadFailedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ComponentLoadFailed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProtectionPMPServer = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IMediaProtectionPMPServer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c111226-7b26-4d31-95bb-9c1b08ef7fc0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProtectionPMPServerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreatePMPServer(self: *@This(), pProperties: *IPropertySet) core.HResult!*MediaProtectionPMPServer {
        var _r: *MediaProtectionPMPServer = undefined;
        const _c = self.vtable.CreatePMPServer(@ptrCast(self), pProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IMediaProtectionPMPServerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "602c8e5e-f7d2-487e-af91-dbc4252b2182";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePMPServer: *const fn(self: *anyopaque, pProperties: *IPropertySet, _r: **MediaProtectionPMPServer) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProtectionServiceCompletion = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This(), success: bool) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self), success);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IMediaProtectionServiceCompletion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b5cca18-cfd5-44ee-a2ed-df76010c14b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque, success: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProtectionServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ProtectionSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IMediaProtectionServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1de0ea6-2094-478d-87a4-8b95200f85c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtectionSystem: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IProtectionCapabilities = extern struct {
    vtable: *const VTable,
    pub fn IsTypeSupported(self: *@This(), ty: HSTRING, keySystem: HSTRING) core.HResult!ProtectionCapabilityResult {
        var _r: ProtectionCapabilityResult = undefined;
        const _c = self.vtable.IsTypeSupported(@ptrCast(self), ty, keySystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IProtectionCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7ac5d7e-7480-4d29-a464-7bcd913dd8e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsTypeSupported: *const fn(self: *anyopaque, ty: HSTRING, keySystem: HSTRING, _r: *ProtectionCapabilityResult) callconv(.winapi) HRESULT,
    };
};
pub const IRevocationAndRenewalInformation = extern struct {
    vtable: *const VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVector(RevocationAndRenewalItem) {
        var _r: *IVector(RevocationAndRenewalItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IRevocationAndRenewalInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3a1937b-2501-439e-a6e7-6fc95e175fcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(RevocationAndRenewalItem)) callconv(.winapi) HRESULT,
    };
};
pub const IRevocationAndRenewalItem = extern struct {
    vtable: *const VTable,
    pub fn getReasons(self: *@This()) core.HResult!RevocationAndRenewalReasons {
        var _r: RevocationAndRenewalReasons = undefined;
        const _c = self.vtable.get_Reasons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderHash(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HeaderHash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicKeyHash(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicKeyHash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRenewalId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RenewalId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IRevocationAndRenewalItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3099c20c-3cf0-49ea-902d-caf32d2dde2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reasons: *const fn(self: *anyopaque, _r: *RevocationAndRenewalReasons) callconv(.winapi) HRESULT,
        get_HeaderHash: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicKeyHash: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RenewalId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IServiceRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*IMediaProtectionServiceRequest {
        var _r: *IMediaProtectionServiceRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompletion(self: *@This()) core.HResult!*MediaProtectionServiceCompletion {
        var _r: *MediaProtectionServiceCompletion = undefined;
        const _c = self.vtable.get_Completion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IServiceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34283baf-abb4-4fc1-bd89-93f106573a49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **IMediaProtectionServiceRequest) callconv(.winapi) HRESULT,
        get_Completion: *const fn(self: *anyopaque, _r: **MediaProtectionServiceCompletion) callconv(.winapi) HRESULT,
    };
};
pub const IServiceRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getMediaPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_MediaPlaybackItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.IServiceRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "553c69d6-fafe-4128-8dfa-130e398a13a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaPlaybackItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const MediaProtectionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addServiceRequested(self: *@This(), handler: *ServiceRequestedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.addServiceRequested(handler);
    }
    pub fn removeServiceRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.removeServiceRequested(cookie);
    }
    pub fn addRebootNeeded(self: *@This(), handler: *RebootNeededEventHandler) core.HResult!EventRegistrationToken {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.addRebootNeeded(handler);
    }
    pub fn removeRebootNeeded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.removeRebootNeeded(cookie);
    }
    pub fn addComponentLoadFailed(self: *@This(), handler: *ComponentLoadFailedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.addComponentLoadFailed(handler);
    }
    pub fn removeComponentLoadFailed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.removeComponentLoadFailed(cookie);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IMediaProtectionManager = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaProtectionManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.MediaProtectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaProtectionManager.GUID;
    pub const IID: Guid = IMediaProtectionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaProtectionManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaProtectionPMPServer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IMediaProtectionPMPServer = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreatePMPServer(pProperties: *IPropertySet) core.HResult!*MediaProtectionPMPServer {
        const _f = @This().IMediaProtectionPMPServerFactoryCache.get();
        return try _f.CreatePMPServer(pProperties);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.MediaProtectionPMPServer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaProtectionPMPServer.GUID;
    pub const IID: Guid = IMediaProtectionPMPServer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaProtectionPMPServer.SIGNATURE);
    var _IMediaProtectionPMPServerFactoryCache: FactoryCache(IMediaProtectionPMPServerFactory, RUNTIME_NAME) = .{};
};
pub const MediaProtectionServiceCompletion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This(), success: bool) core.HResult!void {
        const this: *IMediaProtectionServiceCompletion = @ptrCast(self);
        return try this.Complete(success);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.MediaProtectionServiceCompletion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaProtectionServiceCompletion.GUID;
    pub const IID: Guid = IMediaProtectionServiceCompletion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaProtectionServiceCompletion.SIGNATURE);
};
pub const ProtectionCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsTypeSupported(self: *@This(), ty: HSTRING, keySystem: HSTRING) core.HResult!ProtectionCapabilityResult {
        const this: *IProtectionCapabilities = @ptrCast(self);
        return try this.IsTypeSupported(ty, keySystem);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IProtectionCapabilities.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.ProtectionCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtectionCapabilities.GUID;
    pub const IID: Guid = IProtectionCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtectionCapabilities.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ProtectionCapabilityResult = enum(i32) {
    NotSupported = 0,
    Maybe = 1,
    Probably = 2,
};
pub const RebootNeededEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *MediaProtectionManager) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *MediaProtectionManager) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *MediaProtectionManager) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.RebootNeededEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64e12a45-973b-4a3a-b260-91898a49a82c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *MediaProtectionManager) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RevocationAndRenewalInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVector(RevocationAndRenewalItem) {
        const this: *IRevocationAndRenewalInformation = @ptrCast(self);
        return try this.getItems();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.RevocationAndRenewalInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRevocationAndRenewalInformation.GUID;
    pub const IID: Guid = IRevocationAndRenewalInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRevocationAndRenewalInformation.SIGNATURE);
};
pub const RevocationAndRenewalItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReasons(self: *@This()) core.HResult!RevocationAndRenewalReasons {
        const this: *IRevocationAndRenewalItem = @ptrCast(self);
        return try this.getReasons();
    }
    pub fn getHeaderHash(self: *@This()) core.HResult!HSTRING {
        const this: *IRevocationAndRenewalItem = @ptrCast(self);
        return try this.getHeaderHash();
    }
    pub fn getPublicKeyHash(self: *@This()) core.HResult!HSTRING {
        const this: *IRevocationAndRenewalItem = @ptrCast(self);
        return try this.getPublicKeyHash();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IRevocationAndRenewalItem = @ptrCast(self);
        return try this.getName();
    }
    pub fn getRenewalId(self: *@This()) core.HResult!HSTRING {
        const this: *IRevocationAndRenewalItem = @ptrCast(self);
        return try this.getRenewalId();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.RevocationAndRenewalItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRevocationAndRenewalItem.GUID;
    pub const IID: Guid = IRevocationAndRenewalItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRevocationAndRenewalItem.SIGNATURE);
};
pub const RevocationAndRenewalReasons = enum(i32) {
    UserModeComponentLoad = 1,
    KernelModeComponentLoad = 2,
    AppComponent = 4,
    GlobalRevocationListLoadFailed = 16,
    InvalidGlobalRevocationListSignature = 32,
    GlobalRevocationListAbsent = 4096,
    ComponentRevoked = 8192,
    InvalidComponentCertificateExtendedKeyUse = 16384,
    ComponentCertificateRevoked = 32768,
    InvalidComponentCertificateRoot = 65536,
    ComponentHighSecurityCertificateRevoked = 131072,
    ComponentLowSecurityCertificateRevoked = 262144,
    BootDriverVerificationFailed = 1048576,
    ComponentSignedWithTestCertificate = 16777216,
    EncryptionFailure = 268435456,
};
pub const ServiceRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*IMediaProtectionServiceRequest {
        const this: *IServiceRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn getCompletion(self: *@This()) core.HResult!*MediaProtectionServiceCompletion {
        const this: *IServiceRequestedEventArgs = @ptrCast(self);
        return try this.getCompletion();
    }
    pub fn getMediaPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var this: ?*IServiceRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IServiceRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMediaPlaybackItem();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.ServiceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServiceRequestedEventArgs.GUID;
    pub const IID: Guid = IServiceRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServiceRequestedEventArgs.SIGNATURE);
};
pub const ServiceRequestedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *MediaProtectionManager, e: *ServiceRequestedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *MediaProtectionManager, e: *ServiceRequestedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *MediaProtectionManager, e: *ServiceRequestedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.ServiceRequestedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2d690ba-cac9-48e1-95c0-d38495a84055";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *MediaProtectionManager, e: *ServiceRequestedEventArgs) callconv(.winapi) HRESULT
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
const MediaPlaybackItem = @import("./Playback.zig").MediaPlaybackItem;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IAgileObject = @import("../root.zig").IAgileObject;
const IReference = @import("../Foundation.zig").IReference;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
pub const PlayReady = @import("./Protection/PlayReady.zig");
