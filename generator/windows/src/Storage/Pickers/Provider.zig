pub const AddFileResult = enum(i32) {
    Added = 0,
    AlreadyAdded = 1,
    NotAllowed = 2,
    Unavailable = 3,
};
pub const FileOpenPickerUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddFile(self: *@This(), id: HSTRING, file: *IStorageFile) core.HResult!AddFileResult {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.AddFile(id, file);
    }
    pub fn RemoveFile(self: *@This(), id: HSTRING) core.HResult!void {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.RemoveFile(id);
    }
    pub fn ContainsFile(self: *@This(), id: HSTRING) core.HResult!bool {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.ContainsFile(id);
    }
    pub fn CanAddFile(self: *@This(), file: *IStorageFile) core.HResult!bool {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.CanAddFile(file);
    }
    pub fn getAllowedFileTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.getAllowedFileTypes();
    }
    pub fn getSelectionMode(self: *@This()) core.HResult!FileSelectionMode {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.getSelectionMode();
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.getSettingsIdentifier();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn addFileRemoved(self: *@This(), handler: *TypedEventHandler(FileOpenPickerUI,FileRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.addFileRemoved(handler);
    }
    pub fn removeFileRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.removeFileRemoved(token);
    }
    pub fn addClosing(self: *@This(), handler: *TypedEventHandler(FileOpenPickerUI,PickerClosingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.addClosing(handler);
    }
    pub fn removeClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFileOpenPickerUI = @ptrCast(self);
        return try this.removeClosing(token);
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.FileOpenPickerUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileOpenPickerUI.GUID;
    pub const IID: Guid = IFileOpenPickerUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileOpenPickerUI.SIGNATURE);
};
pub const FileRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IFileRemovedEventArgs = @ptrCast(self);
        return try this.getId();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.FileRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileRemovedEventArgs.GUID;
    pub const IID: Guid = IFileRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileRemovedEventArgs.SIGNATURE);
};
pub const FileSavePickerUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getAllowedFileTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.getAllowedFileTypes();
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.getSettingsIdentifier();
    }
    pub fn getFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.getFileName();
    }
    pub fn TrySetFileName(self: *@This(), value: HSTRING) core.HResult!SetFileNameResult {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.TrySetFileName(value);
    }
    pub fn addFileNameChanged(self: *@This(), handler: *TypedEventHandler(FileSavePickerUI,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.addFileNameChanged(handler);
    }
    pub fn removeFileNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.removeFileNameChanged(token);
    }
    pub fn addTargetFileRequested(self: *@This(), handler: *TypedEventHandler(FileSavePickerUI,TargetFileRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.addTargetFileRequested(handler);
    }
    pub fn removeTargetFileRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFileSavePickerUI = @ptrCast(self);
        return try this.removeTargetFileRequested(token);
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.FileSavePickerUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileSavePickerUI.GUID;
    pub const IID: Guid = IFileSavePickerUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileSavePickerUI.SIGNATURE);
};
pub const FileSelectionMode = enum(i32) {
    Single = 0,
    Multiple = 1,
};
pub const IFileOpenPickerUI = extern struct {
    vtable: *const VTable,
    pub fn AddFile(self: *@This(), id: HSTRING, file: *IStorageFile) core.HResult!AddFileResult {
        var _r: AddFileResult = undefined;
        const _c = self.vtable.AddFile(@ptrCast(self), id, file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveFile(self: *@This(), id: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveFile(@ptrCast(self), id);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ContainsFile(self: *@This(), id: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ContainsFile(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanAddFile(self: *@This(), file: *IStorageFile) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanAddFile(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowedFileTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AllowedFileTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionMode(self: *@This()) core.HResult!FileSelectionMode {
        var _r: FileSelectionMode = undefined;
        const _c = self.vtable.get_SelectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SettingsIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn addFileRemoved(self: *@This(), handler: *TypedEventHandler(FileOpenPickerUI,FileRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FileRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFileRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FileRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosing(self: *@This(), handler: *TypedEventHandler(FileOpenPickerUI,PickerClosingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.IFileOpenPickerUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddFile: *const fn(self: *anyopaque, id: HSTRING, file: *IStorageFile, _r: *AddFileResult) callconv(.winapi) HRESULT,
        RemoveFile: *const fn(self: *anyopaque, id: HSTRING) callconv(.winapi) HRESULT,
        ContainsFile: *const fn(self: *anyopaque, id: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        CanAddFile: *const fn(self: *anyopaque, file: *IStorageFile, _r: *bool) callconv(.winapi) HRESULT,
        get_AllowedFileTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_SelectionMode: *const fn(self: *anyopaque, _r: *FileSelectionMode) callconv(.winapi) HRESULT,
        get_SettingsIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        add_FileRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(FileOpenPickerUI,FileRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FileRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closing: *const fn(self: *anyopaque, handler: *TypedEventHandler(FileOpenPickerUI,PickerClosingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFileRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.IFileRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13043da7-7fca-4c2b-9eca-6890f9f00185";
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
    };
};
pub const IFileSavePickerUI = extern struct {
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
    pub fn getAllowedFileTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AllowedFileTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SettingsIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetFileName(self: *@This(), value: HSTRING) core.HResult!SetFileNameResult {
        var _r: SetFileNameResult = undefined;
        const _c = self.vtable.TrySetFileName(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFileNameChanged(self: *@This(), handler: *TypedEventHandler(FileSavePickerUI,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FileNameChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFileNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FileNameChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTargetFileRequested(self: *@This(), handler: *TypedEventHandler(FileSavePickerUI,TargetFileRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TargetFileRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTargetFileRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TargetFileRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.IFileSavePickerUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9656c1e7-3e56-43cc-8a39-33c73d9d542b";
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
        get_AllowedFileTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_SettingsIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TrySetFileName: *const fn(self: *anyopaque, value: HSTRING, _r: *SetFileNameResult) callconv(.winapi) HRESULT,
        add_FileNameChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(FileSavePickerUI,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FileNameChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TargetFileRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(FileSavePickerUI,TargetFileRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TargetFileRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPickerClosingDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.IPickerClosingDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7af7f71e-1a67-4a31-ae80-e907708a619b";
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
pub const IPickerClosingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getClosingOperation(self: *@This()) core.HResult!*PickerClosingOperation {
        var _r: *PickerClosingOperation = undefined;
        const _c = self.vtable.get_ClosingOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.IPickerClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e59f224-b332-4f12-8b9f-a8c2f06b32cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClosingOperation: *const fn(self: *anyopaque, _r: **PickerClosingOperation) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPickerClosingOperation = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*PickerClosingDeferral {
        var _r: *PickerClosingDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.IPickerClosingOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ce9fb84-beee-4e39-a773-fc5f0eae328d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **PickerClosingDeferral) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const ITargetFileRequest = extern struct {
    vtable: *const VTable,
    pub fn getTargetFile(self: *@This()) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.get_TargetFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetFile(self: *@This(), value: *IStorageFile) core.HResult!void {
        const _c = self.vtable.put_TargetFile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*TargetFileRequestDeferral {
        var _r: *TargetFileRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.ITargetFileRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42bd3355-7f88-478b-8e81-690b20340678";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetFile: *const fn(self: *anyopaque, _r: **IStorageFile) callconv(.winapi) HRESULT,
        put_TargetFile: *const fn(self: *anyopaque, value: *IStorageFile) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **TargetFileRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const ITargetFileRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.ITargetFileRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4aee9d91-bf15-4da9-95f6-f6b7d558225b";
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
pub const ITargetFileRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*TargetFileRequest {
        var _r: *TargetFileRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.ITargetFileRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b163dbc1-1b51-4c89-a591-0fd40b3c57c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **TargetFileRequest) callconv(.winapi) HRESULT,
    };
};
pub const PickerClosingDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IPickerClosingDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.PickerClosingDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPickerClosingDeferral.GUID;
    pub const IID: Guid = IPickerClosingDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPickerClosingDeferral.SIGNATURE);
};
pub const PickerClosingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClosingOperation(self: *@This()) core.HResult!*PickerClosingOperation {
        const this: *IPickerClosingEventArgs = @ptrCast(self);
        return try this.getClosingOperation();
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *IPickerClosingEventArgs = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.PickerClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPickerClosingEventArgs.GUID;
    pub const IID: Guid = IPickerClosingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPickerClosingEventArgs.SIGNATURE);
};
pub const PickerClosingOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*PickerClosingDeferral {
        const this: *IPickerClosingOperation = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IPickerClosingOperation = @ptrCast(self);
        return try this.getDeadline();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.PickerClosingOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPickerClosingOperation.GUID;
    pub const IID: Guid = IPickerClosingOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPickerClosingOperation.SIGNATURE);
};
pub const SetFileNameResult = enum(i32) {
    Succeeded = 0,
    NotAllowed = 1,
    Unavailable = 2,
};
pub const TargetFileRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetFile(self: *@This()) core.HResult!*IStorageFile {
        const this: *ITargetFileRequest = @ptrCast(self);
        return try this.getTargetFile();
    }
    pub fn putTargetFile(self: *@This(), value: *IStorageFile) core.HResult!void {
        const this: *ITargetFileRequest = @ptrCast(self);
        return try this.putTargetFile(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*TargetFileRequestDeferral {
        const this: *ITargetFileRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.TargetFileRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetFileRequest.GUID;
    pub const IID: Guid = ITargetFileRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetFileRequest.SIGNATURE);
};
pub const TargetFileRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ITargetFileRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.TargetFileRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetFileRequestDeferral.GUID;
    pub const IID: Guid = ITargetFileRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetFileRequestDeferral.SIGNATURE);
};
pub const TargetFileRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*TargetFileRequest {
        const this: *ITargetFileRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetFileRequestedEventArgs.GUID;
    pub const IID: Guid = ITargetFileRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetFileRequestedEventArgs.SIGNATURE);
};
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IStorageFile = @import("../../Storage.zig").IStorageFile;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
