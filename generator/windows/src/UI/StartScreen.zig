pub const ForegroundText = enum(i32) {
    Dark = 0,
    Light = 1,
};
pub const IJumpList = extern struct {
    vtable: *const VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVector(JumpListItem) {
        var _r: *IVector(JumpListItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemGroupKind(self: *@This()) core.HResult!JumpListSystemGroupKind {
        var _r: JumpListSystemGroupKind = undefined;
        const _c = self.vtable.get_SystemGroupKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemGroupKind(self: *@This(), value: JumpListSystemGroupKind) core.HResult!void {
        const _c = self.vtable.put_SystemGroupKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IJumpList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0234c3e-cd6f-4cb6-a611-61fd505f3ed1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(JumpListItem)) callconv(.winapi) HRESULT,
        get_SystemGroupKind: *const fn(self: *anyopaque, _r: *JumpListSystemGroupKind) callconv(.winapi) HRESULT,
        put_SystemGroupKind: *const fn(self: *anyopaque, value: JumpListSystemGroupKind) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListItem = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!JumpListItemKind {
        var _r: JumpListItemKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemovedByUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RemovedByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGroupName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GroupName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroupName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_GroupName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IJumpListItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7adb6717-8b5d-4820-995b-9b418dbe48b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *JumpListItemKind) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemovedByUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_GroupName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_GroupName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListItemStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWithArguments(self: *@This(), arguments: HSTRING, displayName: HSTRING) core.HResult!*JumpListItem {
        var _r: *JumpListItem = undefined;
        const _c = self.vtable.CreateWithArguments(@ptrCast(self), arguments, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSeparator(self: *@This()) core.HResult!*JumpListItem {
        var _r: *JumpListItem = undefined;
        const _c = self.vtable.CreateSeparator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IJumpListItemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1bfc4e8-c7aa-49cb-8dde-ecfccd7ad7e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithArguments: *const fn(self: *anyopaque, arguments: HSTRING, displayName: HSTRING, _r: **JumpListItem) callconv(.winapi) HRESULT,
        CreateSeparator: *const fn(self: *anyopaque, _r: **JumpListItem) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadCurrentAsync(self: *@This()) core.HResult!*IAsyncOperation(JumpList) {
        var _r: *IAsyncOperation(JumpList) = undefined;
        const _c = self.vtable.LoadCurrentAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IJumpListStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7e0c681-e67e-4b74-8250-3f322c4d92c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadCurrentAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(JumpList)) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTile = extern struct {
    vtable: *const VTable,
    pub fn putTileId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TileId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putArguments(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Arguments(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShortName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ShortName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShortName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ShortName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmallLogo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_SmallLogo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSmallLogo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SmallLogo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWideLogo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_WideLogo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWideLogo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_WideLogo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLockScreenBadgeLogo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_LockScreenBadgeLogo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLockScreenBadgeLogo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LockScreenBadgeLogo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLockScreenDisplayBadgeAndTileText(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_LockScreenDisplayBadgeAndTileText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLockScreenDisplayBadgeAndTileText(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LockScreenDisplayBadgeAndTileText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTileOptions(self: *@This(), value: TileOptions) core.HResult!void {
        const _c = self.vtable.put_TileOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTileOptions(self: *@This()) core.HResult!TileOptions {
        var _r: TileOptions = undefined;
        const _c = self.vtable.get_TileOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForegroundText(self: *@This(), value: ForegroundText) core.HResult!void {
        const _c = self.vtable.put_ForegroundText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundText(self: *@This()) core.HResult!ForegroundText {
        var _r: ForegroundText = undefined;
        const _c = self.vtable.get_ForegroundText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCreateAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestCreateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCreateAsync(self: *@This(), invocationPoint: Point) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestCreateAsync(@ptrCast(self), invocationPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCreateForSelectionAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestCreateForSelectionAsync(@ptrCast(self), selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCreateForSelectionAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestCreateForSelectionAsyncWithPreferredPlacement(@ptrCast(self), selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDeleteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestDeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDeleteAsync(self: *@This(), invocationPoint: Point) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestDeleteAsync(@ptrCast(self), invocationPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDeleteForSelectionAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestDeleteForSelectionAsync(@ptrCast(self), selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDeleteForSelectionAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestDeleteForSelectionAsyncWithPreferredPlacement(@ptrCast(self), selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.UpdateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e9e51e0-2bb5-4bc0-bb8d-42b23abcc88d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_TileId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Arguments: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ShortName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ShortName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_SmallLogo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_SmallLogo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_WideLogo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_WideLogo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_LockScreenBadgeLogo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_LockScreenBadgeLogo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_LockScreenDisplayBadgeAndTileText: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LockScreenDisplayBadgeAndTileText: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TileOptions: *const fn(self: *anyopaque, value: TileOptions) callconv(.winapi) HRESULT,
        get_TileOptions: *const fn(self: *anyopaque, _r: *TileOptions) callconv(.winapi) HRESULT,
        put_ForegroundText: *const fn(self: *anyopaque, value: ForegroundText) callconv(.winapi) HRESULT,
        get_ForegroundText: *const fn(self: *anyopaque, _r: *ForegroundText) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        RequestCreateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestCreateAsync: *const fn(self: *anyopaque, invocationPoint: Point, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestCreateForSelectionAsync: *const fn(self: *anyopaque, selection: Rect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestCreateForSelectionAsyncWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestDeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestDeleteAsync: *const fn(self: *anyopaque, invocationPoint: Point, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestDeleteForSelectionAsync: *const fn(self: *anyopaque, selection: Rect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestDeleteForSelectionAsyncWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        UpdateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTile2 = extern struct {
    vtable: *const VTable,
    pub fn putPhoneticName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PhoneticName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhoneticName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneticName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisualElements(self: *@This()) core.HResult!*SecondaryTileVisualElements {
        var _r: *SecondaryTileVisualElements = undefined;
        const _c = self.vtable.get_VisualElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoamingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RoamingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoamingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RoamingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addVisualElementsRequested(self: *@This(), handler: *TypedEventHandler(SecondaryTile,VisualElementsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisualElementsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisualElementsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisualElementsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2f6cc35-3250-4990-923c-294ab4b694dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PhoneticName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PhoneticName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VisualElements: *const fn(self: *anyopaque, _r: **SecondaryTileVisualElements) callconv(.winapi) HRESULT,
        put_RoamingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RoamingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_VisualElementsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SecondaryTile,VisualElementsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisualElementsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateTile(self: *@This(), tileId: HSTRING, shortName: HSTRING, displayName: HSTRING, arguments: HSTRING, tileOptions: TileOptions, logoReference: *Uri) core.HResult!*SecondaryTile {
        var _r: *SecondaryTile = undefined;
        const _c = self.vtable.CreateTile(@ptrCast(self), tileId, shortName, displayName, arguments, tileOptions, logoReference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWideTile(self: *@This(), tileId: HSTRING, shortName: HSTRING, displayName: HSTRING, arguments: HSTRING, tileOptions: TileOptions, logoReference: *Uri, wideLogoReference: *Uri) core.HResult!*SecondaryTile {
        var _r: *SecondaryTile = undefined;
        const _c = self.vtable.CreateWideTile(@ptrCast(self), tileId, shortName, displayName, arguments, tileOptions, logoReference, wideLogoReference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithId(self: *@This(), tileId: HSTRING) core.HResult!*SecondaryTile {
        var _r: *SecondaryTile = undefined;
        const _c = self.vtable.CreateWithId(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57f52ca0-51bc-4abf-8ebf-627a0398b05a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTile: *const fn(self: *anyopaque, tileId: HSTRING, shortName: HSTRING, displayName: HSTRING, arguments: HSTRING, tileOptions: TileOptions, logoReference: *Uri, _r: **SecondaryTile) callconv(.winapi) HRESULT,
        CreateWideTile: *const fn(self: *anyopaque, tileId: HSTRING, shortName: HSTRING, displayName: HSTRING, arguments: HSTRING, tileOptions: TileOptions, logoReference: *Uri, wideLogoReference: *Uri, _r: **SecondaryTile) callconv(.winapi) HRESULT,
        CreateWithId: *const fn(self: *anyopaque, tileId: HSTRING, _r: **SecondaryTile) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateMinimalTile(self: *@This(), tileId: HSTRING, displayName: HSTRING, arguments: HSTRING, square150x150Logo: *Uri, desiredSize: TileSize) core.HResult!*SecondaryTile {
        var _r: *SecondaryTile = undefined;
        const _c = self.vtable.CreateMinimalTile(@ptrCast(self), tileId, displayName, arguments, square150x150Logo, desiredSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "274b8a3b-522d-448e-9eb2-d0672ab345c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMinimalTile: *const fn(self: *anyopaque, tileId: HSTRING, displayName: HSTRING, arguments: HSTRING, square150x150Logo: *Uri, desiredSize: TileSize, _r: **SecondaryTile) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileStatics = extern struct {
    vtable: *const VTable,
    pub fn Exists(self: *@This(), tileId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Exists(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(SecondaryTile)) {
        var _r: *IAsyncOperation(IVectorView(SecondaryTile)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), applicationId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(SecondaryTile)) {
        var _r: *IAsyncOperation(IVectorView(SecondaryTile)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllForPackageAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(SecondaryTile)) {
        var _r: *IAsyncOperation(IVectorView(SecondaryTile)) = undefined;
        const _c = self.vtable.FindAllForPackageAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99908dae-d051-4676-87fe-9ec242d83c74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Exists: *const fn(self: *anyopaque, tileId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(SecondaryTile))) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **IAsyncOperation(IVectorView(SecondaryTile))) callconv(.winapi) HRESULT,
        FindAllForPackageAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(SecondaryTile))) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileVisualElements = extern struct {
    vtable: *const VTable,
    pub fn putSquare30x30Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Square30x30Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare30x30Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Square30x30Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSquare70x70Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Square70x70Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare70x70Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Square70x70Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSquare150x150Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Square150x150Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare150x150Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Square150x150Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWide310x150Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Wide310x150Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWide310x150Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Wide310x150Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSquare310x310Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Square310x310Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare310x310Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Square310x310Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForegroundText(self: *@This(), value: ForegroundText) core.HResult!void {
        const _c = self.vtable.put_ForegroundText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundText(self: *@This()) core.HResult!ForegroundText {
        var _r: ForegroundText = undefined;
        const _c = self.vtable.get_ForegroundText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowNameOnSquare150x150Logo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowNameOnSquare150x150Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowNameOnSquare150x150Logo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowNameOnSquare150x150Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowNameOnWide310x150Logo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowNameOnWide310x150Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowNameOnWide310x150Logo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowNameOnWide310x150Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowNameOnSquare310x310Logo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowNameOnSquare310x310Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowNameOnSquare310x310Logo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowNameOnSquare310x310Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileVisualElements";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d8df333-815e-413f-9f50-a81da70a96b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Square30x30Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Square30x30Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Square70x70Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Square70x70Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Square150x150Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Square150x150Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Wide310x150Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Wide310x150Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Square310x310Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Square310x310Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ForegroundText: *const fn(self: *anyopaque, value: ForegroundText) callconv(.winapi) HRESULT,
        get_ForegroundText: *const fn(self: *anyopaque, _r: *ForegroundText) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_ShowNameOnSquare150x150Logo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShowNameOnSquare150x150Logo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowNameOnWide310x150Logo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShowNameOnWide310x150Logo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowNameOnSquare310x310Logo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShowNameOnSquare310x310Logo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileVisualElements2 = extern struct {
    vtable: *const VTable,
    pub fn putSquare71x71Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Square71x71Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare71x71Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Square71x71Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileVisualElements2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd2e31d0-57dc-4794-8ecf-5682f5f3e6ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Square71x71Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Square71x71Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileVisualElements3 = extern struct {
    vtable: *const VTable,
    pub fn putSquare44x44Logo(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Square44x44Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare44x44Logo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Square44x44Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileVisualElements3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56b55ad6-d15c-40f4-81e7-57ffd8f8a4e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Square44x44Logo: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Square44x44Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryTileVisualElements4 = extern struct {
    vtable: *const VTable,
    pub fn getMixedRealityModel(self: *@This()) core.HResult!*TileMixedRealityModel {
        var _r: *TileMixedRealityModel = undefined;
        const _c = self.vtable.get_MixedRealityModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ISecondaryTileVisualElements4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66566117-b544-40d2-8d12-74d4ec24d04c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MixedRealityModel: *const fn(self: *anyopaque, _r: **TileMixedRealityModel) callconv(.winapi) HRESULT,
    };
};
pub const IStartScreenManager = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SupportsAppListEntry(self: *@This(), appListEntry: *AppListEntry) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SupportsAppListEntry(@ptrCast(self), appListEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ContainsAppListEntryAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ContainsAppListEntryAsync(@ptrCast(self), appListEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAddAppListEntryAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestAddAppListEntryAsync(@ptrCast(self), appListEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IStartScreenManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a1dcbcb-26e9-4eb4-8933-859eb6ecdb29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        SupportsAppListEntry: *const fn(self: *anyopaque, appListEntry: *AppListEntry, _r: *bool) callconv(.winapi) HRESULT,
        ContainsAppListEntryAsync: *const fn(self: *anyopaque, appListEntry: *AppListEntry, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestAddAppListEntryAsync: *const fn(self: *anyopaque, appListEntry: *AppListEntry, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IStartScreenManager2 = extern struct {
    vtable: *const VTable,
    pub fn ContainsSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ContainsSecondaryTileAsync(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRemoveSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRemoveSecondaryTileAsync(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IStartScreenManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08a716b6-316b-4ad9-acb8-fe9cf00bd608";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ContainsSecondaryTileAsync: *const fn(self: *anyopaque, tileId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryRemoveSecondaryTileAsync: *const fn(self: *anyopaque, tileId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IStartScreenManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*StartScreenManager {
        var _r: *StartScreenManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*StartScreenManager {
        var _r: *StartScreenManager = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IStartScreenManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7865ef0f-b585-464e-8993-34e8f8738d48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **StartScreenManager) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **StartScreenManager) callconv(.winapi) HRESULT,
    };
};
pub const ITileMixedRealityModel = extern struct {
    vtable: *const VTable,
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBoundingBox(self: *@This(), value: *IReference(SpatialBoundingBox)) core.HResult!void {
        const _c = self.vtable.put_BoundingBox(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!*IReference(SpatialBoundingBox) {
        var _r: *IReference(SpatialBoundingBox) = undefined;
        const _c = self.vtable.get_BoundingBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ITileMixedRealityModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0764e5b-887d-4242-9a19-3d0a4ea78031";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_BoundingBox: *const fn(self: *anyopaque, value: *IReference(SpatialBoundingBox)) callconv(.winapi) HRESULT,
        get_BoundingBox: *const fn(self: *anyopaque, _r: **IReference(SpatialBoundingBox)) callconv(.winapi) HRESULT,
    };
};
pub const ITileMixedRealityModel2 = extern struct {
    vtable: *const VTable,
    pub fn putActivationBehavior(self: *@This(), value: TileMixedRealityModelActivationBehavior) core.HResult!void {
        const _c = self.vtable.put_ActivationBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActivationBehavior(self: *@This()) core.HResult!TileMixedRealityModelActivationBehavior {
        var _r: TileMixedRealityModelActivationBehavior = undefined;
        const _c = self.vtable.get_ActivationBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.ITileMixedRealityModel2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "439470b2-d7c5-410b-8319-9486a27b6c67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ActivationBehavior: *const fn(self: *anyopaque, value: TileMixedRealityModelActivationBehavior) callconv(.winapi) HRESULT,
        get_ActivationBehavior: *const fn(self: *anyopaque, _r: *TileMixedRealityModelActivationBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IVisualElementsRequest = extern struct {
    vtable: *const VTable,
    pub fn getVisualElements(self: *@This()) core.HResult!*SecondaryTileVisualElements {
        var _r: *SecondaryTileVisualElements = undefined;
        const _c = self.vtable.get_VisualElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlternateVisualElements(self: *@This()) core.HResult!*IVectorView(SecondaryTileVisualElements) {
        var _r: *IVectorView(SecondaryTileVisualElements) = undefined;
        const _c = self.vtable.get_AlternateVisualElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*VisualElementsRequestDeferral {
        var _r: *VisualElementsRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IVisualElementsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c138333a-9308-4072-88cc-d068db347c68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VisualElements: *const fn(self: *anyopaque, _r: **SecondaryTileVisualElements) callconv(.winapi) HRESULT,
        get_AlternateVisualElements: *const fn(self: *anyopaque, _r: **IVectorView(SecondaryTileVisualElements)) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **VisualElementsRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IVisualElementsRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IVisualElementsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1656eb0-0126-4357-8204-bd82bb2a046d";
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
pub const IVisualElementsRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*VisualElementsRequest {
        var _r: *VisualElementsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.IVisualElementsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b6fc982-3a0d-4ece-af96-cd17e1b00b2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **VisualElementsRequest) callconv(.winapi) HRESULT,
    };
};
pub const JumpList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVector(JumpListItem) {
        const this: *IJumpList = @ptrCast(self);
        return try this.getItems();
    }
    pub fn getSystemGroupKind(self: *@This()) core.HResult!JumpListSystemGroupKind {
        const this: *IJumpList = @ptrCast(self);
        return try this.getSystemGroupKind();
    }
    pub fn putSystemGroupKind(self: *@This(), value: JumpListSystemGroupKind) core.HResult!void {
        const this: *IJumpList = @ptrCast(self);
        return try this.putSystemGroupKind(value);
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IJumpList = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LoadCurrentAsync() core.HResult!*IAsyncOperation(JumpList) {
        const factory = @This().IJumpListStaticsCache.get();
        return try factory.LoadCurrentAsync();
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IJumpListStaticsCache.get();
        return try factory.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.JumpList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJumpList.GUID;
    pub const IID: Guid = IJumpList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJumpList.SIGNATURE);
    var _IJumpListStaticsCache: FactoryCache(IJumpListStatics, RUNTIME_NAME) = .{};
};
pub const JumpListItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!JumpListItemKind {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getArguments();
    }
    pub fn getRemovedByUser(self: *@This()) core.HResult!bool {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getRemovedByUser();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getGroupName(self: *@This()) core.HResult!HSTRING {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getGroupName();
    }
    pub fn putGroupName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.putGroupName(value);
    }
    pub fn getLogo(self: *@This()) core.HResult!*Uri {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.getLogo();
    }
    pub fn putLogo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IJumpListItem = @ptrCast(self);
        return try this.putLogo(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithArguments(arguments: HSTRING, displayName: HSTRING) core.HResult!*JumpListItem {
        const factory = @This().IJumpListItemStaticsCache.get();
        return try factory.CreateWithArguments(arguments, displayName);
    }
    pub fn CreateSeparator() core.HResult!*JumpListItem {
        const factory = @This().IJumpListItemStaticsCache.get();
        return try factory.CreateSeparator();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.JumpListItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJumpListItem.GUID;
    pub const IID: Guid = IJumpListItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJumpListItem.SIGNATURE);
    var _IJumpListItemStaticsCache: FactoryCache(IJumpListItemStatics, RUNTIME_NAME) = .{};
};
pub const JumpListItemKind = enum(i32) {
    Arguments = 0,
    Separator = 1,
};
pub const JumpListSystemGroupKind = enum(i32) {
    None = 0,
    Frequent = 1,
    Recent = 2,
};
pub const SecondaryTile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putTileId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putTileId(value);
    }
    pub fn getTileId(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getTileId();
    }
    pub fn putArguments(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putArguments(value);
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getArguments();
    }
    pub fn putShortName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putShortName(value);
    }
    pub fn getShortName(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getShortName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putLogo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putLogo(value);
    }
    pub fn getLogo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getLogo();
    }
    pub fn putSmallLogo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putSmallLogo(value);
    }
    pub fn getSmallLogo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getSmallLogo();
    }
    pub fn putWideLogo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putWideLogo(value);
    }
    pub fn getWideLogo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getWideLogo();
    }
    pub fn putLockScreenBadgeLogo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putLockScreenBadgeLogo(value);
    }
    pub fn getLockScreenBadgeLogo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getLockScreenBadgeLogo();
    }
    pub fn putLockScreenDisplayBadgeAndTileText(self: *@This(), value: bool) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putLockScreenDisplayBadgeAndTileText(value);
    }
    pub fn getLockScreenDisplayBadgeAndTileText(self: *@This()) core.HResult!bool {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getLockScreenDisplayBadgeAndTileText();
    }
    pub fn putTileOptions(self: *@This(), value: TileOptions) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putTileOptions(value);
    }
    pub fn getTileOptions(self: *@This()) core.HResult!TileOptions {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getTileOptions();
    }
    pub fn putForegroundText(self: *@This(), value: ForegroundText) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putForegroundText(value);
    }
    pub fn getForegroundText(self: *@This()) core.HResult!ForegroundText {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getForegroundText();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn RequestCreateAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestCreateAsync();
    }
    pub fn RequestCreateAsyncWithInvocationPoint(self: *@This(), invocationPoint: Point) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestCreateAsyncWithInvocationPoint(invocationPoint);
    }
    pub fn RequestCreateForSelectionAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestCreateForSelectionAsync(selection);
    }
    pub fn RequestCreateForSelectionAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestCreateForSelectionAsyncWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn RequestDeleteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestDeleteAsync();
    }
    pub fn RequestDeleteAsyncWithInvocationPoint(self: *@This(), invocationPoint: Point) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestDeleteAsyncWithInvocationPoint(invocationPoint);
    }
    pub fn RequestDeleteForSelectionAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestDeleteForSelectionAsync(selection);
    }
    pub fn RequestDeleteForSelectionAsyncWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.RequestDeleteForSelectionAsyncWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn UpdateAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ISecondaryTile = @ptrCast(self);
        return try this.UpdateAsync();
    }
    pub fn putPhoneticName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPhoneticName(value);
    }
    pub fn getPhoneticName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhoneticName();
    }
    pub fn getVisualElements(self: *@This()) core.HResult!*SecondaryTileVisualElements {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVisualElements();
    }
    pub fn putRoamingEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRoamingEnabled(value);
    }
    pub fn getRoamingEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRoamingEnabled();
    }
    pub fn addVisualElementsRequested(self: *@This(), handler: *TypedEventHandler(SecondaryTile,VisualElementsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVisualElementsRequested(handler);
    }
    pub fn removeVisualElementsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISecondaryTile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVisualElementsRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISecondaryTile.IID)));
    }
    pub fn CreateTile(tileId: HSTRING, shortName: HSTRING, displayName: HSTRING, arguments: HSTRING, tileOptions: TileOptions, logoReference: *Uri) core.HResult!*SecondaryTile {
        const factory = @This().ISecondaryTileFactoryCache.get();
        return try factory.CreateTile(tileId, shortName, displayName, arguments, tileOptions, logoReference);
    }
    pub fn CreateWideTile(tileId: HSTRING, shortName: HSTRING, displayName: HSTRING, arguments: HSTRING, tileOptions: TileOptions, logoReference: *Uri, wideLogoReference: *Uri) core.HResult!*SecondaryTile {
        const factory = @This().ISecondaryTileFactoryCache.get();
        return try factory.CreateWideTile(tileId, shortName, displayName, arguments, tileOptions, logoReference, wideLogoReference);
    }
    pub fn CreateWithId(tileId: HSTRING) core.HResult!*SecondaryTile {
        const factory = @This().ISecondaryTileFactoryCache.get();
        return try factory.CreateWithId(tileId);
    }
    pub fn CreateMinimalTile(tileId: HSTRING, displayName: HSTRING, arguments: HSTRING, square150x150Logo: *Uri, desiredSize: TileSize) core.HResult!*SecondaryTile {
        const factory = @This().ISecondaryTileFactory2Cache.get();
        return try factory.CreateMinimalTile(tileId, displayName, arguments, square150x150Logo, desiredSize);
    }
    pub fn Exists(tileId: HSTRING) core.HResult!bool {
        const factory = @This().ISecondaryTileStaticsCache.get();
        return try factory.Exists(tileId);
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(SecondaryTile)) {
        const factory = @This().ISecondaryTileStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FindAllAsyncWithApplicationId(applicationId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(SecondaryTile)) {
        const factory = @This().ISecondaryTileStaticsCache.get();
        return try factory.FindAllAsyncWithApplicationId(applicationId);
    }
    pub fn FindAllForPackageAsync() core.HResult!*IAsyncOperation(IVectorView(SecondaryTile)) {
        const factory = @This().ISecondaryTileStaticsCache.get();
        return try factory.FindAllForPackageAsync();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.SecondaryTile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryTile.GUID;
    pub const IID: Guid = ISecondaryTile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryTile.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISecondaryTileFactoryCache: FactoryCache(ISecondaryTileFactory, RUNTIME_NAME) = .{};
    var _ISecondaryTileFactory2Cache: FactoryCache(ISecondaryTileFactory2, RUNTIME_NAME) = .{};
    var _ISecondaryTileStaticsCache: FactoryCache(ISecondaryTileStatics, RUNTIME_NAME) = .{};
};
pub const SecondaryTileVisualElements = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putSquare30x30Logo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putSquare30x30Logo(value);
    }
    pub fn getSquare30x30Logo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getSquare30x30Logo();
    }
    pub fn putSquare70x70Logo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putSquare70x70Logo(value);
    }
    pub fn getSquare70x70Logo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getSquare70x70Logo();
    }
    pub fn putSquare150x150Logo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putSquare150x150Logo(value);
    }
    pub fn getSquare150x150Logo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getSquare150x150Logo();
    }
    pub fn putWide310x150Logo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putWide310x150Logo(value);
    }
    pub fn getWide310x150Logo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getWide310x150Logo();
    }
    pub fn putSquare310x310Logo(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putSquare310x310Logo(value);
    }
    pub fn getSquare310x310Logo(self: *@This()) core.HResult!*Uri {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getSquare310x310Logo();
    }
    pub fn putForegroundText(self: *@This(), value: ForegroundText) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putForegroundText(value);
    }
    pub fn getForegroundText(self: *@This()) core.HResult!ForegroundText {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getForegroundText();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn putShowNameOnSquare150x150Logo(self: *@This(), value: bool) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putShowNameOnSquare150x150Logo(value);
    }
    pub fn getShowNameOnSquare150x150Logo(self: *@This()) core.HResult!bool {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getShowNameOnSquare150x150Logo();
    }
    pub fn putShowNameOnWide310x150Logo(self: *@This(), value: bool) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putShowNameOnWide310x150Logo(value);
    }
    pub fn getShowNameOnWide310x150Logo(self: *@This()) core.HResult!bool {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getShowNameOnWide310x150Logo();
    }
    pub fn putShowNameOnSquare310x310Logo(self: *@This(), value: bool) core.HResult!void {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.putShowNameOnSquare310x310Logo(value);
    }
    pub fn getShowNameOnSquare310x310Logo(self: *@This()) core.HResult!bool {
        const this: *ISecondaryTileVisualElements = @ptrCast(self);
        return try this.getShowNameOnSquare310x310Logo();
    }
    pub fn putSquare71x71Logo(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*ISecondaryTileVisualElements2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTileVisualElements2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSquare71x71Logo(value);
    }
    pub fn getSquare71x71Logo(self: *@This()) core.HResult!*Uri {
        var this: ?*ISecondaryTileVisualElements2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTileVisualElements2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSquare71x71Logo();
    }
    pub fn putSquare44x44Logo(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*ISecondaryTileVisualElements3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTileVisualElements3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSquare44x44Logo(value);
    }
    pub fn getSquare44x44Logo(self: *@This()) core.HResult!*Uri {
        var this: ?*ISecondaryTileVisualElements3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTileVisualElements3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSquare44x44Logo();
    }
    pub fn getMixedRealityModel(self: *@This()) core.HResult!*TileMixedRealityModel {
        var this: ?*ISecondaryTileVisualElements4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryTileVisualElements4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMixedRealityModel();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.SecondaryTileVisualElements";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryTileVisualElements.GUID;
    pub const IID: Guid = ISecondaryTileVisualElements.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryTileVisualElements.SIGNATURE);
};
pub const StartScreenManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IStartScreenManager = @ptrCast(self);
        return try this.getUser();
    }
    pub fn SupportsAppListEntry(self: *@This(), appListEntry: *AppListEntry) core.HResult!bool {
        const this: *IStartScreenManager = @ptrCast(self);
        return try this.SupportsAppListEntry(appListEntry);
    }
    pub fn ContainsAppListEntryAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        const this: *IStartScreenManager = @ptrCast(self);
        return try this.ContainsAppListEntryAsync(appListEntry);
    }
    pub fn RequestAddAppListEntryAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        const this: *IStartScreenManager = @ptrCast(self);
        return try this.RequestAddAppListEntryAsync(appListEntry);
    }
    pub fn ContainsSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IStartScreenManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStartScreenManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ContainsSecondaryTileAsync(tileId);
    }
    pub fn TryRemoveSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IStartScreenManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStartScreenManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRemoveSecondaryTileAsync(tileId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*StartScreenManager {
        const factory = @This().IStartScreenManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*StartScreenManager {
        const factory = @This().IStartScreenManagerStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.StartScreenManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStartScreenManager.GUID;
    pub const IID: Guid = IStartScreenManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStartScreenManager.SIGNATURE);
    var _IStartScreenManagerStaticsCache: FactoryCache(IStartScreenManagerStatics, RUNTIME_NAME) = .{};
};
pub const TileMixedRealityModel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ITileMixedRealityModel = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *ITileMixedRealityModel = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putBoundingBox(self: *@This(), value: *IReference(SpatialBoundingBox)) core.HResult!void {
        const this: *ITileMixedRealityModel = @ptrCast(self);
        return try this.putBoundingBox(value);
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!*IReference(SpatialBoundingBox) {
        const this: *ITileMixedRealityModel = @ptrCast(self);
        return try this.getBoundingBox();
    }
    pub fn putActivationBehavior(self: *@This(), value: TileMixedRealityModelActivationBehavior) core.HResult!void {
        var this: ?*ITileMixedRealityModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITileMixedRealityModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putActivationBehavior(value);
    }
    pub fn getActivationBehavior(self: *@This()) core.HResult!TileMixedRealityModelActivationBehavior {
        var this: ?*ITileMixedRealityModel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITileMixedRealityModel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActivationBehavior();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.TileMixedRealityModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileMixedRealityModel.GUID;
    pub const IID: Guid = ITileMixedRealityModel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileMixedRealityModel.SIGNATURE);
};
pub const TileMixedRealityModelActivationBehavior = enum(i32) {
    Default = 0,
    None = 1,
};
pub const TileOptions = enum(i32) {
    None = 0,
    ShowNameOnLogo = 1,
    ShowNameOnWideLogo = 2,
    CopyOnDeployment = 4,
};
pub const TileSize = enum(i32) {
    Default = 0,
    Square30x30 = 1,
    Square70x70 = 2,
    Square150x150 = 3,
    Wide310x150 = 4,
    Square310x310 = 5,
    Square71x71 = 6,
    Square44x44 = 7,
};
pub const VisualElementsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVisualElements(self: *@This()) core.HResult!*SecondaryTileVisualElements {
        const this: *IVisualElementsRequest = @ptrCast(self);
        return try this.getVisualElements();
    }
    pub fn getAlternateVisualElements(self: *@This()) core.HResult!*IVectorView(SecondaryTileVisualElements) {
        const this: *IVisualElementsRequest = @ptrCast(self);
        return try this.getAlternateVisualElements();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IVisualElementsRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*VisualElementsRequestDeferral {
        const this: *IVisualElementsRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.VisualElementsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualElementsRequest.GUID;
    pub const IID: Guid = IVisualElementsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualElementsRequest.SIGNATURE);
};
pub const VisualElementsRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IVisualElementsRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.VisualElementsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualElementsRequestDeferral.GUID;
    pub const IID: Guid = IVisualElementsRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualElementsRequestDeferral.SIGNATURE);
};
pub const VisualElementsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*VisualElementsRequest {
        const this: *IVisualElementsRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.StartScreen.VisualElementsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualElementsRequestedEventArgs.GUID;
    pub const IID: Guid = IVisualElementsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualElementsRequestedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const AppListEntry = @import("../ApplicationModel/Core.zig").AppListEntry;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Placement = @import("./Popups.zig").Placement;
const IReference = @import("../Foundation.zig").IReference;
const Point = @import("../Foundation.zig").Point;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SpatialBoundingBox = @import("../Perception/Spatial.zig").SpatialBoundingBox;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
