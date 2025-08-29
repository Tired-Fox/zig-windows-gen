pub const CharacterGrouping = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFirst(self: *@This()) core.HResult!HSTRING {
        const this: *ICharacterGrouping = @ptrCast(self);
        return try this.getFirst();
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *ICharacterGrouping = @ptrCast(self);
        return try this.getLabel();
    }
    pub const NAME: []const u8 = "Windows.Globalization.Collation.CharacterGrouping";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICharacterGrouping.GUID;
    pub const IID: Guid = ICharacterGrouping.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICharacterGrouping.SIGNATURE);
};
pub const CharacterGroupings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), text: HSTRING) core.HResult!HSTRING {
        const this: *ICharacterGroupings = @ptrCast(self);
        return try this.Lookup(text);
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*CharacterGrouping {
        var this: ?*IVectorView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVectorView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *CharacterGrouping, index: u32) core.HResult!bool {
        var this: ?*IVectorView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]CharacterGrouping) core.HResult!u32 {
        var this: ?*IVectorView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(CharacterGrouping) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICharacterGroupings.IID)));
    }
    pub fn Create(language: HSTRING) core.HResult!*CharacterGroupings {
        const factory = @This().ICharacterGroupingsFactoryCache.get();
        return try factory.Create(language);
    }
    pub const NAME: []const u8 = "Windows.Globalization.Collation.CharacterGroupings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICharacterGroupings.GUID;
    pub const IID: Guid = ICharacterGroupings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICharacterGroupings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICharacterGroupingsFactoryCache: FactoryCache(ICharacterGroupingsFactory, RUNTIME_NAME) = .{};
};
pub const ICharacterGrouping = extern struct {
    vtable: *const VTable,
    pub fn getFirst(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_First(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.Collation.ICharacterGrouping";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fae761bb-805d-4bb0-95bb-c1f7c3e8eb8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_First: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICharacterGroupings = extern struct {
    vtable: *const VTable,
    pub fn Lookup(self: *@This(), text: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Lookup(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.Collation.ICharacterGroupings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8d20a75-d4cf-4055-80e5-ce169c226496";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Lookup: *const fn(self: *anyopaque, text: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICharacterGroupingsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), language: HSTRING) core.HResult!*CharacterGroupings {
        var _r: *CharacterGroupings = undefined;
        const _c = self.vtable.Create(@ptrCast(self), language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.Collation.ICharacterGroupingsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99ea9fd9-886d-4401-9f98-69c82d4c2f78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, language: HSTRING, _r: **CharacterGroupings) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
