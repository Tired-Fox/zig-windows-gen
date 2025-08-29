pub const ISocialDashboardItemUpdater = extern struct {
    vtable: *const VTable,
    pub fn getOwnerRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OwnerRemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CommitAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3cde9dc9-4800-46cd-869b-1973ec685bde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OwnerRemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **SocialFeedContent) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_Timestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *SocialItemThumbnail) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **SocialItemThumbnail) callconv(.winapi) HRESULT,
        CommitAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_TargetUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_TargetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const ISocialFeedUpdater = extern struct {
    vtable: *const VTable,
    pub fn getOwnerRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OwnerRemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!SocialFeedKind {
        var _r: SocialFeedKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(SocialFeedItem) {
        var _r: *IVector(SocialFeedItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CommitAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a0c0aa7-ed89-4bd5-a8d9-15f4d9861c10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OwnerRemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *SocialFeedKind) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(SocialFeedItem)) callconv(.winapi) HRESULT,
        CommitAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISocialInfoProviderManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateSocialFeedUpdaterAsync(self: *@This(), kind: SocialFeedKind, mode: SocialFeedUpdateMode, ownerRemoteId: HSTRING) core.HResult!*IAsyncOperation(SocialFeedUpdater) {
        var _r: *IAsyncOperation(SocialFeedUpdater) = undefined;
        const _c = self.vtable.CreateSocialFeedUpdaterAsync(@ptrCast(self), kind, mode, ownerRemoteId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDashboardItemUpdaterAsync(self: *@This(), ownerRemoteId: HSTRING) core.HResult!*IAsyncOperation(SocialDashboardItemUpdater) {
        var _r: *IAsyncOperation(SocialDashboardItemUpdater) = undefined;
        const _c = self.vtable.CreateDashboardItemUpdaterAsync(@ptrCast(self), ownerRemoteId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateBadgeCountValue(self: *@This(), itemRemoteId: HSTRING, newCount: i32) core.HResult!void {
        const _c = self.vtable.UpdateBadgeCountValue(@ptrCast(self), itemRemoteId, newCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportNewContentAvailable(self: *@This(), contactRemoteId: HSTRING, kind: SocialFeedKind) core.HResult!void {
        const _c = self.vtable.ReportNewContentAvailable(@ptrCast(self), contactRemoteId, kind);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProvisionAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ProvisionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeprovisionAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeprovisionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.Provider.ISocialInfoProviderManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b88e52b-7787-48d6-aa12-d8e8f47ab85a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSocialFeedUpdaterAsync: *const fn(self: *anyopaque, kind: SocialFeedKind, mode: SocialFeedUpdateMode, ownerRemoteId: HSTRING, _r: **IAsyncOperation(SocialFeedUpdater)) callconv(.winapi) HRESULT,
        CreateDashboardItemUpdaterAsync: *const fn(self: *anyopaque, ownerRemoteId: HSTRING, _r: **IAsyncOperation(SocialDashboardItemUpdater)) callconv(.winapi) HRESULT,
        UpdateBadgeCountValue: *const fn(self: *anyopaque, itemRemoteId: HSTRING, newCount: i32) callconv(.winapi) HRESULT,
        ReportNewContentAvailable: *const fn(self: *anyopaque, contactRemoteId: HSTRING, kind: SocialFeedKind) callconv(.winapi) HRESULT,
        ProvisionAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        DeprovisionAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const SocialDashboardItemUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOwnerRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.getOwnerRemoteId();
    }
    pub fn getContent(self: *@This()) core.HResult!*SocialFeedContent {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn putTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.putTimestamp(value);
    }
    pub fn putThumbnail(self: *@This(), value: *SocialItemThumbnail) core.HResult!void {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*SocialItemThumbnail {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.CommitAsync();
    }
    pub fn getTargetUri(self: *@This()) core.HResult!*Uri {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.getTargetUri();
    }
    pub fn putTargetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISocialDashboardItemUpdater = @ptrCast(self);
        return try this.putTargetUri(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.Provider.SocialDashboardItemUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialDashboardItemUpdater.GUID;
    pub const IID: Guid = ISocialDashboardItemUpdater.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialDashboardItemUpdater.SIGNATURE);
};
pub const SocialFeedUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOwnerRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *ISocialFeedUpdater = @ptrCast(self);
        return try this.getOwnerRemoteId();
    }
    pub fn getKind(self: *@This()) core.HResult!SocialFeedKind {
        const this: *ISocialFeedUpdater = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(SocialFeedItem) {
        const this: *ISocialFeedUpdater = @ptrCast(self);
        return try this.getItems();
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ISocialFeedUpdater = @ptrCast(self);
        return try this.CommitAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.Provider.SocialFeedUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocialFeedUpdater.GUID;
    pub const IID: Guid = ISocialFeedUpdater.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocialFeedUpdater.SIGNATURE);
};
pub const SocialInfoProviderManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateSocialFeedUpdaterAsync(kind: SocialFeedKind, mode: SocialFeedUpdateMode, ownerRemoteId: HSTRING) core.HResult!*IAsyncOperation(SocialFeedUpdater) {
        const factory = @This().ISocialInfoProviderManagerStaticsCache.get();
        return try factory.CreateSocialFeedUpdaterAsync(kind, mode, ownerRemoteId);
    }
    pub fn CreateDashboardItemUpdaterAsync(ownerRemoteId: HSTRING) core.HResult!*IAsyncOperation(SocialDashboardItemUpdater) {
        const factory = @This().ISocialInfoProviderManagerStaticsCache.get();
        return try factory.CreateDashboardItemUpdaterAsync(ownerRemoteId);
    }
    pub fn UpdateBadgeCountValue(itemRemoteId: HSTRING, newCount: i32) core.HResult!void {
        const factory = @This().ISocialInfoProviderManagerStaticsCache.get();
        return try factory.UpdateBadgeCountValue(itemRemoteId, newCount);
    }
    pub fn ReportNewContentAvailable(contactRemoteId: HSTRING, kind: SocialFeedKind) core.HResult!void {
        const factory = @This().ISocialInfoProviderManagerStaticsCache.get();
        return try factory.ReportNewContentAvailable(contactRemoteId, kind);
    }
    pub fn ProvisionAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ISocialInfoProviderManagerStaticsCache.get();
        return try factory.ProvisionAsync();
    }
    pub fn DeprovisionAsync() core.HResult!*IAsyncAction {
        const factory = @This().ISocialInfoProviderManagerStaticsCache.get();
        return try factory.DeprovisionAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SocialInfo.Provider.SocialInfoProviderManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISocialInfoProviderManagerStaticsCache: FactoryCache(ISocialInfoProviderManagerStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const SocialFeedUpdateMode = @import("../SocialInfo.zig").SocialFeedUpdateMode;
const SocialFeedContent = @import("../SocialInfo.zig").SocialFeedContent;
const SocialFeedKind = @import("../SocialInfo.zig").SocialFeedKind;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const SocialFeedItem = @import("../SocialInfo.zig").SocialFeedItem;
const SocialItemThumbnail = @import("../SocialInfo.zig").SocialItemThumbnail;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const Uri = @import("../../Foundation.zig").Uri;
const DateTime = @import("../../Foundation.zig").DateTime;
const HSTRING = @import("../../root.zig").HSTRING;
