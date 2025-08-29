pub const AddPagesEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintTaskOptions(self: *@This()) core.HResult!*PrintTaskOptions {
        const this: *IAddPagesEventArgs = @ptrCast(self);
        return try this.getPrintTaskOptions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAddPagesEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.AddPagesEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAddPagesEventArgs.GUID;
    pub const IID: Guid = IAddPagesEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAddPagesEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AddPagesEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *AddPagesEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *AddPagesEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *AddPagesEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.AddPagesEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4b57970-57a0-4209-847c-c093b54bc729";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *AddPagesEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const GetPreviewPageEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPageNumber(self: *@This()) core.HResult!i32 {
        const this: *IGetPreviewPageEventArgs = @ptrCast(self);
        return try this.getPageNumber();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGetPreviewPageEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.GetPreviewPageEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGetPreviewPageEventArgs.GUID;
    pub const IID: Guid = IGetPreviewPageEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGetPreviewPageEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GetPreviewPageEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *GetPreviewPageEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *GetPreviewPageEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *GetPreviewPageEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.GetPreviewPageEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccb3e9ed-9c11-4e50-ab49-e98086bbfdef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *GetPreviewPageEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IAddPagesEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPrintTaskOptions(self: *@This()) core.HResult!*PrintTaskOptions {
        var _r: *PrintTaskOptions = undefined;
        const _c = self.vtable.get_PrintTaskOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.IAddPagesEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2e52be5-056c-4420-9795-cb3526ce0c20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintTaskOptions: *const fn(self: *anyopaque, _r: **PrintTaskOptions) callconv(.winapi) HRESULT,
    };
};
pub const IGetPreviewPageEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPageNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PageNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a43d703d-dea9-4df6-a7ed-35049cd485c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PageNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IPaginateEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPrintTaskOptions(self: *@This()) core.HResult!*PrintTaskOptions {
        var _r: *PrintTaskOptions = undefined;
        const _c = self.vtable.get_PrintTaskOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentPreviewPageNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CurrentPreviewPageNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.IPaginateEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed945fd6-79ab-42b7-930a-3d6e09011d21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintTaskOptions: *const fn(self: *anyopaque, _r: **PrintTaskOptions) callconv(.winapi) HRESULT,
        get_CurrentPreviewPageNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintDocument = extern struct {
    vtable: *const VTable,
    pub fn getDocumentSource(self: *@This()) core.HResult!*IPrintDocumentSource {
        var _r: *IPrintDocumentSource = undefined;
        const _c = self.vtable.get_DocumentSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPaginate(self: *@This(), handler: *PaginateEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Paginate(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePaginate(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Paginate(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGetPreviewPage(self: *@This(), handler: *GetPreviewPageEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GetPreviewPage(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGetPreviewPage(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GetPreviewPage(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAddPages(self: *@This(), handler: *AddPagesEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AddPages(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAddPages(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AddPages(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPage(self: *@This(), pageVisual: *UIElement) core.HResult!void {
        const _c = self.vtable.AddPage(@ptrCast(self), pageVisual);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPagesComplete(self: *@This()) core.HResult!void {
        const _c = self.vtable.AddPagesComplete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPreviewPageCount(self: *@This(), count: i32, ty: PreviewPageCountType) core.HResult!void {
        const _c = self.vtable.SetPreviewPageCount(@ptrCast(self), count, ty);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPreviewPage(self: *@This(), pageNumber: i32, pageVisual: *UIElement) core.HResult!void {
        const _c = self.vtable.SetPreviewPage(@ptrCast(self), pageNumber, pageVisual);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InvalidatePreview(self: *@This()) core.HResult!void {
        const _c = self.vtable.InvalidatePreview(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.IPrintDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e44327c3-a999-485b-b1d8-72dc517821e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DocumentSource: *const fn(self: *anyopaque, _r: **IPrintDocumentSource) callconv(.winapi) HRESULT,
        add_Paginate: *const fn(self: *anyopaque, handler: *PaginateEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Paginate: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GetPreviewPage: *const fn(self: *anyopaque, handler: *GetPreviewPageEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GetPreviewPage: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AddPages: *const fn(self: *anyopaque, handler: *AddPagesEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AddPages: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        AddPage: *const fn(self: *anyopaque, pageVisual: *UIElement) callconv(.winapi) HRESULT,
        AddPagesComplete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetPreviewPageCount: *const fn(self: *anyopaque, count: i32, ty: PreviewPageCountType) callconv(.winapi) HRESULT,
        SetPreviewPage: *const fn(self: *anyopaque, pageNumber: i32, pageVisual: *UIElement) callconv(.winapi) HRESULT,
        InvalidatePreview: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintDocumentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PrintDocument {
        var _r: *PrintDocument = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.IPrintDocumentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb87b18f-2606-4a2f-99d4-a7cdbc35d7c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PrintDocument) callconv(.winapi) HRESULT,
    };
};
pub const IPrintDocumentStatics = extern struct {
    vtable: *const VTable,
    pub fn getDocumentSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DocumentSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.IPrintDocumentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd970a3c-b152-49e0-a6bd-6aa6477e43c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DocumentSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const PaginateEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintTaskOptions(self: *@This()) core.HResult!*PrintTaskOptions {
        const this: *IPaginateEventArgs = @ptrCast(self);
        return try this.getPrintTaskOptions();
    }
    pub fn getCurrentPreviewPageNumber(self: *@This()) core.HResult!i32 {
        const this: *IPaginateEventArgs = @ptrCast(self);
        return try this.getCurrentPreviewPageNumber();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaginateEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.PaginateEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaginateEventArgs.GUID;
    pub const IID: Guid = IPaginateEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaginateEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PaginateEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *PaginateEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *PaginateEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *PaginateEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.PaginateEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cc05b61-811b-4a32-9965-13eb78dbb01b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *PaginateEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PreviewPageCountType = enum(i32) {
    Final = 0,
    Intermediate = 1,
};
pub const PrintDocument = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDocumentSource(self: *@This()) core.HResult!*IPrintDocumentSource {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.getDocumentSource();
    }
    pub fn addPaginate(self: *@This(), handler: *PaginateEventHandler) core.HResult!EventRegistrationToken {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.addPaginate(handler);
    }
    pub fn removePaginate(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.removePaginate(token);
    }
    pub fn addGetPreviewPage(self: *@This(), handler: *GetPreviewPageEventHandler) core.HResult!EventRegistrationToken {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.addGetPreviewPage(handler);
    }
    pub fn removeGetPreviewPage(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.removeGetPreviewPage(token);
    }
    pub fn addAddPages(self: *@This(), handler: *AddPagesEventHandler) core.HResult!EventRegistrationToken {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.addAddPages(handler);
    }
    pub fn removeAddPages(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.removeAddPages(token);
    }
    pub fn AddPage(self: *@This(), pageVisual: *UIElement) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.AddPage(pageVisual);
    }
    pub fn AddPagesComplete(self: *@This()) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.AddPagesComplete();
    }
    pub fn SetPreviewPageCount(self: *@This(), count: i32, ty: PreviewPageCountType) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.SetPreviewPageCount(count, ty);
    }
    pub fn SetPreviewPage(self: *@This(), pageNumber: i32, pageVisual: *UIElement) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.SetPreviewPage(pageNumber, pageVisual);
    }
    pub fn InvalidatePreview(self: *@This()) core.HResult!void {
        const this: *IPrintDocument = @ptrCast(self);
        return try this.InvalidatePreview();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DocumentSourceProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPrintDocumentStaticsCache.get();
        return try factory.getDocumentSourceProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PrintDocument {
        const factory = @This().IPrintDocumentFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Printing.PrintDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintDocument.GUID;
    pub const IID: Guid = IPrintDocument.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintDocument.SIGNATURE);
    var _IPrintDocumentStaticsCache: FactoryCache(IPrintDocumentStatics, RUNTIME_NAME) = .{};
    var _IPrintDocumentFactoryCache: FactoryCache(IPrintDocumentFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IAgileObject = @import("../../root.zig").IAgileObject;
const UIElement = @import("../Xaml.zig").UIElement;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const PrintTaskOptions = @import("../../Graphics/Printing.zig").PrintTaskOptions;
const IPrintDocumentSource = @import("../../Graphics/Printing.zig").IPrintDocumentSource;
const HSTRING = @import("../../root.zig").HSTRING;
