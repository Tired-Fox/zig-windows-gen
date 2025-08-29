pub const CoreDragDropManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addTargetRequested(self: *@This(), value: *TypedEventHandler(CoreDragDropManager,CoreDropOperationTargetRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreDragDropManager = @ptrCast(self);
        return try this.addTargetRequested(value);
    }
    pub fn removeTargetRequested(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const this: *ICoreDragDropManager = @ptrCast(self);
        return try this.removeTargetRequested(value);
    }
    pub fn getAreConcurrentOperationsEnabled(self: *@This()) core.HResult!bool {
        const this: *ICoreDragDropManager = @ptrCast(self);
        return try this.getAreConcurrentOperationsEnabled();
    }
    pub fn putAreConcurrentOperationsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreDragDropManager = @ptrCast(self);
        return try this.putAreConcurrentOperationsEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*CoreDragDropManager {
        const factory = @This().ICoreDragDropManagerStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreDragDropManager.GUID;
    pub const IID: Guid = ICoreDragDropManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreDragDropManager.SIGNATURE);
    var _ICoreDragDropManagerStaticsCache: FactoryCache(ICoreDragDropManagerStatics, RUNTIME_NAME) = .{};
};
pub const CoreDragInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        const this: *ICoreDragInfo = @ptrCast(self);
        return try this.getData();
    }
    pub fn getModifiers(self: *@This()) core.HResult!DragDropModifiers {
        const this: *ICoreDragInfo = @ptrCast(self);
        return try this.getModifiers();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *ICoreDragInfo = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var this: ?*ICoreDragInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDragInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowedOperations();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreDragInfo.GUID;
    pub const IID: Guid = ICoreDragInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreDragInfo.SIGNATURE);
};
pub const CoreDragOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.getData();
    }
    pub fn SetPointerId(self: *@This(), pointerId: u32) core.HResult!void {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.SetPointerId(pointerId);
    }
    pub fn SetDragUIContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.SetDragUIContentFromSoftwareBitmap(softwareBitmap);
    }
    pub fn SetDragUIContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.SetDragUIContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint);
    }
    pub fn getDragUIContentMode(self: *@This()) core.HResult!CoreDragUIContentMode {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.getDragUIContentMode();
    }
    pub fn putDragUIContentMode(self: *@This(), value: CoreDragUIContentMode) core.HResult!void {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.putDragUIContentMode(value);
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(DataPackageOperation) {
        const this: *ICoreDragOperation = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var this: ?*ICoreDragOperation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDragOperation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowedOperations();
    }
    pub fn putAllowedOperations(self: *@This(), value: DataPackageOperation) core.HResult!void {
        var this: ?*ICoreDragOperation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreDragOperation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowedOperations(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICoreDragOperation.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreDragOperation.GUID;
    pub const IID: Guid = ICoreDragOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreDragOperation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CoreDragUIContentMode = enum(i32) {
    Auto = 0,
    Deferred = 1,
};
pub const CoreDragUIOverride = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.SetContentFromSoftwareBitmap(softwareBitmap);
    }
    pub fn SetContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint);
    }
    pub fn getIsContentVisible(self: *@This()) core.HResult!bool {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.getIsContentVisible();
    }
    pub fn putIsContentVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.putIsContentVisible(value);
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.getCaption();
    }
    pub fn putCaption(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.putCaption(value);
    }
    pub fn getIsCaptionVisible(self: *@This()) core.HResult!bool {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.getIsCaptionVisible();
    }
    pub fn putIsCaptionVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.putIsCaptionVisible(value);
    }
    pub fn getIsGlyphVisible(self: *@This()) core.HResult!bool {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.getIsGlyphVisible();
    }
    pub fn putIsGlyphVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.putIsGlyphVisible(value);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ICoreDragUIOverride = @ptrCast(self);
        return try this.Clear();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreDragUIOverride.GUID;
    pub const IID: Guid = ICoreDragUIOverride.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreDragUIOverride.SIGNATURE);
};
pub const CoreDropOperationTargetRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetTarget(self: *@This(), target: *ICoreDropOperationTarget) core.HResult!void {
        const this: *ICoreDropOperationTargetRequestedEventArgs = @ptrCast(self);
        return try this.SetTarget(target);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDropOperationTargetRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreDropOperationTargetRequestedEventArgs.GUID;
    pub const IID: Guid = ICoreDropOperationTargetRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreDropOperationTargetRequestedEventArgs.SIGNATURE);
};
pub const ICoreDragDropManager = extern struct {
    vtable: *const VTable,
    pub fn addTargetRequested(self: *@This(), value: *TypedEventHandler(CoreDragDropManager,CoreDropOperationTargetRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TargetRequested(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTargetRequested(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TargetRequested(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAreConcurrentOperationsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreConcurrentOperationsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAreConcurrentOperationsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AreConcurrentOperationsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d56d344-8464-4faf-aa49-37ea6e2d7bd1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_TargetRequested: *const fn(self: *anyopaque, value: *TypedEventHandler(CoreDragDropManager,CoreDropOperationTargetRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TargetRequested: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AreConcurrentOperationsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AreConcurrentOperationsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDragDropManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*CoreDragDropManager {
        var _r: *CoreDragDropManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9542fdca-da12-4c1c-8d06-041db29733c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **CoreDragDropManager) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDragInfo = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModifiers(self: *@This()) core.HResult!DragDropModifiers {
        var _r: DragDropModifiers = undefined;
        const _c = self.vtable.get_Modifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48353a8b-cb50-464e-9575-cd4e3a7ab028";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
        get_Modifiers: *const fn(self: *anyopaque, _r: *DragDropModifiers) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDragInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_AllowedOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c54691e5-e6fb-4d74-b4b1-8a3c17f25e9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowedOperations: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDragOperation = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        var _r: *DataPackage = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPointerId(self: *@This(), pointerId: u32) core.HResult!void {
        const _c = self.vtable.SetPointerId(@ptrCast(self), pointerId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDragUIContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.SetDragUIContentFromSoftwareBitmap(@ptrCast(self), softwareBitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDragUIContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const _c = self.vtable.SetDragUIContentFromSoftwareBitmapWithAnchorPoint(@ptrCast(self), softwareBitmap, anchorPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragUIContentMode(self: *@This()) core.HResult!CoreDragUIContentMode {
        var _r: CoreDragUIContentMode = undefined;
        const _c = self.vtable.get_DragUIContentMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragUIContentMode(self: *@This(), value: CoreDragUIContentMode) core.HResult!void {
        const _c = self.vtable.put_DragUIContentMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(DataPackageOperation) {
        var _r: *IAsyncOperation(DataPackageOperation) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc06de4f-6db0-4e62-ab1b-a74a02dc6d85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **DataPackage) callconv(.winapi) HRESULT,
        SetPointerId: *const fn(self: *anyopaque, pointerId: u32) callconv(.winapi) HRESULT,
        SetDragUIContentFromSoftwareBitmap: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
        SetDragUIContentFromSoftwareBitmapWithAnchorPoint: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap, anchorPoint: Point) callconv(.winapi) HRESULT,
        get_DragUIContentMode: *const fn(self: *anyopaque, _r: *CoreDragUIContentMode) callconv(.winapi) HRESULT,
        put_DragUIContentMode: *const fn(self: *anyopaque, value: CoreDragUIContentMode) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DataPackageOperation)) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDragOperation2 = extern struct {
    vtable: *const VTable,
    pub fn getAllowedOperations(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_AllowedOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowedOperations(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const _c = self.vtable.put_AllowedOperations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "824b1e2c-d99a-4fc3-8507-6c182f33b46a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowedOperations: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
        put_AllowedOperations: *const fn(self: *anyopaque, value: DataPackageOperation) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDragUIOverride = extern struct {
    vtable: *const VTable,
    pub fn SetContentFromSoftwareBitmap(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.SetContentFromSoftwareBitmap(@ptrCast(self), softwareBitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetContentFromSoftwareBitmapWithAnchorPoint(self: *@This(), softwareBitmap: *SoftwareBitmap, anchorPoint: Point) core.HResult!void {
        const _c = self.vtable.SetContentFromSoftwareBitmapWithAnchorPoint(@ptrCast(self), softwareBitmap, anchorPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsContentVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsContentVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsContentVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsContentVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Caption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCaption(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Caption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCaptionVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCaptionVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCaptionVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCaptionVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsGlyphVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGlyphVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsGlyphVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsGlyphVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89a85064-3389-4f4f-8897-7e8a3ffb3c93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetContentFromSoftwareBitmap: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
        SetContentFromSoftwareBitmapWithAnchorPoint: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap, anchorPoint: Point) callconv(.winapi) HRESULT,
        get_IsContentVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsContentVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Caption: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Caption: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsCaptionVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCaptionVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsGlyphVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsGlyphVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDropOperationTarget = extern struct {
    vtable: *const VTable,
    pub fn EnterAsync(self: *@This(), dragInfo: *CoreDragInfo, dragUIOverride: *CoreDragUIOverride) core.HResult!*IAsyncOperation(DataPackageOperation) {
        var _r: *IAsyncOperation(DataPackageOperation) = undefined;
        const _c = self.vtable.EnterAsync(@ptrCast(self), dragInfo, dragUIOverride, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OverAsync(self: *@This(), dragInfo: *CoreDragInfo, dragUIOverride: *CoreDragUIOverride) core.HResult!*IAsyncOperation(DataPackageOperation) {
        var _r: *IAsyncOperation(DataPackageOperation) = undefined;
        const _c = self.vtable.OverAsync(@ptrCast(self), dragInfo, dragUIOverride, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LeaveAsync(self: *@This(), dragInfo: *CoreDragInfo) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LeaveAsync(@ptrCast(self), dragInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DropAsync(self: *@This(), dragInfo: *CoreDragInfo) core.HResult!*IAsyncOperation(DataPackageOperation) {
        var _r: *IAsyncOperation(DataPackageOperation) = undefined;
        const _c = self.vtable.DropAsync(@ptrCast(self), dragInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9126196-4c5b-417d-bb37-76381def8db4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        EnterAsync: *const fn(self: *anyopaque, dragInfo: *CoreDragInfo, dragUIOverride: *CoreDragUIOverride, _r: **IAsyncOperation(DataPackageOperation)) callconv(.winapi) HRESULT,
        OverAsync: *const fn(self: *anyopaque, dragInfo: *CoreDragInfo, dragUIOverride: *CoreDragUIOverride, _r: **IAsyncOperation(DataPackageOperation)) callconv(.winapi) HRESULT,
        LeaveAsync: *const fn(self: *anyopaque, dragInfo: *CoreDragInfo, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DropAsync: *const fn(self: *anyopaque, dragInfo: *CoreDragInfo, _r: **IAsyncOperation(DataPackageOperation)) callconv(.winapi) HRESULT,
    };
};
pub const ICoreDropOperationTargetRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn SetTarget(self: *@This(), target: *ICoreDropOperationTarget) core.HResult!void {
        const _c = self.vtable.SetTarget(@ptrCast(self), target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTargetRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2aca929a-5e28-4ea6-829e-29134e665d6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetTarget: *const fn(self: *anyopaque, target: *ICoreDropOperationTarget) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../../root.zig").IUnknown;
const DragDropModifiers = @import("../DragDrop.zig").DragDropModifiers;
const Guid = @import("../../../root.zig").Guid;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const DataPackageView = @import("../../DataTransfer.zig").DataPackageView;
const Point = @import("../../../Foundation.zig").Point;
const DataPackageOperation = @import("../../DataTransfer.zig").DataPackageOperation;
const HRESULT = @import("../../../root.zig").HRESULT;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const core = @import("../../../root.zig").core;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const DataPackage = @import("../../DataTransfer.zig").DataPackage;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const SoftwareBitmap = @import("../../../Graphics/Imaging.zig").SoftwareBitmap;
const IAsyncAction = @import("../../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../../root.zig").HSTRING;
