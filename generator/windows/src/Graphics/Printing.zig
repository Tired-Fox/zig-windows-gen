pub const IPrintDocumentSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintDocumentSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dedc0c30-f1eb-47df-aae6-ed5427511f01";
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
pub const IPrintManager = extern struct {
    vtable: *const VTable,
    pub fn addPrintTaskRequested(self: *@This(), eventHandler: *TypedEventHandler(PrintManager,PrintTaskRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PrintTaskRequested(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePrintTaskRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PrintTaskRequested(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff2a9694-8c99-44fd-ae4a-19d9aa9a0f0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PrintTaskRequested: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintManager,PrintTaskRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PrintTaskRequested: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintManagerStatic = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*PrintManager {
        var _r: *PrintManager = undefined;
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
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintManagerStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58185dcd-e634-4654-84f0-e0152a8217ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **PrintManager) callconv(.winapi) HRESULT,
        ShowPrintUIAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintManagerStatic2 = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintManagerStatic2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35a99955-e6ab-4139-9abd-b86a729b3598";
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
pub const IPrintPageInfo = extern struct {
    vtable: *const VTable,
    pub fn putMediaSize(self: *@This(), value: PrintMediaSize) core.HResult!void {
        const _c = self.vtable.put_MediaSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaSize(self: *@This()) core.HResult!PrintMediaSize {
        var _r: PrintMediaSize = undefined;
        const _c = self.vtable.get_MediaSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPageSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_PageSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_PageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDpiX(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DpiX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDpiX(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DpiX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDpiY(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DpiY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDpiY(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DpiY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: PrintOrientation) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrientation(self: *@This()) core.HResult!PrintOrientation {
        var _r: PrintOrientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintPageInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd4be9c9-a6a1-4ada-930e-da872a4f23d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_MediaSize: *const fn(self: *anyopaque, value: PrintMediaSize) callconv(.winapi) HRESULT,
        get_MediaSize: *const fn(self: *anyopaque, _r: *PrintMediaSize) callconv(.winapi) HRESULT,
        put_PageSize: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_PageSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_DpiX: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DpiX: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DpiY: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DpiY: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: PrintOrientation) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *PrintOrientation) callconv(.winapi) HRESULT,
    };
};
pub const IPrintPageRange = extern struct {
    vtable: *const VTable,
    pub fn getFirstPageNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstPageNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastPageNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastPageNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintPageRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8a06c54-6e7c-51c5-57fd-0660c2d71513";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FirstPageNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastPageNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintPageRangeFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), firstPage: i32, lastPage: i32) core.HResult!*PrintPageRange {
        var _r: *PrintPageRange = undefined;
        const _c = self.vtable.Create(@ptrCast(self), firstPage, lastPage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithSinglePage(self: *@This(), page: i32) core.HResult!*PrintPageRange {
        var _r: *PrintPageRange = undefined;
        const _c = self.vtable.CreateWithSinglePage(@ptrCast(self), page, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintPageRangeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "408fd45f-e047-5f85-7129-fb085a4fad14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, firstPage: i32, lastPage: i32, _r: **PrintPageRange) callconv(.winapi) HRESULT,
        CreateWithSinglePage: *const fn(self: *anyopaque, page: i32, _r: **PrintPageRange) callconv(.winapi) HRESULT,
    };
};
pub const IPrintPageRangeOptions = extern struct {
    vtable: *const VTable,
    pub fn putAllowAllPages(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowAllPages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowAllPages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowAllPages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowCurrentPage(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowCurrentPage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowCurrentPage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowCurrentPage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowCustomSetOfPages(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowCustomSetOfPages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowCustomSetOfPages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowCustomSetOfPages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintPageRangeOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce6db728-1357-46b2-a923-79f995f448fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AllowAllPages: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowAllPages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowCurrentPage: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowCurrentPage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowCustomSetOfPages: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowCustomSetOfPages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTask = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*DataPackagePropertySet {
        var _r: *DataPackagePropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!*IPrintDocumentSource {
        var _r: *IPrintDocumentSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!*PrintTaskOptions {
        var _r: *PrintTaskOptions = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPreviewing(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Previewing(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreviewing(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Previewing(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSubmitting(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Submitting(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSubmitting(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Submitting(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProgressing(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,PrintTaskProgressingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Progressing(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProgressing(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Progressing(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,PrintTaskCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61d80247-6cf6-4fad-84e2-a5e82e2d4ceb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **DataPackagePropertySet) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **IPrintDocumentSource) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **PrintTaskOptions) callconv(.winapi) HRESULT,
        add_Previewing: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTask,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Previewing: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Submitting: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTask,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Submitting: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Progressing: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTask,PrintTaskProgressingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Progressing: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTask,PrintTaskCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTask2 = extern struct {
    vtable: *const VTable,
    pub fn putIsPreviewEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPreviewEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPreviewEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPreviewEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTask2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36234877-3e53-4d9d-8f5e-316ac8dedae1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsPreviewEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPreviewEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCompletion(self: *@This()) core.HResult!PrintTaskCompletion {
        var _r: PrintTaskCompletion = undefined;
        const _c = self.vtable.get_Completion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bcd34af-24e9-4c10-8d07-14c346ba3fce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Completion: *const fn(self: *anyopaque, _r: *PrintTaskCompletion) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptions = extern struct {
    vtable: *const VTable,
    pub fn putBordering(self: *@This(), value: PrintBordering) core.HResult!void {
        const _c = self.vtable.put_Bordering(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBordering(self: *@This()) core.HResult!PrintBordering {
        var _r: PrintBordering = undefined;
        const _c = self.vtable.get_Bordering(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPagePrintTicket(self: *@This(), printPageInfo: *PrintPageInfo) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.GetPagePrintTicket(@ptrCast(self), printPageInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a0a66bb-d289-41bb-96dd-57e28338ae3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Bordering: *const fn(self: *anyopaque, value: PrintBordering) callconv(.winapi) HRESULT,
        get_Bordering: *const fn(self: *anyopaque, _r: *PrintBordering) callconv(.winapi) HRESULT,
        GetPagePrintTicket: *const fn(self: *anyopaque, printPageInfo: *PrintPageInfo, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getPageRangeOptions(self: *@This()) core.HResult!*PrintPageRangeOptions {
        var _r: *PrintPageRangeOptions = undefined;
        const _c = self.vtable.get_PageRangeOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomPageRanges(self: *@This()) core.HResult!*IVector(PrintPageRange) {
        var _r: *IVector(PrintPageRange) = undefined;
        const _c = self.vtable.get_CustomPageRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb9b1606-9a36-4b59-8617-b217849262e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PageRangeOptions: *const fn(self: *anyopaque, _r: **PrintPageRangeOptions) callconv(.winapi) HRESULT,
        get_CustomPageRanges: *const fn(self: *anyopaque, _r: **IVector(PrintPageRange)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionsCore = extern struct {
    vtable: *const VTable,
    pub fn GetPageDescription(self: *@This(), jobPageNumber: u32) core.HResult!PrintPageDescription {
        var _r: PrintPageDescription = undefined;
        const _c = self.vtable.GetPageDescription(@ptrCast(self), jobPageNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskOptionsCore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bdbb474-4ed1-41eb-be3c-72d18ed67337";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPageDescription: *const fn(self: *anyopaque, jobPageNumber: u32, _r: *PrintPageDescription) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionsCoreProperties = extern struct {
    vtable: *const VTable,
    pub fn putMediaSize(self: *@This(), value: PrintMediaSize) core.HResult!void {
        const _c = self.vtable.put_MediaSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaSize(self: *@This()) core.HResult!PrintMediaSize {
        var _r: PrintMediaSize = undefined;
        const _c = self.vtable.get_MediaSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMediaType(self: *@This(), value: PrintMediaType) core.HResult!void {
        const _c = self.vtable.put_MediaType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaType(self: *@This()) core.HResult!PrintMediaType {
        var _r: PrintMediaType = undefined;
        const _c = self.vtable.get_MediaType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: PrintOrientation) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrientation(self: *@This()) core.HResult!PrintOrientation {
        var _r: PrintOrientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrintQuality(self: *@This(), value: PrintQuality) core.HResult!void {
        const _c = self.vtable.put_PrintQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrintQuality(self: *@This()) core.HResult!PrintQuality {
        var _r: PrintQuality = undefined;
        const _c = self.vtable.get_PrintQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorMode(self: *@This(), value: PrintColorMode) core.HResult!void {
        const _c = self.vtable.put_ColorMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColorMode(self: *@This()) core.HResult!PrintColorMode {
        var _r: PrintColorMode = undefined;
        const _c = self.vtable.get_ColorMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuplex(self: *@This(), value: PrintDuplex) core.HResult!void {
        const _c = self.vtable.put_Duplex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuplex(self: *@This()) core.HResult!PrintDuplex {
        var _r: PrintDuplex = undefined;
        const _c = self.vtable.get_Duplex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCollation(self: *@This(), value: PrintCollation) core.HResult!void {
        const _c = self.vtable.put_Collation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCollation(self: *@This()) core.HResult!PrintCollation {
        var _r: PrintCollation = undefined;
        const _c = self.vtable.get_Collation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStaple(self: *@This(), value: PrintStaple) core.HResult!void {
        const _c = self.vtable.put_Staple(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStaple(self: *@This()) core.HResult!PrintStaple {
        var _r: PrintStaple = undefined;
        const _c = self.vtable.get_Staple(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHolePunch(self: *@This(), value: PrintHolePunch) core.HResult!void {
        const _c = self.vtable.put_HolePunch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHolePunch(self: *@This()) core.HResult!PrintHolePunch {
        var _r: PrintHolePunch = undefined;
        const _c = self.vtable.get_HolePunch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBinding(self: *@This(), value: PrintBinding) core.HResult!void {
        const _c = self.vtable.put_Binding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBinding(self: *@This()) core.HResult!PrintBinding {
        var _r: PrintBinding = undefined;
        const _c = self.vtable.get_Binding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinCopies(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinCopies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxCopies(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxCopies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumberOfCopies(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_NumberOfCopies(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumberOfCopies(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NumberOfCopies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1b71832-9e93-4e55-814b-3326a59efce1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_MediaSize: *const fn(self: *anyopaque, value: PrintMediaSize) callconv(.winapi) HRESULT,
        get_MediaSize: *const fn(self: *anyopaque, _r: *PrintMediaSize) callconv(.winapi) HRESULT,
        put_MediaType: *const fn(self: *anyopaque, value: PrintMediaType) callconv(.winapi) HRESULT,
        get_MediaType: *const fn(self: *anyopaque, _r: *PrintMediaType) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: PrintOrientation) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *PrintOrientation) callconv(.winapi) HRESULT,
        put_PrintQuality: *const fn(self: *anyopaque, value: PrintQuality) callconv(.winapi) HRESULT,
        get_PrintQuality: *const fn(self: *anyopaque, _r: *PrintQuality) callconv(.winapi) HRESULT,
        put_ColorMode: *const fn(self: *anyopaque, value: PrintColorMode) callconv(.winapi) HRESULT,
        get_ColorMode: *const fn(self: *anyopaque, _r: *PrintColorMode) callconv(.winapi) HRESULT,
        put_Duplex: *const fn(self: *anyopaque, value: PrintDuplex) callconv(.winapi) HRESULT,
        get_Duplex: *const fn(self: *anyopaque, _r: *PrintDuplex) callconv(.winapi) HRESULT,
        put_Collation: *const fn(self: *anyopaque, value: PrintCollation) callconv(.winapi) HRESULT,
        get_Collation: *const fn(self: *anyopaque, _r: *PrintCollation) callconv(.winapi) HRESULT,
        put_Staple: *const fn(self: *anyopaque, value: PrintStaple) callconv(.winapi) HRESULT,
        get_Staple: *const fn(self: *anyopaque, _r: *PrintStaple) callconv(.winapi) HRESULT,
        put_HolePunch: *const fn(self: *anyopaque, value: PrintHolePunch) callconv(.winapi) HRESULT,
        get_HolePunch: *const fn(self: *anyopaque, _r: *PrintHolePunch) callconv(.winapi) HRESULT,
        put_Binding: *const fn(self: *anyopaque, value: PrintBinding) callconv(.winapi) HRESULT,
        get_Binding: *const fn(self: *anyopaque, _r: *PrintBinding) callconv(.winapi) HRESULT,
        get_MinCopies: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxCopies: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_NumberOfCopies: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_NumberOfCopies: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionsCoreUIConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getDisplayedOptions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DisplayedOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskOptionsCoreUIConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62e69e23-9a1e-4336-b74f-3cc7f4cff709";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayedOptions: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskProgressingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDocumentPageCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DocumentPageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskProgressingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "810cd3cb-b410-4282-a073-5ac378234174";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DocumentPageCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskRequest = extern struct {
    vtable: *const VTable,
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePrintTask(self: *@This(), title: HSTRING, handler: *PrintTaskSourceRequestedHandler) core.HResult!*PrintTask {
        var _r: *PrintTask = undefined;
        const _c = self.vtable.CreatePrintTask(@ptrCast(self), title, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PrintTaskRequestedDeferral {
        var _r: *PrintTaskRequestedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ff61e2e-2722-4240-a67c-f364849a17f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        CreatePrintTask: *const fn(self: *anyopaque, title: HSTRING, handler: *PrintTaskSourceRequestedHandler, _r: **PrintTask) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **PrintTaskRequestedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskRequestedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfefb3f0-ce3e-42c7-9496-64800c622c44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*PrintTaskRequest {
        var _r: *PrintTaskRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0aff924-a31b-454c-a7b6-5d0cc522fc16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **PrintTaskRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskSourceRequestedArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSource(self: *@This(), source: *IPrintDocumentSource) core.HResult!void {
        const _c = self.vtable.SetSource(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PrintTaskSourceRequestedDeferral {
        var _r: *PrintTaskSourceRequestedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskSourceRequestedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9f067be-f456-41f0-9c98-5ce73e851410";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        SetSource: *const fn(self: *anyopaque, source: *IPrintDocumentSource) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **PrintTaskSourceRequestedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskSourceRequestedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskSourceRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a1560d1-6992-4d9d-8555-4ca4563fb166";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskTargetDeviceSupport = extern struct {
    vtable: *const VTable,
    pub fn putIsPrinterTargetEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPrinterTargetEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPrinterTargetEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrinterTargetEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIs3DManufacturingTargetEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Is3DManufacturingTargetEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIs3DManufacturingTargetEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Is3DManufacturingTargetEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IPrintTaskTargetDeviceSupport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "295d70c0-c2cb-4b7d-b0ea-93095091a220";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsPrinterTargetEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPrinterTargetEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Is3DManufacturingTargetEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Is3DManufacturingTargetEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStandardPrintTaskOptionsStatic = extern struct {
    vtable: *const VTable,
    pub fn getMediaSize(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MediaSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MediaType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintQuality(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrintQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorMode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ColorMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuplex(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Duplex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Collation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStaple(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Staple(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHolePunch(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HolePunch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBinding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Binding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCopies(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Copies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNUp(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NUp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputBin(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InputBin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IStandardPrintTaskOptionsStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4483d26-0dd0-4cd4-baff-930fc7d6a574";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaSize: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MediaType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PrintQuality: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ColorMode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Duplex: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Collation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Staple: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HolePunch: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Binding: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Copies: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NUp: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InputBin: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStandardPrintTaskOptionsStatic2 = extern struct {
    vtable: *const VTable,
    pub fn getBordering(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bordering(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IStandardPrintTaskOptionsStatic2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3be38bf4-7a44-4269-9a52-81261e289ee9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bordering: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStandardPrintTaskOptionsStatic3 = extern struct {
    vtable: *const VTable,
    pub fn getCustomPageRanges(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomPageRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.IStandardPrintTaskOptionsStatic3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbf68e86-3858-41b3-a799-55dd9888d475";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CustomPageRanges: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const PrintBinding = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    None = 3,
    Bale = 4,
    BindBottom = 5,
    BindLeft = 6,
    BindRight = 7,
    BindTop = 8,
    Booklet = 9,
    EdgeStitchBottom = 10,
    EdgeStitchLeft = 11,
    EdgeStitchRight = 12,
    EdgeStitchTop = 13,
    Fold = 14,
    JogOffset = 15,
    Trim = 16,
};
pub const PrintBordering = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    Bordered = 3,
    Borderless = 4,
};
pub const PrintCollation = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    Collated = 3,
    Uncollated = 4,
};
pub const PrintColorMode = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    Color = 3,
    Grayscale = 4,
    Monochrome = 5,
    AutoSelect = 6,
};
pub const PrintDuplex = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    OneSided = 3,
    TwoSidedShortEdge = 4,
    TwoSidedLongEdge = 5,
};
pub const PrintHolePunch = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    None = 3,
    LeftEdge = 4,
    RightEdge = 5,
    TopEdge = 6,
    BottomEdge = 7,
};
pub const PrintManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPrintTaskRequested(self: *@This(), eventHandler: *TypedEventHandler(PrintManager,PrintTaskRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintManager = @ptrCast(self);
        return try this.addPrintTaskRequested(eventHandler);
    }
    pub fn removePrintTaskRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintManager = @ptrCast(self);
        return try this.removePrintTaskRequested(eventCookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IPrintManagerStatic2Cache.get();
        return try factory.IsSupported();
    }
    pub fn GetForCurrentView() core.HResult!*PrintManager {
        const factory = @This().IPrintManagerStaticCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn ShowPrintUIAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IPrintManagerStaticCache.get();
        return try factory.ShowPrintUIAsync();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintManager.GUID;
    pub const IID: Guid = IPrintManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintManager.SIGNATURE);
    var _IPrintManagerStatic2Cache: FactoryCache(IPrintManagerStatic2, RUNTIME_NAME) = .{};
    var _IPrintManagerStaticCache: FactoryCache(IPrintManagerStatic, RUNTIME_NAME) = .{};
};
pub const PrintMediaSize = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    BusinessCard = 3,
    CreditCard = 4,
    IsoA0 = 5,
    IsoA1 = 6,
    IsoA10 = 7,
    IsoA2 = 8,
    IsoA3 = 9,
    IsoA3Extra = 10,
    IsoA3Rotated = 11,
    IsoA4 = 12,
    IsoA4Extra = 13,
    IsoA4Rotated = 14,
    IsoA5 = 15,
    IsoA5Extra = 16,
    IsoA5Rotated = 17,
    IsoA6 = 18,
    IsoA6Rotated = 19,
    IsoA7 = 20,
    IsoA8 = 21,
    IsoA9 = 22,
    IsoB0 = 23,
    IsoB1 = 24,
    IsoB10 = 25,
    IsoB2 = 26,
    IsoB3 = 27,
    IsoB4 = 28,
    IsoB4Envelope = 29,
    IsoB5Envelope = 30,
    IsoB5Extra = 31,
    IsoB7 = 32,
    IsoB8 = 33,
    IsoB9 = 34,
    IsoC0 = 35,
    IsoC1 = 36,
    IsoC10 = 37,
    IsoC2 = 38,
    IsoC3 = 39,
    IsoC3Envelope = 40,
    IsoC4 = 41,
    IsoC4Envelope = 42,
    IsoC5 = 43,
    IsoC5Envelope = 44,
    IsoC6 = 45,
    IsoC6C5Envelope = 46,
    IsoC6Envelope = 47,
    IsoC7 = 48,
    IsoC8 = 49,
    IsoC9 = 50,
    IsoDLEnvelope = 51,
    IsoDLEnvelopeRotated = 52,
    IsoSRA3 = 53,
    Japan2LPhoto = 54,
    JapanChou3Envelope = 55,
    JapanChou3EnvelopeRotated = 56,
    JapanChou4Envelope = 57,
    JapanChou4EnvelopeRotated = 58,
    JapanDoubleHagakiPostcard = 59,
    JapanDoubleHagakiPostcardRotated = 60,
    JapanHagakiPostcard = 61,
    JapanHagakiPostcardRotated = 62,
    JapanKaku2Envelope = 63,
    JapanKaku2EnvelopeRotated = 64,
    JapanKaku3Envelope = 65,
    JapanKaku3EnvelopeRotated = 66,
    JapanLPhoto = 67,
    JapanQuadrupleHagakiPostcard = 68,
    JapanYou1Envelope = 69,
    JapanYou2Envelope = 70,
    JapanYou3Envelope = 71,
    JapanYou4Envelope = 72,
    JapanYou4EnvelopeRotated = 73,
    JapanYou6Envelope = 74,
    JapanYou6EnvelopeRotated = 75,
    JisB0 = 76,
    JisB1 = 77,
    JisB10 = 78,
    JisB2 = 79,
    JisB3 = 80,
    JisB4 = 81,
    JisB4Rotated = 82,
    JisB5 = 83,
    JisB5Rotated = 84,
    JisB6 = 85,
    JisB6Rotated = 86,
    JisB7 = 87,
    JisB8 = 88,
    JisB9 = 89,
    NorthAmerica10x11 = 90,
    NorthAmerica10x12 = 91,
    NorthAmerica10x14 = 92,
    NorthAmerica11x17 = 93,
    NorthAmerica14x17 = 94,
    NorthAmerica4x6 = 95,
    NorthAmerica4x8 = 96,
    NorthAmerica5x7 = 97,
    NorthAmerica8x10 = 98,
    NorthAmerica9x11 = 99,
    NorthAmericaArchitectureASheet = 100,
    NorthAmericaArchitectureBSheet = 101,
    NorthAmericaArchitectureCSheet = 102,
    NorthAmericaArchitectureDSheet = 103,
    NorthAmericaArchitectureESheet = 104,
    NorthAmericaCSheet = 105,
    NorthAmericaDSheet = 106,
    NorthAmericaESheet = 107,
    NorthAmericaExecutive = 108,
    NorthAmericaGermanLegalFanfold = 109,
    NorthAmericaGermanStandardFanfold = 110,
    NorthAmericaLegal = 111,
    NorthAmericaLegalExtra = 112,
    NorthAmericaLetter = 113,
    NorthAmericaLetterExtra = 114,
    NorthAmericaLetterPlus = 115,
    NorthAmericaLetterRotated = 116,
    NorthAmericaMonarchEnvelope = 117,
    NorthAmericaNote = 118,
    NorthAmericaNumber10Envelope = 119,
    NorthAmericaNumber10EnvelopeRotated = 120,
    NorthAmericaNumber11Envelope = 121,
    NorthAmericaNumber12Envelope = 122,
    NorthAmericaNumber14Envelope = 123,
    NorthAmericaNumber9Envelope = 124,
    NorthAmericaPersonalEnvelope = 125,
    NorthAmericaQuarto = 126,
    NorthAmericaStatement = 127,
    NorthAmericaSuperA = 128,
    NorthAmericaSuperB = 129,
    NorthAmericaTabloid = 130,
    NorthAmericaTabloidExtra = 131,
    OtherMetricA3Plus = 132,
    OtherMetricA4Plus = 133,
    OtherMetricFolio = 134,
    OtherMetricInviteEnvelope = 135,
    OtherMetricItalianEnvelope = 136,
    Prc10Envelope = 137,
    Prc10EnvelopeRotated = 138,
    Prc16K = 139,
    Prc16KRotated = 140,
    Prc1Envelope = 141,
    Prc1EnvelopeRotated = 142,
    Prc2Envelope = 143,
    Prc2EnvelopeRotated = 144,
    Prc32K = 145,
    Prc32KBig = 146,
    Prc32KRotated = 147,
    Prc3Envelope = 148,
    Prc3EnvelopeRotated = 149,
    Prc4Envelope = 150,
    Prc4EnvelopeRotated = 151,
    Prc5Envelope = 152,
    Prc5EnvelopeRotated = 153,
    Prc6Envelope = 154,
    Prc6EnvelopeRotated = 155,
    Prc7Envelope = 156,
    Prc7EnvelopeRotated = 157,
    Prc8Envelope = 158,
    Prc8EnvelopeRotated = 159,
    Prc9Envelope = 160,
    Prc9EnvelopeRotated = 161,
    Roll04Inch = 162,
    Roll06Inch = 163,
    Roll08Inch = 164,
    Roll12Inch = 165,
    Roll15Inch = 166,
    Roll18Inch = 167,
    Roll22Inch = 168,
    Roll24Inch = 169,
    Roll30Inch = 170,
    Roll36Inch = 171,
    Roll54Inch = 172,
};
pub const PrintMediaType = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    AutoSelect = 3,
    Archival = 4,
    BackPrintFilm = 5,
    Bond = 6,
    CardStock = 7,
    Continuous = 8,
    EnvelopePlain = 9,
    EnvelopeWindow = 10,
    Fabric = 11,
    HighResolution = 12,
    Label = 13,
    MultiLayerForm = 14,
    MultiPartForm = 15,
    Photographic = 16,
    PhotographicFilm = 17,
    PhotographicGlossy = 18,
    PhotographicHighGloss = 19,
    PhotographicMatte = 20,
    PhotographicSatin = 21,
    PhotographicSemiGloss = 22,
    Plain = 23,
    Screen = 24,
    ScreenPaged = 25,
    Stationery = 26,
    TabStockFull = 27,
    TabStockPreCut = 28,
    Transparency = 29,
    TShirtTransfer = 30,
    None = 31,
};
pub const PrintOrientation = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    Portrait = 3,
    PortraitFlipped = 4,
    Landscape = 5,
    LandscapeFlipped = 6,
};
pub const PrintPageDescription = extern struct {
    PageSize: Size,
    ImageableRect: Rect,
    DpiX: u32,
    DpiY: u32,
};
pub const PrintPageInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putMediaSize(self: *@This(), value: PrintMediaSize) core.HResult!void {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.putMediaSize(value);
    }
    pub fn getMediaSize(self: *@This()) core.HResult!PrintMediaSize {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.getMediaSize();
    }
    pub fn putPageSize(self: *@This(), value: Size) core.HResult!void {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.putPageSize(value);
    }
    pub fn getPageSize(self: *@This()) core.HResult!Size {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.getPageSize();
    }
    pub fn putDpiX(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.putDpiX(value);
    }
    pub fn getDpiX(self: *@This()) core.HResult!u32 {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.getDpiX();
    }
    pub fn putDpiY(self: *@This(), value: u32) core.HResult!void {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.putDpiY(value);
    }
    pub fn getDpiY(self: *@This()) core.HResult!u32 {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.getDpiY();
    }
    pub fn putOrientation(self: *@This(), value: PrintOrientation) core.HResult!void {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.putOrientation(value);
    }
    pub fn getOrientation(self: *@This()) core.HResult!PrintOrientation {
        const this: *IPrintPageInfo = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPrintPageInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintPageInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintPageInfo.GUID;
    pub const IID: Guid = IPrintPageInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintPageInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PrintPageRange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFirstPageNumber(self: *@This()) core.HResult!i32 {
        const this: *IPrintPageRange = @ptrCast(self);
        return try this.getFirstPageNumber();
    }
    pub fn getLastPageNumber(self: *@This()) core.HResult!i32 {
        const this: *IPrintPageRange = @ptrCast(self);
        return try this.getLastPageNumber();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(firstPage: i32, lastPage: i32) core.HResult!*PrintPageRange {
        const factory = @This().IPrintPageRangeFactoryCache.get();
        return try factory.Create(firstPage, lastPage);
    }
    pub fn CreateWithSinglePage(page: i32) core.HResult!*PrintPageRange {
        const factory = @This().IPrintPageRangeFactoryCache.get();
        return try factory.CreateWithSinglePage(page);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintPageRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintPageRange.GUID;
    pub const IID: Guid = IPrintPageRange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintPageRange.SIGNATURE);
    var _IPrintPageRangeFactoryCache: FactoryCache(IPrintPageRangeFactory, RUNTIME_NAME) = .{};
};
pub const PrintPageRangeOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAllowAllPages(self: *@This(), value: bool) core.HResult!void {
        const this: *IPrintPageRangeOptions = @ptrCast(self);
        return try this.putAllowAllPages(value);
    }
    pub fn getAllowAllPages(self: *@This()) core.HResult!bool {
        const this: *IPrintPageRangeOptions = @ptrCast(self);
        return try this.getAllowAllPages();
    }
    pub fn putAllowCurrentPage(self: *@This(), value: bool) core.HResult!void {
        const this: *IPrintPageRangeOptions = @ptrCast(self);
        return try this.putAllowCurrentPage(value);
    }
    pub fn getAllowCurrentPage(self: *@This()) core.HResult!bool {
        const this: *IPrintPageRangeOptions = @ptrCast(self);
        return try this.getAllowCurrentPage();
    }
    pub fn putAllowCustomSetOfPages(self: *@This(), value: bool) core.HResult!void {
        const this: *IPrintPageRangeOptions = @ptrCast(self);
        return try this.putAllowCustomSetOfPages(value);
    }
    pub fn getAllowCustomSetOfPages(self: *@This()) core.HResult!bool {
        const this: *IPrintPageRangeOptions = @ptrCast(self);
        return try this.getAllowCustomSetOfPages();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintPageRangeOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintPageRangeOptions.GUID;
    pub const IID: Guid = IPrintPageRangeOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintPageRangeOptions.SIGNATURE);
};
pub const PrintQuality = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    Automatic = 3,
    Draft = 4,
    Fax = 5,
    High = 6,
    Normal = 7,
    Photographic = 8,
    Text = 9,
};
pub const PrintStaple = enum(i32) {
    Default = 0,
    NotAvailable = 1,
    PrinterCustom = 2,
    None = 3,
    StapleTopLeft = 4,
    StapleTopRight = 5,
    StapleBottomLeft = 6,
    StapleBottomRight = 7,
    StapleDualLeft = 8,
    StapleDualRight = 9,
    StapleDualTop = 10,
    StapleDualBottom = 11,
    SaddleStitch = 12,
};
pub const PrintTask = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperties(self: *@This()) core.HResult!*DataPackagePropertySet {
        const this: *IPrintTask = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getSource(self: *@This()) core.HResult!*IPrintDocumentSource {
        const this: *IPrintTask = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getOptions(self: *@This()) core.HResult!*PrintTaskOptions {
        const this: *IPrintTask = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn addPreviewing(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPrintTask = @ptrCast(self);
        return try this.addPreviewing(eventHandler);
    }
    pub fn removePreviewing(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTask = @ptrCast(self);
        return try this.removePreviewing(eventCookie);
    }
    pub fn addSubmitting(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPrintTask = @ptrCast(self);
        return try this.addSubmitting(eventHandler);
    }
    pub fn removeSubmitting(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTask = @ptrCast(self);
        return try this.removeSubmitting(eventCookie);
    }
    pub fn addProgressing(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,PrintTaskProgressingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintTask = @ptrCast(self);
        return try this.addProgressing(eventHandler);
    }
    pub fn removeProgressing(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTask = @ptrCast(self);
        return try this.removeProgressing(eventCookie);
    }
    pub fn addCompleted(self: *@This(), eventHandler: *TypedEventHandler(PrintTask,PrintTaskCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintTask = @ptrCast(self);
        return try this.addCompleted(eventHandler);
    }
    pub fn removeCompleted(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTask = @ptrCast(self);
        return try this.removeCompleted(eventCookie);
    }
    pub fn putIsPrinterTargetEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPrintTaskTargetDeviceSupport = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskTargetDeviceSupport.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsPrinterTargetEnabled(value);
    }
    pub fn getIsPrinterTargetEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IPrintTaskTargetDeviceSupport = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskTargetDeviceSupport.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrinterTargetEnabled();
    }
    pub fn putIs3DManufacturingTargetEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPrintTaskTargetDeviceSupport = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskTargetDeviceSupport.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIs3DManufacturingTargetEnabled(value);
    }
    pub fn getIs3DManufacturingTargetEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IPrintTaskTargetDeviceSupport = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskTargetDeviceSupport.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIs3DManufacturingTargetEnabled();
    }
    pub fn putIsPreviewEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPrintTask2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTask2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsPreviewEnabled(value);
    }
    pub fn getIsPreviewEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IPrintTask2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTask2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPreviewEnabled();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTask.GUID;
    pub const IID: Guid = IPrintTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTask.SIGNATURE);
};
pub const PrintTaskCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompletion(self: *@This()) core.HResult!PrintTaskCompletion {
        const this: *IPrintTaskCompletedEventArgs = @ptrCast(self);
        return try this.getCompletion();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskCompletedEventArgs.GUID;
    pub const IID: Guid = IPrintTaskCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskCompletedEventArgs.SIGNATURE);
};
pub const PrintTaskCompletion = enum(i32) {
    Abandoned = 0,
    Canceled = 1,
    Failed = 2,
    Submitted = 3,
};
pub const PrintTaskOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetPageDescription(self: *@This(), jobPageNumber: u32) core.HResult!PrintPageDescription {
        const this: *IPrintTaskOptionsCore = @ptrCast(self);
        return try this.GetPageDescription(jobPageNumber);
    }
    pub fn putMediaSize(self: *@This(), value: PrintMediaSize) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMediaSize(value);
    }
    pub fn getMediaSize(self: *@This()) core.HResult!PrintMediaSize {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMediaSize();
    }
    pub fn putMediaType(self: *@This(), value: PrintMediaType) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMediaType(value);
    }
    pub fn getMediaType(self: *@This()) core.HResult!PrintMediaType {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMediaType();
    }
    pub fn putOrientation(self: *@This(), value: PrintOrientation) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOrientation(value);
    }
    pub fn getOrientation(self: *@This()) core.HResult!PrintOrientation {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOrientation();
    }
    pub fn putPrintQuality(self: *@This(), value: PrintQuality) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrintQuality(value);
    }
    pub fn getPrintQuality(self: *@This()) core.HResult!PrintQuality {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrintQuality();
    }
    pub fn putColorMode(self: *@This(), value: PrintColorMode) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorMode(value);
    }
    pub fn getColorMode(self: *@This()) core.HResult!PrintColorMode {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorMode();
    }
    pub fn putDuplex(self: *@This(), value: PrintDuplex) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuplex(value);
    }
    pub fn getDuplex(self: *@This()) core.HResult!PrintDuplex {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuplex();
    }
    pub fn putCollation(self: *@This(), value: PrintCollation) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCollation(value);
    }
    pub fn getCollation(self: *@This()) core.HResult!PrintCollation {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCollation();
    }
    pub fn putStaple(self: *@This(), value: PrintStaple) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStaple(value);
    }
    pub fn getStaple(self: *@This()) core.HResult!PrintStaple {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStaple();
    }
    pub fn putHolePunch(self: *@This(), value: PrintHolePunch) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHolePunch(value);
    }
    pub fn getHolePunch(self: *@This()) core.HResult!PrintHolePunch {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHolePunch();
    }
    pub fn putBinding(self: *@This(), value: PrintBinding) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBinding(value);
    }
    pub fn getBinding(self: *@This()) core.HResult!PrintBinding {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBinding();
    }
    pub fn getMinCopies(self: *@This()) core.HResult!u32 {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinCopies();
    }
    pub fn getMaxCopies(self: *@This()) core.HResult!u32 {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxCopies();
    }
    pub fn putNumberOfCopies(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumberOfCopies(value);
    }
    pub fn getNumberOfCopies(self: *@This()) core.HResult!u32 {
        var this: ?*IPrintTaskOptionsCoreProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumberOfCopies();
    }
    pub fn getDisplayedOptions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IPrintTaskOptionsCoreUIConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreUIConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayedOptions();
    }
    pub fn putBordering(self: *@This(), value: PrintBordering) core.HResult!void {
        var this: ?*IPrintTaskOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBordering(value);
    }
    pub fn getBordering(self: *@This()) core.HResult!PrintBordering {
        var this: ?*IPrintTaskOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBordering();
    }
    pub fn GetPagePrintTicket(self: *@This(), printPageInfo: *PrintPageInfo) core.HResult!*IRandomAccessStream {
        var this: ?*IPrintTaskOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPagePrintTicket(printPageInfo);
    }
    pub fn getPageRangeOptions(self: *@This()) core.HResult!*PrintPageRangeOptions {
        var this: ?*IPrintTaskOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPageRangeOptions();
    }
    pub fn getCustomPageRanges(self: *@This()) core.HResult!*IVector(PrintPageRange) {
        var this: ?*IPrintTaskOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCustomPageRanges();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskOptionsCore.GUID;
    pub const IID: Guid = IPrintTaskOptionsCore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskOptionsCore.SIGNATURE);
};
pub const PrintTaskProgressingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDocumentPageCount(self: *@This()) core.HResult!u32 {
        const this: *IPrintTaskProgressingEventArgs = @ptrCast(self);
        return try this.getDocumentPageCount();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskProgressingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskProgressingEventArgs.GUID;
    pub const IID: Guid = IPrintTaskProgressingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskProgressingEventArgs.SIGNATURE);
};
pub const PrintTaskRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IPrintTaskRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn CreatePrintTask(self: *@This(), title: HSTRING, handler: *PrintTaskSourceRequestedHandler) core.HResult!*PrintTask {
        const this: *IPrintTaskRequest = @ptrCast(self);
        return try this.CreatePrintTask(title, handler);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PrintTaskRequestedDeferral {
        const this: *IPrintTaskRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskRequest.GUID;
    pub const IID: Guid = IPrintTaskRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskRequest.SIGNATURE);
};
pub const PrintTaskRequestedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IPrintTaskRequestedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskRequestedDeferral.GUID;
    pub const IID: Guid = IPrintTaskRequestedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskRequestedDeferral.SIGNATURE);
};
pub const PrintTaskRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*PrintTaskRequest {
        const this: *IPrintTaskRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskRequestedEventArgs.GUID;
    pub const IID: Guid = IPrintTaskRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskRequestedEventArgs.SIGNATURE);
};
pub const PrintTaskSourceRequestedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IPrintTaskSourceRequestedArgs = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn SetSource(self: *@This(), source: *IPrintDocumentSource) core.HResult!void {
        const this: *IPrintTaskSourceRequestedArgs = @ptrCast(self);
        return try this.SetSource(source);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PrintTaskSourceRequestedDeferral {
        const this: *IPrintTaskSourceRequestedArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskSourceRequestedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskSourceRequestedArgs.GUID;
    pub const IID: Guid = IPrintTaskSourceRequestedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskSourceRequestedArgs.SIGNATURE);
};
pub const PrintTaskSourceRequestedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IPrintTaskSourceRequestedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskSourceRequestedDeferral.GUID;
    pub const IID: Guid = IPrintTaskSourceRequestedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskSourceRequestedDeferral.SIGNATURE);
};
pub const PrintTaskSourceRequestedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, args: *PrintTaskSourceRequestedArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, args: *PrintTaskSourceRequestedArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, args: *PrintTaskSourceRequestedArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTaskSourceRequestedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c109fa8-5cb6-4b3a-8663-f39cb02dc9b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, args: *PrintTaskSourceRequestedArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const StandardPrintTaskOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBordering() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStatic2Cache.get();
        return try factory.getBordering();
    }
    pub fn getCustomPageRanges() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStatic3Cache.get();
        return try factory.getCustomPageRanges();
    }
    pub fn getMediaSize() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getMediaSize();
    }
    pub fn getMediaType() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getMediaType();
    }
    pub fn getOrientation() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getOrientation();
    }
    pub fn getPrintQuality() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getPrintQuality();
    }
    pub fn getColorMode() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getColorMode();
    }
    pub fn getDuplex() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getDuplex();
    }
    pub fn getCollation() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getCollation();
    }
    pub fn getStaple() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getStaple();
    }
    pub fn getHolePunch() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getHolePunch();
    }
    pub fn getBinding() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getBinding();
    }
    pub fn getCopies() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getCopies();
    }
    pub fn getNUp() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getNUp();
    }
    pub fn getInputBin() core.HResult!HSTRING {
        const factory = @This().IStandardPrintTaskOptionsStaticCache.get();
        return try factory.getInputBin();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.StandardPrintTaskOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStandardPrintTaskOptionsStatic2Cache: FactoryCache(IStandardPrintTaskOptionsStatic2, RUNTIME_NAME) = .{};
    var _IStandardPrintTaskOptionsStatic3Cache: FactoryCache(IStandardPrintTaskOptionsStatic3, RUNTIME_NAME) = .{};
    var _IStandardPrintTaskOptionsStaticCache: FactoryCache(IStandardPrintTaskOptionsStatic, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Size = @import("../Foundation.zig").Size;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const DataPackagePropertySet = @import("../ApplicationModel/DataTransfer.zig").DataPackagePropertySet;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAgileObject = @import("../root.zig").IAgileObject;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
pub const OptionDetails = @import("./Printing/OptionDetails.zig");
pub const PrintSupport = @import("./Printing/PrintSupport.zig");
pub const PrintTicket = @import("./Printing/PrintTicket.zig");
pub const ProtectedPrint = @import("./Printing/ProtectedPrint.zig");
pub const Workflow = @import("./Printing/Workflow.zig");
