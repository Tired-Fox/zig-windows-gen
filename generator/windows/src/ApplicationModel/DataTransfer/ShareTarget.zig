pub const IQuickLink = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnail(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportedDataFormats(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedDataFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFileTypes(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedFileTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "603e4308-f0be-4adc-acc9-8b27ab9cf556";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *RandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SupportedDataFormats: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_SupportedFileTypes: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IShareOperation = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuickLinkId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QuickLinkId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveThisQuickLink(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveThisQuickLink(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportStarted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportStarted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportDataRetrieved(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportDataRetrieved(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportSubmittedBackgroundTask(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportSubmittedBackgroundTask(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCompleted(self: *@This(), quicklink: *QuickLink) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self), quicklink);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2246bab8-d0f8-41c1-a82a-4137db6504fb";
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
        get_QuickLinkId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        RemoveThisQuickLink: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportStarted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportDataRetrieved: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportSubmittedBackgroundTask: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque, quicklink: *QuickLink) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportError: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IShareOperation2 = extern struct {
    vtable: *const VTable,
    pub fn DismissUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.DismissUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ffb97c1-9778-4a09-8e5b-cb5e482d0555";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DismissUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IShareOperation3 = extern struct {
    vtable: *const VTable,
    pub fn getContacts(self: *@This()) core.HResult!*IVectorView(Contact) {
        var _r: *IVectorView(Contact) = undefined;
        const _c = self.vtable.get_Contacts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ef6b382-b7a7-4571-a2a6-994a034988b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contacts: *const fn(self: *anyopaque, _r: **IVectorView(Contact)) callconv(.winapi) HRESULT,
    };
};
pub const QuickLink = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IQuickLink = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IQuickLink = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        const this: *IQuickLink = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const this: *IQuickLink = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IQuickLink = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IQuickLink = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getSupportedDataFormats(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IQuickLink = @ptrCast(self);
        return try this.getSupportedDataFormats();
    }
    pub fn getSupportedFileTypes(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IQuickLink = @ptrCast(self);
        return try this.getSupportedFileTypes();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IQuickLink.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQuickLink.GUID;
    pub const IID: Guid = IQuickLink.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQuickLink.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ShareOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        const this: *IShareOperation = @ptrCast(self);
        return try this.getData();
    }
    pub fn getQuickLinkId(self: *@This()) core.HResult!HSTRING {
        const this: *IShareOperation = @ptrCast(self);
        return try this.getQuickLinkId();
    }
    pub fn RemoveThisQuickLink(self: *@This()) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.RemoveThisQuickLink();
    }
    pub fn ReportStarted(self: *@This()) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.ReportStarted();
    }
    pub fn ReportDataRetrieved(self: *@This()) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.ReportDataRetrieved();
    }
    pub fn ReportSubmittedBackgroundTask(self: *@This()) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.ReportSubmittedBackgroundTask();
    }
    pub fn ReportCompletedWithQuicklink(self: *@This(), quicklink: *QuickLink) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.ReportCompletedWithQuicklink(quicklink);
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub fn ReportError(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IShareOperation = @ptrCast(self);
        return try this.ReportError(value);
    }
    pub fn DismissUI(self: *@This()) core.HResult!void {
        var this: ?*IShareOperation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IShareOperation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DismissUI();
    }
    pub fn getContacts(self: *@This()) core.HResult!*IVectorView(Contact) {
        var this: ?*IShareOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IShareOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContacts();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareOperation.GUID;
    pub const IID: Guid = IShareOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareOperation.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const RandomAccessStreamReference = @import("../../Storage/Streams.zig").RandomAccessStreamReference;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const DataPackageView = @import("../DataTransfer.zig").DataPackageView;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Contact = @import("../Contacts.zig").Contact;
const HSTRING = @import("../../root.zig").HSTRING;
