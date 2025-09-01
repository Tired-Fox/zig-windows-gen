pub const ContentAccessRestrictionLevel = enum(i32) {
    Allow = 0,
    Warn = 1,
    Block = 2,
    Hide = 3,
};
pub const ContentRestrictionsBrowsePolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IContentRestrictionsBrowsePolicy = @ptrCast(self);
        return try this.getGeographicRegion();
    }
    pub fn getMaxBrowsableAgeRating(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IContentRestrictionsBrowsePolicy = @ptrCast(self);
        return try this.getMaxBrowsableAgeRating();
    }
    pub fn getPreferredAgeRating(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IContentRestrictionsBrowsePolicy = @ptrCast(self);
        return try this.getPreferredAgeRating();
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentRestrictionsBrowsePolicy.GUID;
    pub const IID: Guid = IContentRestrictionsBrowsePolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentRestrictionsBrowsePolicy.SIGNATURE);
};
pub const IContentRestrictionsBrowsePolicy = extern struct {
    vtable: *const VTable,
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GeographicRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBrowsableAgeRating(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxBrowsableAgeRating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredAgeRating(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_PreferredAgeRating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c0133a4-442e-461a-8757-fad2f5bd37e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GeographicRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MaxBrowsableAgeRating: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_PreferredAgeRating: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IRatedContentDescription = extern struct {
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
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Image(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCategory(self: *@This()) core.HResult!RatedContentCategory {
        var _r: RatedContentCategory = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCategory(self: *@This(), value: RatedContentCategory) core.HResult!void {
        const _c = self.vtable.put_Category(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRatings(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Ratings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRatings(self: *@This(), value: *IVector(HSTRING)) core.HResult!void {
        const _c = self.vtable.put_Ratings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.IRatedContentDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "694866df-66b2-4dc3-96b1-f090eedee255";
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
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Image: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *RatedContentCategory) callconv(.winapi) HRESULT,
        put_Category: *const fn(self: *anyopaque, value: RatedContentCategory) callconv(.winapi) HRESULT,
        get_Ratings: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        put_Ratings: *const fn(self: *anyopaque, value: *IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IRatedContentDescriptionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), id: HSTRING, title: HSTRING, category: RatedContentCategory) core.HResult!*RatedContentDescription {
        var _r: *RatedContentDescription = undefined;
        const _c = self.vtable.Create(@ptrCast(self), id, title, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.IRatedContentDescriptionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e38df62-9b90-4fa6-89c1-4b8d2ffb3573";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, id: HSTRING, title: HSTRING, category: RatedContentCategory, _r: **RatedContentDescription) callconv(.winapi) HRESULT,
    };
};
pub const IRatedContentRestrictions = extern struct {
    vtable: *const VTable,
    pub fn GetBrowsePolicyAsync(self: *@This()) core.HResult!*IAsyncOperation(ContentRestrictionsBrowsePolicy) {
        var _r: *IAsyncOperation(ContentRestrictionsBrowsePolicy) = undefined;
        const _c = self.vtable.GetBrowsePolicyAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRestrictionLevelAsync(self: *@This(), ratedContentDescription: *RatedContentDescription) core.HResult!*IAsyncOperation(ContentAccessRestrictionLevel) {
        var _r: *IAsyncOperation(ContentAccessRestrictionLevel) = undefined;
        const _c = self.vtable.GetRestrictionLevelAsync(@ptrCast(self), ratedContentDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestContentAccessAsync(self: *@This(), ratedContentDescription: *RatedContentDescription) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestContentAccessAsync(@ptrCast(self), ratedContentDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRestrictionsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RestrictionsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRestrictionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RestrictionsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.IRatedContentRestrictions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f7f23cb-ba07-4401-a49d-8b9222205723";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetBrowsePolicyAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ContentRestrictionsBrowsePolicy)) callconv(.winapi) HRESULT,
        GetRestrictionLevelAsync: *const fn(self: *anyopaque, ratedContentDescription: *RatedContentDescription, _r: **IAsyncOperation(ContentAccessRestrictionLevel)) callconv(.winapi) HRESULT,
        RequestContentAccessAsync: *const fn(self: *anyopaque, ratedContentDescription: *RatedContentDescription, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_RestrictionsChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RestrictionsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRatedContentRestrictionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithMaxAgeRating(self: *@This(), maxAgeRating: u32) core.HResult!*RatedContentRestrictions {
        var _r: *RatedContentRestrictions = undefined;
        const _c = self.vtable.CreateWithMaxAgeRating(@ptrCast(self), maxAgeRating, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.IRatedContentRestrictionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb4b2996-c3bd-4910-9619-97cfd0694d56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithMaxAgeRating: *const fn(self: *anyopaque, maxAgeRating: u32, _r: **RatedContentRestrictions) callconv(.winapi) HRESULT,
    };
};
pub const RatedContentCategory = enum(i32) {
    General = 0,
    Application = 1,
    Game = 2,
    Movie = 3,
    Television = 4,
    Music = 5,
};
pub const RatedContentDescription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.getImage();
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.putImage(value);
    }
    pub fn getCategory(self: *@This()) core.HResult!RatedContentCategory {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn putCategory(self: *@This(), value: RatedContentCategory) core.HResult!void {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.putCategory(value);
    }
    pub fn getRatings(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.getRatings();
    }
    pub fn putRatings(self: *@This(), value: *IVector(HSTRING)) core.HResult!void {
        const this: *IRatedContentDescription = @ptrCast(self);
        return try this.putRatings(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(id: HSTRING, title: HSTRING, category: RatedContentCategory) core.HResult!*RatedContentDescription {
        const _f = @This().IRatedContentDescriptionFactoryCache.get();
        return try _f.Create(id, title, category);
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.RatedContentDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRatedContentDescription.GUID;
    pub const IID: Guid = IRatedContentDescription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRatedContentDescription.SIGNATURE);
    var _IRatedContentDescriptionFactoryCache: FactoryCache(IRatedContentDescriptionFactory, RUNTIME_NAME) = .{};
};
pub const RatedContentRestrictions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetBrowsePolicyAsync(self: *@This()) core.HResult!*IAsyncOperation(ContentRestrictionsBrowsePolicy) {
        const this: *IRatedContentRestrictions = @ptrCast(self);
        return try this.GetBrowsePolicyAsync();
    }
    pub fn GetRestrictionLevelAsync(self: *@This(), ratedContentDescription: *RatedContentDescription) core.HResult!*IAsyncOperation(ContentAccessRestrictionLevel) {
        const this: *IRatedContentRestrictions = @ptrCast(self);
        return try this.GetRestrictionLevelAsync(ratedContentDescription);
    }
    pub fn RequestContentAccessAsync(self: *@This(), ratedContentDescription: *RatedContentDescription) core.HResult!*IAsyncOperation(bool) {
        const this: *IRatedContentRestrictions = @ptrCast(self);
        return try this.RequestContentAccessAsync(ratedContentDescription);
    }
    pub fn addRestrictionsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRatedContentRestrictions = @ptrCast(self);
        return try this.addRestrictionsChanged(handler);
    }
    pub fn removeRestrictionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRatedContentRestrictions = @ptrCast(self);
        return try this.removeRestrictionsChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRatedContentRestrictions.IID)));
    }
    pub fn CreateWithMaxAgeRating(maxAgeRating: u32) core.HResult!*RatedContentRestrictions {
        const _f = @This().IRatedContentRestrictionsFactoryCache.get();
        return try _f.CreateWithMaxAgeRating(maxAgeRating);
    }
    pub const NAME: []const u8 = "Windows.Media.ContentRestrictions.RatedContentRestrictions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRatedContentRestrictions.GUID;
    pub const IID: Guid = IRatedContentRestrictions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRatedContentRestrictions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRatedContentRestrictionsFactoryCache: FactoryCache(IRatedContentRestrictionsFactory, RUNTIME_NAME) = .{};
};
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IVector = @import("../Foundation/Collections.zig").IVector;
const FactoryCache = @import("../core.zig").FactoryCache;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IReference = @import("../Foundation.zig").IReference;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HSTRING = @import("../root.zig").HSTRING;
