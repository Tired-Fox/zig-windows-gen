pub const Direct3D11CaptureFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSurface(self: *@This()) core.HResult!*IDirect3DSurface {
        const this: *IDirect3D11CaptureFrame = @ptrCast(self);
        return try this.getSurface();
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IDirect3D11CaptureFrame = @ptrCast(self);
        return try this.getSystemRelativeTime();
    }
    pub fn getContentSize(self: *@This()) core.HResult!SizeInt32 {
        const this: *IDirect3D11CaptureFrame = @ptrCast(self);
        return try this.getContentSize();
    }
    pub fn getDirtyRegions(self: *@This()) core.HResult!*IVectorView(RectInt32) {
        var this: ?*IDirect3D11CaptureFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDirect3D11CaptureFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDirtyRegions();
    }
    pub fn getDirtyRegionMode(self: *@This()) core.HResult!GraphicsCaptureDirtyRegionMode {
        var this: ?*IDirect3D11CaptureFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDirect3D11CaptureFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDirtyRegionMode();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.Direct3D11CaptureFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDirect3D11CaptureFrame.GUID;
    pub const IID: Guid = IDirect3D11CaptureFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDirect3D11CaptureFrame.SIGNATURE);
};
pub const Direct3D11CaptureFramePool = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Recreate(self: *@This(), device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) core.HResult!void {
        const this: *IDirect3D11CaptureFramePool = @ptrCast(self);
        return try this.Recreate(device, pixelFormat, numberOfBuffers, size);
    }
    pub fn TryGetNextFrame(self: *@This()) core.HResult!*Direct3D11CaptureFrame {
        const this: *IDirect3D11CaptureFramePool = @ptrCast(self);
        return try this.TryGetNextFrame();
    }
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(Direct3D11CaptureFramePool,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDirect3D11CaptureFramePool = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDirect3D11CaptureFramePool = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn CreateCaptureSession(self: *@This(), item: *GraphicsCaptureItem) core.HResult!*GraphicsCaptureSession {
        const this: *IDirect3D11CaptureFramePool = @ptrCast(self);
        return try this.CreateCaptureSession(item);
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        const this: *IDirect3D11CaptureFramePool = @ptrCast(self);
        return try this.getDispatcherQueue();
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
    pub fn Create(device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) core.HResult!*Direct3D11CaptureFramePool {
        const _f = @This().IDirect3D11CaptureFramePoolStaticsCache.get();
        return try _f.Create(device, pixelFormat, numberOfBuffers, size);
    }
    pub fn CreateFreeThreaded(device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) core.HResult!*Direct3D11CaptureFramePool {
        const _f = @This().IDirect3D11CaptureFramePoolStatics2Cache.get();
        return try _f.CreateFreeThreaded(device, pixelFormat, numberOfBuffers, size);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.Direct3D11CaptureFramePool";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDirect3D11CaptureFramePool.GUID;
    pub const IID: Guid = IDirect3D11CaptureFramePool.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDirect3D11CaptureFramePool.SIGNATURE);
    var _IDirect3D11CaptureFramePoolStaticsCache: FactoryCache(IDirect3D11CaptureFramePoolStatics, RUNTIME_NAME) = .{};
    var _IDirect3D11CaptureFramePoolStatics2Cache: FactoryCache(IDirect3D11CaptureFramePoolStatics2, RUNTIME_NAME) = .{};
};
pub const GraphicsCaptureAccess = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAccessAsync(request: GraphicsCaptureAccessKind) core.HResult!*IAsyncOperation(AppCapabilityAccessStatus) {
        const _f = @This().IGraphicsCaptureAccessStaticsCache.get();
        return try _f.RequestAccessAsync(request);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.GraphicsCaptureAccess";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGraphicsCaptureAccessStaticsCache: FactoryCache(IGraphicsCaptureAccessStatics, RUNTIME_NAME) = .{};
};
pub const GraphicsCaptureAccessKind = enum(i32) {
    Borderless = 0,
    Programmatic = 1,
};
pub const GraphicsCaptureDirtyRegionMode = enum(i32) {
    ReportOnly = 0,
    ReportAndRender = 1,
};
pub const GraphicsCaptureItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IGraphicsCaptureItem = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getSize(self: *@This()) core.HResult!SizeInt32 {
        const this: *IGraphicsCaptureItem = @ptrCast(self);
        return try this.getSize();
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(GraphicsCaptureItem,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGraphicsCaptureItem = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGraphicsCaptureItem = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryCreateFromWindowId(windowId: WindowId) core.HResult!*GraphicsCaptureItem {
        const _f = @This().IGraphicsCaptureItemStatics2Cache.get();
        return try _f.TryCreateFromWindowId(windowId);
    }
    pub fn TryCreateFromDisplayId(displayId: DisplayId) core.HResult!*GraphicsCaptureItem {
        const _f = @This().IGraphicsCaptureItemStatics2Cache.get();
        return try _f.TryCreateFromDisplayId(displayId);
    }
    pub fn CreateFromVisual(visual: *Visual) core.HResult!*GraphicsCaptureItem {
        const _f = @This().IGraphicsCaptureItemStaticsCache.get();
        return try _f.CreateFromVisual(visual);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.GraphicsCaptureItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGraphicsCaptureItem.GUID;
    pub const IID: Guid = IGraphicsCaptureItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGraphicsCaptureItem.SIGNATURE);
    var _IGraphicsCaptureItemStatics2Cache: FactoryCache(IGraphicsCaptureItemStatics2, RUNTIME_NAME) = .{};
    var _IGraphicsCaptureItemStaticsCache: FactoryCache(IGraphicsCaptureItemStatics, RUNTIME_NAME) = .{};
};
pub const GraphicsCapturePicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn PickSingleItemAsync(self: *@This()) core.HResult!*IAsyncOperation(GraphicsCaptureItem) {
        const this: *IGraphicsCapturePicker = @ptrCast(self);
        return try this.PickSingleItemAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGraphicsCapturePicker.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.GraphicsCapturePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGraphicsCapturePicker.GUID;
    pub const IID: Guid = IGraphicsCapturePicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGraphicsCapturePicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GraphicsCaptureSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartCapture(self: *@This()) core.HResult!void {
        const this: *IGraphicsCaptureSession = @ptrCast(self);
        return try this.StartCapture();
    }
    pub fn getIsCursorCaptureEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IGraphicsCaptureSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCursorCaptureEnabled();
    }
    pub fn putIsCursorCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGraphicsCaptureSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsCursorCaptureEnabled(value);
    }
    pub fn getIsBorderRequired(self: *@This()) core.HResult!bool {
        var this: ?*IGraphicsCaptureSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBorderRequired();
    }
    pub fn putIsBorderRequired(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGraphicsCaptureSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsBorderRequired(value);
    }
    pub fn getDirtyRegionMode(self: *@This()) core.HResult!GraphicsCaptureDirtyRegionMode {
        var this: ?*IGraphicsCaptureSession4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDirtyRegionMode();
    }
    pub fn putDirtyRegionMode(self: *@This(), value: GraphicsCaptureDirtyRegionMode) core.HResult!void {
        var this: ?*IGraphicsCaptureSession4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDirtyRegionMode(value);
    }
    pub fn getMinUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IGraphicsCaptureSession5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinUpdateInterval();
    }
    pub fn putMinUpdateInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IGraphicsCaptureSession5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMinUpdateInterval(value);
    }
    pub fn getIncludeSecondaryWindows(self: *@This()) core.HResult!bool {
        var this: ?*IGraphicsCaptureSession6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncludeSecondaryWindows();
    }
    pub fn putIncludeSecondaryWindows(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGraphicsCaptureSession6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGraphicsCaptureSession6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncludeSecondaryWindows(value);
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
    pub fn IsSupported() core.HResult!bool {
        const _f = @This().IGraphicsCaptureSessionStaticsCache.get();
        return try _f.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.GraphicsCaptureSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGraphicsCaptureSession.GUID;
    pub const IID: Guid = IGraphicsCaptureSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGraphicsCaptureSession.SIGNATURE);
    var _IGraphicsCaptureSessionStaticsCache: FactoryCache(IGraphicsCaptureSessionStatics, RUNTIME_NAME) = .{};
};
pub const IDirect3D11CaptureFrame = extern struct {
    vtable: *const VTable,
    pub fn getSurface(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.get_Surface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentSize(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_ContentSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IDirect3D11CaptureFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa50c623-38da-4b32-acf3-fa9734ad800e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Surface: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
        get_SystemRelativeTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ContentSize: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
    };
};
pub const IDirect3D11CaptureFrame2 = extern struct {
    vtable: *const VTable,
    pub fn getDirtyRegions(self: *@This()) core.HResult!*IVectorView(RectInt32) {
        var _r: *IVectorView(RectInt32) = undefined;
        const _c = self.vtable.get_DirtyRegions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirtyRegionMode(self: *@This()) core.HResult!GraphicsCaptureDirtyRegionMode {
        var _r: GraphicsCaptureDirtyRegionMode = undefined;
        const _c = self.vtable.get_DirtyRegionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IDirect3D11CaptureFrame2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37869cfa-2b48-5ebf-9afb-dffd805defdb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DirtyRegions: *const fn(self: *anyopaque, _r: **IVectorView(RectInt32)) callconv(.winapi) HRESULT,
        get_DirtyRegionMode: *const fn(self: *anyopaque, _r: *GraphicsCaptureDirtyRegionMode) callconv(.winapi) HRESULT,
    };
};
pub const IDirect3D11CaptureFramePool = extern struct {
    vtable: *const VTable,
    pub fn Recreate(self: *@This(), device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) core.HResult!void {
        const _c = self.vtable.Recreate(@ptrCast(self), device, pixelFormat, numberOfBuffers, size);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryGetNextFrame(self: *@This()) core.HResult!*Direct3D11CaptureFrame {
        var _r: *Direct3D11CaptureFrame = undefined;
        const _c = self.vtable.TryGetNextFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(Direct3D11CaptureFramePool,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateCaptureSession(self: *@This(), item: *GraphicsCaptureItem) core.HResult!*GraphicsCaptureSession {
        var _r: *GraphicsCaptureSession = undefined;
        const _c = self.vtable.CreateCaptureSession(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IDirect3D11CaptureFramePool";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24eb6d22-1975-422e-82e7-780dbd8ddf24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Recreate: *const fn(self: *anyopaque, device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) callconv(.winapi) HRESULT,
        TryGetNextFrame: *const fn(self: *anyopaque, _r: **Direct3D11CaptureFrame) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(Direct3D11CaptureFramePool,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateCaptureSession: *const fn(self: *anyopaque, item: *GraphicsCaptureItem, _r: **GraphicsCaptureSession) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
    };
};
pub const IDirect3D11CaptureFramePoolStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) core.HResult!*Direct3D11CaptureFramePool {
        var _r: *Direct3D11CaptureFramePool = undefined;
        const _c = self.vtable.Create(@ptrCast(self), device, pixelFormat, numberOfBuffers, size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IDirect3D11CaptureFramePoolStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7784056a-67aa-4d53-ae54-1088d5a8ca21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32, _r: **Direct3D11CaptureFramePool) callconv(.winapi) HRESULT,
    };
};
pub const IDirect3D11CaptureFramePoolStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFreeThreaded(self: *@This(), device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32) core.HResult!*Direct3D11CaptureFramePool {
        var _r: *Direct3D11CaptureFramePool = undefined;
        const _c = self.vtable.CreateFreeThreaded(@ptrCast(self), device, pixelFormat, numberOfBuffers, size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IDirect3D11CaptureFramePoolStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "589b103f-6bbc-5df5-a991-02e28b3b66d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFreeThreaded: *const fn(self: *anyopaque, device: *IDirect3DDevice, pixelFormat: DirectXPixelFormat, numberOfBuffers: i32, size: SizeInt32, _r: **Direct3D11CaptureFramePool) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureAccessStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This(), request: GraphicsCaptureAccessKind) core.HResult!*IAsyncOperation(AppCapabilityAccessStatus) {
        var _r: *IAsyncOperation(AppCapabilityAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureAccessStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "743ed370-06ec-5040-a58a-901f0f757095";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, request: GraphicsCaptureAccessKind, _r: **IAsyncOperation(AppCapabilityAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureItem = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(GraphicsCaptureItem,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79c3f95b-31f7-4ec2-a464-632ef5d30760";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(GraphicsCaptureItem,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureItemStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromVisual(self: *@This(), visual: *Visual) core.HResult!*GraphicsCaptureItem {
        var _r: *GraphicsCaptureItem = undefined;
        const _c = self.vtable.CreateFromVisual(@ptrCast(self), visual, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureItemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a87ebea5-457c-5788-ab47-0cf1d3637e74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromVisual: *const fn(self: *anyopaque, visual: *Visual, _r: **GraphicsCaptureItem) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureItemStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryCreateFromWindowId(self: *@This(), windowId: WindowId) core.HResult!*GraphicsCaptureItem {
        var _r: *GraphicsCaptureItem = undefined;
        const _c = self.vtable.TryCreateFromWindowId(@ptrCast(self), windowId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFromDisplayId(self: *@This(), displayId: DisplayId) core.HResult!*GraphicsCaptureItem {
        var _r: *GraphicsCaptureItem = undefined;
        const _c = self.vtable.TryCreateFromDisplayId(@ptrCast(self), displayId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureItemStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b92acc9-e584-5862-bf5c-9c316c6d2dbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateFromWindowId: *const fn(self: *anyopaque, windowId: WindowId, _r: **GraphicsCaptureItem) callconv(.winapi) HRESULT,
        TryCreateFromDisplayId: *const fn(self: *anyopaque, displayId: DisplayId, _r: **GraphicsCaptureItem) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCapturePicker = extern struct {
    vtable: *const VTable,
    pub fn PickSingleItemAsync(self: *@This()) core.HResult!*IAsyncOperation(GraphicsCaptureItem) {
        var _r: *IAsyncOperation(GraphicsCaptureItem) = undefined;
        const _c = self.vtable.PickSingleItemAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCapturePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a1711b3-ad79-4b4a-9336-1318fdde3539";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PickSingleItemAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GraphicsCaptureItem)) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSession = extern struct {
    vtable: *const VTable,
    pub fn StartCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "814e42a9-f70f-4ad7-939b-fddcc6eb880d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSession2 = extern struct {
    vtable: *const VTable,
    pub fn getIsCursorCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCursorCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCursorCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCursorCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c39ae40-7d2e-5044-804e-8b6799d4cf9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCursorCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCursorCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSession3 = extern struct {
    vtable: *const VTable,
    pub fn getIsBorderRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBorderRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsBorderRequired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsBorderRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSession3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2cdd966-22ae-5ea1-9596-3a289344c3be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBorderRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsBorderRequired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSession4 = extern struct {
    vtable: *const VTable,
    pub fn getDirtyRegionMode(self: *@This()) core.HResult!GraphicsCaptureDirtyRegionMode {
        var _r: GraphicsCaptureDirtyRegionMode = undefined;
        const _c = self.vtable.get_DirtyRegionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDirtyRegionMode(self: *@This(), value: GraphicsCaptureDirtyRegionMode) core.HResult!void {
        const _c = self.vtable.put_DirtyRegionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSession4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae99813c-c257-5759-8ed0-668c9b557ed4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DirtyRegionMode: *const fn(self: *anyopaque, _r: *GraphicsCaptureDirtyRegionMode) callconv(.winapi) HRESULT,
        put_DirtyRegionMode: *const fn(self: *anyopaque, value: GraphicsCaptureDirtyRegionMode) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSession5 = extern struct {
    vtable: *const VTable,
    pub fn getMinUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinUpdateInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinUpdateInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_MinUpdateInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSession5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67c0ea62-1f85-5061-925a-239be0ac09cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinUpdateInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_MinUpdateInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSession6 = extern struct {
    vtable: *const VTable,
    pub fn getIncludeSecondaryWindows(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeSecondaryWindows(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeSecondaryWindows(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeSecondaryWindows(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSession6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7419236-be20-5e9f-bcd6-c4e98fd6afdc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IncludeSecondaryWindows: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeSecondaryWindows: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGraphicsCaptureSessionStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Capture.IGraphicsCaptureSessionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2224a540-5974-49aa-b232-0882536f4cb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const WindowId = @import("../UI.zig").WindowId;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SizeInt32 = @import("../Graphics.zig").SizeInt32;
const DirectXPixelFormat = @import("./DirectX.zig").DirectXPixelFormat;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const RectInt32 = @import("../Graphics.zig").RectInt32;
const IDirect3DSurface = @import("./DirectX/Direct3D11.zig").IDirect3DSurface;
const AppCapabilityAccessStatus = @import("../Security/Authorization/AppCapabilityAccess.zig").AppCapabilityAccessStatus;
const DispatcherQueue = @import("../System.zig").DispatcherQueue;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const Visual = @import("../UI/Composition.zig").Visual;
const IDirect3DDevice = @import("./DirectX/Direct3D11.zig").IDirect3DDevice;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const DisplayId = @import("../Graphics.zig").DisplayId;
const HSTRING = @import("../root.zig").HSTRING;
