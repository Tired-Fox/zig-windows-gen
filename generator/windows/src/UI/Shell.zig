pub const ISecurityAppManager = extern struct {
    vtable: *const VTable,
    pub fn Register(self: *@This(), kind: SecurityAppKind, displayName: HSTRING, detailsUri: *Uri, registerPerUser: bool) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.Register(@ptrCast(self), kind, displayName, detailsUri, registerPerUser, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Unregister(self: *@This(), kind: SecurityAppKind, guidRegistration: *Guid) core.HResult!void {
        const _c = self.vtable.Unregister(@ptrCast(self), kind, guidRegistration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateState(self: *@This(), kind: SecurityAppKind, guidRegistration: *Guid, state: SecurityAppState, substatus: SecurityAppSubstatus, detailsUri: *Uri) core.HResult!void {
        const _c = self.vtable.UpdateState(@ptrCast(self), kind, guidRegistration, state, substatus, detailsUri);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.ISecurityAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96ac500c-aed4-561d-bde8-953520343a2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, kind: SecurityAppKind, displayName: HSTRING, detailsUri: *Uri, registerPerUser: bool, _r: **Guid) callconv(.winapi) HRESULT,
        Unregister: *const fn(self: *anyopaque, kind: SecurityAppKind, guidRegistration: *Guid) callconv(.winapi) HRESULT,
        UpdateState: *const fn(self: *anyopaque, kind: SecurityAppKind, guidRegistration: *Guid, state: SecurityAppState, substatus: SecurityAppSubstatus, detailsUri: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const SecurityAppKind = enum(i32) {
    WebProtection = 0,
};
pub const SecurityAppManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Register(self: *@This(), kind: SecurityAppKind, displayName: HSTRING, detailsUri: *Uri, registerPerUser: bool) core.HResult!*Guid {
        const this: *ISecurityAppManager = @ptrCast(self);
        return try this.Register(kind, displayName, detailsUri, registerPerUser);
    }
    pub fn Unregister(self: *@This(), kind: SecurityAppKind, guidRegistration: *Guid) core.HResult!void {
        const this: *ISecurityAppManager = @ptrCast(self);
        return try this.Unregister(kind, guidRegistration);
    }
    pub fn UpdateState(self: *@This(), kind: SecurityAppKind, guidRegistration: *Guid, state: SecurityAppState, substatus: SecurityAppSubstatus, detailsUri: *Uri) core.HResult!void {
        const this: *ISecurityAppManager = @ptrCast(self);
        return try this.UpdateState(kind, guidRegistration, state, substatus, detailsUri);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISecurityAppManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.SecurityAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecurityAppManager.GUID;
    pub const IID: Guid = ISecurityAppManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecurityAppManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SecurityAppState = enum(i32) {
    Disabled = 0,
    Enabled = 1,
};
pub const SecurityAppSubstatus = enum(i32) {
    Undetermined = 0,
    NoActionNeeded = 1,
    ActionRecommended = 2,
    ActionNeeded = 3,
};
pub const IWindowTab = extern struct {
    vtable: *const VTable,
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
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
    pub fn getIcon(self: *@This()) core.HResult!*WindowTabIcon {
        var _r: *WindowTabIcon = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIcon(self: *@This(), value: *WindowTabIcon) core.HResult!void {
        const _c = self.vtable.put_Icon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTreatAsSecondaryTileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TreatAsSecondaryTileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTreatAsSecondaryTileId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TreatAsSecondaryTileId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGroup(self: *@This()) core.HResult!*WindowTabGroup {
        var _r: *WindowTabGroup = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroup(self: *@This(), value: *WindowTabGroup) core.HResult!void {
        const _c = self.vtable.put_Group(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportThumbnailAvailable(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportThumbnailAvailable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTab";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "551e776a-7928-4d60-bdd9-672b5a5758eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Icon: *const fn(self: *anyopaque, _r: **WindowTabIcon) callconv(.winapi) HRESULT,
        put_Icon: *const fn(self: *anyopaque, value: *WindowTabIcon) callconv(.winapi) HRESULT,
        get_TreatAsSecondaryTileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TreatAsSecondaryTileId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: **WindowTabGroup) callconv(.winapi) HRESULT,
        put_Group: *const fn(self: *anyopaque, value: *WindowTabGroup) callconv(.winapi) HRESULT,
        ReportThumbnailAvailable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabCloseRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        var _r: *WindowTab = undefined;
        const _c = self.vtable.get_Tab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabCloseRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "477282e9-eec4-5882-9889-2dd64d0f9fb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tab: *const fn(self: *anyopaque, _r: **WindowTab) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabCollection = extern struct {
    vtable: *const VTable,
    pub fn MoveTab(self: *@This(), tab: *WindowTab, index: u32) core.HResult!void {
        const _c = self.vtable.MoveTab(@ptrCast(self), tab, index);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "accd0d6c-ed07-519a-8c33-17e02e7e9b0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MoveTab: *const fn(self: *anyopaque, tab: *WindowTab, index: u32) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabGroup = extern struct {
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
    pub fn getIcon(self: *@This()) core.HResult!*WindowTabIcon {
        var _r: *WindowTabIcon = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIcon(self: *@This(), value: *WindowTabIcon) core.HResult!void {
        const _c = self.vtable.put_Icon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9c2c4fe-6cfe-449c-8b57-5756771abe56";
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
        get_Icon: *const fn(self: *anyopaque, _r: **WindowTabIcon) callconv(.winapi) HRESULT,
        put_Icon: *const fn(self: *anyopaque, value: *WindowTabIcon) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabIcon = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabIcon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f92f398f-3669-4d0c-a183-14ddae6f6538";
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
pub const IWindowTabIconStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromFontGlyph(self: *@This(), glyph: HSTRING, fontFamily: HSTRING) core.HResult!*WindowTabIcon {
        var _r: *WindowTabIcon = undefined;
        const _c = self.vtable.CreateFromFontGlyph(@ptrCast(self), glyph, fontFamily, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromFontGlyphWithFontFamilyWithFontUri(self: *@This(), glyph: HSTRING, fontFamily: HSTRING, fontUri: *Uri) core.HResult!*WindowTabIcon {
        var _r: *WindowTabIcon = undefined;
        const _c = self.vtable.CreateFromFontGlyphWithFontFamilyWithFontUri(@ptrCast(self), glyph, fontFamily, fontUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromImage(self: *@This(), image: *IRandomAccessStreamReference) core.HResult!*WindowTabIcon {
        var _r: *WindowTabIcon = undefined;
        const _c = self.vtable.CreateFromImage(@ptrCast(self), image, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabIconStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e18d95e-2cbb-4084-af0c-36ee1c2d54b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromFontGlyph: *const fn(self: *anyopaque, glyph: HSTRING, fontFamily: HSTRING, _r: **WindowTabIcon) callconv(.winapi) HRESULT,
        CreateFromFontGlyphWithFontFamilyWithFontUri: *const fn(self: *anyopaque, glyph: HSTRING, fontFamily: HSTRING, fontUri: *Uri, _r: **WindowTabIcon) callconv(.winapi) HRESULT,
        CreateFromImage: *const fn(self: *anyopaque, image: *IRandomAccessStreamReference, _r: **WindowTabIcon) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabManager = extern struct {
    vtable: *const VTable,
    pub fn getTabs(self: *@This()) core.HResult!*WindowTabCollection {
        var _r: *WindowTabCollection = undefined;
        const _c = self.vtable.get_Tabs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetActiveTab(self: *@This(), tab: *WindowTab) core.HResult!void {
        const _c = self.vtable.SetActiveTab(@ptrCast(self), tab);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTabSwitchRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabSwitchRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TabSwitchRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTabSwitchRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TabSwitchRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTabCloseRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabCloseRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TabCloseRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTabCloseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TabCloseRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTabTearOutRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabTearOutRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TabTearOutRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTabTearOutRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TabTearOutRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTabThumbnailRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabThumbnailRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TabThumbnailRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTabThumbnailRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TabThumbnailRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97b3c697-f43a-43e7-b3a2-e889a9835599";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tabs: *const fn(self: *anyopaque, _r: **WindowTabCollection) callconv(.winapi) HRESULT,
        SetActiveTab: *const fn(self: *anyopaque, tab: *WindowTab) callconv(.winapi) HRESULT,
        add_TabSwitchRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowTabManager,WindowTabSwitchRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TabSwitchRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TabCloseRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowTabManager,WindowTabCloseRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TabCloseRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TabTearOutRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowTabManager,WindowTabTearOutRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TabTearOutRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TabThumbnailRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowTabManager,WindowTabThumbnailRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TabThumbnailRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForWindow(self: *@This(), id: WindowId) core.HResult!*WindowTabManager {
        var _r: *WindowTabManager = undefined;
        const _c = self.vtable.GetForWindow(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsTabTearOutSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsTabTearOutSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76755668-45f0-4e0b-8172-4e6d9d0f87bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForWindow: *const fn(self: *anyopaque, id: WindowId, _r: **WindowTabManager) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsTabTearOutSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabSwitchRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        var _r: *WindowTab = undefined;
        const _c = self.vtable.get_Tab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabSwitchRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cbc421a-58a4-568b-a351-f8a947a5aad8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tab: *const fn(self: *anyopaque, _r: **WindowTab) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabTearOutRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        var _r: *WindowTab = undefined;
        const _c = self.vtable.get_Tab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindowId(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_WindowId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWindowId(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_WindowId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabTearOutRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17d66659-5005-5ece-99af-566306e73642";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tab: *const fn(self: *anyopaque, _r: **WindowTab) callconv(.winapi) HRESULT,
        get_WindowId: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_WindowId: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IWindowTabThumbnailRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        var _r: *WindowTab = undefined;
        const _c = self.vtable.get_Tab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedSize(self: *@This()) core.HResult!BitmapSize {
        var _r: BitmapSize = undefined;
        const _c = self.vtable.get_RequestedSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCompositedOnWindow(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCompositedOnWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IWindowTabThumbnailRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d558e54-9c4e-5abc-ab72-3350fb4937a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tab: *const fn(self: *anyopaque, _r: **WindowTab) callconv(.winapi) HRESULT,
        get_RequestedSize: *const fn(self: *anyopaque, _r: *BitmapSize) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Image: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
        get_IsCompositedOnWindow: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const WindowTab = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        const this: *IWindowTab = @ptrCast(self);
        return try this.getTag();
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IWindowTab = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowTab = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWindowTab = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getIcon(self: *@This()) core.HResult!*WindowTabIcon {
        const this: *IWindowTab = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn putIcon(self: *@This(), value: *WindowTabIcon) core.HResult!void {
        const this: *IWindowTab = @ptrCast(self);
        return try this.putIcon(value);
    }
    pub fn getTreatAsSecondaryTileId(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowTab = @ptrCast(self);
        return try this.getTreatAsSecondaryTileId();
    }
    pub fn putTreatAsSecondaryTileId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWindowTab = @ptrCast(self);
        return try this.putTreatAsSecondaryTileId(value);
    }
    pub fn getGroup(self: *@This()) core.HResult!*WindowTabGroup {
        const this: *IWindowTab = @ptrCast(self);
        return try this.getGroup();
    }
    pub fn putGroup(self: *@This(), value: *WindowTabGroup) core.HResult!void {
        const this: *IWindowTab = @ptrCast(self);
        return try this.putGroup(value);
    }
    pub fn ReportThumbnailAvailable(self: *@This()) core.HResult!void {
        const this: *IWindowTab = @ptrCast(self);
        return try this.ReportThumbnailAvailable();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWindowTab.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTab";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTab.GUID;
    pub const IID: Guid = IWindowTab.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTab.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WindowTabCloseRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        const this: *IWindowTabCloseRequestedEventArgs = @ptrCast(self);
        return try this.getTab();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabCloseRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabCloseRequestedEventArgs.GUID;
    pub const IID: Guid = IWindowTabCloseRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabCloseRequestedEventArgs.SIGNATURE);
};
pub const WindowTabCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn MoveTab(self: *@This(), tab: *WindowTab, index: u32) core.HResult!void {
        const this: *IWindowTabCollection = @ptrCast(self);
        return try this.MoveTab(tab, index);
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*WindowTab {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(WindowTab) {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn IndexOf(self: *@This(), value: *WindowTab, index: u32) core.HResult!bool {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: *WindowTab) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: *WindowTab) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: *WindowTab) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]WindowTab) core.HResult!u32 {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]WindowTab) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(WindowTab) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabCollection.GUID;
    pub const IID: Guid = IWindowTabCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabCollection.SIGNATURE);
};
pub const WindowTabGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IWindowTabGroup = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWindowTabGroup = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getIcon(self: *@This()) core.HResult!*WindowTabIcon {
        const this: *IWindowTabGroup = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn putIcon(self: *@This(), value: *WindowTabIcon) core.HResult!void {
        const this: *IWindowTabGroup = @ptrCast(self);
        return try this.putIcon(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWindowTabGroup.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabGroup.GUID;
    pub const IID: Guid = IWindowTabGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabGroup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WindowTabIcon = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromFontGlyph(glyph: HSTRING, fontFamily: HSTRING) core.HResult!*WindowTabIcon {
        const factory = @This().IWindowTabIconStaticsCache.get();
        return try factory.CreateFromFontGlyph(glyph, fontFamily);
    }
    pub fn CreateFromFontGlyphWithFontFamilyWithFontUri(glyph: HSTRING, fontFamily: HSTRING, fontUri: *Uri) core.HResult!*WindowTabIcon {
        const factory = @This().IWindowTabIconStaticsCache.get();
        return try factory.CreateFromFontGlyphWithFontFamilyWithFontUri(glyph, fontFamily, fontUri);
    }
    pub fn CreateFromImage(image: *IRandomAccessStreamReference) core.HResult!*WindowTabIcon {
        const factory = @This().IWindowTabIconStaticsCache.get();
        return try factory.CreateFromImage(image);
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabIcon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabIcon.GUID;
    pub const IID: Guid = IWindowTabIcon.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabIcon.SIGNATURE);
    var _IWindowTabIconStaticsCache: FactoryCache(IWindowTabIconStatics, RUNTIME_NAME) = .{};
};
pub const WindowTabManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTabs(self: *@This()) core.HResult!*WindowTabCollection {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.getTabs();
    }
    pub fn SetActiveTab(self: *@This(), tab: *WindowTab) core.HResult!void {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.SetActiveTab(tab);
    }
    pub fn addTabSwitchRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabSwitchRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.addTabSwitchRequested(handler);
    }
    pub fn removeTabSwitchRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.removeTabSwitchRequested(token);
    }
    pub fn addTabCloseRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabCloseRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.addTabCloseRequested(handler);
    }
    pub fn removeTabCloseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.removeTabCloseRequested(token);
    }
    pub fn addTabTearOutRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabTearOutRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.addTabTearOutRequested(handler);
    }
    pub fn removeTabTearOutRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.removeTabTearOutRequested(token);
    }
    pub fn addTabThumbnailRequested(self: *@This(), handler: *TypedEventHandler(WindowTabManager,WindowTabThumbnailRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.addTabThumbnailRequested(handler);
    }
    pub fn removeTabThumbnailRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowTabManager = @ptrCast(self);
        return try this.removeTabThumbnailRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForWindow(id: WindowId) core.HResult!*WindowTabManager {
        const factory = @This().IWindowTabManagerStaticsCache.get();
        return try factory.GetForWindow(id);
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IWindowTabManagerStaticsCache.get();
        return try factory.IsSupported();
    }
    pub fn IsTabTearOutSupported() core.HResult!bool {
        const factory = @This().IWindowTabManagerStaticsCache.get();
        return try factory.IsTabTearOutSupported();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabManager.GUID;
    pub const IID: Guid = IWindowTabManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabManager.SIGNATURE);
    var _IWindowTabManagerStaticsCache: FactoryCache(IWindowTabManagerStatics, RUNTIME_NAME) = .{};
};
pub const WindowTabSwitchRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        const this: *IWindowTabSwitchRequestedEventArgs = @ptrCast(self);
        return try this.getTab();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabSwitchRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabSwitchRequestedEventArgs.GUID;
    pub const IID: Guid = IWindowTabSwitchRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabSwitchRequestedEventArgs.SIGNATURE);
};
pub const WindowTabTearOutRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        const this: *IWindowTabTearOutRequestedEventArgs = @ptrCast(self);
        return try this.getTab();
    }
    pub fn getWindowId(self: *@This()) core.HResult!u64 {
        const this: *IWindowTabTearOutRequestedEventArgs = @ptrCast(self);
        return try this.getWindowId();
    }
    pub fn putWindowId(self: *@This(), value: u64) core.HResult!void {
        const this: *IWindowTabTearOutRequestedEventArgs = @ptrCast(self);
        return try this.putWindowId(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IWindowTabTearOutRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabTearOutRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabTearOutRequestedEventArgs.GUID;
    pub const IID: Guid = IWindowTabTearOutRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabTearOutRequestedEventArgs.SIGNATURE);
};
pub const WindowTabThumbnailRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTab(self: *@This()) core.HResult!*WindowTab {
        const this: *IWindowTabThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.getTab();
    }
    pub fn getRequestedSize(self: *@This()) core.HResult!BitmapSize {
        const this: *IWindowTabThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.getRequestedSize();
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWindowTabThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.getImage();
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWindowTabThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.putImage(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IWindowTabThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getIsCompositedOnWindow(self: *@This()) core.HResult!bool {
        const this: *IWindowTabThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.getIsCompositedOnWindow();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.WindowTabThumbnailRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowTabThumbnailRequestedEventArgs.GUID;
    pub const IID: Guid = IWindowTabThumbnailRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowTabThumbnailRequestedEventArgs.SIGNATURE);
};
pub const AdaptiveCardBuilder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAdaptiveCardFromJson(value: HSTRING) core.HResult!*IAdaptiveCard {
        const factory = @This().IAdaptiveCardBuilderStaticsCache.get();
        return try factory.CreateAdaptiveCardFromJson(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.AdaptiveCardBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAdaptiveCardBuilderStaticsCache: FactoryCache(IAdaptiveCardBuilderStatics, RUNTIME_NAME) = .{};
};
pub const FocusSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IFocusSession = @ptrCast(self);
        return try this.getId();
    }
    pub fn End(self: *@This()) core.HResult!void {
        const this: *IFocusSession = @ptrCast(self);
        return try this.End();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.FocusSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusSession.GUID;
    pub const IID: Guid = IFocusSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusSession.SIGNATURE);
};
pub const FocusSessionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsFocusActive(self: *@This()) core.HResult!bool {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.getIsFocusActive();
    }
    pub fn GetSession(self: *@This(), id: HSTRING) core.HResult!*FocusSession {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.GetSession(id);
    }
    pub fn TryStartFocusSession(self: *@This()) core.HResult!*FocusSession {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.TryStartFocusSession();
    }
    pub fn TryStartFocusSession(self: *@This(), endTime: DateTime) core.HResult!*FocusSession {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.TryStartFocusSession(endTime);
    }
    pub fn DeactivateFocus(self: *@This()) core.HResult!void {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.DeactivateFocus();
    }
    pub fn addIsFocusActiveChanged(self: *@This(), handler: *TypedEventHandler(FocusSessionManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.addIsFocusActiveChanged(handler);
    }
    pub fn removeIsFocusActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFocusSessionManager = @ptrCast(self);
        return try this.removeIsFocusActiveChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*FocusSessionManager {
        const factory = @This().IFocusSessionManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn getIsSupported() core.HResult!bool {
        const factory = @This().IFocusSessionManagerStaticsCache.get();
        return try factory.getIsSupported();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.FocusSessionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusSessionManager.GUID;
    pub const IID: Guid = IFocusSessionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusSessionManager.SIGNATURE);
    var _IFocusSessionManagerStaticsCache: FactoryCache(IFocusSessionManagerStatics, RUNTIME_NAME) = .{};
};
pub const IAdaptiveCard = extern struct {
    vtable: *const VTable,
    pub fn ToJson(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ToJson(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IAdaptiveCard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72d0568c-a274-41cd-82a8-989d40b9b05e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ToJson: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveCardBuilderStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAdaptiveCardFromJson(self: *@This(), value: HSTRING) core.HResult!*IAdaptiveCard {
        var _r: *IAdaptiveCard = undefined;
        const _c = self.vtable.CreateAdaptiveCardFromJson(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IAdaptiveCardBuilderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "766d8f08-d3fe-4347-a0bc-b9ea9a6dc28e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAdaptiveCardFromJson: *const fn(self: *anyopaque, value: HSTRING, _r: **IAdaptiveCard) callconv(.winapi) HRESULT,
    };
};
pub const IFocusSession = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn End(self: *@This()) core.HResult!void {
        const _c = self.vtable.End(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IFocusSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "069fbab8-0e84-5f2f-8614-9b6544326277";
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
        End: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFocusSessionManager = extern struct {
    vtable: *const VTable,
    pub fn getIsFocusActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFocusActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSession(self: *@This(), id: HSTRING) core.HResult!*FocusSession {
        var _r: *FocusSession = undefined;
        const _c = self.vtable.GetSession(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStartFocusSession(self: *@This()) core.HResult!*FocusSession {
        var _r: *FocusSession = undefined;
        const _c = self.vtable.TryStartFocusSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStartFocusSession(self: *@This(), endTime: DateTime) core.HResult!*FocusSession {
        var _r: *FocusSession = undefined;
        const _c = self.vtable.TryStartFocusSession(@ptrCast(self), endTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeactivateFocus(self: *@This()) core.HResult!void {
        const _c = self.vtable.DeactivateFocus(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsFocusActiveChanged(self: *@This(), handler: *TypedEventHandler(FocusSessionManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsFocusActiveChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsFocusActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsFocusActiveChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IFocusSessionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7ffbaa9-d8be-5dbf-bac6-49364842e37e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFocusActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetSession: *const fn(self: *anyopaque, id: HSTRING, _r: **FocusSession) callconv(.winapi) HRESULT,
        TryStartFocusSession: *const fn(self: *anyopaque, _r: **FocusSession) callconv(.winapi) HRESULT,
        TryStartFocusSession: *const fn(self: *anyopaque, endTime: DateTime, _r: **FocusSession) callconv(.winapi) HRESULT,
        DeactivateFocus: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_IsFocusActiveChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(FocusSessionManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsFocusActiveChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFocusSessionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*FocusSessionManager {
        var _r: *FocusSessionManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IFocusSessionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "834df764-cb9a-5d0a-aa9f-73df4f249395";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **FocusSessionManager) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IShareWindowCommandEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWindowId(self: *@This()) core.HResult!WindowId {
        var _r: WindowId = undefined;
        const _c = self.vtable.get_WindowId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommand(self: *@This()) core.HResult!ShareWindowCommand {
        var _r: ShareWindowCommand = undefined;
        const _c = self.vtable.get_Command(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommand(self: *@This(), value: ShareWindowCommand) core.HResult!void {
        const _c = self.vtable.put_Command(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IShareWindowCommandEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4578dc09-a523-5756-a995-e4feb991fff0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WindowId: *const fn(self: *anyopaque, _r: *WindowId) callconv(.winapi) HRESULT,
        get_Command: *const fn(self: *anyopaque, _r: *ShareWindowCommand) callconv(.winapi) HRESULT,
        put_Command: *const fn(self: *anyopaque, value: ShareWindowCommand) callconv(.winapi) HRESULT,
    };
};
pub const IShareWindowCommandSource = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCommandChanged(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCommandChanged(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCommandRequested(self: *@This(), handler: *TypedEventHandler(ShareWindowCommandSource,ShareWindowCommandEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommandRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommandRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommandRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCommandInvoked(self: *@This(), handler: *TypedEventHandler(ShareWindowCommandSource,ShareWindowCommandEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommandInvoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommandInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommandInvoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IShareWindowCommandSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb3b7ae3-6b9c-561e-bccc-61e68e0abfef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportCommandChanged: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_CommandRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ShareWindowCommandSource,ShareWindowCommandEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommandRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CommandInvoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(ShareWindowCommandSource,ShareWindowCommandEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommandInvoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IShareWindowCommandSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*ShareWindowCommandSource {
        var _r: *ShareWindowCommandSource = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.IShareWindowCommandSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0eb6656-9cac-517c-b6c7-8ef715084295";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **ShareWindowCommandSource) callconv(.winapi) HRESULT,
    };
};
pub const ITaskbarManager = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPinningAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPinningAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCurrentAppPinnedAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsCurrentAppPinnedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAppListEntryPinnedAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsAppListEntryPinnedAsync(@ptrCast(self), appListEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinCurrentAppAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinCurrentAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinAppListEntryAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinAppListEntryAsync(@ptrCast(self), appListEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.ITaskbarManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87490a19-1ad9-49f4-b2e8-86738dc5ac40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPinningAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsCurrentAppPinnedAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        IsAppListEntryPinnedAsync: *const fn(self: *anyopaque, appListEntry: *AppListEntry, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPinCurrentAppAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPinAppListEntryAsync: *const fn(self: *anyopaque, appListEntry: *AppListEntry, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ITaskbarManager2 = extern struct {
    vtable: *const VTable,
    pub fn IsSecondaryTilePinnedAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsSecondaryTilePinnedAsync(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinSecondaryTileAsync(self: *@This(), secondaryTile: *SecondaryTile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinSecondaryTileAsync(@ptrCast(self), secondaryTile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUnpinSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryUnpinSecondaryTileAsync(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.ITaskbarManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79f0a06e-7b02-4911-918c-dee0bbd20ba4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSecondaryTilePinnedAsync: *const fn(self: *anyopaque, tileId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPinSecondaryTileAsync: *const fn(self: *anyopaque, secondaryTile: *SecondaryTile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryUnpinSecondaryTileAsync: *const fn(self: *anyopaque, tileId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ITaskbarManagerDesktopAppSupportStatics = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Shell.ITaskbarManagerDesktopAppSupportStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cdfefd63-e879-4134-b9a7-8283f05f9480";
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
pub const ITaskbarManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*TaskbarManager {
        var _r: *TaskbarManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.ITaskbarManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db32ab74-de52-4fe6-b7b6-95ff9f8395df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **TaskbarManager) callconv(.winapi) HRESULT,
    };
};
pub const ShareWindowCommand = enum(i32) {
    None = 0,
    StartSharing = 1,
    StopSharing = 2,
};
pub const ShareWindowCommandEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWindowId(self: *@This()) core.HResult!WindowId {
        const this: *IShareWindowCommandEventArgs = @ptrCast(self);
        return try this.getWindowId();
    }
    pub fn getCommand(self: *@This()) core.HResult!ShareWindowCommand {
        const this: *IShareWindowCommandEventArgs = @ptrCast(self);
        return try this.getCommand();
    }
    pub fn putCommand(self: *@This(), value: ShareWindowCommand) core.HResult!void {
        const this: *IShareWindowCommandEventArgs = @ptrCast(self);
        return try this.putCommand(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.ShareWindowCommandEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareWindowCommandEventArgs.GUID;
    pub const IID: Guid = IShareWindowCommandEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareWindowCommandEventArgs.SIGNATURE);
};
pub const ShareWindowCommandSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.Stop();
    }
    pub fn ReportCommandChanged(self: *@This()) core.HResult!void {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.ReportCommandChanged();
    }
    pub fn addCommandRequested(self: *@This(), handler: *TypedEventHandler(ShareWindowCommandSource,ShareWindowCommandEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.addCommandRequested(handler);
    }
    pub fn removeCommandRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.removeCommandRequested(token);
    }
    pub fn addCommandInvoked(self: *@This(), handler: *TypedEventHandler(ShareWindowCommandSource,ShareWindowCommandEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.addCommandInvoked(handler);
    }
    pub fn removeCommandInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IShareWindowCommandSource = @ptrCast(self);
        return try this.removeCommandInvoked(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*ShareWindowCommandSource {
        const factory = @This().IShareWindowCommandSourceStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.ShareWindowCommandSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareWindowCommandSource.GUID;
    pub const IID: Guid = IShareWindowCommandSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareWindowCommandSource.SIGNATURE);
    var _IShareWindowCommandSourceStaticsCache: FactoryCache(IShareWindowCommandSourceStatics, RUNTIME_NAME) = .{};
};
pub const TaskbarManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        const this: *ITaskbarManager = @ptrCast(self);
        return try this.getIsSupported();
    }
    pub fn getIsPinningAllowed(self: *@This()) core.HResult!bool {
        const this: *ITaskbarManager = @ptrCast(self);
        return try this.getIsPinningAllowed();
    }
    pub fn IsCurrentAppPinnedAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ITaskbarManager = @ptrCast(self);
        return try this.IsCurrentAppPinnedAsync();
    }
    pub fn IsAppListEntryPinnedAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        const this: *ITaskbarManager = @ptrCast(self);
        return try this.IsAppListEntryPinnedAsync(appListEntry);
    }
    pub fn RequestPinCurrentAppAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ITaskbarManager = @ptrCast(self);
        return try this.RequestPinCurrentAppAsync();
    }
    pub fn RequestPinAppListEntryAsync(self: *@This(), appListEntry: *AppListEntry) core.HResult!*IAsyncOperation(bool) {
        const this: *ITaskbarManager = @ptrCast(self);
        return try this.RequestPinAppListEntryAsync(appListEntry);
    }
    pub fn IsSecondaryTilePinnedAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ITaskbarManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITaskbarManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsSecondaryTilePinnedAsync(tileId);
    }
    pub fn RequestPinSecondaryTileAsync(self: *@This(), secondaryTile: *SecondaryTile) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ITaskbarManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITaskbarManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestPinSecondaryTileAsync(secondaryTile);
    }
    pub fn TryUnpinSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ITaskbarManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITaskbarManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryUnpinSecondaryTileAsync(tileId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*TaskbarManager {
        const factory = @This().ITaskbarManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.UI.Shell.TaskbarManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITaskbarManager.GUID;
    pub const IID: Guid = ITaskbarManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITaskbarManager.SIGNATURE);
    var _ITaskbarManagerStaticsCache: FactoryCache(ITaskbarManagerStatics, RUNTIME_NAME) = .{};
    var _ITaskbarManagerDesktopAppSupportStaticsCache: FactoryCache(ITaskbarManagerDesktopAppSupportStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const WindowId = @import("../UI.zig").WindowId;
const AppListEntry = @import("../ApplicationModel/Core.zig").AppListEntry;
const IVector = @import("../Foundation/Collections.zig").IVector;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const BitmapSize = @import("../Graphics/Imaging.zig").BitmapSize;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SecondaryTile = @import("./StartScreen.zig").SecondaryTile;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
