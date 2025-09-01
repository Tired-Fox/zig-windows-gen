pub const INotePlacementChangedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getViewId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ViewId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.INotePlacementChangedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "491d57b7-f780-4e7f-a939-9a4caf965214";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const INoteVisibilityChangedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getViewId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ViewId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e34649e-3815-4ff6-83b3-a14d17120e24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const INotesWindowManagerPreview = extern struct {
    vtable: *const VTable,
    pub fn getIsScreenLocked(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScreenLocked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowNote(self: *@This(), noteViewId: i32) core.HResult!void {
        const _c = self.vtable.ShowNote(@ptrCast(self), noteViewId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowNoteRelativeTo(self: *@This(), noteViewId: i32, anchorNoteViewId: i32) core.HResult!void {
        const _c = self.vtable.ShowNoteRelativeTo(@ptrCast(self), noteViewId, anchorNoteViewId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowNoteWithPlacement(self: *@This(), noteViewId: i32, data: *IBuffer) core.HResult!void {
        const _c = self.vtable.ShowNoteWithPlacement(@ptrCast(self), noteViewId, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn HideNote(self: *@This(), noteViewId: i32) core.HResult!void {
        const _c = self.vtable.HideNote(@ptrCast(self), noteViewId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetNotePlacement(self: *@This(), noteViewId: i32) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetNotePlacement(@ptrCast(self), noteViewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetNoteSize(self: *@This(), noteViewId: i32, size: Size) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetNoteSize(@ptrCast(self), noteViewId, size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFocusToNextView(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetFocusToNextView(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetNotesThumbnailAsync(self: *@This(), thumbnail: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetNotesThumbnailAsync(@ptrCast(self), thumbnail, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSystemLockStateChanged(self: *@This(), handler: *TypedEventHandler(NotesWindowManagerPreview,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SystemLockStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSystemLockStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SystemLockStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNotePlacementChanged(self: *@This(), handler: *TypedEventHandler(NotesWindowManagerPreview,NotePlacementChangedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NotePlacementChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNotePlacementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NotePlacementChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNoteVisibilityChanged(self: *@This(), handler: *TypedEventHandler(NotesWindowManagerPreview,NoteVisibilityChangedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NoteVisibilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNoteVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NoteVisibilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc2ac23e-4850-4f13-9cc7-ff487efdfcde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsScreenLocked: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowNote: *const fn(self: *anyopaque, noteViewId: i32) callconv(.winapi) HRESULT,
        ShowNoteRelativeTo: *const fn(self: *anyopaque, noteViewId: i32, anchorNoteViewId: i32) callconv(.winapi) HRESULT,
        ShowNoteWithPlacement: *const fn(self: *anyopaque, noteViewId: i32, data: *IBuffer) callconv(.winapi) HRESULT,
        HideNote: *const fn(self: *anyopaque, noteViewId: i32) callconv(.winapi) HRESULT,
        GetNotePlacement: *const fn(self: *anyopaque, noteViewId: i32, _r: **IBuffer) callconv(.winapi) HRESULT,
        TrySetNoteSize: *const fn(self: *anyopaque, noteViewId: i32, size: Size, _r: *bool) callconv(.winapi) HRESULT,
        SetFocusToNextView: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetNotesThumbnailAsync: *const fn(self: *anyopaque, thumbnail: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_SystemLockStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(NotesWindowManagerPreview,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SystemLockStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NotePlacementChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(NotesWindowManagerPreview,NotePlacementChangedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NotePlacementChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NoteVisibilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(NotesWindowManagerPreview,NoteVisibilityChangedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NoteVisibilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const INotesWindowManagerPreview2 = extern struct {
    vtable: *const VTable,
    pub fn ShowNoteRelativeTo(self: *@This(), noteViewId: i32, anchorNoteViewId: i32, options: *NotesWindowManagerPreviewShowNoteOptions) core.HResult!void {
        const _c = self.vtable.ShowNoteRelativeTo(@ptrCast(self), noteViewId, anchorNoteViewId, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowNoteWithPlacement(self: *@This(), noteViewId: i32, data: *IBuffer, options: *NotesWindowManagerPreviewShowNoteOptions) core.HResult!void {
        const _c = self.vtable.ShowNoteWithPlacement(@ptrCast(self), noteViewId, data, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetFocusToPreviousView(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetFocusToPreviousView(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetThumbnailImageForTaskSwitcherAsync(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetThumbnailImageForTaskSwitcherAsync(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "edfe864a-1f54-4b09-9823-ff477f6fa3bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowNoteRelativeTo: *const fn(self: *anyopaque, noteViewId: i32, anchorNoteViewId: i32, options: *NotesWindowManagerPreviewShowNoteOptions) callconv(.winapi) HRESULT,
        ShowNoteWithPlacement: *const fn(self: *anyopaque, noteViewId: i32, data: *IBuffer, options: *NotesWindowManagerPreviewShowNoteOptions) callconv(.winapi) HRESULT,
        SetFocusToPreviousView: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetThumbnailImageForTaskSwitcherAsync: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const INotesWindowManagerPreviewShowNoteOptions = extern struct {
    vtable: *const VTable,
    pub fn getShowWithFocus(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowWithFocus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowWithFocus(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowWithFocus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "886b09d6-a6ae-4007-a56d-1ca70c84c0d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShowWithFocus: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowWithFocus: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const INotesWindowManagerPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentApp(self: *@This()) core.HResult!*NotesWindowManagerPreview {
        var _r: *NotesWindowManagerPreview = undefined;
        const _c = self.vtable.GetForCurrentApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6668cc88-0a8e-4127-a38e-995445868a78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentApp: *const fn(self: *anyopaque, _r: **NotesWindowManagerPreview) callconv(.winapi) HRESULT,
    };
};
pub const NotePlacementChangedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getViewId(self: *@This()) core.HResult!i32 {
        const this: *INotePlacementChangedPreviewEventArgs = @ptrCast(self);
        return try this.getViewId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.NotePlacementChangedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotePlacementChangedPreviewEventArgs.GUID;
    pub const IID: Guid = INotePlacementChangedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotePlacementChangedPreviewEventArgs.SIGNATURE);
};
pub const NoteVisibilityChangedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getViewId(self: *@This()) core.HResult!i32 {
        const this: *INoteVisibilityChangedPreviewEventArgs = @ptrCast(self);
        return try this.getViewId();
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        const this: *INoteVisibilityChangedPreviewEventArgs = @ptrCast(self);
        return try this.getIsVisible();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.NoteVisibilityChangedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INoteVisibilityChangedPreviewEventArgs.GUID;
    pub const IID: Guid = INoteVisibilityChangedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INoteVisibilityChangedPreviewEventArgs.SIGNATURE);
};
pub const NotesWindowManagerPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsScreenLocked(self: *@This()) core.HResult!bool {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.getIsScreenLocked();
    }
    pub fn ShowNote(self: *@This(), noteViewId: i32) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.ShowNote(noteViewId);
    }
    pub fn ShowNoteRelativeTo(self: *@This(), noteViewId: i32, anchorNoteViewId: i32) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.ShowNoteRelativeTo(noteViewId, anchorNoteViewId);
    }
    pub fn ShowNoteWithPlacement(self: *@This(), noteViewId: i32, data: *IBuffer) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.ShowNoteWithPlacement(noteViewId, data);
    }
    pub fn HideNote(self: *@This(), noteViewId: i32) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.HideNote(noteViewId);
    }
    pub fn GetNotePlacement(self: *@This(), noteViewId: i32) core.HResult!*IBuffer {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.GetNotePlacement(noteViewId);
    }
    pub fn TrySetNoteSize(self: *@This(), noteViewId: i32, size: Size) core.HResult!bool {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.TrySetNoteSize(noteViewId, size);
    }
    pub fn SetFocusToNextView(self: *@This()) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.SetFocusToNextView();
    }
    pub fn SetNotesThumbnailAsync(self: *@This(), thumbnail: *IBuffer) core.HResult!*IAsyncAction {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.SetNotesThumbnailAsync(thumbnail);
    }
    pub fn addSystemLockStateChanged(self: *@This(), handler: *TypedEventHandler(NotesWindowManagerPreview,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.addSystemLockStateChanged(handler);
    }
    pub fn removeSystemLockStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.removeSystemLockStateChanged(token);
    }
    pub fn addNotePlacementChanged(self: *@This(), handler: *TypedEventHandler(NotesWindowManagerPreview,NotePlacementChangedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.addNotePlacementChanged(handler);
    }
    pub fn removeNotePlacementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.removeNotePlacementChanged(token);
    }
    pub fn addNoteVisibilityChanged(self: *@This(), handler: *TypedEventHandler(NotesWindowManagerPreview,NoteVisibilityChangedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.addNoteVisibilityChanged(handler);
    }
    pub fn removeNoteVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INotesWindowManagerPreview = @ptrCast(self);
        return try this.removeNoteVisibilityChanged(token);
    }
    pub fn ShowNoteRelativeToWithOptions(self: *@This(), noteViewId: i32, anchorNoteViewId: i32, options: *NotesWindowManagerPreviewShowNoteOptions) core.HResult!void {
        var this: ?*INotesWindowManagerPreview2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INotesWindowManagerPreview2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowNoteRelativeToWithOptions(noteViewId, anchorNoteViewId, options);
    }
    pub fn ShowNoteWithPlacementWithOptions(self: *@This(), noteViewId: i32, data: *IBuffer, options: *NotesWindowManagerPreviewShowNoteOptions) core.HResult!void {
        var this: ?*INotesWindowManagerPreview2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INotesWindowManagerPreview2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowNoteWithPlacementWithOptions(noteViewId, data, options);
    }
    pub fn SetFocusToPreviousView(self: *@This()) core.HResult!void {
        var this: ?*INotesWindowManagerPreview2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INotesWindowManagerPreview2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFocusToPreviousView();
    }
    pub fn SetThumbnailImageForTaskSwitcherAsync(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*IAsyncAction {
        var this: ?*INotesWindowManagerPreview2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INotesWindowManagerPreview2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetThumbnailImageForTaskSwitcherAsync(bitmap);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentApp() core.HResult!*NotesWindowManagerPreview {
        const _f = @This().INotesWindowManagerPreviewStaticsCache.get();
        return try _f.GetForCurrentApp();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotesWindowManagerPreview.GUID;
    pub const IID: Guid = INotesWindowManagerPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotesWindowManagerPreview.SIGNATURE);
    var _INotesWindowManagerPreviewStaticsCache: FactoryCache(INotesWindowManagerPreviewStatics, RUNTIME_NAME) = .{};
};
pub const NotesWindowManagerPreviewShowNoteOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShowWithFocus(self: *@This()) core.HResult!bool {
        const this: *INotesWindowManagerPreviewShowNoteOptions = @ptrCast(self);
        return try this.getShowWithFocus();
    }
    pub fn putShowWithFocus(self: *@This(), value: bool) core.HResult!void {
        const this: *INotesWindowManagerPreviewShowNoteOptions = @ptrCast(self);
        return try this.putShowWithFocus(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INotesWindowManagerPreviewShowNoteOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotesWindowManagerPreviewShowNoteOptions.GUID;
    pub const IID: Guid = INotesWindowManagerPreviewShowNoteOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotesWindowManagerPreviewShowNoteOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Size = @import("../../Foundation.zig").Size;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const SoftwareBitmap = @import("../../Graphics/Imaging.zig").SoftwareBitmap;
const HSTRING = @import("../../root.zig").HSTRING;
