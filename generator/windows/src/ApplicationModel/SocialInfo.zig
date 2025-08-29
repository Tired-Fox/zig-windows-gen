pub const ISocialFeedChildItem = extern struct {
    vtable: *const VTable,
    pub fn getAuthor(self: *@This()) core.HResult!*SocialUserInfo {
        var _r: *SocialUserInfo = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        var _r: *SocialFeedContent = undefined;
        const _c = self.vtable.get_PrimaryContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecondaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        var _r: *SocialFeedContent = undefined;
        const _c = self.vtable.get_SecondaryContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_Timestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_TargetUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_TargetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnails(self: *@This()) core.HResult!*IVector(SocialItemThumbnail) {
        var _r: *IVector(SocialItemThumbnail) = undefined;
        const _c = self.vtable.get_Thumbnails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharedItem(self: *@This()) core.HResult!*SocialFeedSharedItem {
        var _r: *SocialFeedSharedItem = undefined;
        const _c = self.vtable.get_SharedItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharedItem(self: *@This(), value: *SocialFeedSharedItem) core.HResult!void {
        const _c = self.vtable.put_SharedItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b6a985a-d59d-40be-980c-488a2ab30a83";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: **SocialUserInfo) callconv(.winapi) HRESULT,
        get_PrimaryContent: *const fn(self: *anyopaque, _r: **SocialFeedContent) callconv(.winapi) HRESULT,
        get_SecondaryContent: *const fn(self: *anyopaque, _r: **SocialFeedContent) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_Timestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Thumbnails: *const fn(self: *anyopaque, _r: **IVector(SocialItemThumbnail)) callconv(.winapi) HRESULT,
        get_SharedItem: *const fn(self: *anyopaque, _r: **SocialFeedSharedItem) callconv(.winapi) HRESULT,
        put_SharedItem: *const fn(self: *anyopaque, value: *SocialFeedSharedItem) callconv(.winapi) HRESULT,
    };
};
pub const ISocialFeedContent = extern struct {
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
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_TargetUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_TargetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.ISocialFeedContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a234e429-3e39-494d-a37c-f462a2494514";
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
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Message: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const ISocialFeedItem = extern struct {
    vtable: *const VTable,
    pub fn getAuthor(self: *@This()) core.HResult!*SocialUserInfo {
        var _r: *SocialUserInfo = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        var _r: *SocialFeedContent = undefined;
        const _c = self.vtable.get_PrimaryContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecondaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        var _r: *SocialFeedContent = undefined;
        const _c = self.vtable.get_SecondaryContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_Timestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_TargetUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_TargetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnails(self: *@This()) core.HResult!*IVector(SocialItemThumbnail) {
        var _r: *IVector(SocialItemThumbnail) = undefined;
        const _c = self.vtable.get_Thumbnails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharedItem(self: *@This()) core.HResult!*SocialFeedSharedItem {
        var _r: *SocialFeedSharedItem = undefined;
        const _c = self.vtable.get_SharedItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharedItem(self: *@This(), value: *SocialFeedSharedItem) core.HResult!void {
        const _c = self.vtable.put_SharedItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBadgeStyle(self: *@This()) core.HResult!SocialItemBadgeStyle {
        var _r: SocialItemBadgeStyle = undefined;
        const _c = self.vtable.get_BadgeStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBadgeStyle(self: *@This(), value: SocialItemBadgeStyle) core.HResult!void {
        const _c = self.vtable.put_BadgeStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBadgeCountValue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_BadgeCountValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBadgeCountValue(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_BadgeCountValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChildItem(self: *@This()) core.HResult!*SocialFeedChildItem {
        var _r: *SocialFeedChildItem = undefined;
        const _c = self.vtable.get_ChildItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChildItem(self: *@This(), value: *SocialFeedChildItem) core.HResult!void {
        const _c = self.vtable.put_ChildItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStyle(self: *@This()) core.HResult!SocialFeedItemStyle {
        var _r: SocialFeedItemStyle = undefined;
        const _c = self.vtable.get_Style(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStyle(self: *@This(), value: SocialFeedItemStyle) core.HResult!void {
        const _c = self.vtable.put_Style(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.ISocialFeedItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f1392ab-1f72-4d33-b695-de3e1db60317";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: **SocialUserInfo) callconv(.winapi) HRESULT,
        get_PrimaryContent: *const fn(self: *anyopaque, _r: **SocialFeedContent) callconv(.winapi) HRESULT,
        get_SecondaryContent: *const fn(self: *anyopaque, _r: **SocialFeedContent) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_Timestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Thumbnails: *const fn(self: *anyopaque, _r: **IVector(SocialItemThumbnail)) callconv(.winapi) HRESULT,
        get_SharedItem: *const fn(self: *anyopaque, _r: **SocialFeedSharedItem) callconv(.winapi) HRESULT,
        put_SharedItem: *const fn(self: *anyopaque, value: *SocialFeedSharedItem) callconv(.winapi) HRESULT,
        get_BadgeStyle: *const fn(self: *anyopaque, _r: *SocialItemBadgeStyle) callconv(.winapi) HRESULT,
        put_BadgeStyle: *const fn(self: *anyopaque, value: SocialItemBadgeStyle) callconv(.winapi) HRESULT,
        get_BadgeCountValue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_BadgeCountValue: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ChildItem: *const fn(self: *anyopaque, _r: **SocialFeedChildItem) callconv(.winapi) HRESULT,
        put_ChildItem: *const fn(self: *anyopaque, value: *SocialFeedChildItem) callconv(.winapi) HRESULT,
        get_Style: *const fn(self: *anyopaque, _r: *SocialFeedItemStyle) callconv(.winapi) HRESULT,
        put_Style: *const fn(self: *anyopaque, value: SocialFeedItemStyle) callconv(.winapi) HRESULT,
    };
};
pub const ISocialFeedSharedItem = extern struct {
    vtable: *const VTable,
    pub fn getOriginalSource(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_OriginalSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOriginalSource(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_OriginalSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContent(self: *@This()) core.HResult!*SocialFeedContent {
        var _r: *SocialFeedContent = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_Timestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_TargetUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_TargetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putThumbnail(self: *@This(), value: *SocialItemThumbnail) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*SocialItemThumbnail {
        var _r: *SocialItemThumbnail = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OriginalSource: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_OriginalSource: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **SocialFeedContent) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_Timestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *SocialItemThumbnail) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **SocialItemThumbnail) callconv(.winapi) HRESULT,
    };
};
pub const ISocialItemThumbnail = extern struct {
    vtable: *const VTable,
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_TargetUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_TargetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImageUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ImageUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImageUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ImageUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitmapSize(self: *@This()) core.HResult!BitmapSize {
        var _r: BitmapSize = undefined;
        const _c = self.vtable.get_BitmapSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitmapSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const _c = self.vtable.put_BitmapSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetImageAsync(self: *@This(), image: *IInputStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetImageAsync(@ptrCast(self), image, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5cbf831a-3f08-497f-917f-57e09d84b141";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ImageUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ImageUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_BitmapSize: *const fn(self: *anyopaque, _r: *BitmapSize) callconv(.winapi) HRESULT,
        put_BitmapSize: *const fn(self: *anyopaque, value: BitmapSize) callconv(.winapi) HRESULT,
        SetImageAsync: *const fn(self: *anyopaque, image: *IInputStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISocialUserInfo = extern struct {
    vtable: *const VTable,
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
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_TargetUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_TargetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.ISocialUserInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e5e1bd1-90d0-4e1d-9554-844d46607f61";
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
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UserName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const SocialFeedChildItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthor(self: *@This()) core.HResult!*SocialUserInfo {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getAuthor();
    }
    pub fn getPrimaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getPrimaryContent();
    }
    pub fn getSecondaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getSecondaryContent();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.putTimestamp(value);
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub fn getThumbnails(self: *@This()) core.HResult!*IVector(SocialItemThumbnail) {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getThumbnails();
    }
    pub fn getSharedItem(self: *@This()) core.HResult!*SocialFeedSharedItem {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.getSharedItem();
    }
    pub fn putSharedItem(self: *@This(), value: *SocialFeedSharedItem) core.HResult!void {
        const this: *ISocialFeedChildItem = @ptrCast(self);
        return try this.putSharedItem(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISocialFeedChildItem.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.SocialFeedChildItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialFeedChildItem.GUID;
    pub const IID: Guid = ISocialFeedChildItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialFeedChildItem.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SocialFeedContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialFeedContent = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISocialFeedContent = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialFeedContent = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISocialFeedContent = @ptrCast(self);
        return try this.putMessage(value);
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialFeedContent = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialFeedContent = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.SocialFeedContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialFeedContent.GUID;
    pub const IID: Guid = ISocialFeedContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialFeedContent.SIGNATURE);
};
pub const SocialFeedItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthor(self: *@This()) core.HResult!*SocialUserInfo {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getAuthor();
    }
    pub fn getPrimaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getPrimaryContent();
    }
    pub fn getSecondaryContent(self: *@This()) core.HResult!*SocialFeedContent {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getSecondaryContent();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putTimestamp(value);
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub fn getThumbnails(self: *@This()) core.HResult!*IVector(SocialItemThumbnail) {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getThumbnails();
    }
    pub fn getSharedItem(self: *@This()) core.HResult!*SocialFeedSharedItem {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getSharedItem();
    }
    pub fn putSharedItem(self: *@This(), value: *SocialFeedSharedItem) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putSharedItem(value);
    }
    pub fn getBadgeStyle(self: *@This()) core.HResult!SocialItemBadgeStyle {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getBadgeStyle();
    }
    pub fn putBadgeStyle(self: *@This(), value: SocialItemBadgeStyle) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putBadgeStyle(value);
    }
    pub fn getBadgeCountValue(self: *@This()) core.HResult!i32 {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getBadgeCountValue();
    }
    pub fn putBadgeCountValue(self: *@This(), value: i32) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putBadgeCountValue(value);
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putRemoteId(value);
    }
    pub fn getChildItem(self: *@This()) core.HResult!*SocialFeedChildItem {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getChildItem();
    }
    pub fn putChildItem(self: *@This(), value: *SocialFeedChildItem) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putChildItem(value);
    }
    pub fn getStyle(self: *@This()) core.HResult!SocialFeedItemStyle {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.getStyle();
    }
    pub fn putStyle(self: *@This(), value: SocialFeedItemStyle) core.HResult!void {
        const this: *ISocialFeedItem = @ptrCast(self);
        return try this.putStyle(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISocialFeedItem.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.SocialFeedItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialFeedItem.GUID;
    pub const IID: Guid = ISocialFeedItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialFeedItem.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SocialFeedItemStyle = enum(i32) {
    Default = 0,
    Photo = 1,
};
pub const SocialFeedKind = enum(i32) {
    HomeFeed = 0,
    ContactFeed = 1,
    Dashboard = 2,
};
pub const SocialFeedSharedItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOriginalSource(self: *@This()) core.HResult!*Uri {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.getOriginalSource();
    }
    pub fn putOriginalSource(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.putOriginalSource(value);
    }
    pub fn getContent(self: *@This()) core.HResult!*SocialFeedContent {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.putTimestamp(value);
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub fn putThumbnail(self: *@This(), value: *SocialItemThumbnail) core.HResult!void {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*SocialItemThumbnail {
        const this: *ISocialFeedSharedItem = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISocialFeedSharedItem.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialFeedSharedItem.GUID;
    pub const IID: Guid = ISocialFeedSharedItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialFeedSharedItem.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SocialFeedUpdateMode = enum(i32) {
    Append = 0,
    Replace = 1,
};
pub const SocialItemBadgeStyle = enum(i32) {
    Hidden = 0,
    Visible = 1,
    VisibleWithCount = 2,
};
pub const SocialItemThumbnail = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub fn getImageUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.getImageUri();
    }
    pub fn putImageUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.putImageUri(value);
    }
    pub fn getBitmapSize(self: *@This()) core.HResult!BitmapSize {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.getBitmapSize();
    }
    pub fn putBitmapSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.putBitmapSize(value);
    }
    pub fn SetImageAsync(self: *@This(), image: *IInputStream) core.HResult!*IAsyncAction {
        const this: *ISocialItemThumbnail = @ptrCast(self);
        return try this.SetImageAsync(image);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISocialItemThumbnail.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.SocialItemThumbnail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialItemThumbnail.GUID;
    pub const IID: Guid = ISocialItemThumbnail.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialItemThumbnail.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SocialUserInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn putUserName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.putUserName(value);
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.putRemoteId(value);
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialUserInfo = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.SocialUserInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialUserInfo.GUID;
    pub const IID: Guid = ISocialUserInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialUserInfo.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const Uri = @import("../Foundation.zig").Uri;
const DateTime = @import("../Foundation.zig").DateTime;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const BitmapSize = @import("../Graphics/Imaging.zig").BitmapSize;
pub const Provider = @import("./SocialInfo/Provider.zig");
