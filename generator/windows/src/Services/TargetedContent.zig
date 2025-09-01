pub const ITargetedContentAction = extern struct {
    vtable: *const VTable,
    pub fn InvokeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvokeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d75b691e-6cd6-4ca0-9d8f-4728b0b7e6b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InvokeAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentAvailabilityChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentAvailabilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0f59d26-5927-4450-965c-1ceb7becde65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasPreviousContentExpired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasPreviousContentExpired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99d488c9-587e-4586-8ef7-b54ca9453a16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
        get_HasPreviousContentExpired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentCollection = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportInteraction(self: *@This(), interaction: TargetedContentInteraction) core.HResult!void {
        const _c = self.vtable.ReportInteraction(@ptrCast(self), interaction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCustomInteraction(self: *@This(), customInteractionName: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportCustomInteraction(@ptrCast(self), customInteractionName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,TargetedContentValue) {
        var _r: *IMapView(HSTRING,TargetedContentValue) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollections(self: *@This()) core.HResult!*IVectorView(TargetedContentCollection) {
        var _r: *IVectorView(TargetedContentCollection) = undefined;
        const _c = self.vtable.get_Collections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(TargetedContentItem) {
        var _r: *IVectorView(TargetedContentItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d";
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
        ReportInteraction: *const fn(self: *anyopaque, interaction: TargetedContentInteraction) callconv(.winapi) HRESULT,
        ReportCustomInteraction: *const fn(self: *anyopaque, customInteractionName: HSTRING) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,TargetedContentValue)) callconv(.winapi) HRESULT,
        get_Collections: *const fn(self: *anyopaque, _r: **IVectorView(TargetedContentCollection)) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVectorView(TargetedContentItem)) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentContainer = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailability(self: *@This()) core.HResult!TargetedContentAvailability {
        var _r: TargetedContentAvailability = undefined;
        const _c = self.vtable.get_Availability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContent(self: *@This()) core.HResult!*TargetedContentCollection {
        var _r: *TargetedContentCollection = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectSingleObject(self: *@This(), path: HSTRING) core.HResult!*TargetedContentObject {
        var _r: *TargetedContentObject = undefined;
        const _c = self.vtable.SelectSingleObject(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc2494c9-8837-47c2-850f-d79d64595926";
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
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Availability: *const fn(self: *anyopaque, _r: *TargetedContentAvailability) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **TargetedContentCollection) callconv(.winapi) HRESULT,
        SelectSingleObject: *const fn(self: *anyopaque, path: HSTRING, _r: **TargetedContentObject) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentContainerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetAsync(self: *@This(), contentId: HSTRING) core.HResult!*IAsyncOperation(TargetedContentContainer) {
        var _r: *IAsyncOperation(TargetedContentContainer) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), contentId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentContainerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b47e7fb-2140-4c1f-a736-c59583f227d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, contentId: HSTRING, _r: **IAsyncOperation(TargetedContentContainer)) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentImage = extern struct {
    vtable: *const VTable,
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentImage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7a585d9-779f-4b1e-bbb1-8eaf53fbeab2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentItem = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportInteraction(self: *@This(), interaction: TargetedContentInteraction) core.HResult!void {
        const _c = self.vtable.ReportInteraction(@ptrCast(self), interaction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportCustomInteraction(self: *@This(), customInteractionName: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportCustomInteraction(@ptrCast(self), customInteractionName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!*TargetedContentItemState {
        var _r: *TargetedContentItemState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,TargetedContentValue) {
        var _r: *IMapView(HSTRING,TargetedContentValue) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollections(self: *@This()) core.HResult!*IVectorView(TargetedContentCollection) {
        var _r: *IVectorView(TargetedContentCollection) = undefined;
        const _c = self.vtable.get_Collections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38168dc4-276c-4c32-96ba-565c6e406e74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportInteraction: *const fn(self: *anyopaque, interaction: TargetedContentInteraction) callconv(.winapi) HRESULT,
        ReportCustomInteraction: *const fn(self: *anyopaque, customInteractionName: HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: **TargetedContentItemState) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,TargetedContentValue)) callconv(.winapi) HRESULT,
        get_Collections: *const fn(self: *anyopaque, _r: **IVectorView(TargetedContentCollection)) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentItemState = extern struct {
    vtable: *const VTable,
    pub fn getShouldDisplay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldDisplay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppInstallationState(self: *@This()) core.HResult!TargetedContentAppInstallationState {
        var _r: TargetedContentAppInstallationState = undefined;
        const _c = self.vtable.get_AppInstallationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentItemState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73935454-4c65-4b47-a441-472de53c79b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldDisplay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AppInstallationState: *const fn(self: *anyopaque, _r: *TargetedContentAppInstallationState) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentObject = extern struct {
    vtable: *const VTable,
    pub fn getObjectKind(self: *@This()) core.HResult!TargetedContentObjectKind {
        var _r: TargetedContentObjectKind = undefined;
        const _c = self.vtable.get_ObjectKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollection(self: *@This()) core.HResult!*TargetedContentCollection {
        var _r: *TargetedContentCollection = undefined;
        const _c = self.vtable.get_Collection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItem(self: *@This()) core.HResult!*TargetedContentItem {
        var _r: *TargetedContentItem = undefined;
        const _c = self.vtable.get_Item(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*TargetedContentValue {
        var _r: *TargetedContentValue = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "041d7969-2212-42d1-9dfa-88a8e3033aa3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ObjectKind: *const fn(self: *anyopaque, _r: *TargetedContentObjectKind) callconv(.winapi) HRESULT,
        get_Collection: *const fn(self: *anyopaque, _r: **TargetedContentCollection) callconv(.winapi) HRESULT,
        get_Item: *const fn(self: *anyopaque, _r: **TargetedContentItem) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **TargetedContentValue) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a1cef3d-8073-4416-8df2-546835a6414f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentSubscription = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContentContainerAsync(self: *@This()) core.HResult!*IAsyncOperation(TargetedContentContainer) {
        var _r: *IAsyncOperation(TargetedContentContainer) = undefined;
        const _c = self.vtable.GetContentContainerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addContentChanged(self: *@This(), handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContentChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContentChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentAvailabilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailabilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailabilityChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailabilityChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentSubscription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "882c2c49-c652-4c7a-acad-1f7fa2986c73";
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
        GetContentContainerAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(TargetedContentContainer)) callconv(.winapi) HRESULT,
        add_ContentChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContentChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AvailabilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentAvailabilityChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailabilityChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentSubscriptionOptions = extern struct {
    vtable: *const VTable,
    pub fn getSubscriptionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubscriptionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowPartialContentAvailability(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowPartialContentAvailability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowPartialContentAvailability(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowPartialContentAvailability(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCloudQueryParameters(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_CloudQueryParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalFilters(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_LocalFilters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Update(self: *@This()) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61ee6ad0-2c83-421b-8467-413eaf1aeb97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SubscriptionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AllowPartialContentAvailability: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowPartialContentAvailability: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CloudQueryParameters: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_LocalFilters: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentSubscriptionStatics = extern struct {
    vtable: *const VTable,
    pub fn GetAsync(self: *@This(), subscriptionId: HSTRING) core.HResult!*IAsyncOperation(TargetedContentSubscription) {
        var _r: *IAsyncOperation(TargetedContentSubscription) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), subscriptionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOptions(self: *@This(), subscriptionId: HSTRING) core.HResult!*TargetedContentSubscriptionOptions {
        var _r: *TargetedContentSubscriptionOptions = undefined;
        const _c = self.vtable.GetOptions(@ptrCast(self), subscriptionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentSubscriptionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faddfe80-360d-4916-b53c-7ea27090d02a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, subscriptionId: HSTRING, _r: **IAsyncOperation(TargetedContentSubscription)) callconv(.winapi) HRESULT,
        GetOptions: *const fn(self: *anyopaque, subscriptionId: HSTRING, _r: **TargetedContentSubscriptionOptions) callconv(.winapi) HRESULT,
    };
};
pub const ITargetedContentValue = extern struct {
    vtable: *const VTable,
    pub fn getValueKind(self: *@This()) core.HResult!TargetedContentValueKind {
        var _r: TargetedContentValueKind = undefined;
        const _c = self.vtable.get_ValueKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_String(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumber(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Number(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoolean(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Boolean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFile(self: *@This()) core.HResult!*TargetedContentFile {
        var _r: *TargetedContentFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageFile(self: *@This()) core.HResult!*TargetedContentImage {
        var _r: *TargetedContentImage = undefined;
        const _c = self.vtable.get_ImageFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAction(self: *@This()) core.HResult!*TargetedContentAction {
        var _r: *TargetedContentAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrings(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Strings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_Uris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumbers(self: *@This()) core.HResult!*IVectorView(f64) {
        var _r: *IVectorView(f64) = undefined;
        const _c = self.vtable.get_Numbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBooleans(self: *@This()) core.HResult!*IVectorView(bool) {
        var _r: *IVectorView(bool) = undefined;
        const _c = self.vtable.get_Booleans(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFiles(self: *@This()) core.HResult!*IVectorView(TargetedContentFile) {
        var _r: *IVectorView(TargetedContentFile) = undefined;
        const _c = self.vtable.get_Files(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageFiles(self: *@This()) core.HResult!*IVectorView(TargetedContentImage) {
        var _r: *IVectorView(TargetedContentImage) = undefined;
        const _c = self.vtable.get_ImageFiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActions(self: *@This()) core.HResult!*IVectorView(TargetedContentAction) {
        var _r: *IVectorView(TargetedContentAction) = undefined;
        const _c = self.vtable.get_Actions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.ITargetedContentValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aafde4b3-4215-4bf8-867f-43f04865f9bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ValueKind: *const fn(self: *anyopaque, _r: *TargetedContentValueKind) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_String: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Number: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Boolean: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **TargetedContentFile) callconv(.winapi) HRESULT,
        get_ImageFile: *const fn(self: *anyopaque, _r: **TargetedContentImage) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: **TargetedContentAction) callconv(.winapi) HRESULT,
        get_Strings: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Uris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
        get_Numbers: *const fn(self: *anyopaque, _r: **IVectorView(f64)) callconv(.winapi) HRESULT,
        get_Booleans: *const fn(self: *anyopaque, _r: **IVectorView(bool)) callconv(.winapi) HRESULT,
        get_Files: *const fn(self: *anyopaque, _r: **IVectorView(TargetedContentFile)) callconv(.winapi) HRESULT,
        get_ImageFiles: *const fn(self: *anyopaque, _r: **IVectorView(TargetedContentImage)) callconv(.winapi) HRESULT,
        get_Actions: *const fn(self: *anyopaque, _r: **IVectorView(TargetedContentAction)) callconv(.winapi) HRESULT,
    };
};
pub const TargetedContentAction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InvokeAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ITargetedContentAction = @ptrCast(self);
        return try this.InvokeAsync();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentAction.GUID;
    pub const IID: Guid = ITargetedContentAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentAction.SIGNATURE);
};
pub const TargetedContentAppInstallationState = enum(i32) {
    NotApplicable = 0,
    NotInstalled = 1,
    Installed = 2,
};
pub const TargetedContentAvailability = enum(i32) {
    None = 0,
    Partial = 1,
    All = 2,
};
pub const TargetedContentAvailabilityChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ITargetedContentAvailabilityChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentAvailabilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentAvailabilityChangedEventArgs.GUID;
    pub const IID: Guid = ITargetedContentAvailabilityChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentAvailabilityChangedEventArgs.SIGNATURE);
};
pub const TargetedContentChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ITargetedContentChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getHasPreviousContentExpired(self: *@This()) core.HResult!bool {
        const this: *ITargetedContentChangedEventArgs = @ptrCast(self);
        return try this.getHasPreviousContentExpired();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentChangedEventArgs.GUID;
    pub const IID: Guid = ITargetedContentChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentChangedEventArgs.SIGNATURE);
};
pub const TargetedContentCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.getId();
    }
    pub fn ReportInteraction(self: *@This(), interaction: TargetedContentInteraction) core.HResult!void {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.ReportInteraction(interaction);
    }
    pub fn ReportCustomInteraction(self: *@This(), customInteractionName: HSTRING) core.HResult!void {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.ReportCustomInteraction(customInteractionName);
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,TargetedContentValue) {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getCollections(self: *@This()) core.HResult!*IVectorView(TargetedContentCollection) {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.getCollections();
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(TargetedContentItem) {
        const this: *ITargetedContentCollection = @ptrCast(self);
        return try this.getItems();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentCollection.GUID;
    pub const IID: Guid = ITargetedContentCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentCollection.SIGNATURE);
};
pub const TargetedContentContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentContainer = @ptrCast(self);
        return try this.getId();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ITargetedContentContainer = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAvailability(self: *@This()) core.HResult!TargetedContentAvailability {
        const this: *ITargetedContentContainer = @ptrCast(self);
        return try this.getAvailability();
    }
    pub fn getContent(self: *@This()) core.HResult!*TargetedContentCollection {
        const this: *ITargetedContentContainer = @ptrCast(self);
        return try this.getContent();
    }
    pub fn SelectSingleObject(self: *@This(), path: HSTRING) core.HResult!*TargetedContentObject {
        const this: *ITargetedContentContainer = @ptrCast(self);
        return try this.SelectSingleObject(path);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetAsync(contentId: HSTRING) core.HResult!*IAsyncOperation(TargetedContentContainer) {
        const _f = @This().ITargetedContentContainerStaticsCache.get();
        return try _f.GetAsync(contentId);
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentContainer.GUID;
    pub const IID: Guid = ITargetedContentContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentContainer.SIGNATURE);
    var _ITargetedContentContainerStaticsCache: FactoryCache(ITargetedContentContainerStatics, RUNTIME_NAME) = .{};
};
pub const TargetedContentFile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn OpenReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        const this: *IRandomAccessStreamReference = @ptrCast(self);
        return try this.OpenReadAsync();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentFile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStreamReference.GUID;
    pub const IID: Guid = IRandomAccessStreamReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStreamReference.SIGNATURE);
};
pub const TargetedContentImage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *ITargetedContentImage = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *ITargetedContentImage = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn OpenReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var this: ?*IRandomAccessStreamReference = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStreamReference.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenReadAsync();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentImage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentImage.GUID;
    pub const IID: Guid = ITargetedContentImage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentImage.SIGNATURE);
};
pub const TargetedContentInteraction = enum(i32) {
    Impression = 0,
    ClickThrough = 1,
    Hover = 2,
    Like = 3,
    Dislike = 4,
    Dismiss = 5,
    Ineligible = 6,
    Accept = 7,
    Decline = 8,
    Defer = 9,
    Canceled = 10,
    Conversion = 11,
    Opportunity = 12,
};
pub const TargetedContentItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentItem = @ptrCast(self);
        return try this.getPath();
    }
    pub fn ReportInteraction(self: *@This(), interaction: TargetedContentInteraction) core.HResult!void {
        const this: *ITargetedContentItem = @ptrCast(self);
        return try this.ReportInteraction(interaction);
    }
    pub fn ReportCustomInteraction(self: *@This(), customInteractionName: HSTRING) core.HResult!void {
        const this: *ITargetedContentItem = @ptrCast(self);
        return try this.ReportCustomInteraction(customInteractionName);
    }
    pub fn getState(self: *@This()) core.HResult!*TargetedContentItemState {
        const this: *ITargetedContentItem = @ptrCast(self);
        return try this.getState();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,TargetedContentValue) {
        const this: *ITargetedContentItem = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getCollections(self: *@This()) core.HResult!*IVectorView(TargetedContentCollection) {
        const this: *ITargetedContentItem = @ptrCast(self);
        return try this.getCollections();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentItem.GUID;
    pub const IID: Guid = ITargetedContentItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentItem.SIGNATURE);
};
pub const TargetedContentItemState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShouldDisplay(self: *@This()) core.HResult!bool {
        const this: *ITargetedContentItemState = @ptrCast(self);
        return try this.getShouldDisplay();
    }
    pub fn getAppInstallationState(self: *@This()) core.HResult!TargetedContentAppInstallationState {
        const this: *ITargetedContentItemState = @ptrCast(self);
        return try this.getAppInstallationState();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentItemState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentItemState.GUID;
    pub const IID: Guid = ITargetedContentItemState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentItemState.SIGNATURE);
};
pub const TargetedContentObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getObjectKind(self: *@This()) core.HResult!TargetedContentObjectKind {
        const this: *ITargetedContentObject = @ptrCast(self);
        return try this.getObjectKind();
    }
    pub fn getCollection(self: *@This()) core.HResult!*TargetedContentCollection {
        const this: *ITargetedContentObject = @ptrCast(self);
        return try this.getCollection();
    }
    pub fn getItem(self: *@This()) core.HResult!*TargetedContentItem {
        const this: *ITargetedContentObject = @ptrCast(self);
        return try this.getItem();
    }
    pub fn getValue(self: *@This()) core.HResult!*TargetedContentValue {
        const this: *ITargetedContentObject = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentObject.GUID;
    pub const IID: Guid = ITargetedContentObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentObject.SIGNATURE);
};
pub const TargetedContentObjectKind = enum(i32) {
    Collection = 0,
    Item = 1,
    Value = 2,
};
pub const TargetedContentStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ITargetedContentStateChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentStateChangedEventArgs.GUID;
    pub const IID: Guid = ITargetedContentStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentStateChangedEventArgs.SIGNATURE);
};
pub const TargetedContentSubscription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.getId();
    }
    pub fn GetContentContainerAsync(self: *@This()) core.HResult!*IAsyncOperation(TargetedContentContainer) {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.GetContentContainerAsync();
    }
    pub fn addContentChanged(self: *@This(), handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.addContentChanged(handler);
    }
    pub fn removeContentChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.removeContentChanged(cookie);
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentAvailabilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.addAvailabilityChanged(handler);
    }
    pub fn removeAvailabilityChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.removeAvailabilityChanged(cookie);
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(TargetedContentSubscription,TargetedContentStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ITargetedContentSubscription = @ptrCast(self);
        return try this.removeStateChanged(cookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetAsync(subscriptionId: HSTRING) core.HResult!*IAsyncOperation(TargetedContentSubscription) {
        const _f = @This().ITargetedContentSubscriptionStaticsCache.get();
        return try _f.GetAsync(subscriptionId);
    }
    pub fn GetOptions(subscriptionId: HSTRING) core.HResult!*TargetedContentSubscriptionOptions {
        const _f = @This().ITargetedContentSubscriptionStaticsCache.get();
        return try _f.GetOptions(subscriptionId);
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentSubscription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentSubscription.GUID;
    pub const IID: Guid = ITargetedContentSubscription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentSubscription.SIGNATURE);
    var _ITargetedContentSubscriptionStaticsCache: FactoryCache(ITargetedContentSubscriptionStatics, RUNTIME_NAME) = .{};
};
pub const TargetedContentSubscriptionOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSubscriptionId(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentSubscriptionOptions = @ptrCast(self);
        return try this.getSubscriptionId();
    }
    pub fn getAllowPartialContentAvailability(self: *@This()) core.HResult!bool {
        const this: *ITargetedContentSubscriptionOptions = @ptrCast(self);
        return try this.getAllowPartialContentAvailability();
    }
    pub fn putAllowPartialContentAvailability(self: *@This(), value: bool) core.HResult!void {
        const this: *ITargetedContentSubscriptionOptions = @ptrCast(self);
        return try this.putAllowPartialContentAvailability(value);
    }
    pub fn getCloudQueryParameters(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *ITargetedContentSubscriptionOptions = @ptrCast(self);
        return try this.getCloudQueryParameters();
    }
    pub fn getLocalFilters(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ITargetedContentSubscriptionOptions = @ptrCast(self);
        return try this.getLocalFilters();
    }
    pub fn Update(self: *@This()) core.HResult!void {
        const this: *ITargetedContentSubscriptionOptions = @ptrCast(self);
        return try this.Update();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentSubscriptionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentSubscriptionOptions.GUID;
    pub const IID: Guid = ITargetedContentSubscriptionOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentSubscriptionOptions.SIGNATURE);
};
pub const TargetedContentValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValueKind(self: *@This()) core.HResult!TargetedContentValueKind {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getValueKind();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getString(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getString();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getNumber(self: *@This()) core.HResult!f64 {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getNumber();
    }
    pub fn getBoolean(self: *@This()) core.HResult!bool {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getBoolean();
    }
    pub fn getFile(self: *@This()) core.HResult!*TargetedContentFile {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getImageFile(self: *@This()) core.HResult!*TargetedContentImage {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getImageFile();
    }
    pub fn getAction(self: *@This()) core.HResult!*TargetedContentAction {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getAction();
    }
    pub fn getStrings(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getStrings();
    }
    pub fn getUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getUris();
    }
    pub fn getNumbers(self: *@This()) core.HResult!*IVectorView(f64) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getNumbers();
    }
    pub fn getBooleans(self: *@This()) core.HResult!*IVectorView(bool) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getBooleans();
    }
    pub fn getFiles(self: *@This()) core.HResult!*IVectorView(TargetedContentFile) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getFiles();
    }
    pub fn getImageFiles(self: *@This()) core.HResult!*IVectorView(TargetedContentImage) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getImageFiles();
    }
    pub fn getActions(self: *@This()) core.HResult!*IVectorView(TargetedContentAction) {
        const this: *ITargetedContentValue = @ptrCast(self);
        return try this.getActions();
    }
    pub const NAME: []const u8 = "Windows.Services.TargetedContent.TargetedContentValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetedContentValue.GUID;
    pub const IID: Guid = ITargetedContentValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetedContentValue.SIGNATURE);
};
pub const TargetedContentValueKind = enum(i32) {
    String = 0,
    Uri = 1,
    Number = 2,
    Boolean = 3,
    File = 4,
    ImageFile = 5,
    Action = 6,
    Strings = 7,
    Uris = 8,
    Numbers = 9,
    Booleans = 10,
    Files = 11,
    ImageFiles = 12,
    Actions = 13,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IMap = @import("../Foundation/Collections.zig").IMap;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
