pub const CachedFileOptions = enum(i32) {
    None = 0,
    RequireUpdateOnAccess = 1,
    UseCachedFileWhenOffline = 2,
    DenyAccessWhenOffline = 4,
};
pub const CachedFileTarget = enum(i32) {
    Local = 0,
    Remote = 1,
};
pub const CachedFileUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetUpdateInformation(file: *IStorageFile, contentId: HSTRING, readMode: ReadActivationMode, writeMode: WriteActivationMode, options: CachedFileOptions) core.HResult!void {
        const _f = @This().ICachedFileUpdaterStaticsCache.get();
        return try _f.SetUpdateInformation(file, contentId, readMode, writeMode, options);
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.CachedFileUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICachedFileUpdaterStaticsCache: FactoryCache(ICachedFileUpdaterStatics, RUNTIME_NAME) = .{};
};
pub const CachedFileUpdaterUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getUpdateTarget(self: *@This()) core.HResult!CachedFileTarget {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.getUpdateTarget();
    }
    pub fn addFileUpdateRequested(self: *@This(), handler: *TypedEventHandler(CachedFileUpdaterUI,FileUpdateRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.addFileUpdateRequested(handler);
    }
    pub fn removeFileUpdateRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.removeFileUpdateRequested(token);
    }
    pub fn addUIRequested(self: *@This(), handler: *TypedEventHandler(CachedFileUpdaterUI,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.addUIRequested(handler);
    }
    pub fn removeUIRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.removeUIRequested(token);
    }
    pub fn getUIStatus(self: *@This()) core.HResult!UIStatus {
        const this: *ICachedFileUpdaterUI = @ptrCast(self);
        return try this.getUIStatus();
    }
    pub fn getUpdateRequest(self: *@This()) core.HResult!*FileUpdateRequest {
        var this: ?*ICachedFileUpdaterUI2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICachedFileUpdaterUI2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUpdateRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*FileUpdateRequestDeferral {
        var this: ?*ICachedFileUpdaterUI2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICachedFileUpdaterUI2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.CachedFileUpdaterUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICachedFileUpdaterUI.GUID;
    pub const IID: Guid = ICachedFileUpdaterUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICachedFileUpdaterUI.SIGNATURE);
};
pub const FileUpdateRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentId(self: *@This()) core.HResult!HSTRING {
        const this: *IFileUpdateRequest = @ptrCast(self);
        return try this.getContentId();
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IFileUpdateRequest = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getStatus(self: *@This()) core.HResult!FileUpdateStatus {
        const this: *IFileUpdateRequest = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: FileUpdateStatus) core.HResult!void {
        const this: *IFileUpdateRequest = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*FileUpdateRequestDeferral {
        const this: *IFileUpdateRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn UpdateLocalFile(self: *@This(), value: *IStorageFile) core.HResult!void {
        const this: *IFileUpdateRequest = @ptrCast(self);
        return try this.UpdateLocalFile(value);
    }
    pub fn getUserInputNeededMessage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IFileUpdateRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileUpdateRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserInputNeededMessage();
    }
    pub fn putUserInputNeededMessage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IFileUpdateRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileUpdateRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUserInputNeededMessage(value);
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.FileUpdateRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileUpdateRequest.GUID;
    pub const IID: Guid = IFileUpdateRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileUpdateRequest.SIGNATURE);
};
pub const FileUpdateRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IFileUpdateRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.FileUpdateRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileUpdateRequestDeferral.GUID;
    pub const IID: Guid = IFileUpdateRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileUpdateRequestDeferral.SIGNATURE);
};
pub const FileUpdateRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*FileUpdateRequest {
        const this: *IFileUpdateRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.FileUpdateRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileUpdateRequestedEventArgs.GUID;
    pub const IID: Guid = IFileUpdateRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileUpdateRequestedEventArgs.SIGNATURE);
};
pub const FileUpdateStatus = enum(i32) {
    Incomplete = 0,
    Complete = 1,
    UserInputNeeded = 2,
    CurrentlyUnavailable = 3,
    Failed = 4,
    CompleteAndRenamed = 5,
};
pub const ICachedFileUpdaterStatics = extern struct {
    vtable: *const VTable,
    pub fn SetUpdateInformation(self: *@This(), file: *IStorageFile, contentId: HSTRING, readMode: ReadActivationMode, writeMode: WriteActivationMode, options: CachedFileOptions) core.HResult!void {
        const _c = self.vtable.SetUpdateInformation(@ptrCast(self), file, contentId, readMode, writeMode, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.ICachedFileUpdaterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fc90920-7bcf-4888-a81e-102d7034d7ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetUpdateInformation: *const fn(self: *anyopaque, file: *IStorageFile, contentId: HSTRING, readMode: ReadActivationMode, writeMode: WriteActivationMode, options: CachedFileOptions) callconv(.winapi) HRESULT,
    };
};
pub const ICachedFileUpdaterUI = extern struct {
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
    pub fn getUpdateTarget(self: *@This()) core.HResult!CachedFileTarget {
        var _r: CachedFileTarget = undefined;
        const _c = self.vtable.get_UpdateTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFileUpdateRequested(self: *@This(), handler: *TypedEventHandler(CachedFileUpdaterUI,FileUpdateRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FileUpdateRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFileUpdateRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FileUpdateRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUIRequested(self: *@This(), handler: *TypedEventHandler(CachedFileUpdaterUI,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UIRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUIRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UIRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUIStatus(self: *@This()) core.HResult!UIStatus {
        var _r: UIStatus = undefined;
        const _c = self.vtable.get_UIStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.ICachedFileUpdaterUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e6f41e6-baf2-4a97-b600-9333f5df80fd";
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
        get_UpdateTarget: *const fn(self: *anyopaque, _r: *CachedFileTarget) callconv(.winapi) HRESULT,
        add_FileUpdateRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CachedFileUpdaterUI,FileUpdateRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FileUpdateRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UIRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CachedFileUpdaterUI,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UIRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_UIStatus: *const fn(self: *anyopaque, _r: *UIStatus) callconv(.winapi) HRESULT,
    };
};
pub const ICachedFileUpdaterUI2 = extern struct {
    vtable: *const VTable,
    pub fn getUpdateRequest(self: *@This()) core.HResult!*FileUpdateRequest {
        var _r: *FileUpdateRequest = undefined;
        const _c = self.vtable.get_UpdateRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*FileUpdateRequestDeferral {
        var _r: *FileUpdateRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.ICachedFileUpdaterUI2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8856a21c-8699-4340-9f49-f7cad7fe8991";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UpdateRequest: *const fn(self: *anyopaque, _r: **FileUpdateRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **FileUpdateRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IFileUpdateRequest = extern struct {
    vtable: *const VTable,
    pub fn getContentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!FileUpdateStatus {
        var _r: FileUpdateStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: FileUpdateStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*FileUpdateRequestDeferral {
        var _r: *FileUpdateRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateLocalFile(self: *@This(), value: *IStorageFile) core.HResult!void {
        const _c = self.vtable.UpdateLocalFile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IFileUpdateRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40c82536-c1fe-4d93-a792-1e736bc70837";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *FileUpdateStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: FileUpdateStatus) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **FileUpdateRequestDeferral) callconv(.winapi) HRESULT,
        UpdateLocalFile: *const fn(self: *anyopaque, value: *IStorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IFileUpdateRequest2 = extern struct {
    vtable: *const VTable,
    pub fn getUserInputNeededMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserInputNeededMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserInputNeededMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserInputNeededMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IFileUpdateRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82484648-bdbe-447b-a2ee-7afe6a032a94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserInputNeededMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UserInputNeededMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileUpdateRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IFileUpdateRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffcedb2b-8ade-44a5-bb00-164c4e72f13a";
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
pub const IFileUpdateRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*FileUpdateRequest {
        var _r: *FileUpdateRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IFileUpdateRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b0a9342-3905-438d-aaef-78ae265f8dd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **FileUpdateRequest) callconv(.winapi) HRESULT,
    };
};
pub const ReadActivationMode = enum(i32) {
    NotNeeded = 0,
    BeforeAccess = 1,
};
pub const UIStatus = enum(i32) {
    Unavailable = 0,
    Hidden = 1,
    Visible = 2,
    Complete = 3,
};
pub const WriteActivationMode = enum(i32) {
    ReadOnly = 0,
    NotNeeded = 1,
    AfterWrite = 2,
};
pub const IStorageProviderFileTypeInfo = extern struct {
    vtable: *const VTable,
    pub fn getFileExtension(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileExtension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIconResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IconResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderFileTypeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1955b9c1-0184-5a88-87df-4544f464365d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileExtension: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IconResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderFileTypeInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), fileExtension: HSTRING, iconResource: HSTRING) core.HResult!*StorageProviderFileTypeInfo {
        var _r: *StorageProviderFileTypeInfo = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), fileExtension, iconResource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderFileTypeInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fa12c6f-cce6-5d5d-80b1-389e7cf92dbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, fileExtension: HSTRING, iconResource: HSTRING, _r: **StorageProviderFileTypeInfo) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderGetContentInfoForPathResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderUriSourceStatus {
        var _r: StorageProviderUriSourceStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: StorageProviderUriSourceStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentUri(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderGetContentInfoForPathResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2564711d-aa89-4d12-82e3-f72a92e33966";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StorageProviderUriSourceStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: StorageProviderUriSourceStatus) callconv(.winapi) HRESULT,
        get_ContentUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentUri: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderGetPathForContentUriResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderUriSourceStatus {
        var _r: StorageProviderUriSourceStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: StorageProviderUriSourceStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderGetPathForContentUriResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63711a9d-4118-45a6-acb6-22c49d019f40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StorageProviderUriSourceStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: StorageProviderUriSourceStatus) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderItemPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn SetAsync(self: *@This(), item: *IStorageItem, itemProperties: *IIterable(StorageProviderItemProperty)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAsync(@ptrCast(self), item, itemProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderItemPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d2c1c97-2704-4729-8fa9-7e6b8e158c2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAsync: *const fn(self: *anyopaque, item: *IStorageItem, itemProperties: *IIterable(StorageProviderItemProperty), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderItemProperty = extern struct {
    vtable: *const VTable,
    pub fn putId(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIconResource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IconResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIconResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IconResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderItemProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "476cb558-730b-4188-b7b5-63b716ed476d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IconResource: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IconResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderItemPropertyDefinition = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayNameResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayNameResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayNameResource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayNameResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderItemPropertyDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5b383bb-ff1f-4298-831e-ff1c08089690";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_DisplayNameResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayNameResource: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderItemPropertySource = extern struct {
    vtable: *const VTable,
    pub fn GetItemProperties(self: *@This(), itemPath: HSTRING) core.HResult!*IIterable(StorageProviderItemProperty) {
        var _r: *IIterable(StorageProviderItemProperty) = undefined;
        const _c = self.vtable.GetItemProperties(@ptrCast(self), itemPath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderItemPropertySource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f6f9c3e-f632-4a9b-8d99-d2d7a11df56a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetItemProperties: *const fn(self: *anyopaque, itemPath: HSTRING, _r: **IIterable(StorageProviderItemProperty)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderKnownFolderEntry = extern struct {
    vtable: *const VTable,
    pub fn getKnownFolderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_KnownFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKnownFolderId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_KnownFolderId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderKnownFolderSyncStatus {
        var _r: StorageProviderKnownFolderSyncStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: StorageProviderKnownFolderSyncStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderKnownFolderEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "effa7db0-1d44-596b-8464-928800c5e2d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KnownFolderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_KnownFolderId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StorageProviderKnownFolderSyncStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: StorageProviderKnownFolderSyncStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderKnownFolderSyncInfo = extern struct {
    vtable: *const VTable,
    pub fn getProviderDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ProviderDisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKnownFolderEntries(self: *@This()) core.HResult!*IVector(StorageProviderKnownFolderEntry) {
        var _r: *IVector(StorageProviderKnownFolderEntry) = undefined;
        const _c = self.vtable.get_KnownFolderEntries(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSyncRequested(self: *@This()) core.HResult!*StorageProviderKnownFolderSyncRequestedHandler {
        var _r: *StorageProviderKnownFolderSyncRequestedHandler = undefined;
        const _c = self.vtable.get_SyncRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSyncRequested(self: *@This(), value: *StorageProviderKnownFolderSyncRequestedHandler) core.HResult!void {
        const _c = self.vtable.put_SyncRequested(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderKnownFolderSyncInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98b017ce-ffc1-5b11-ae77-cc17afec1049";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ProviderDisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_KnownFolderEntries: *const fn(self: *anyopaque, _r: **IVector(StorageProviderKnownFolderEntry)) callconv(.winapi) HRESULT,
        get_SyncRequested: *const fn(self: *anyopaque, _r: **StorageProviderKnownFolderSyncRequestedHandler) callconv(.winapi) HRESULT,
        put_SyncRequested: *const fn(self: *anyopaque, value: *StorageProviderKnownFolderSyncRequestedHandler) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderKnownFolderSyncInfoSource = extern struct {
    vtable: *const VTable,
    pub fn GetKnownFolderSyncInfo(self: *@This()) core.HResult!*StorageProviderKnownFolderSyncInfo {
        var _r: *StorageProviderKnownFolderSyncInfo = undefined;
        const _c = self.vtable.GetKnownFolderSyncInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addKnownFolderSyncInfoChanged(self: *@This(), handler: *TypedEventHandler(IStorageProviderKnownFolderSyncInfoSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KnownFolderSyncInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKnownFolderSyncInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KnownFolderSyncInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderKnownFolderSyncInfoSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51359342-f7c0-53d0-bbb6-1cdc098ebda9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetKnownFolderSyncInfo: *const fn(self: *anyopaque, _r: **StorageProviderKnownFolderSyncInfo) callconv(.winapi) HRESULT,
        add_KnownFolderSyncInfoChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IStorageProviderKnownFolderSyncInfoSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KnownFolderSyncInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderKnownFolderSyncInfoSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn GetKnownFolderSyncInfoSource(self: *@This()) core.HResult!*IStorageProviderKnownFolderSyncInfoSource {
        var _r: *IStorageProviderKnownFolderSyncInfoSource = undefined;
        const _c = self.vtable.GetKnownFolderSyncInfoSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderKnownFolderSyncInfoSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaee03a7-a7f6-50be-a9b0-8e82d0c81082";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetKnownFolderSyncInfoSource: *const fn(self: *anyopaque, _r: **IStorageProviderKnownFolderSyncInfoSource) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderKnownFolderSyncRequestArgs = extern struct {
    vtable: *const VTable,
    pub fn getKnownFolders(self: *@This()) core.HResult!*IVectorView(Guid) {
        var _r: *IVectorView(Guid) = undefined;
        const _c = self.vtable.get_KnownFolders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderKnownFolderSyncRequestArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eda6d569-b4e8-542f-ab8d-f3613f250a4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KnownFolders: *const fn(self: *anyopaque, _r: **IVectorView(Guid)) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderMoreInfoUI = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Message(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommand(self: *@This()) core.HResult!*IStorageProviderUICommand {
        var _r: *IStorageProviderUICommand = undefined;
        const _c = self.vtable.get_Command(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommand(self: *@This(), value: *IStorageProviderUICommand) core.HResult!void {
        const _c = self.vtable.put_Command(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderMoreInfoUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef38e591-a7cb-5e7d-9b5e-22749842697c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Message: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Command: *const fn(self: *anyopaque, _r: **IStorageProviderUICommand) callconv(.winapi) HRESULT,
        put_Command: *const fn(self: *anyopaque, value: *IStorageProviderUICommand) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderPropertyCapabilities = extern struct {
    vtable: *const VTable,
    pub fn IsPropertySupported(self: *@This(), propertyCanonicalName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPropertySupported(@ptrCast(self), propertyCanonicalName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderPropertyCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "658d2f0e-63b7-4567-acf9-51abe301dda5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPropertySupported: *const fn(self: *anyopaque, propertyCanonicalName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderQueryResult = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!StorageProviderResultKind {
        var _r: StorageProviderResultKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: StorageProviderResultKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResultId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResultId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResultId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ResultId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteFileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteFileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteFileId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteFileId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFilePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FilePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FilePath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequestedProperties(self: *@This()) core.HResult!*PropertySet {
        var _r: *PropertySet = undefined;
        const _c = self.vtable.get_RequestedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1cd00ae-b4a9-5d20-a598-3eb4dd8ff8f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *StorageProviderResultKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: StorageProviderResultKind) callconv(.winapi) HRESULT,
        get_ResultId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ResultId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RemoteFileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteFileId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FilePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FilePath: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RequestedProperties: *const fn(self: *anyopaque, _r: **PropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderQueryResultSet = extern struct {
    vtable: *const VTable,
    pub fn GetResults(self: *@This()) core.HResult![*]IStorageProviderQueryResult {
        var _r: [*]IStorageProviderQueryResult = undefined;
        const _c = self.vtable.GetResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryResultId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryResultId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQueryResultId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_QueryResultId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderSearchQueryStatus {
        var _r: StorageProviderSearchQueryStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: StorageProviderSearchQueryStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderQueryResultSet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57c28407-7d21-5f98-ac52-0926a97f3259";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetResults: *const fn(self: *anyopaque, _r: *[*]IStorageProviderQueryResult) callconv(.winapi) HRESULT,
        get_QueryResultId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_QueryResultId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StorageProviderSearchQueryStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: StorageProviderSearchQueryStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderQueryResultSetFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), results: [*]IStorageProviderQueryResult) core.HResult!*StorageProviderQueryResultSet {
        var _r: *StorageProviderQueryResultSet = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), results, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderQueryResultSetFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "301974c2-9b0a-51d1-84b5-32578ee3083d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, results: [*]IStorageProviderQueryResult, _r: **StorageProviderQueryResultSet) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderQuotaUI = extern struct {
    vtable: *const VTable,
    pub fn getQuotaTotalInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_QuotaTotalInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuotaTotalInBytes(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_QuotaTotalInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuotaUsedInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_QuotaUsedInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuotaUsedInBytes(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_QuotaUsedInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuotaUsedLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QuotaUsedLabel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuotaUsedLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_QuotaUsedLabel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuotaUsedColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_QuotaUsedColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuotaUsedColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_QuotaUsedColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderQuotaUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba6295c3-312e-544f-9fd5-1f81b21f3649";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QuotaTotalInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_QuotaTotalInBytes: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_QuotaUsedInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_QuotaUsedInBytes: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_QuotaUsedLabel: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_QuotaUsedLabel: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_QuotaUsedColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_QuotaUsedColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSearchHandler = extern struct {
    vtable: *const VTable,
    pub fn Find(self: *@This(), options: *StorageProviderSearchQueryOptions) core.HResult!*StorageProviderQueryResultSet {
        var _r: *StorageProviderQueryResultSet = undefined;
        const _c = self.vtable.Find(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportUsage(self: *@This(), resultUsageKind: StorageProviderResultUsageKind, remoteFileId: HSTRING, resultId: HSTRING, latency: TimeSpan) core.HResult!void {
        const _c = self.vtable.ReportUsage(@ptrCast(self), resultUsageKind, remoteFileId, resultId, latency);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSearchHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69cc977d-adad-59c9-8fd1-f30b6fae0fd9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Find: *const fn(self: *anyopaque, options: *StorageProviderSearchQueryOptions, _r: **StorageProviderQueryResultSet) callconv(.winapi) HRESULT,
        ReportUsage: *const fn(self: *anyopaque, resultUsageKind: StorageProviderResultUsageKind, remoteFileId: HSTRING, resultId: HSTRING, latency: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSearchHandlerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSearchHandler(self: *@This(), cloudProviderId: HSTRING) core.HResult!*IStorageProviderSearchHandler {
        var _r: *IStorageProviderSearchHandler = undefined;
        const _c = self.vtable.CreateSearchHandler(@ptrCast(self), cloudProviderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSearchHandlerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0dcad80-f3f5-516b-8ace-4e77022c9598";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSearchHandler: *const fn(self: *anyopaque, cloudProviderId: HSTRING, _r: **IStorageProviderSearchHandler) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSearchQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getUserQuery(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSortOrder(self: *@This()) core.HResult!*IVectorView(SortEntry) {
        var _r: *IVectorView(SortEntry) = undefined;
        const _c = self.vtable.get_SortOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgrammaticQuery(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProgrammaticQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxResults(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolderScope(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FolderScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPropertiesToFetch(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_PropertiesToFetch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSearchQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93d854eb-1007-563c-b213-cc44bd88fef2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserQuery: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SortOrder: *const fn(self: *anyopaque, _r: **IVectorView(SortEntry)) callconv(.winapi) HRESULT,
        get_ProgrammaticQuery: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MaxResults: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_FolderScope: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_QueryId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PropertiesToFetch: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSearchResult = extern struct {
    vtable: *const VTable,
    pub fn getMatchScore(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MatchScore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMatchScore(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MatchScore(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMatchKind(self: *@This()) core.HResult!StorageProviderSearchMatchKind {
        var _r: StorageProviderSearchMatchKind = undefined;
        const _c = self.vtable.get_MatchKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMatchKind(self: *@This(), value: StorageProviderSearchMatchKind) core.HResult!void {
        const _c = self.vtable.put_MatchKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMatchedPropertyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MatchedPropertyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMatchedPropertyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MatchedPropertyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSearchResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc161049-0995-535f-99b7-fe292cbabaf5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MatchScore: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MatchScore: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MatchKind: *const fn(self: *anyopaque, _r: *StorageProviderSearchMatchKind) callconv(.winapi) HRESULT,
        put_MatchKind: *const fn(self: *anyopaque, value: StorageProviderSearchMatchKind) callconv(.winapi) HRESULT,
        get_MatchedPropertyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MatchedPropertyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderShareLinkSource = extern struct {
    vtable: *const VTable,
    pub fn CreateLinkAsync(self: *@This(), storageItemList: *IVectorView(IStorageItem)) core.HResult!*IAsyncOperation(Uri) {
        var _r: *IAsyncOperation(Uri) = undefined;
        const _c = self.vtable.CreateLinkAsync(@ptrCast(self), storageItemList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAccessControlStringAsync(self: *@This(), storageItemList: *IVectorView(IStorageItem)) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetDefaultAccessControlStringAsync(@ptrCast(self), storageItemList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetState(self: *@This(), storageItemList: *IVectorView(IStorageItem)) core.HResult!*IAsyncOperation(StorageProviderShareLinkState) {
        var _r: *IAsyncOperation(StorageProviderShareLinkState) = undefined;
        const _c = self.vtable.GetState(@ptrCast(self), storageItemList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderShareLinkSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c6055e2-029c-5539-8e51-a1afc838b5cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLinkAsync: *const fn(self: *anyopaque, storageItemList: *IVectorView(IStorageItem), _r: **IAsyncOperation(Uri)) callconv(.winapi) HRESULT,
        GetDefaultAccessControlStringAsync: *const fn(self: *anyopaque, storageItemList: *IVectorView(IStorageItem), _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetState: *const fn(self: *anyopaque, storageItemList: *IVectorView(IStorageItem), _r: **IAsyncOperation(StorageProviderShareLinkState)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderStatusUI = extern struct {
    vtable: *const VTable,
    pub fn getProviderState(self: *@This()) core.HResult!StorageProviderState {
        var _r: StorageProviderState = undefined;
        const _c = self.vtable.get_ProviderState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderState(self: *@This(), value: StorageProviderState) core.HResult!void {
        const _c = self.vtable.put_ProviderState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProviderStateLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderStateLabel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderStateLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ProviderStateLabel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProviderStateIcon(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ProviderStateIcon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderStateIcon(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ProviderStateIcon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSyncStatusCommand(self: *@This()) core.HResult!*IStorageProviderUICommand {
        var _r: *IStorageProviderUICommand = undefined;
        const _c = self.vtable.get_SyncStatusCommand(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSyncStatusCommand(self: *@This(), value: *IStorageProviderUICommand) core.HResult!void {
        const _c = self.vtable.put_SyncStatusCommand(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuotaUI(self: *@This()) core.HResult!*StorageProviderQuotaUI {
        var _r: *StorageProviderQuotaUI = undefined;
        const _c = self.vtable.get_QuotaUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuotaUI(self: *@This(), value: *StorageProviderQuotaUI) core.HResult!void {
        const _c = self.vtable.put_QuotaUI(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMoreInfoUI(self: *@This()) core.HResult!*StorageProviderMoreInfoUI {
        var _r: *StorageProviderMoreInfoUI = undefined;
        const _c = self.vtable.get_MoreInfoUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMoreInfoUI(self: *@This(), value: *StorageProviderMoreInfoUI) core.HResult!void {
        const _c = self.vtable.put_MoreInfoUI(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProviderPrimaryCommand(self: *@This()) core.HResult!*IStorageProviderUICommand {
        var _r: *IStorageProviderUICommand = undefined;
        const _c = self.vtable.get_ProviderPrimaryCommand(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderPrimaryCommand(self: *@This(), value: *IStorageProviderUICommand) core.HResult!void {
        const _c = self.vtable.put_ProviderPrimaryCommand(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProviderSecondaryCommands(self: *@This()) core.HResult!*IVector(IStorageProviderUICommand) {
        var _r: *IVector(IStorageProviderUICommand) = undefined;
        const _c = self.vtable.get_ProviderSecondaryCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderSecondaryCommands(self: *@This(), value: *IVector(IStorageProviderUICommand)) core.HResult!void {
        const _c = self.vtable.put_ProviderSecondaryCommands(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderStatusUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6b6a758-198d-5b80-977f-5ff73da33118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderState: *const fn(self: *anyopaque, _r: *StorageProviderState) callconv(.winapi) HRESULT,
        put_ProviderState: *const fn(self: *anyopaque, value: StorageProviderState) callconv(.winapi) HRESULT,
        get_ProviderStateLabel: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ProviderStateLabel: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ProviderStateIcon: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ProviderStateIcon: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_SyncStatusCommand: *const fn(self: *anyopaque, _r: **IStorageProviderUICommand) callconv(.winapi) HRESULT,
        put_SyncStatusCommand: *const fn(self: *anyopaque, value: *IStorageProviderUICommand) callconv(.winapi) HRESULT,
        get_QuotaUI: *const fn(self: *anyopaque, _r: **StorageProviderQuotaUI) callconv(.winapi) HRESULT,
        put_QuotaUI: *const fn(self: *anyopaque, value: *StorageProviderQuotaUI) callconv(.winapi) HRESULT,
        get_MoreInfoUI: *const fn(self: *anyopaque, _r: **StorageProviderMoreInfoUI) callconv(.winapi) HRESULT,
        put_MoreInfoUI: *const fn(self: *anyopaque, value: *StorageProviderMoreInfoUI) callconv(.winapi) HRESULT,
        get_ProviderPrimaryCommand: *const fn(self: *anyopaque, _r: **IStorageProviderUICommand) callconv(.winapi) HRESULT,
        put_ProviderPrimaryCommand: *const fn(self: *anyopaque, value: *IStorageProviderUICommand) callconv(.winapi) HRESULT,
        get_ProviderSecondaryCommands: *const fn(self: *anyopaque, _r: **IVector(IStorageProviderUICommand)) callconv(.winapi) HRESULT,
        put_ProviderSecondaryCommands: *const fn(self: *anyopaque, value: *IVector(IStorageProviderUICommand)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderStatusUISource = extern struct {
    vtable: *const VTable,
    pub fn GetStatusUI(self: *@This()) core.HResult!*StorageProviderStatusUI {
        var _r: *StorageProviderStatusUI = undefined;
        const _c = self.vtable.GetStatusUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusUIChanged(self: *@This(), handler: *TypedEventHandler(IStorageProviderStatusUISource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusUIChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusUIChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusUIChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderStatusUISource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a306c249-3d66-5e70-9007-e43df96051ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatusUI: *const fn(self: *anyopaque, _r: **StorageProviderStatusUI) callconv(.winapi) HRESULT,
        add_StatusUIChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IStorageProviderStatusUISource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusUIChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderStatusUISourceFactory = extern struct {
    vtable: *const VTable,
    pub fn GetStatusUISource(self: *@This(), syncRootId: HSTRING) core.HResult!*IStorageProviderStatusUISource {
        var _r: *IStorageProviderStatusUISource = undefined;
        const _c = self.vtable.GetStatusUISource(@ptrCast(self), syncRootId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderStatusUISourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12e46b74-4e5a-58d1-a62f-0376e8ee7dd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatusUISource: *const fn(self: *anyopaque, syncRootId: HSTRING, _r: **IStorageProviderStatusUISource) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSuggestionsHandler = extern struct {
    vtable: *const VTable,
    pub fn GetSuggestions(self: *@This(), options: *StorageProviderSuggestionsQueryOptions) core.HResult!*StorageProviderQueryResultSet {
        var _r: *StorageProviderQueryResultSet = undefined;
        const _c = self.vtable.GetSuggestions(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Add(self: *@This(), kind: StorageProviderResultKind, remoteFileId: HSTRING) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), kind, remoteFileId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), kind: StorageProviderResultKind, remoteFileId: HSTRING) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), kind, remoteFileId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDetails(self: *@This(), remoteFileId: HSTRING, propertiesToFetch: [*]HSTRING, queryId: HSTRING) core.HResult!*StorageProviderSuggestionResult {
        var _r: *StorageProviderSuggestionResult = undefined;
        const _c = self.vtable.GetDetails(@ptrCast(self), remoteFileId, propertiesToFetch, queryId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportUsage(self: *@This(), resultUsageKind: StorageProviderResultUsageKind, remoteFileId: HSTRING, resultId: HSTRING, latency: TimeSpan) core.HResult!void {
        const _c = self.vtable.ReportUsage(@ptrCast(self), resultUsageKind, remoteFileId, resultId, latency);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSuggestionsHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aff493f6-e1fd-5d03-b480-f1849c83ef4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSuggestions: *const fn(self: *anyopaque, options: *StorageProviderSuggestionsQueryOptions, _r: **StorageProviderQueryResultSet) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, kind: StorageProviderResultKind, remoteFileId: HSTRING) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, kind: StorageProviderResultKind, remoteFileId: HSTRING) callconv(.winapi) HRESULT,
        GetDetails: *const fn(self: *anyopaque, remoteFileId: HSTRING, propertiesToFetch: [*]HSTRING, queryId: HSTRING, _r: **StorageProviderSuggestionResult) callconv(.winapi) HRESULT,
        ReportUsage: *const fn(self: *anyopaque, resultUsageKind: StorageProviderResultUsageKind, remoteFileId: HSTRING, resultId: HSTRING, latency: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSuggestionsHandlerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSuggestionsHandler(self: *@This(), cloudProviderId: HSTRING) core.HResult!*IStorageProviderSuggestionsHandler {
        var _r: *IStorageProviderSuggestionsHandler = undefined;
        const _c = self.vtable.CreateSuggestionsHandler(@ptrCast(self), cloudProviderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSuggestionsHandlerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc7b35d8-a25b-58a3-ace7-b3543106a2aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSuggestionsHandler: *const fn(self: *anyopaque, cloudProviderId: HSTRING, _r: **IStorageProviderSuggestionsHandler) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSuggestionsQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getSuggestionsKind(self: *@This()) core.HResult!StorageProviderResultKind {
        var _r: StorageProviderResultKind = undefined;
        const _c = self.vtable.get_SuggestionsKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteFileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteFileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxResults(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPropertiesToFetch(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_PropertiesToFetch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSuggestionsQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efb8b74d-0d84-579c-b137-ea730635d9bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SuggestionsKind: *const fn(self: *anyopaque, _r: *StorageProviderResultKind) callconv(.winapi) HRESULT,
        get_RemoteFileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MaxResults: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_QueryId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PropertiesToFetch: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSyncRootInfo = extern struct {
    vtable: *const VTable,
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
    pub fn getContext(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContext(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Context(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPath(self: *@This()) core.HResult!*IStorageFolder {
        var _r: *IStorageFolder = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: *IStorageFolder) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayNameResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayNameResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayNameResource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayNameResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIconResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IconResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIconResource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IconResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHydrationPolicy(self: *@This()) core.HResult!StorageProviderHydrationPolicy {
        var _r: StorageProviderHydrationPolicy = undefined;
        const _c = self.vtable.get_HydrationPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHydrationPolicy(self: *@This(), value: StorageProviderHydrationPolicy) core.HResult!void {
        const _c = self.vtable.put_HydrationPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHydrationPolicyModifier(self: *@This()) core.HResult!StorageProviderHydrationPolicyModifier {
        var _r: StorageProviderHydrationPolicyModifier = undefined;
        const _c = self.vtable.get_HydrationPolicyModifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHydrationPolicyModifier(self: *@This(), value: StorageProviderHydrationPolicyModifier) core.HResult!void {
        const _c = self.vtable.put_HydrationPolicyModifier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPopulationPolicy(self: *@This()) core.HResult!StorageProviderPopulationPolicy {
        var _r: StorageProviderPopulationPolicy = undefined;
        const _c = self.vtable.get_PopulationPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPopulationPolicy(self: *@This(), value: StorageProviderPopulationPolicy) core.HResult!void {
        const _c = self.vtable.put_PopulationPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInSyncPolicy(self: *@This()) core.HResult!StorageProviderInSyncPolicy {
        var _r: StorageProviderInSyncPolicy = undefined;
        const _c = self.vtable.get_InSyncPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInSyncPolicy(self: *@This(), value: StorageProviderInSyncPolicy) core.HResult!void {
        const _c = self.vtable.put_InSyncPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHardlinkPolicy(self: *@This()) core.HResult!StorageProviderHardlinkPolicy {
        var _r: StorageProviderHardlinkPolicy = undefined;
        const _c = self.vtable.get_HardlinkPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHardlinkPolicy(self: *@This(), value: StorageProviderHardlinkPolicy) core.HResult!void {
        const _c = self.vtable.put_HardlinkPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowSiblingsAsGroup(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowSiblingsAsGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowSiblingsAsGroup(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowSiblingsAsGroup(@ptrCast(self), value);
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
    pub fn getProtectionMode(self: *@This()) core.HResult!StorageProviderProtectionMode {
        var _r: StorageProviderProtectionMode = undefined;
        const _c = self.vtable.get_ProtectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtectionMode(self: *@This(), value: StorageProviderProtectionMode) core.HResult!void {
        const _c = self.vtable.put_ProtectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowPinning(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowPinning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowPinning(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowPinning(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStorageProviderItemPropertyDefinitions(self: *@This()) core.HResult!*IVector(StorageProviderItemPropertyDefinition) {
        var _r: *IVector(StorageProviderItemPropertyDefinition) = undefined;
        const _c = self.vtable.get_StorageProviderItemPropertyDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecycleBinUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_RecycleBinUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecycleBinUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_RecycleBinUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSyncRootInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c1305c4-99f9-41ac-8904-ab055d654926";
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
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Context: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **IStorageFolder) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: *IStorageFolder) callconv(.winapi) HRESULT,
        get_DisplayNameResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayNameResource: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IconResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IconResource: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HydrationPolicy: *const fn(self: *anyopaque, _r: *StorageProviderHydrationPolicy) callconv(.winapi) HRESULT,
        put_HydrationPolicy: *const fn(self: *anyopaque, value: StorageProviderHydrationPolicy) callconv(.winapi) HRESULT,
        get_HydrationPolicyModifier: *const fn(self: *anyopaque, _r: *StorageProviderHydrationPolicyModifier) callconv(.winapi) HRESULT,
        put_HydrationPolicyModifier: *const fn(self: *anyopaque, value: StorageProviderHydrationPolicyModifier) callconv(.winapi) HRESULT,
        get_PopulationPolicy: *const fn(self: *anyopaque, _r: *StorageProviderPopulationPolicy) callconv(.winapi) HRESULT,
        put_PopulationPolicy: *const fn(self: *anyopaque, value: StorageProviderPopulationPolicy) callconv(.winapi) HRESULT,
        get_InSyncPolicy: *const fn(self: *anyopaque, _r: *StorageProviderInSyncPolicy) callconv(.winapi) HRESULT,
        put_InSyncPolicy: *const fn(self: *anyopaque, value: StorageProviderInSyncPolicy) callconv(.winapi) HRESULT,
        get_HardlinkPolicy: *const fn(self: *anyopaque, _r: *StorageProviderHardlinkPolicy) callconv(.winapi) HRESULT,
        put_HardlinkPolicy: *const fn(self: *anyopaque, value: StorageProviderHardlinkPolicy) callconv(.winapi) HRESULT,
        get_ShowSiblingsAsGroup: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowSiblingsAsGroup: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Version: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ProtectionMode: *const fn(self: *anyopaque, _r: *StorageProviderProtectionMode) callconv(.winapi) HRESULT,
        put_ProtectionMode: *const fn(self: *anyopaque, value: StorageProviderProtectionMode) callconv(.winapi) HRESULT,
        get_AllowPinning: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowPinning: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StorageProviderItemPropertyDefinitions: *const fn(self: *anyopaque, _r: **IVector(StorageProviderItemPropertyDefinition)) callconv(.winapi) HRESULT,
        get_RecycleBinUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_RecycleBinUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSyncRootInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getProviderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_ProviderId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSyncRootInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf51b023-7cf1-5166-bdba-efd95f529e31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_ProviderId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSyncRootInfo3 = extern struct {
    vtable: *const VTable,
    pub fn getFallbackFileTypeInfo(self: *@This()) core.HResult!*IVector(StorageProviderFileTypeInfo) {
        var _r: *IVector(StorageProviderFileTypeInfo) = undefined;
        const _c = self.vtable.get_FallbackFileTypeInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSyncRootInfo3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "507a6617-bef6-56fd-855e-75ace2e45cf5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FallbackFileTypeInfo: *const fn(self: *anyopaque, _r: **IVector(StorageProviderFileTypeInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSyncRootManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn Register(self: *@This(), syncRootInformation: *StorageProviderSyncRootInfo) core.HResult!void {
        const _c = self.vtable.Register(@ptrCast(self), syncRootInformation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Unregister(self: *@This(), id: HSTRING) core.HResult!void {
        const _c = self.vtable.Unregister(@ptrCast(self), id);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSyncRootInformationForFolder(self: *@This(), folder: *IStorageFolder) core.HResult!*StorageProviderSyncRootInfo {
        var _r: *StorageProviderSyncRootInfo = undefined;
        const _c = self.vtable.GetSyncRootInformationForFolder(@ptrCast(self), folder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSyncRootInformationForId(self: *@This(), id: HSTRING) core.HResult!*StorageProviderSyncRootInfo {
        var _r: *StorageProviderSyncRootInfo = undefined;
        const _c = self.vtable.GetSyncRootInformationForId(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentSyncRoots(self: *@This()) core.HResult!*IVectorView(StorageProviderSyncRootInfo) {
        var _r: *IVectorView(StorageProviderSyncRootInfo) = undefined;
        const _c = self.vtable.GetCurrentSyncRoots(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSyncRootManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e99fbbf-8fe3-4b40-abc7-f6fc3d74c98e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, syncRootInformation: *StorageProviderSyncRootInfo) callconv(.winapi) HRESULT,
        Unregister: *const fn(self: *anyopaque, id: HSTRING) callconv(.winapi) HRESULT,
        GetSyncRootInformationForFolder: *const fn(self: *anyopaque, folder: *IStorageFolder, _r: **StorageProviderSyncRootInfo) callconv(.winapi) HRESULT,
        GetSyncRootInformationForId: *const fn(self: *anyopaque, id: HSTRING, _r: **StorageProviderSyncRootInfo) callconv(.winapi) HRESULT,
        GetCurrentSyncRoots: *const fn(self: *anyopaque, _r: **IVectorView(StorageProviderSyncRootInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderSyncRootManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderSyncRootManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efb6cfee-1374-544e-9df1-5598d2e9cfdd";
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
pub const IStorageProviderUICommand = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIcon(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!StorageProviderUICommandState {
        var _r: StorageProviderUICommandState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Invoke(self: *@This()) core.HResult!void {
        const _c = self.vtable.Invoke(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderUICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c3e0760-d846-568f-9484-105cc57b502b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Icon: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *StorageProviderUICommandState) callconv(.winapi) HRESULT,
        Invoke: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProviderUriSource = extern struct {
    vtable: *const VTable,
    pub fn GetPathForContentUri(self: *@This(), contentUri: HSTRING, result: *StorageProviderGetPathForContentUriResult) core.HResult!void {
        const _c = self.vtable.GetPathForContentUri(@ptrCast(self), contentUri, result);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetContentInfoForPath(self: *@This(), path: HSTRING, result: *StorageProviderGetContentInfoForPathResult) core.HResult!void {
        const _c = self.vtable.GetContentInfoForPath(@ptrCast(self), path, result);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.IStorageProviderUriSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b29806d1-8be0-4962-8bb6-0d4c2e14d47a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPathForContentUri: *const fn(self: *anyopaque, contentUri: HSTRING, result: *StorageProviderGetPathForContentUriResult) callconv(.winapi) HRESULT,
        GetContentInfoForPath: *const fn(self: *anyopaque, path: HSTRING, result: *StorageProviderGetContentInfoForPathResult) callconv(.winapi) HRESULT,
    };
};
pub const StorageProviderFileTypeInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFileExtension(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderFileTypeInfo = @ptrCast(self);
        return try this.getFileExtension();
    }
    pub fn getIconResource(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderFileTypeInfo = @ptrCast(self);
        return try this.getIconResource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(fileExtension: HSTRING, iconResource: HSTRING) core.HResult!*StorageProviderFileTypeInfo {
        const _f = @This().IStorageProviderFileTypeInfoFactoryCache.get();
        return try _f.CreateInstance(fileExtension, iconResource);
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderFileTypeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderFileTypeInfo.GUID;
    pub const IID: Guid = IStorageProviderFileTypeInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderFileTypeInfo.SIGNATURE);
    var _IStorageProviderFileTypeInfoFactoryCache: FactoryCache(IStorageProviderFileTypeInfoFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderGetContentInfoForPathResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderUriSourceStatus {
        const this: *IStorageProviderGetContentInfoForPathResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: StorageProviderUriSourceStatus) core.HResult!void {
        const this: *IStorageProviderGetContentInfoForPathResult = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn getContentUri(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderGetContentInfoForPathResult = @ptrCast(self);
        return try this.getContentUri();
    }
    pub fn putContentUri(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderGetContentInfoForPathResult = @ptrCast(self);
        return try this.putContentUri(value);
    }
    pub fn getContentId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderGetContentInfoForPathResult = @ptrCast(self);
        return try this.getContentId();
    }
    pub fn putContentId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderGetContentInfoForPathResult = @ptrCast(self);
        return try this.putContentId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderGetContentInfoForPathResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderGetContentInfoForPathResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderGetContentInfoForPathResult.GUID;
    pub const IID: Guid = IStorageProviderGetContentInfoForPathResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderGetContentInfoForPathResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderGetPathForContentUriResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderUriSourceStatus {
        const this: *IStorageProviderGetPathForContentUriResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: StorageProviderUriSourceStatus) core.HResult!void {
        const this: *IStorageProviderGetPathForContentUriResult = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderGetPathForContentUriResult = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderGetPathForContentUriResult = @ptrCast(self);
        return try this.putPath(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderGetPathForContentUriResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderGetPathForContentUriResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderGetPathForContentUriResult.GUID;
    pub const IID: Guid = IStorageProviderGetPathForContentUriResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderGetPathForContentUriResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderHardlinkPolicy = enum(i32) {
    None = 0,
    Allowed = 1,
};
pub const StorageProviderHydrationPolicy = enum(i32) {
    Partial = 0,
    Progressive = 1,
    Full = 2,
    AlwaysFull = 3,
};
pub const StorageProviderHydrationPolicyModifier = enum(i32) {
    None = 0,
    ValidationRequired = 1,
    StreamingAllowed = 2,
    AutoDehydrationAllowed = 4,
    AllowFullRestartHydration = 8,
};
pub const StorageProviderInSyncPolicy = enum(i32) {
    Default = 0,
    FileCreationTime = 1,
    FileReadOnlyAttribute = 2,
    FileHiddenAttribute = 4,
    FileSystemAttribute = 8,
    DirectoryCreationTime = 16,
    DirectoryReadOnlyAttribute = 32,
    DirectoryHiddenAttribute = 64,
    DirectorySystemAttribute = 128,
    FileLastWriteTime = 256,
    DirectoryLastWriteTime = 512,
    PreserveInsyncForSyncEngine = -2147483648,
};
pub const StorageProviderItemProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetAsync(item: *IStorageItem, itemProperties: *IIterable(StorageProviderItemProperty)) core.HResult!*IAsyncAction {
        const _f = @This().IStorageProviderItemPropertiesStaticsCache.get();
        return try _f.SetAsync(item, itemProperties);
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderItemProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStorageProviderItemPropertiesStaticsCache: FactoryCache(IStorageProviderItemPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const StorageProviderItemProperty = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putId(self: *@This(), value: i32) core.HResult!void {
        const this: *IStorageProviderItemProperty = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!i32 {
        const this: *IStorageProviderItemProperty = @ptrCast(self);
        return try this.getId();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderItemProperty = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderItemProperty = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putIconResource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderItemProperty = @ptrCast(self);
        return try this.putIconResource(value);
    }
    pub fn getIconResource(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderItemProperty = @ptrCast(self);
        return try this.getIconResource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderItemProperty.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderItemProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderItemProperty.GUID;
    pub const IID: Guid = IStorageProviderItemProperty.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderItemProperty.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderItemPropertyDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!i32 {
        const this: *IStorageProviderItemPropertyDefinition = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: i32) core.HResult!void {
        const this: *IStorageProviderItemPropertyDefinition = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getDisplayNameResource(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderItemPropertyDefinition = @ptrCast(self);
        return try this.getDisplayNameResource();
    }
    pub fn putDisplayNameResource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderItemPropertyDefinition = @ptrCast(self);
        return try this.putDisplayNameResource(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderItemPropertyDefinition.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderItemPropertyDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderItemPropertyDefinition.GUID;
    pub const IID: Guid = IStorageProviderItemPropertyDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderItemPropertyDefinition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderKnownFolderEntry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKnownFolderId(self: *@This()) core.HResult!*Guid {
        const this: *IStorageProviderKnownFolderEntry = @ptrCast(self);
        return try this.getKnownFolderId();
    }
    pub fn putKnownFolderId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IStorageProviderKnownFolderEntry = @ptrCast(self);
        return try this.putKnownFolderId(value);
    }
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderKnownFolderSyncStatus {
        const this: *IStorageProviderKnownFolderEntry = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: StorageProviderKnownFolderSyncStatus) core.HResult!void {
        const this: *IStorageProviderKnownFolderEntry = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderKnownFolderEntry.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderKnownFolderEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderKnownFolderEntry.GUID;
    pub const IID: Guid = IStorageProviderKnownFolderEntry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderKnownFolderEntry.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderKnownFolderSyncInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderKnownFolderSyncInfo = @ptrCast(self);
        return try this.getProviderDisplayName();
    }
    pub fn putProviderDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderKnownFolderSyncInfo = @ptrCast(self);
        return try this.putProviderDisplayName(value);
    }
    pub fn getKnownFolderEntries(self: *@This()) core.HResult!*IVector(StorageProviderKnownFolderEntry) {
        const this: *IStorageProviderKnownFolderSyncInfo = @ptrCast(self);
        return try this.getKnownFolderEntries();
    }
    pub fn getSyncRequested(self: *@This()) core.HResult!*StorageProviderKnownFolderSyncRequestedHandler {
        const this: *IStorageProviderKnownFolderSyncInfo = @ptrCast(self);
        return try this.getSyncRequested();
    }
    pub fn putSyncRequested(self: *@This(), value: *StorageProviderKnownFolderSyncRequestedHandler) core.HResult!void {
        const this: *IStorageProviderKnownFolderSyncInfo = @ptrCast(self);
        return try this.putSyncRequested(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderKnownFolderSyncInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderKnownFolderSyncInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderKnownFolderSyncInfo.GUID;
    pub const IID: Guid = IStorageProviderKnownFolderSyncInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderKnownFolderSyncInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderKnownFolderSyncRequestArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKnownFolders(self: *@This()) core.HResult!*IVectorView(Guid) {
        const this: *IStorageProviderKnownFolderSyncRequestArgs = @ptrCast(self);
        return try this.getKnownFolders();
    }
    pub fn getSource(self: *@This()) core.HResult!*StorageFolder {
        const this: *IStorageProviderKnownFolderSyncRequestArgs = @ptrCast(self);
        return try this.getSource();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderKnownFolderSyncRequestArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderKnownFolderSyncRequestArgs.GUID;
    pub const IID: Guid = IStorageProviderKnownFolderSyncRequestArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderKnownFolderSyncRequestArgs.SIGNATURE);
};
pub const StorageProviderKnownFolderSyncRequestedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, args: *StorageProviderKnownFolderSyncRequestArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, args: *StorageProviderKnownFolderSyncRequestArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, args: *StorageProviderKnownFolderSyncRequestArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderKnownFolderSyncRequestedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4cbb4f5-13dd-5c8e-8b96-336fc30c629b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, args: *StorageProviderKnownFolderSyncRequestArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const StorageProviderKnownFolderSyncStatus = enum(i32) {
    Available = 0,
    Enrolling = 1,
    Enrolled = 2,
};
pub const StorageProviderMoreInfoUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderMoreInfoUI = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderMoreInfoUI = @ptrCast(self);
        return try this.putMessage(value);
    }
    pub fn getCommand(self: *@This()) core.HResult!*IStorageProviderUICommand {
        const this: *IStorageProviderMoreInfoUI = @ptrCast(self);
        return try this.getCommand();
    }
    pub fn putCommand(self: *@This(), value: *IStorageProviderUICommand) core.HResult!void {
        const this: *IStorageProviderMoreInfoUI = @ptrCast(self);
        return try this.putCommand(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderMoreInfoUI.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderMoreInfoUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderMoreInfoUI.GUID;
    pub const IID: Guid = IStorageProviderMoreInfoUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderMoreInfoUI.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderPopulationPolicy = enum(i32) {
    Full = 1,
    AlwaysFull = 2,
};
pub const StorageProviderProtectionMode = enum(i32) {
    Unknown = 0,
    Personal = 1,
};
pub const StorageProviderQueryResultSet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetResults(self: *@This()) core.HResult![*]IStorageProviderQueryResult {
        const this: *IStorageProviderQueryResultSet = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getQueryResultId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderQueryResultSet = @ptrCast(self);
        return try this.getQueryResultId();
    }
    pub fn putQueryResultId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderQueryResultSet = @ptrCast(self);
        return try this.putQueryResultId(value);
    }
    pub fn getStatus(self: *@This()) core.HResult!StorageProviderSearchQueryStatus {
        const this: *IStorageProviderQueryResultSet = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: StorageProviderSearchQueryStatus) core.HResult!void {
        const this: *IStorageProviderQueryResultSet = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(results: [*]IStorageProviderQueryResult) core.HResult!*StorageProviderQueryResultSet {
        const _f = @This().IStorageProviderQueryResultSetFactoryCache.get();
        return try _f.CreateInstance(results);
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderQueryResultSet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderQueryResultSet.GUID;
    pub const IID: Guid = IStorageProviderQueryResultSet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderQueryResultSet.SIGNATURE);
    var _IStorageProviderQueryResultSetFactoryCache: FactoryCache(IStorageProviderQueryResultSetFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderQuotaUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQuotaTotalInBytes(self: *@This()) core.HResult!u64 {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.getQuotaTotalInBytes();
    }
    pub fn putQuotaTotalInBytes(self: *@This(), value: u64) core.HResult!void {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.putQuotaTotalInBytes(value);
    }
    pub fn getQuotaUsedInBytes(self: *@This()) core.HResult!u64 {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.getQuotaUsedInBytes();
    }
    pub fn putQuotaUsedInBytes(self: *@This(), value: u64) core.HResult!void {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.putQuotaUsedInBytes(value);
    }
    pub fn getQuotaUsedLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.getQuotaUsedLabel();
    }
    pub fn putQuotaUsedLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.putQuotaUsedLabel(value);
    }
    pub fn getQuotaUsedColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.getQuotaUsedColor();
    }
    pub fn putQuotaUsedColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IStorageProviderQuotaUI = @ptrCast(self);
        return try this.putQuotaUsedColor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderQuotaUI.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderQuotaUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderQuotaUI.GUID;
    pub const IID: Guid = IStorageProviderQuotaUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderQuotaUI.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderResultKind = enum(i32) {
    Search = 0,
    Recommended = 1,
    Favorites = 2,
    Recent = 3,
    Shared = 4,
    RelatedFiles = 5,
    RelatedConversations = 6,
};
pub const StorageProviderResultUsageKind = enum(i32) {
    Rendered = 0,
    Opened = 1,
    SuggestionResponseReceived = 2,
};
pub const StorageProviderSearchMatchKind = enum(i32) {
    Lexical = 0,
    Semantic = 1,
};
pub const StorageProviderSearchQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserQuery(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getUserQuery();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getSortOrder(self: *@This()) core.HResult!*IVectorView(SortEntry) {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getSortOrder();
    }
    pub fn getProgrammaticQuery(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getProgrammaticQuery();
    }
    pub fn getMaxResults(self: *@This()) core.HResult!u32 {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getMaxResults();
    }
    pub fn getFolderScope(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getFolderScope();
    }
    pub fn getQueryId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getQueryId();
    }
    pub fn getPropertiesToFetch(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IStorageProviderSearchQueryOptions = @ptrCast(self);
        return try this.getPropertiesToFetch();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderSearchQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderSearchQueryOptions.GUID;
    pub const IID: Guid = IStorageProviderSearchQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderSearchQueryOptions.SIGNATURE);
};
pub const StorageProviderSearchQueryStatus = enum(i32) {
    Success = 0,
    Error = 1,
    Timeout = 2,
    NoNetwork = 3,
    NetworkError = 4,
    NotSignedIn = 5,
    QueryNotSupported = 6,
    SortOrderNotSupported = 7,
};
pub const StorageProviderSearchResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMatchScore(self: *@This()) core.HResult!f64 {
        const this: *IStorageProviderSearchResult = @ptrCast(self);
        return try this.getMatchScore();
    }
    pub fn putMatchScore(self: *@This(), value: f64) core.HResult!void {
        const this: *IStorageProviderSearchResult = @ptrCast(self);
        return try this.putMatchScore(value);
    }
    pub fn getMatchKind(self: *@This()) core.HResult!StorageProviderSearchMatchKind {
        const this: *IStorageProviderSearchResult = @ptrCast(self);
        return try this.getMatchKind();
    }
    pub fn putMatchKind(self: *@This(), value: StorageProviderSearchMatchKind) core.HResult!void {
        const this: *IStorageProviderSearchResult = @ptrCast(self);
        return try this.putMatchKind(value);
    }
    pub fn getMatchedPropertyName(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSearchResult = @ptrCast(self);
        return try this.getMatchedPropertyName();
    }
    pub fn putMatchedPropertyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderSearchResult = @ptrCast(self);
        return try this.putMatchedPropertyName(value);
    }
    pub fn getKind(self: *@This()) core.HResult!StorageProviderResultKind {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn putKind(self: *@This(), value: StorageProviderResultKind) core.HResult!void {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKind(value);
    }
    pub fn getResultId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResultId();
    }
    pub fn putResultId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putResultId(value);
    }
    pub fn getRemoteFileId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteFileId();
    }
    pub fn putRemoteFileId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteFileId(value);
    }
    pub fn getFilePath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFilePath();
    }
    pub fn putFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFilePath(value);
    }
    pub fn getRequestedProperties(self: *@This()) core.HResult!*PropertySet {
        var this: ?*IStorageProviderQueryResult = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderQueryResult.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestedProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderSearchResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderSearchResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderSearchResult.GUID;
    pub const IID: Guid = IStorageProviderSearchResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderSearchResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderShareLinkState = enum(i32) {
    Enabled = 0,
    Disabled = 1,
};
pub const StorageProviderState = enum(i32) {
    InSync = 0,
    Syncing = 1,
    Paused = 2,
    Error = 3,
    Warning = 4,
    Offline = 5,
};
pub const StorageProviderStatusUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderState(self: *@This()) core.HResult!StorageProviderState {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getProviderState();
    }
    pub fn putProviderState(self: *@This(), value: StorageProviderState) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putProviderState(value);
    }
    pub fn getProviderStateLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getProviderStateLabel();
    }
    pub fn putProviderStateLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putProviderStateLabel(value);
    }
    pub fn getProviderStateIcon(self: *@This()) core.HResult!*Uri {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getProviderStateIcon();
    }
    pub fn putProviderStateIcon(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putProviderStateIcon(value);
    }
    pub fn getSyncStatusCommand(self: *@This()) core.HResult!*IStorageProviderUICommand {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getSyncStatusCommand();
    }
    pub fn putSyncStatusCommand(self: *@This(), value: *IStorageProviderUICommand) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putSyncStatusCommand(value);
    }
    pub fn getQuotaUI(self: *@This()) core.HResult!*StorageProviderQuotaUI {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getQuotaUI();
    }
    pub fn putQuotaUI(self: *@This(), value: *StorageProviderQuotaUI) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putQuotaUI(value);
    }
    pub fn getMoreInfoUI(self: *@This()) core.HResult!*StorageProviderMoreInfoUI {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getMoreInfoUI();
    }
    pub fn putMoreInfoUI(self: *@This(), value: *StorageProviderMoreInfoUI) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putMoreInfoUI(value);
    }
    pub fn getProviderPrimaryCommand(self: *@This()) core.HResult!*IStorageProviderUICommand {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getProviderPrimaryCommand();
    }
    pub fn putProviderPrimaryCommand(self: *@This(), value: *IStorageProviderUICommand) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putProviderPrimaryCommand(value);
    }
    pub fn getProviderSecondaryCommands(self: *@This()) core.HResult!*IVector(IStorageProviderUICommand) {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.getProviderSecondaryCommands();
    }
    pub fn putProviderSecondaryCommands(self: *@This(), value: *IVector(IStorageProviderUICommand)) core.HResult!void {
        const this: *IStorageProviderStatusUI = @ptrCast(self);
        return try this.putProviderSecondaryCommands(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderStatusUI.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderStatusUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderStatusUI.GUID;
    pub const IID: Guid = IStorageProviderStatusUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderStatusUI.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderSuggestionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!StorageProviderResultKind {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: StorageProviderResultKind) core.HResult!void {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getResultId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.getResultId();
    }
    pub fn putResultId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.putResultId(value);
    }
    pub fn getRemoteFileId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.getRemoteFileId();
    }
    pub fn putRemoteFileId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.putRemoteFileId(value);
    }
    pub fn getFilePath(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.getFilePath();
    }
    pub fn putFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.putFilePath(value);
    }
    pub fn getRequestedProperties(self: *@This()) core.HResult!*PropertySet {
        const this: *IStorageProviderQueryResult = @ptrCast(self);
        return try this.getRequestedProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderQueryResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderSuggestionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderQueryResult.GUID;
    pub const IID: Guid = IStorageProviderQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderQueryResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderSuggestionsQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSuggestionsKind(self: *@This()) core.HResult!StorageProviderResultKind {
        const this: *IStorageProviderSuggestionsQueryOptions = @ptrCast(self);
        return try this.getSuggestionsKind();
    }
    pub fn getRemoteFileId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSuggestionsQueryOptions = @ptrCast(self);
        return try this.getRemoteFileId();
    }
    pub fn getMaxResults(self: *@This()) core.HResult!u32 {
        const this: *IStorageProviderSuggestionsQueryOptions = @ptrCast(self);
        return try this.getMaxResults();
    }
    pub fn getQueryId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSuggestionsQueryOptions = @ptrCast(self);
        return try this.getQueryId();
    }
    pub fn getPropertiesToFetch(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IStorageProviderSuggestionsQueryOptions = @ptrCast(self);
        return try this.getPropertiesToFetch();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderSuggestionsQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderSuggestionsQueryOptions.GUID;
    pub const IID: Guid = IStorageProviderSuggestionsQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderSuggestionsQueryOptions.SIGNATURE);
};
pub const StorageProviderSyncRootInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getContext(self: *@This()) core.HResult!*IBuffer {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getContext();
    }
    pub fn putContext(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putContext(value);
    }
    pub fn getPath(self: *@This()) core.HResult!*IStorageFolder {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: *IStorageFolder) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putPath(value);
    }
    pub fn getDisplayNameResource(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getDisplayNameResource();
    }
    pub fn putDisplayNameResource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putDisplayNameResource(value);
    }
    pub fn getIconResource(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getIconResource();
    }
    pub fn putIconResource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putIconResource(value);
    }
    pub fn getHydrationPolicy(self: *@This()) core.HResult!StorageProviderHydrationPolicy {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getHydrationPolicy();
    }
    pub fn putHydrationPolicy(self: *@This(), value: StorageProviderHydrationPolicy) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putHydrationPolicy(value);
    }
    pub fn getHydrationPolicyModifier(self: *@This()) core.HResult!StorageProviderHydrationPolicyModifier {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getHydrationPolicyModifier();
    }
    pub fn putHydrationPolicyModifier(self: *@This(), value: StorageProviderHydrationPolicyModifier) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putHydrationPolicyModifier(value);
    }
    pub fn getPopulationPolicy(self: *@This()) core.HResult!StorageProviderPopulationPolicy {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getPopulationPolicy();
    }
    pub fn putPopulationPolicy(self: *@This(), value: StorageProviderPopulationPolicy) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putPopulationPolicy(value);
    }
    pub fn getInSyncPolicy(self: *@This()) core.HResult!StorageProviderInSyncPolicy {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getInSyncPolicy();
    }
    pub fn putInSyncPolicy(self: *@This(), value: StorageProviderInSyncPolicy) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putInSyncPolicy(value);
    }
    pub fn getHardlinkPolicy(self: *@This()) core.HResult!StorageProviderHardlinkPolicy {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getHardlinkPolicy();
    }
    pub fn putHardlinkPolicy(self: *@This(), value: StorageProviderHardlinkPolicy) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putHardlinkPolicy(value);
    }
    pub fn getShowSiblingsAsGroup(self: *@This()) core.HResult!bool {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getShowSiblingsAsGroup();
    }
    pub fn putShowSiblingsAsGroup(self: *@This(), value: bool) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putShowSiblingsAsGroup(value);
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putVersion(value);
    }
    pub fn getProtectionMode(self: *@This()) core.HResult!StorageProviderProtectionMode {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getProtectionMode();
    }
    pub fn putProtectionMode(self: *@This(), value: StorageProviderProtectionMode) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putProtectionMode(value);
    }
    pub fn getAllowPinning(self: *@This()) core.HResult!bool {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getAllowPinning();
    }
    pub fn putAllowPinning(self: *@This(), value: bool) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putAllowPinning(value);
    }
    pub fn getStorageProviderItemPropertyDefinitions(self: *@This()) core.HResult!*IVector(StorageProviderItemPropertyDefinition) {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getStorageProviderItemPropertyDefinitions();
    }
    pub fn getRecycleBinUri(self: *@This()) core.HResult!*Uri {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.getRecycleBinUri();
    }
    pub fn putRecycleBinUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IStorageProviderSyncRootInfo = @ptrCast(self);
        return try this.putRecycleBinUri(value);
    }
    pub fn getProviderId(self: *@This()) core.HResult!*Guid {
        var this: ?*IStorageProviderSyncRootInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderSyncRootInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProviderId();
    }
    pub fn putProviderId(self: *@This(), value: *Guid) core.HResult!void {
        var this: ?*IStorageProviderSyncRootInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderSyncRootInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProviderId(value);
    }
    pub fn getFallbackFileTypeInfo(self: *@This()) core.HResult!*IVector(StorageProviderFileTypeInfo) {
        var this: ?*IStorageProviderSyncRootInfo3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProviderSyncRootInfo3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFallbackFileTypeInfo();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageProviderSyncRootInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderSyncRootInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProviderSyncRootInfo.GUID;
    pub const IID: Guid = IStorageProviderSyncRootInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProviderSyncRootInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageProviderSyncRootManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Register(syncRootInformation: *StorageProviderSyncRootInfo) core.HResult!void {
        const _f = @This().IStorageProviderSyncRootManagerStaticsCache.get();
        return try _f.Register(syncRootInformation);
    }
    pub fn Unregister(id: HSTRING) core.HResult!void {
        const _f = @This().IStorageProviderSyncRootManagerStaticsCache.get();
        return try _f.Unregister(id);
    }
    pub fn GetSyncRootInformationForFolder(folder: *IStorageFolder) core.HResult!*StorageProviderSyncRootInfo {
        const _f = @This().IStorageProviderSyncRootManagerStaticsCache.get();
        return try _f.GetSyncRootInformationForFolder(folder);
    }
    pub fn GetSyncRootInformationForId(id: HSTRING) core.HResult!*StorageProviderSyncRootInfo {
        const _f = @This().IStorageProviderSyncRootManagerStaticsCache.get();
        return try _f.GetSyncRootInformationForId(id);
    }
    pub fn GetCurrentSyncRoots() core.HResult!*IVectorView(StorageProviderSyncRootInfo) {
        const _f = @This().IStorageProviderSyncRootManagerStaticsCache.get();
        return try _f.GetCurrentSyncRoots();
    }
    pub fn IsSupported() core.HResult!bool {
        const _f = @This().IStorageProviderSyncRootManagerStatics2Cache.get();
        return try _f.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.Storage.Provider.StorageProviderSyncRootManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStorageProviderSyncRootManagerStaticsCache: FactoryCache(IStorageProviderSyncRootManagerStatics, RUNTIME_NAME) = .{};
    var _IStorageProviderSyncRootManagerStatics2Cache: FactoryCache(IStorageProviderSyncRootManagerStatics2, RUNTIME_NAME) = .{};
};
pub const StorageProviderUICommandState = enum(i32) {
    Enabled = 0,
    Disabled = 1,
    Hidden = 2,
};
pub const StorageProviderUriSourceStatus = enum(i32) {
    Success = 0,
    NoSyncRoot = 1,
    FileNotFound = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const SortEntry = @import("./Search.zig").SortEntry;
const HRESULT = @import("../root.zig").HRESULT;
const PropertySet = @import("../Foundation/Collections.zig").PropertySet;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IStorageFolder = @import("../Storage.zig").IStorageFolder;
const IReference = @import("../Foundation.zig").IReference;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const IBuffer = @import("./Streams.zig").IBuffer;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAgileObject = @import("../root.zig").IAgileObject;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const StorageFolder = @import("../Storage.zig").StorageFolder;
