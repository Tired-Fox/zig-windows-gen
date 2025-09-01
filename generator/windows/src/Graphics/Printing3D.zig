pub const IPrint3DManager = extern struct {
    vtable: *const VTable,
    pub fn addTaskRequested(self: *@This(), eventHandler: *TypedEventHandler(Print3DManager,Print3DTaskRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TaskRequested(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TaskRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d2fcb0a-7366-4971-8bd5-17c4e3e8c6c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_TaskRequested: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(Print3DManager,Print3DTaskRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TaskRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*Print3DManager {
        var _r: *Print3DManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowPrintUIAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowPrintUIAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ef1cafe-a9ad-4c08-a917-1d1f863eabcb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **Print3DManager) callconv(.winapi) HRESULT,
        ShowPrintUIAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DTask = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*Printing3D3MFPackage {
        var _r: *Printing3D3MFPackage = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSubmitting(self: *@This(), eventHandler: *TypedEventHandler(Print3DTask,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Submitting(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSubmitting(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Submitting(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), eventHandler: *TypedEventHandler(Print3DTask,Print3DTaskCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceChanged(self: *@This(), eventHandler: *TypedEventHandler(Print3DTask,Print3DTaskSourceChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ce3d080-2118-4c28-80de-f426d70191ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **Printing3D3MFPackage) callconv(.winapi) HRESULT,
        add_Submitting: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(Print3DTask,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Submitting: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(Print3DTask,Print3DTaskCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceChanged: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(Print3DTask,Print3DTaskSourceChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DTaskCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCompletion(self: *@This()) core.HResult!Print3DTaskCompletion {
        var _r: Print3DTaskCompletion = undefined;
        const _c = self.vtable.get_Completion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!Print3DTaskDetail {
        var _r: Print3DTaskDetail = undefined;
        const _c = self.vtable.get_ExtendedStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DTaskCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc1914af-2614-4f1d-accc-d6fc4fda5455";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Completion: *const fn(self: *anyopaque, _r: *Print3DTaskCompletion) callconv(.winapi) HRESULT,
        get_ExtendedStatus: *const fn(self: *anyopaque, _r: *Print3DTaskDetail) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DTaskRequest = extern struct {
    vtable: *const VTable,
    pub fn CreateTask(self: *@This(), title: HSTRING, printerId: HSTRING, handler: *Print3DTaskSourceRequestedHandler) core.HResult!*Print3DTask {
        var _r: *Print3DTask = undefined;
        const _c = self.vtable.CreateTask(@ptrCast(self), title, printerId, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2595c46f-2245-4c5a-8731-0d604dc6bc3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTask: *const fn(self: *anyopaque, title: HSTRING, printerId: HSTRING, handler: *Print3DTaskSourceRequestedHandler, _r: **Print3DTask) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DTaskRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*Print3DTaskRequest {
        var _r: *Print3DTaskRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DTaskRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "150cb77f-18c5-40d7-9f40-fab3096e05a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **Print3DTaskRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DTaskSourceChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*Printing3D3MFPackage {
        var _r: *Printing3D3MFPackage = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DTaskSourceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bcd34af-24e9-4c10-8d07-14c346ba3fcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **Printing3D3MFPackage) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DTaskSourceRequestedArgs = extern struct {
    vtable: *const VTable,
    pub fn SetSource(self: *@This(), source: *Printing3D3MFPackage) core.HResult!void {
        const _c = self.vtable.SetSource(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrint3DTaskSourceRequestedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c77c9aba-24af-424d-a3bf-92250c355602";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSource: *const fn(self: *anyopaque, source: *Printing3D3MFPackage) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3D3MFPackage = extern struct {
    vtable: *const VTable,
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintTicket(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_PrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrintTicket(self: *@This(), value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.put_PrintTicket(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getModelPart(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_ModelPart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putModelPart(self: *@This(), value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.put_ModelPart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*Printing3DTextureResource {
        var _r: *Printing3DTextureResource = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnail(self: *@This(), value: *Printing3DTextureResource) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextures(self: *@This()) core.HResult!*IVector(Printing3DTextureResource) {
        var _r: *IVector(Printing3DTextureResource) = undefined;
        const _c = self.vtable.get_Textures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadModelFromPackageAsync(self: *@This(), value: *IRandomAccessStream) core.HResult!*IAsyncOperation(Printing3DModel) {
        var _r: *IAsyncOperation(Printing3DModel) = undefined;
        const _c = self.vtable.LoadModelFromPackageAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveModelToPackageAsync(self: *@This(), value: *Printing3DModel) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveModelToPackageAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3D3MFPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f64dd5c8-2ab7-45a9-a1b7-267e948d5b18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        get_PrintTicket: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        put_PrintTicket: *const fn(self: *anyopaque, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        get_ModelPart: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        put_ModelPart: *const fn(self: *anyopaque, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **Printing3DTextureResource) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *Printing3DTextureResource) callconv(.winapi) HRESULT,
        get_Textures: *const fn(self: *anyopaque, _r: **IVector(Printing3DTextureResource)) callconv(.winapi) HRESULT,
        LoadModelFromPackageAsync: *const fn(self: *anyopaque, value: *IRandomAccessStream, _r: **IAsyncOperation(Printing3DModel)) callconv(.winapi) HRESULT,
        SaveModelToPackageAsync: *const fn(self: *anyopaque, value: *Printing3DModel, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3D3MFPackage2 = extern struct {
    vtable: *const VTable,
    pub fn getCompression(self: *@This()) core.HResult!Printing3DPackageCompression {
        var _r: Printing3DPackageCompression = undefined;
        const _c = self.vtable.get_Compression(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompression(self: *@This(), value: Printing3DPackageCompression) core.HResult!void {
        const _c = self.vtable.put_Compression(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3D3MFPackage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "965c7ac4-93cb-4430-92b8-789cd454f883";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Compression: *const fn(self: *anyopaque, _r: *Printing3DPackageCompression) callconv(.winapi) HRESULT,
        put_Compression: *const fn(self: *anyopaque, value: Printing3DPackageCompression) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3D3MFPackageStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadAsync(self: *@This(), value: *IRandomAccessStream) core.HResult!*IAsyncOperation(Printing3D3MFPackage) {
        var _r: *IAsyncOperation(Printing3D3MFPackage) = undefined;
        const _c = self.vtable.LoadAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3D3MFPackageStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7058d9af-7a9a-4787-b817-f6f459214823";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadAsync: *const fn(self: *anyopaque, value: *IRandomAccessStream, _r: **IAsyncOperation(Printing3D3MFPackage)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DBaseMaterial = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColor(self: *@This()) core.HResult!*Printing3DColorMaterial {
        var _r: *Printing3DColorMaterial = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: *Printing3DColorMaterial) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DBaseMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0f0e743-c50c-4bcb-9d04-fc16adcea2c9";
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
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: **Printing3DColorMaterial) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: *Printing3DColorMaterial) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DBaseMaterialGroup = extern struct {
    vtable: *const VTable,
    pub fn getBases(self: *@This()) core.HResult!*IVector(Printing3DBaseMaterial) {
        var _r: *IVector(Printing3DBaseMaterial) = undefined;
        const _c = self.vtable.get_Bases(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaterialGroupId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DBaseMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94f070b8-2515-4a8d-a1f0-d0fc13d06021";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bases: *const fn(self: *anyopaque, _r: **IVector(Printing3DBaseMaterial)) callconv(.winapi) HRESULT,
        get_MaterialGroupId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DBaseMaterialGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), MaterialGroupId: u32) core.HResult!*Printing3DBaseMaterialGroup {
        var _r: *Printing3DBaseMaterialGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), MaterialGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DBaseMaterialGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c1546dc-8697-4193-976b-84bb4116e5bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, MaterialGroupId: u32, _r: **Printing3DBaseMaterialGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DBaseMaterialStatics = extern struct {
    vtable: *const VTable,
    pub fn getAbs(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Abs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPla(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pla(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DBaseMaterialStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "815a47bc-374a-476d-be92-3ecfd1cb9776";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Abs: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pla: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DColorMaterial = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DColorMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1899928-7ce7-4285-a35d-f145c9510c7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DColorMaterial2 = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DColorMaterial2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fab0e852-0aef-44e9-9ddd-36eeea5acd44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DColorMaterialGroup = extern struct {
    vtable: *const VTable,
    pub fn getColors(self: *@This()) core.HResult!*IVector(Printing3DColorMaterial) {
        var _r: *IVector(Printing3DColorMaterial) = undefined;
        const _c = self.vtable.get_Colors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaterialGroupId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DColorMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "001a6bd0-aadf-4226-afe9-f369a0b45004";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Colors: *const fn(self: *anyopaque, _r: **IVector(Printing3DColorMaterial)) callconv(.winapi) HRESULT,
        get_MaterialGroupId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DColorMaterialGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), MaterialGroupId: u32) core.HResult!*Printing3DColorMaterialGroup {
        var _r: *Printing3DColorMaterialGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), MaterialGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DColorMaterialGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71d38d6d-b1ea-4a5b-bc54-19c65f3df044";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, MaterialGroupId: u32, _r: **Printing3DColorMaterialGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DComponent = extern struct {
    vtable: *const VTable,
    pub fn getMesh(self: *@This()) core.HResult!*Printing3DMesh {
        var _r: *Printing3DMesh = undefined;
        const _c = self.vtable.get_Mesh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMesh(self: *@This(), value: *Printing3DMesh) core.HResult!void {
        const _c = self.vtable.put_Mesh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComponents(self: *@This()) core.HResult!*IVector(Printing3DComponentWithMatrix) {
        var _r: *IVector(Printing3DComponentWithMatrix) = undefined;
        const _c = self.vtable.get_Components(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*Printing3DTextureResource {
        var _r: *Printing3DTextureResource = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnail(self: *@This(), value: *Printing3DTextureResource) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getType(self: *@This()) core.HResult!Printing3DObjectType {
        var _r: Printing3DObjectType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: Printing3DObjectType) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPartNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PartNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPartNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PartNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e287845-bf7f-4cdb-a27f-30a01437fede";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mesh: *const fn(self: *anyopaque, _r: **Printing3DMesh) callconv(.winapi) HRESULT,
        put_Mesh: *const fn(self: *anyopaque, value: *Printing3DMesh) callconv(.winapi) HRESULT,
        get_Components: *const fn(self: *anyopaque, _r: **IVector(Printing3DComponentWithMatrix)) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **Printing3DTextureResource) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *Printing3DTextureResource) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *Printing3DObjectType) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: Printing3DObjectType) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PartNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PartNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DComponentWithMatrix = extern struct {
    vtable: *const VTable,
    pub fn getComponent(self: *@This()) core.HResult!*Printing3DComponent {
        var _r: *Printing3DComponent = undefined;
        const _c = self.vtable.get_Component(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComponent(self: *@This(), value: *Printing3DComponent) core.HResult!void {
        const _c = self.vtable.put_Component(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMatrix(self: *@This()) core.HResult!Matrix4x4 {
        var _r: Matrix4x4 = undefined;
        const _c = self.vtable.get_Matrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMatrix(self: *@This(), value: Matrix4x4) core.HResult!void {
        const _c = self.vtable.put_Matrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DComponentWithMatrix";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3279f335-0ef0-456b-9a21-49bebe8b51c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Component: *const fn(self: *anyopaque, _r: **Printing3DComponent) callconv(.winapi) HRESULT,
        put_Component: *const fn(self: *anyopaque, value: *Printing3DComponent) callconv(.winapi) HRESULT,
        get_Matrix: *const fn(self: *anyopaque, _r: *Matrix4x4) callconv(.winapi) HRESULT,
        put_Matrix: *const fn(self: *anyopaque, value: Matrix4x4) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DCompositeMaterial = extern struct {
    vtable: *const VTable,
    pub fn getValues(self: *@This()) core.HResult!*IVector(f64) {
        var _r: *IVector(f64) = undefined;
        const _c = self.vtable.get_Values(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DCompositeMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "462238dd-562e-4f6c-882d-f4d841fd63c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Values: *const fn(self: *anyopaque, _r: **IVector(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DCompositeMaterialGroup = extern struct {
    vtable: *const VTable,
    pub fn getComposites(self: *@This()) core.HResult!*IVector(Printing3DCompositeMaterial) {
        var _r: *IVector(Printing3DCompositeMaterial) = undefined;
        const _c = self.vtable.get_Composites(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaterialGroupId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialIndices(self: *@This()) core.HResult!*IVector(u32) {
        var _r: *IVector(u32) = undefined;
        const _c = self.vtable.get_MaterialIndices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DCompositeMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d946a5b-40f1-496d-a5fb-340a5a678e30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Composites: *const fn(self: *anyopaque, _r: **IVector(Printing3DCompositeMaterial)) callconv(.winapi) HRESULT,
        get_MaterialGroupId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaterialIndices: *const fn(self: *anyopaque, _r: **IVector(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DCompositeMaterialGroup2 = extern struct {
    vtable: *const VTable,
    pub fn getBaseMaterialGroup(self: *@This()) core.HResult!*Printing3DBaseMaterialGroup {
        var _r: *Printing3DBaseMaterialGroup = undefined;
        const _c = self.vtable.get_BaseMaterialGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseMaterialGroup(self: *@This(), value: *Printing3DBaseMaterialGroup) core.HResult!void {
        const _c = self.vtable.put_BaseMaterialGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DCompositeMaterialGroup2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06e86d62-7d3b-41e1-944c-bafde4555483";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaseMaterialGroup: *const fn(self: *anyopaque, _r: **Printing3DBaseMaterialGroup) callconv(.winapi) HRESULT,
        put_BaseMaterialGroup: *const fn(self: *anyopaque, value: *Printing3DBaseMaterialGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DCompositeMaterialGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), MaterialGroupId: u32) core.HResult!*Printing3DCompositeMaterialGroup {
        var _r: *Printing3DCompositeMaterialGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), MaterialGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DCompositeMaterialGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d08ecd13-92ff-43aa-a627-8d43c22c817e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, MaterialGroupId: u32, _r: **Printing3DCompositeMaterialGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DFaceReductionOptions = extern struct {
    vtable: *const VTable,
    pub fn getMaxReductionArea(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxReductionArea(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxReductionArea(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MaxReductionArea(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetTriangleCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TargetTriangleCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetTriangleCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TargetTriangleCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxEdgeLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxEdgeLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxEdgeLength(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MaxEdgeLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DFaceReductionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbfed397-2d74-46f7-be85-99a67bbb6629";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxReductionArea: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MaxReductionArea: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TargetTriangleCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TargetTriangleCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxEdgeLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MaxEdgeLength: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DMaterial = extern struct {
    vtable: *const VTable,
    pub fn getBaseGroups(self: *@This()) core.HResult!*IVector(Printing3DBaseMaterialGroup) {
        var _r: *IVector(Printing3DBaseMaterialGroup) = undefined;
        const _c = self.vtable.get_BaseGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorGroups(self: *@This()) core.HResult!*IVector(Printing3DColorMaterialGroup) {
        var _r: *IVector(Printing3DColorMaterialGroup) = undefined;
        const _c = self.vtable.get_ColorGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTexture2CoordGroups(self: *@This()) core.HResult!*IVector(Printing3DTexture2CoordMaterialGroup) {
        var _r: *IVector(Printing3DTexture2CoordMaterialGroup) = undefined;
        const _c = self.vtable.get_Texture2CoordGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompositeGroups(self: *@This()) core.HResult!*IVector(Printing3DCompositeMaterialGroup) {
        var _r: *IVector(Printing3DCompositeMaterialGroup) = undefined;
        const _c = self.vtable.get_CompositeGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMultiplePropertyGroups(self: *@This()) core.HResult!*IVector(Printing3DMultiplePropertyMaterialGroup) {
        var _r: *IVector(Printing3DMultiplePropertyMaterialGroup) = undefined;
        const _c = self.vtable.get_MultiplePropertyGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "378db256-ed62-4952-b85b-03567d7c465e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaseGroups: *const fn(self: *anyopaque, _r: **IVector(Printing3DBaseMaterialGroup)) callconv(.winapi) HRESULT,
        get_ColorGroups: *const fn(self: *anyopaque, _r: **IVector(Printing3DColorMaterialGroup)) callconv(.winapi) HRESULT,
        get_Texture2CoordGroups: *const fn(self: *anyopaque, _r: **IVector(Printing3DTexture2CoordMaterialGroup)) callconv(.winapi) HRESULT,
        get_CompositeGroups: *const fn(self: *anyopaque, _r: **IVector(Printing3DCompositeMaterialGroup)) callconv(.winapi) HRESULT,
        get_MultiplePropertyGroups: *const fn(self: *anyopaque, _r: **IVector(Printing3DMultiplePropertyMaterialGroup)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DMesh = extern struct {
    vtable: *const VTable,
    pub fn getVertexCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VertexCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVertexCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_VertexCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIndexCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IndexCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIndexCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_IndexCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVertexPositionsDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        var _r: Printing3DBufferDescription = undefined;
        const _c = self.vtable.get_VertexPositionsDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVertexPositionsDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const _c = self.vtable.put_VertexPositionsDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVertexNormalsDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        var _r: Printing3DBufferDescription = undefined;
        const _c = self.vtable.get_VertexNormalsDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVertexNormalsDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const _c = self.vtable.put_VertexNormalsDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTriangleIndicesDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        var _r: Printing3DBufferDescription = undefined;
        const _c = self.vtable.get_TriangleIndicesDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTriangleIndicesDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const _c = self.vtable.put_TriangleIndicesDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTriangleMaterialIndicesDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        var _r: Printing3DBufferDescription = undefined;
        const _c = self.vtable.get_TriangleMaterialIndicesDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTriangleMaterialIndicesDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const _c = self.vtable.put_TriangleMaterialIndicesDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetVertexPositions(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetVertexPositions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVertexPositions(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.CreateVertexPositions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetVertexNormals(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetVertexNormals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVertexNormals(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.CreateVertexNormals(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetTriangleIndices(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetTriangleIndices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTriangleIndices(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.CreateTriangleIndices(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetTriangleMaterialIndices(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetTriangleMaterialIndices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTriangleMaterialIndices(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.CreateTriangleMaterialIndices(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBufferDescriptionSet(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_BufferDescriptionSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBufferSet(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_BufferSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifyAsync(self: *@This(), value: Printing3DMeshVerificationMode) core.HResult!*IAsyncOperation(Printing3DMeshVerificationResult) {
        var _r: *IAsyncOperation(Printing3DMeshVerificationResult) = undefined;
        const _c = self.vtable.VerifyAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DMesh";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "192e90dc-0228-2e01-bc20-c5290cbf32c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VertexCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_VertexCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_IndexCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_IndexCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_VertexPositionsDescription: *const fn(self: *anyopaque, _r: *Printing3DBufferDescription) callconv(.winapi) HRESULT,
        put_VertexPositionsDescription: *const fn(self: *anyopaque, value: Printing3DBufferDescription) callconv(.winapi) HRESULT,
        get_VertexNormalsDescription: *const fn(self: *anyopaque, _r: *Printing3DBufferDescription) callconv(.winapi) HRESULT,
        put_VertexNormalsDescription: *const fn(self: *anyopaque, value: Printing3DBufferDescription) callconv(.winapi) HRESULT,
        get_TriangleIndicesDescription: *const fn(self: *anyopaque, _r: *Printing3DBufferDescription) callconv(.winapi) HRESULT,
        put_TriangleIndicesDescription: *const fn(self: *anyopaque, value: Printing3DBufferDescription) callconv(.winapi) HRESULT,
        get_TriangleMaterialIndicesDescription: *const fn(self: *anyopaque, _r: *Printing3DBufferDescription) callconv(.winapi) HRESULT,
        put_TriangleMaterialIndicesDescription: *const fn(self: *anyopaque, value: Printing3DBufferDescription) callconv(.winapi) HRESULT,
        GetVertexPositions: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        CreateVertexPositions: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        GetVertexNormals: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        CreateVertexNormals: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        GetTriangleIndices: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        CreateTriangleIndices: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        GetTriangleMaterialIndices: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        CreateTriangleMaterialIndices: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BufferDescriptionSet: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        get_BufferSet: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        VerifyAsync: *const fn(self: *anyopaque, value: Printing3DMeshVerificationMode, _r: **IAsyncOperation(Printing3DMeshVerificationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DMeshVerificationResult = extern struct {
    vtable: *const VTable,
    pub fn getIsValid(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsValid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNonmanifoldTriangles(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_NonmanifoldTriangles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReversedNormalTriangles(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_ReversedNormalTriangles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DMeshVerificationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "195671ba-e93a-4e8a-a46f-dea8e852197e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsValid: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NonmanifoldTriangles: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_ReversedNormalTriangles: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DModel = extern struct {
    vtable: *const VTable,
    pub fn getUnit(self: *@This()) core.HResult!Printing3DModelUnit {
        var _r: Printing3DModelUnit = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnit(self: *@This(), value: Printing3DModelUnit) core.HResult!void {
        const _c = self.vtable.put_Unit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextures(self: *@This()) core.HResult!*IVector(Printing3DModelTexture) {
        var _r: *IVector(Printing3DModelTexture) = undefined;
        const _c = self.vtable.get_Textures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMeshes(self: *@This()) core.HResult!*IVector(Printing3DMesh) {
        var _r: *IVector(Printing3DMesh) = undefined;
        const _c = self.vtable.get_Meshes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComponents(self: *@This()) core.HResult!*IVector(Printing3DComponent) {
        var _r: *IVector(Printing3DComponent) = undefined;
        const _c = self.vtable.get_Components(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterial(self: *@This()) core.HResult!*Printing3DMaterial {
        var _r: *Printing3DMaterial = undefined;
        const _c = self.vtable.get_Material(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaterial(self: *@This(), value: *Printing3DMaterial) core.HResult!void {
        const _c = self.vtable.put_Material(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBuild(self: *@This()) core.HResult!*Printing3DComponent {
        var _r: *Printing3DComponent = undefined;
        const _c = self.vtable.get_Build(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBuild(self: *@This(), value: *Printing3DComponent) core.HResult!void {
        const _c = self.vtable.put_Build(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Version(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequiredExtensions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_RequiredExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Metadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RepairAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RepairAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clone(self: *@This()) core.HResult!*Printing3DModel {
        var _r: *Printing3DModel = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d012ef0-52fb-919a-77b0-4b1a3b80324f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *Printing3DModelUnit) callconv(.winapi) HRESULT,
        put_Unit: *const fn(self: *anyopaque, value: Printing3DModelUnit) callconv(.winapi) HRESULT,
        get_Textures: *const fn(self: *anyopaque, _r: **IVector(Printing3DModelTexture)) callconv(.winapi) HRESULT,
        get_Meshes: *const fn(self: *anyopaque, _r: **IVector(Printing3DMesh)) callconv(.winapi) HRESULT,
        get_Components: *const fn(self: *anyopaque, _r: **IVector(Printing3DComponent)) callconv(.winapi) HRESULT,
        get_Material: *const fn(self: *anyopaque, _r: **Printing3DMaterial) callconv(.winapi) HRESULT,
        put_Material: *const fn(self: *anyopaque, value: *Printing3DMaterial) callconv(.winapi) HRESULT,
        get_Build: *const fn(self: *anyopaque, _r: **Printing3DComponent) callconv(.winapi) HRESULT,
        put_Build: *const fn(self: *anyopaque, value: *Printing3DComponent) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Version: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RequiredExtensions: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Metadata: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        RepairAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **Printing3DModel) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DModel2 = extern struct {
    vtable: *const VTable,
    pub fn TryPartialRepairAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryPartialRepairAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryPartialRepairAsyncWithMaxWaitTime(self: *@This(), maxWaitTime: TimeSpan) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryPartialRepairAsyncWithMaxWaitTime(@ptrCast(self), maxWaitTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryReduceFacesAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var _r: *IAsyncOperationWithProgress(bool,f64) = undefined;
        const _c = self.vtable.TryReduceFacesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryReduceFacesAsyncWithPrinting3DFaceReductionOptions(self: *@This(), printing3DFaceReductionOptions: *Printing3DFaceReductionOptions) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var _r: *IAsyncOperationWithProgress(bool,f64) = undefined;
        const _c = self.vtable.TryReduceFacesAsyncWithPrinting3DFaceReductionOptions(@ptrCast(self), printing3DFaceReductionOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryReduceFacesAsyncWithPrinting3DFaceReductionOptionsAndMaxWait(self: *@This(), printing3DFaceReductionOptions: *Printing3DFaceReductionOptions, maxWait: TimeSpan) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var _r: *IAsyncOperationWithProgress(bool,f64) = undefined;
        const _c = self.vtable.TryReduceFacesAsyncWithPrinting3DFaceReductionOptionsAndMaxWait(@ptrCast(self), printing3DFaceReductionOptions, maxWait, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RepairWithProgressAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var _r: *IAsyncOperationWithProgress(bool,f64) = undefined;
        const _c = self.vtable.RepairWithProgressAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DModel2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c92069c7-c841-47f3-a84e-a149fd08b657";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryPartialRepairAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryPartialRepairAsyncWithMaxWaitTime: *const fn(self: *anyopaque, maxWaitTime: TimeSpan, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryReduceFacesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(bool,f64)) callconv(.winapi) HRESULT,
        TryReduceFacesAsyncWithPrinting3DFaceReductionOptions: *const fn(self: *anyopaque, printing3DFaceReductionOptions: *Printing3DFaceReductionOptions, _r: **IAsyncOperationWithProgress(bool,f64)) callconv(.winapi) HRESULT,
        TryReduceFacesAsyncWithPrinting3DFaceReductionOptionsAndMaxWait: *const fn(self: *anyopaque, printing3DFaceReductionOptions: *Printing3DFaceReductionOptions, maxWait: TimeSpan, _r: **IAsyncOperationWithProgress(bool,f64)) callconv(.winapi) HRESULT,
        RepairWithProgressAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(bool,f64)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DModelTexture = extern struct {
    vtable: *const VTable,
    pub fn getTextureResource(self: *@This()) core.HResult!*Printing3DTextureResource {
        var _r: *Printing3DTextureResource = undefined;
        const _c = self.vtable.get_TextureResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextureResource(self: *@This(), value: *Printing3DTextureResource) core.HResult!void {
        const _c = self.vtable.put_TextureResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTileStyleU(self: *@This()) core.HResult!Printing3DTextureEdgeBehavior {
        var _r: Printing3DTextureEdgeBehavior = undefined;
        const _c = self.vtable.get_TileStyleU(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTileStyleU(self: *@This(), value: Printing3DTextureEdgeBehavior) core.HResult!void {
        const _c = self.vtable.put_TileStyleU(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTileStyleV(self: *@This()) core.HResult!Printing3DTextureEdgeBehavior {
        var _r: Printing3DTextureEdgeBehavior = undefined;
        const _c = self.vtable.get_TileStyleV(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTileStyleV(self: *@This(), value: Printing3DTextureEdgeBehavior) core.HResult!void {
        const _c = self.vtable.put_TileStyleV(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DModelTexture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5dafcf01-b59d-483c-97bb-a4d546d1c75c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextureResource: *const fn(self: *anyopaque, _r: **Printing3DTextureResource) callconv(.winapi) HRESULT,
        put_TextureResource: *const fn(self: *anyopaque, value: *Printing3DTextureResource) callconv(.winapi) HRESULT,
        get_TileStyleU: *const fn(self: *anyopaque, _r: *Printing3DTextureEdgeBehavior) callconv(.winapi) HRESULT,
        put_TileStyleU: *const fn(self: *anyopaque, value: Printing3DTextureEdgeBehavior) callconv(.winapi) HRESULT,
        get_TileStyleV: *const fn(self: *anyopaque, _r: *Printing3DTextureEdgeBehavior) callconv(.winapi) HRESULT,
        put_TileStyleV: *const fn(self: *anyopaque, value: Printing3DTextureEdgeBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DMultiplePropertyMaterial = extern struct {
    vtable: *const VTable,
    pub fn getMaterialIndices(self: *@This()) core.HResult!*IVector(u32) {
        var _r: *IVector(u32) = undefined;
        const _c = self.vtable.get_MaterialIndices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DMultiplePropertyMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25a6254b-c6e9-484d-a214-a25e5776ba62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaterialIndices: *const fn(self: *anyopaque, _r: **IVector(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DMultiplePropertyMaterialGroup = extern struct {
    vtable: *const VTable,
    pub fn getMultipleProperties(self: *@This()) core.HResult!*IVector(Printing3DMultiplePropertyMaterial) {
        var _r: *IVector(Printing3DMultiplePropertyMaterial) = undefined;
        const _c = self.vtable.get_MultipleProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialGroupIndices(self: *@This()) core.HResult!*IVector(u32) {
        var _r: *IVector(u32) = undefined;
        const _c = self.vtable.get_MaterialGroupIndices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaterialGroupId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DMultiplePropertyMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0950519-aeb9-4515-a39b-a088fbbb277c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MultipleProperties: *const fn(self: *anyopaque, _r: **IVector(Printing3DMultiplePropertyMaterial)) callconv(.winapi) HRESULT,
        get_MaterialGroupIndices: *const fn(self: *anyopaque, _r: **IVector(u32)) callconv(.winapi) HRESULT,
        get_MaterialGroupId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DMultiplePropertyMaterialGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), MaterialGroupId: u32) core.HResult!*Printing3DMultiplePropertyMaterialGroup {
        var _r: *Printing3DMultiplePropertyMaterialGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), MaterialGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DMultiplePropertyMaterialGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "323e196e-d4c6-451e-a814-4d78a210fe53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, MaterialGroupId: u32, _r: **Printing3DMultiplePropertyMaterialGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DTexture2CoordMaterial = extern struct {
    vtable: *const VTable,
    pub fn getTexture(self: *@This()) core.HResult!*Printing3DModelTexture {
        var _r: *Printing3DModelTexture = undefined;
        const _c = self.vtable.get_Texture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTexture(self: *@This(), value: *Printing3DModelTexture) core.HResult!void {
        const _c = self.vtable.put_Texture(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getU(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_U(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putU(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_U(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getV(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_V(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putV(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_V(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d844bfb-07e9-4986-9833-8dd3d48c6859";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Texture: *const fn(self: *anyopaque, _r: **Printing3DModelTexture) callconv(.winapi) HRESULT,
        put_Texture: *const fn(self: *anyopaque, value: *Printing3DModelTexture) callconv(.winapi) HRESULT,
        get_U: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_U: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_V: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_V: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DTexture2CoordMaterialGroup = extern struct {
    vtable: *const VTable,
    pub fn getTexture2Coords(self: *@This()) core.HResult!*IVector(Printing3DTexture2CoordMaterial) {
        var _r: *IVector(Printing3DTexture2CoordMaterial) = undefined;
        const _c = self.vtable.get_Texture2Coords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaterialGroupId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "627d7ca7-6d90-4fb9-9fc4-9feff3dfa892";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Texture2Coords: *const fn(self: *anyopaque, _r: **IVector(Printing3DTexture2CoordMaterial)) callconv(.winapi) HRESULT,
        get_MaterialGroupId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DTexture2CoordMaterialGroup2 = extern struct {
    vtable: *const VTable,
    pub fn getTexture(self: *@This()) core.HResult!*Printing3DModelTexture {
        var _r: *Printing3DModelTexture = undefined;
        const _c = self.vtable.get_Texture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTexture(self: *@This(), value: *Printing3DModelTexture) core.HResult!void {
        const _c = self.vtable.put_Texture(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterialGroup2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69fbdbba-b12e-429b-8386-df5284f6e80f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Texture: *const fn(self: *anyopaque, _r: **Printing3DModelTexture) callconv(.winapi) HRESULT,
        put_Texture: *const fn(self: *anyopaque, value: *Printing3DModelTexture) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DTexture2CoordMaterialGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), MaterialGroupId: u32) core.HResult!*Printing3DTexture2CoordMaterialGroup {
        var _r: *Printing3DTexture2CoordMaterialGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), MaterialGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterialGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbb049b0-468a-4c6f-b2a2-8eb8ba8dea48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, MaterialGroupId: u32, _r: **Printing3DTexture2CoordMaterialGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPrinting3DTextureResource = extern struct {
    vtable: *const VTable,
    pub fn getTextureData(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_TextureData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextureData(self: *@This(), value: *IRandomAccessStreamWithContentType) core.HResult!void {
        const _c = self.vtable.put_TextureData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.IPrinting3DTextureResource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a70df32d-6ab1-44ae-bc45-a27382c0d38c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextureData: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        put_TextureData: *const fn(self: *anyopaque, value: *IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const Print3DManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addTaskRequested(self: *@This(), eventHandler: *TypedEventHandler(Print3DManager,Print3DTaskRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrint3DManager = @ptrCast(self);
        return try this.addTaskRequested(eventHandler);
    }
    pub fn removeTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPrint3DManager = @ptrCast(self);
        return try this.removeTaskRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*Print3DManager {
        const _f = @This().IPrint3DManagerStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub fn ShowPrintUIAsync() core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IPrint3DManagerStaticsCache.get();
        return try _f.ShowPrintUIAsync();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DManager.GUID;
    pub const IID: Guid = IPrint3DManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DManager.SIGNATURE);
    var _IPrint3DManagerStaticsCache: FactoryCache(IPrint3DManagerStatics, RUNTIME_NAME) = .{};
};
pub const Print3DTask = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*Printing3D3MFPackage {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.getSource();
    }
    pub fn addSubmitting(self: *@This(), eventHandler: *TypedEventHandler(Print3DTask,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.addSubmitting(eventHandler);
    }
    pub fn removeSubmitting(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.removeSubmitting(eventCookie);
    }
    pub fn addCompleted(self: *@This(), eventHandler: *TypedEventHandler(Print3DTask,Print3DTaskCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.addCompleted(eventHandler);
    }
    pub fn removeCompleted(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.removeCompleted(eventCookie);
    }
    pub fn addSourceChanged(self: *@This(), eventHandler: *TypedEventHandler(Print3DTask,Print3DTaskSourceChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.addSourceChanged(eventHandler);
    }
    pub fn removeSourceChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrint3DTask = @ptrCast(self);
        return try this.removeSourceChanged(eventCookie);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DTask.GUID;
    pub const IID: Guid = IPrint3DTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DTask.SIGNATURE);
};
pub const Print3DTaskCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompletion(self: *@This()) core.HResult!Print3DTaskCompletion {
        const this: *IPrint3DTaskCompletedEventArgs = @ptrCast(self);
        return try this.getCompletion();
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!Print3DTaskDetail {
        const this: *IPrint3DTaskCompletedEventArgs = @ptrCast(self);
        return try this.getExtendedStatus();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTaskCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DTaskCompletedEventArgs.GUID;
    pub const IID: Guid = IPrint3DTaskCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DTaskCompletedEventArgs.SIGNATURE);
};
pub const Print3DTaskCompletion = enum(i32) {
    Abandoned = 0,
    Canceled = 1,
    Failed = 2,
    Slicing = 3,
    Submitted = 4,
};
pub const Print3DTaskDetail = enum(i32) {
    Unknown = 0,
    ModelExceedsPrintBed = 1,
    UploadFailed = 2,
    InvalidMaterialSelection = 3,
    InvalidModel = 4,
    ModelNotManifold = 5,
    InvalidPrintTicket = 6,
};
pub const Print3DTaskRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateTask(self: *@This(), title: HSTRING, printerId: HSTRING, handler: *Print3DTaskSourceRequestedHandler) core.HResult!*Print3DTask {
        const this: *IPrint3DTaskRequest = @ptrCast(self);
        return try this.CreateTask(title, printerId, handler);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DTaskRequest.GUID;
    pub const IID: Guid = IPrint3DTaskRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DTaskRequest.SIGNATURE);
};
pub const Print3DTaskRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*Print3DTaskRequest {
        const this: *IPrint3DTaskRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTaskRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DTaskRequestedEventArgs.GUID;
    pub const IID: Guid = IPrint3DTaskRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DTaskRequestedEventArgs.SIGNATURE);
};
pub const Print3DTaskSourceChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*Printing3D3MFPackage {
        const this: *IPrint3DTaskSourceChangedEventArgs = @ptrCast(self);
        return try this.getSource();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTaskSourceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DTaskSourceChangedEventArgs.GUID;
    pub const IID: Guid = IPrint3DTaskSourceChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DTaskSourceChangedEventArgs.SIGNATURE);
};
pub const Print3DTaskSourceRequestedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetSource(self: *@This(), source: *Printing3D3MFPackage) core.HResult!void {
        const this: *IPrint3DTaskSourceRequestedArgs = @ptrCast(self);
        return try this.SetSource(source);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTaskSourceRequestedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DTaskSourceRequestedArgs.GUID;
    pub const IID: Guid = IPrint3DTaskSourceRequestedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DTaskSourceRequestedArgs.SIGNATURE);
};
pub const Print3DTaskSourceRequestedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, args: *Print3DTaskSourceRequestedArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, args: *Print3DTaskSourceRequestedArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, args: *Print3DTaskSourceRequestedArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Print3DTaskSourceRequestedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9175e70-c917-46de-bb51-d9a94db3711f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, args: *Print3DTaskSourceRequestedArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const Printing3D3MFPackage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn getPrintTicket(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.getPrintTicket();
    }
    pub fn putPrintTicket(self: *@This(), value: *IRandomAccessStream) core.HResult!void {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.putPrintTicket(value);
    }
    pub fn getModelPart(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.getModelPart();
    }
    pub fn putModelPart(self: *@This(), value: *IRandomAccessStream) core.HResult!void {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.putModelPart(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*Printing3DTextureResource {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *Printing3DTextureResource) core.HResult!void {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getTextures(self: *@This()) core.HResult!*IVector(Printing3DTextureResource) {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.getTextures();
    }
    pub fn LoadModelFromPackageAsync(self: *@This(), value: *IRandomAccessStream) core.HResult!*IAsyncOperation(Printing3DModel) {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.LoadModelFromPackageAsync(value);
    }
    pub fn SaveModelToPackageAsync(self: *@This(), value: *Printing3DModel) core.HResult!*IAsyncAction {
        const this: *IPrinting3D3MFPackage = @ptrCast(self);
        return try this.SaveModelToPackageAsync(value);
    }
    pub fn getCompression(self: *@This()) core.HResult!Printing3DPackageCompression {
        var this: ?*IPrinting3D3MFPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3D3MFPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompression();
    }
    pub fn putCompression(self: *@This(), value: Printing3DPackageCompression) core.HResult!void {
        var this: ?*IPrinting3D3MFPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3D3MFPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompression(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3D3MFPackage.IID)));
    }
    pub fn LoadAsync(value: *IRandomAccessStream) core.HResult!*IAsyncOperation(Printing3D3MFPackage) {
        const _f = @This().IPrinting3D3MFPackageStaticsCache.get();
        return try _f.LoadAsync(value);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3D3MFPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3D3MFPackage.GUID;
    pub const IID: Guid = IPrinting3D3MFPackage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3D3MFPackage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPrinting3D3MFPackageStaticsCache: FactoryCache(IPrinting3D3MFPackageStatics, RUNTIME_NAME) = .{};
};
pub const Printing3DBaseMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrinting3DBaseMaterial = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrinting3DBaseMaterial = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getColor(self: *@This()) core.HResult!*Printing3DColorMaterial {
        const this: *IPrinting3DBaseMaterial = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: *Printing3DColorMaterial) core.HResult!void {
        const this: *IPrinting3DBaseMaterial = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DBaseMaterial.IID)));
    }
    pub fn getAbs() core.HResult!HSTRING {
        const _f = @This().IPrinting3DBaseMaterialStaticsCache.get();
        return try _f.getAbs();
    }
    pub fn getPla() core.HResult!HSTRING {
        const _f = @This().IPrinting3DBaseMaterialStaticsCache.get();
        return try _f.getPla();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DBaseMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DBaseMaterial.GUID;
    pub const IID: Guid = IPrinting3DBaseMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DBaseMaterial.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPrinting3DBaseMaterialStaticsCache: FactoryCache(IPrinting3DBaseMaterialStatics, RUNTIME_NAME) = .{};
};
pub const Printing3DBaseMaterialGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBases(self: *@This()) core.HResult!*IVector(Printing3DBaseMaterial) {
        const this: *IPrinting3DBaseMaterialGroup = @ptrCast(self);
        return try this.getBases();
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DBaseMaterialGroup = @ptrCast(self);
        return try this.getMaterialGroupId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(MaterialGroupId: u32) core.HResult!*Printing3DBaseMaterialGroup {
        const _f = @This().IPrinting3DBaseMaterialGroupFactoryCache.get();
        return try _f.Create(MaterialGroupId);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DBaseMaterialGroup.GUID;
    pub const IID: Guid = IPrinting3DBaseMaterialGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DBaseMaterialGroup.SIGNATURE);
    var _IPrinting3DBaseMaterialGroupFactoryCache: FactoryCache(IPrinting3DBaseMaterialGroupFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DBufferDescription = extern struct {
    Format: Printing3DBufferFormat,
    Stride: u32,
};
pub const Printing3DBufferFormat = enum(i32) {
    Unknown = 0,
    R32G32B32A32Float = 2,
    R32G32B32A32UInt = 3,
    R32G32B32Float = 6,
    R32G32B32UInt = 7,
    Printing3DDouble = 500,
    Printing3DUInt = 501,
};
pub const Printing3DColorMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DColorMaterial = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DColorMaterial = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        var this: ?*IPrinting3DColorMaterial2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DColorMaterial2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IPrinting3DColorMaterial2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DColorMaterial2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DColorMaterial.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DColorMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DColorMaterial.GUID;
    pub const IID: Guid = IPrinting3DColorMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DColorMaterial.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DColorMaterialGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColors(self: *@This()) core.HResult!*IVector(Printing3DColorMaterial) {
        const this: *IPrinting3DColorMaterialGroup = @ptrCast(self);
        return try this.getColors();
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DColorMaterialGroup = @ptrCast(self);
        return try this.getMaterialGroupId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(MaterialGroupId: u32) core.HResult!*Printing3DColorMaterialGroup {
        const _f = @This().IPrinting3DColorMaterialGroupFactoryCache.get();
        return try _f.Create(MaterialGroupId);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DColorMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DColorMaterialGroup.GUID;
    pub const IID: Guid = IPrinting3DColorMaterialGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DColorMaterialGroup.SIGNATURE);
    var _IPrinting3DColorMaterialGroupFactoryCache: FactoryCache(IPrinting3DColorMaterialGroupFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DComponent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMesh(self: *@This()) core.HResult!*Printing3DMesh {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.getMesh();
    }
    pub fn putMesh(self: *@This(), value: *Printing3DMesh) core.HResult!void {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.putMesh(value);
    }
    pub fn getComponents(self: *@This()) core.HResult!*IVector(Printing3DComponentWithMatrix) {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.getComponents();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*Printing3DTextureResource {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *Printing3DTextureResource) core.HResult!void {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getType(self: *@This()) core.HResult!Printing3DObjectType {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: Printing3DObjectType) core.HResult!void {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getPartNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.getPartNumber();
    }
    pub fn putPartNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrinting3DComponent = @ptrCast(self);
        return try this.putPartNumber(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DComponent.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DComponent.GUID;
    pub const IID: Guid = IPrinting3DComponent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DComponent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DComponentWithMatrix = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getComponent(self: *@This()) core.HResult!*Printing3DComponent {
        const this: *IPrinting3DComponentWithMatrix = @ptrCast(self);
        return try this.getComponent();
    }
    pub fn putComponent(self: *@This(), value: *Printing3DComponent) core.HResult!void {
        const this: *IPrinting3DComponentWithMatrix = @ptrCast(self);
        return try this.putComponent(value);
    }
    pub fn getMatrix(self: *@This()) core.HResult!Matrix4x4 {
        const this: *IPrinting3DComponentWithMatrix = @ptrCast(self);
        return try this.getMatrix();
    }
    pub fn putMatrix(self: *@This(), value: Matrix4x4) core.HResult!void {
        const this: *IPrinting3DComponentWithMatrix = @ptrCast(self);
        return try this.putMatrix(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DComponentWithMatrix.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DComponentWithMatrix";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DComponentWithMatrix.GUID;
    pub const IID: Guid = IPrinting3DComponentWithMatrix.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DComponentWithMatrix.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DCompositeMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValues(self: *@This()) core.HResult!*IVector(f64) {
        const this: *IPrinting3DCompositeMaterial = @ptrCast(self);
        return try this.getValues();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DCompositeMaterial.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DCompositeMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DCompositeMaterial.GUID;
    pub const IID: Guid = IPrinting3DCompositeMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DCompositeMaterial.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DCompositeMaterialGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getComposites(self: *@This()) core.HResult!*IVector(Printing3DCompositeMaterial) {
        const this: *IPrinting3DCompositeMaterialGroup = @ptrCast(self);
        return try this.getComposites();
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DCompositeMaterialGroup = @ptrCast(self);
        return try this.getMaterialGroupId();
    }
    pub fn getMaterialIndices(self: *@This()) core.HResult!*IVector(u32) {
        const this: *IPrinting3DCompositeMaterialGroup = @ptrCast(self);
        return try this.getMaterialIndices();
    }
    pub fn getBaseMaterialGroup(self: *@This()) core.HResult!*Printing3DBaseMaterialGroup {
        var this: ?*IPrinting3DCompositeMaterialGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DCompositeMaterialGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBaseMaterialGroup();
    }
    pub fn putBaseMaterialGroup(self: *@This(), value: *Printing3DBaseMaterialGroup) core.HResult!void {
        var this: ?*IPrinting3DCompositeMaterialGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DCompositeMaterialGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBaseMaterialGroup(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(MaterialGroupId: u32) core.HResult!*Printing3DCompositeMaterialGroup {
        const _f = @This().IPrinting3DCompositeMaterialGroupFactoryCache.get();
        return try _f.Create(MaterialGroupId);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DCompositeMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DCompositeMaterialGroup.GUID;
    pub const IID: Guid = IPrinting3DCompositeMaterialGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DCompositeMaterialGroup.SIGNATURE);
    var _IPrinting3DCompositeMaterialGroupFactoryCache: FactoryCache(IPrinting3DCompositeMaterialGroupFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DFaceReductionOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxReductionArea(self: *@This()) core.HResult!f64 {
        const this: *IPrinting3DFaceReductionOptions = @ptrCast(self);
        return try this.getMaxReductionArea();
    }
    pub fn putMaxReductionArea(self: *@This(), value: f64) core.HResult!void {
        const this: *IPrinting3DFaceReductionOptions = @ptrCast(self);
        return try this.putMaxReductionArea(value);
    }
    pub fn getTargetTriangleCount(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DFaceReductionOptions = @ptrCast(self);
        return try this.getTargetTriangleCount();
    }
    pub fn putTargetTriangleCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DFaceReductionOptions = @ptrCast(self);
        return try this.putTargetTriangleCount(value);
    }
    pub fn getMaxEdgeLength(self: *@This()) core.HResult!f64 {
        const this: *IPrinting3DFaceReductionOptions = @ptrCast(self);
        return try this.getMaxEdgeLength();
    }
    pub fn putMaxEdgeLength(self: *@This(), value: f64) core.HResult!void {
        const this: *IPrinting3DFaceReductionOptions = @ptrCast(self);
        return try this.putMaxEdgeLength(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DFaceReductionOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DFaceReductionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DFaceReductionOptions.GUID;
    pub const IID: Guid = IPrinting3DFaceReductionOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DFaceReductionOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBaseGroups(self: *@This()) core.HResult!*IVector(Printing3DBaseMaterialGroup) {
        const this: *IPrinting3DMaterial = @ptrCast(self);
        return try this.getBaseGroups();
    }
    pub fn getColorGroups(self: *@This()) core.HResult!*IVector(Printing3DColorMaterialGroup) {
        const this: *IPrinting3DMaterial = @ptrCast(self);
        return try this.getColorGroups();
    }
    pub fn getTexture2CoordGroups(self: *@This()) core.HResult!*IVector(Printing3DTexture2CoordMaterialGroup) {
        const this: *IPrinting3DMaterial = @ptrCast(self);
        return try this.getTexture2CoordGroups();
    }
    pub fn getCompositeGroups(self: *@This()) core.HResult!*IVector(Printing3DCompositeMaterialGroup) {
        const this: *IPrinting3DMaterial = @ptrCast(self);
        return try this.getCompositeGroups();
    }
    pub fn getMultiplePropertyGroups(self: *@This()) core.HResult!*IVector(Printing3DMultiplePropertyMaterialGroup) {
        const this: *IPrinting3DMaterial = @ptrCast(self);
        return try this.getMultiplePropertyGroups();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DMaterial.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DMaterial.GUID;
    pub const IID: Guid = IPrinting3DMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DMaterial.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DMesh = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVertexCount(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getVertexCount();
    }
    pub fn putVertexCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.putVertexCount(value);
    }
    pub fn getIndexCount(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getIndexCount();
    }
    pub fn putIndexCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.putIndexCount(value);
    }
    pub fn getVertexPositionsDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getVertexPositionsDescription();
    }
    pub fn putVertexPositionsDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.putVertexPositionsDescription(value);
    }
    pub fn getVertexNormalsDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getVertexNormalsDescription();
    }
    pub fn putVertexNormalsDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.putVertexNormalsDescription(value);
    }
    pub fn getTriangleIndicesDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getTriangleIndicesDescription();
    }
    pub fn putTriangleIndicesDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.putTriangleIndicesDescription(value);
    }
    pub fn getTriangleMaterialIndicesDescription(self: *@This()) core.HResult!Printing3DBufferDescription {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getTriangleMaterialIndicesDescription();
    }
    pub fn putTriangleMaterialIndicesDescription(self: *@This(), value: Printing3DBufferDescription) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.putTriangleMaterialIndicesDescription(value);
    }
    pub fn GetVertexPositions(self: *@This()) core.HResult!*IBuffer {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.GetVertexPositions();
    }
    pub fn CreateVertexPositions(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.CreateVertexPositions(value);
    }
    pub fn GetVertexNormals(self: *@This()) core.HResult!*IBuffer {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.GetVertexNormals();
    }
    pub fn CreateVertexNormals(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.CreateVertexNormals(value);
    }
    pub fn GetTriangleIndices(self: *@This()) core.HResult!*IBuffer {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.GetTriangleIndices();
    }
    pub fn CreateTriangleIndices(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.CreateTriangleIndices(value);
    }
    pub fn GetTriangleMaterialIndices(self: *@This()) core.HResult!*IBuffer {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.GetTriangleMaterialIndices();
    }
    pub fn CreateTriangleMaterialIndices(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.CreateTriangleMaterialIndices(value);
    }
    pub fn getBufferDescriptionSet(self: *@This()) core.HResult!*IPropertySet {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getBufferDescriptionSet();
    }
    pub fn getBufferSet(self: *@This()) core.HResult!*IPropertySet {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.getBufferSet();
    }
    pub fn VerifyAsync(self: *@This(), value: Printing3DMeshVerificationMode) core.HResult!*IAsyncOperation(Printing3DMeshVerificationResult) {
        const this: *IPrinting3DMesh = @ptrCast(self);
        return try this.VerifyAsync(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DMesh.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DMesh";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DMesh.GUID;
    pub const IID: Guid = IPrinting3DMesh.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DMesh.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DMeshVerificationMode = enum(i32) {
    FindFirstError = 0,
    FindAllErrors = 1,
};
pub const Printing3DMeshVerificationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsValid(self: *@This()) core.HResult!bool {
        const this: *IPrinting3DMeshVerificationResult = @ptrCast(self);
        return try this.getIsValid();
    }
    pub fn getNonmanifoldTriangles(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IPrinting3DMeshVerificationResult = @ptrCast(self);
        return try this.getNonmanifoldTriangles();
    }
    pub fn getReversedNormalTriangles(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IPrinting3DMeshVerificationResult = @ptrCast(self);
        return try this.getReversedNormalTriangles();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DMeshVerificationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DMeshVerificationResult.GUID;
    pub const IID: Guid = IPrinting3DMeshVerificationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DMeshVerificationResult.SIGNATURE);
};
pub const Printing3DModel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnit(self: *@This()) core.HResult!Printing3DModelUnit {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn putUnit(self: *@This(), value: Printing3DModelUnit) core.HResult!void {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.putUnit(value);
    }
    pub fn getTextures(self: *@This()) core.HResult!*IVector(Printing3DModelTexture) {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getTextures();
    }
    pub fn getMeshes(self: *@This()) core.HResult!*IVector(Printing3DMesh) {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getMeshes();
    }
    pub fn getComponents(self: *@This()) core.HResult!*IVector(Printing3DComponent) {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getComponents();
    }
    pub fn getMaterial(self: *@This()) core.HResult!*Printing3DMaterial {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getMaterial();
    }
    pub fn putMaterial(self: *@This(), value: *Printing3DMaterial) core.HResult!void {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.putMaterial(value);
    }
    pub fn getBuild(self: *@This()) core.HResult!*Printing3DComponent {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getBuild();
    }
    pub fn putBuild(self: *@This(), value: *Printing3DComponent) core.HResult!void {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.putBuild(value);
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.putVersion(value);
    }
    pub fn getRequiredExtensions(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getRequiredExtensions();
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.getMetadata();
    }
    pub fn RepairAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.RepairAsync();
    }
    pub fn Clone(self: *@This()) core.HResult!*Printing3DModel {
        const this: *IPrinting3DModel = @ptrCast(self);
        return try this.Clone();
    }
    pub fn TryPartialRepairAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IPrinting3DModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryPartialRepairAsync();
    }
    pub fn TryPartialRepairAsyncWithMaxWaitTime(self: *@This(), maxWaitTime: TimeSpan) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IPrinting3DModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryPartialRepairAsyncWithMaxWaitTime(maxWaitTime);
    }
    pub fn TryReduceFacesAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var this: ?*IPrinting3DModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryReduceFacesAsync();
    }
    pub fn TryReduceFacesAsyncWithPrinting3DFaceReductionOptions(self: *@This(), printing3DFaceReductionOptions: *Printing3DFaceReductionOptions) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var this: ?*IPrinting3DModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryReduceFacesAsyncWithPrinting3DFaceReductionOptions(printing3DFaceReductionOptions);
    }
    pub fn TryReduceFacesAsyncWithPrinting3DFaceReductionOptionsAndMaxWait(self: *@This(), printing3DFaceReductionOptions: *Printing3DFaceReductionOptions, maxWait: TimeSpan) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var this: ?*IPrinting3DModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryReduceFacesAsyncWithPrinting3DFaceReductionOptionsAndMaxWait(printing3DFaceReductionOptions, maxWait);
    }
    pub fn RepairWithProgressAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(bool,f64) {
        var this: ?*IPrinting3DModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RepairWithProgressAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DModel.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DModel.GUID;
    pub const IID: Guid = IPrinting3DModel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DModel.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DModelTexture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextureResource(self: *@This()) core.HResult!*Printing3DTextureResource {
        const this: *IPrinting3DModelTexture = @ptrCast(self);
        return try this.getTextureResource();
    }
    pub fn putTextureResource(self: *@This(), value: *Printing3DTextureResource) core.HResult!void {
        const this: *IPrinting3DModelTexture = @ptrCast(self);
        return try this.putTextureResource(value);
    }
    pub fn getTileStyleU(self: *@This()) core.HResult!Printing3DTextureEdgeBehavior {
        const this: *IPrinting3DModelTexture = @ptrCast(self);
        return try this.getTileStyleU();
    }
    pub fn putTileStyleU(self: *@This(), value: Printing3DTextureEdgeBehavior) core.HResult!void {
        const this: *IPrinting3DModelTexture = @ptrCast(self);
        return try this.putTileStyleU(value);
    }
    pub fn getTileStyleV(self: *@This()) core.HResult!Printing3DTextureEdgeBehavior {
        const this: *IPrinting3DModelTexture = @ptrCast(self);
        return try this.getTileStyleV();
    }
    pub fn putTileStyleV(self: *@This(), value: Printing3DTextureEdgeBehavior) core.HResult!void {
        const this: *IPrinting3DModelTexture = @ptrCast(self);
        return try this.putTileStyleV(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DModelTexture.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DModelTexture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DModelTexture.GUID;
    pub const IID: Guid = IPrinting3DModelTexture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DModelTexture.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DModelUnit = enum(i32) {
    Meter = 0,
    Micron = 1,
    Millimeter = 2,
    Centimeter = 3,
    Inch = 4,
    Foot = 5,
};
pub const Printing3DMultiplePropertyMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaterialIndices(self: *@This()) core.HResult!*IVector(u32) {
        const this: *IPrinting3DMultiplePropertyMaterial = @ptrCast(self);
        return try this.getMaterialIndices();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DMultiplePropertyMaterial.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DMultiplePropertyMaterial.GUID;
    pub const IID: Guid = IPrinting3DMultiplePropertyMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DMultiplePropertyMaterial.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DMultiplePropertyMaterialGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMultipleProperties(self: *@This()) core.HResult!*IVector(Printing3DMultiplePropertyMaterial) {
        const this: *IPrinting3DMultiplePropertyMaterialGroup = @ptrCast(self);
        return try this.getMultipleProperties();
    }
    pub fn getMaterialGroupIndices(self: *@This()) core.HResult!*IVector(u32) {
        const this: *IPrinting3DMultiplePropertyMaterialGroup = @ptrCast(self);
        return try this.getMaterialGroupIndices();
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DMultiplePropertyMaterialGroup = @ptrCast(self);
        return try this.getMaterialGroupId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(MaterialGroupId: u32) core.HResult!*Printing3DMultiplePropertyMaterialGroup {
        const _f = @This().IPrinting3DMultiplePropertyMaterialGroupFactoryCache.get();
        return try _f.Create(MaterialGroupId);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DMultiplePropertyMaterialGroup.GUID;
    pub const IID: Guid = IPrinting3DMultiplePropertyMaterialGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DMultiplePropertyMaterialGroup.SIGNATURE);
    var _IPrinting3DMultiplePropertyMaterialGroupFactoryCache: FactoryCache(IPrinting3DMultiplePropertyMaterialGroupFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DObjectType = enum(i32) {
    Model = 0,
    Support = 1,
    Others = 2,
};
pub const Printing3DPackageCompression = enum(i32) {
    Low = 0,
    Medium = 1,
    High = 2,
};
pub const Printing3DTexture2CoordMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTexture(self: *@This()) core.HResult!*Printing3DModelTexture {
        const this: *IPrinting3DTexture2CoordMaterial = @ptrCast(self);
        return try this.getTexture();
    }
    pub fn putTexture(self: *@This(), value: *Printing3DModelTexture) core.HResult!void {
        const this: *IPrinting3DTexture2CoordMaterial = @ptrCast(self);
        return try this.putTexture(value);
    }
    pub fn getU(self: *@This()) core.HResult!f64 {
        const this: *IPrinting3DTexture2CoordMaterial = @ptrCast(self);
        return try this.getU();
    }
    pub fn putU(self: *@This(), value: f64) core.HResult!void {
        const this: *IPrinting3DTexture2CoordMaterial = @ptrCast(self);
        return try this.putU(value);
    }
    pub fn getV(self: *@This()) core.HResult!f64 {
        const this: *IPrinting3DTexture2CoordMaterial = @ptrCast(self);
        return try this.getV();
    }
    pub fn putV(self: *@This(), value: f64) core.HResult!void {
        const this: *IPrinting3DTexture2CoordMaterial = @ptrCast(self);
        return try this.putV(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DTexture2CoordMaterial.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DTexture2CoordMaterial.GUID;
    pub const IID: Guid = IPrinting3DTexture2CoordMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DTexture2CoordMaterial.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DTexture2CoordMaterialGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTexture2Coords(self: *@This()) core.HResult!*IVector(Printing3DTexture2CoordMaterial) {
        const this: *IPrinting3DTexture2CoordMaterialGroup = @ptrCast(self);
        return try this.getTexture2Coords();
    }
    pub fn getMaterialGroupId(self: *@This()) core.HResult!u32 {
        const this: *IPrinting3DTexture2CoordMaterialGroup = @ptrCast(self);
        return try this.getMaterialGroupId();
    }
    pub fn getTexture(self: *@This()) core.HResult!*Printing3DModelTexture {
        var this: ?*IPrinting3DTexture2CoordMaterialGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DTexture2CoordMaterialGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTexture();
    }
    pub fn putTexture(self: *@This(), value: *Printing3DModelTexture) core.HResult!void {
        var this: ?*IPrinting3DTexture2CoordMaterialGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrinting3DTexture2CoordMaterialGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTexture(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(MaterialGroupId: u32) core.HResult!*Printing3DTexture2CoordMaterialGroup {
        const _f = @This().IPrinting3DTexture2CoordMaterialGroupFactoryCache.get();
        return try _f.Create(MaterialGroupId);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterialGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DTexture2CoordMaterialGroup.GUID;
    pub const IID: Guid = IPrinting3DTexture2CoordMaterialGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DTexture2CoordMaterialGroup.SIGNATURE);
    var _IPrinting3DTexture2CoordMaterialGroupFactoryCache: FactoryCache(IPrinting3DTexture2CoordMaterialGroupFactory, RUNTIME_NAME) = .{};
};
pub const Printing3DTextureEdgeBehavior = enum(i32) {
    None = 0,
    Wrap = 1,
    Mirror = 2,
    Clamp = 3,
};
pub const Printing3DTextureResource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextureData(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        const this: *IPrinting3DTextureResource = @ptrCast(self);
        return try this.getTextureData();
    }
    pub fn putTextureData(self: *@This(), value: *IRandomAccessStreamWithContentType) core.HResult!void {
        const this: *IPrinting3DTextureResource = @ptrCast(self);
        return try this.putTextureData(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrinting3DTextureResource = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrinting3DTextureResource = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrinting3DTextureResource.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing3D.Printing3DTextureResource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrinting3DTextureResource.GUID;
    pub const IID: Guid = IPrinting3DTextureResource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrinting3DTextureResource.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Matrix4x4 = @import("../Foundation/Numerics.zig").Matrix4x4;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const IAgileObject = @import("../root.zig").IAgileObject;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
