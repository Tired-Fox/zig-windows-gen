pub const HandwritingLineHeight = enum(i32) {
    Small = 0,
    Medium = 1,
    Large = 2,
};
pub const IInkDrawingAttributes = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPenTip(self: *@This()) core.HResult!PenTipShape {
        var _r: PenTipShape = undefined;
        const _c = self.vtable.get_PenTip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPenTip(self: *@This(), value: PenTipShape) core.HResult!void {
        const _c = self.vtable.put_PenTip(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIgnorePressure(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IgnorePressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIgnorePressure(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IgnorePressure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFitToCurve(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_FitToCurve(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFitToCurve(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_FitToCurve(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97a2176c-6774-48ad-84f0-48f5a9be74f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_PenTip: *const fn(self: *anyopaque, _r: *PenTipShape) callconv(.winapi) HRESULT,
        put_PenTip: *const fn(self: *anyopaque, value: PenTipShape) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_IgnorePressure: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IgnorePressure: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_FitToCurve: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_FitToCurve: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkDrawingAttributes2 = extern struct {
    vtable: *const VTable,
    pub fn getPenTipTransform(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_PenTipTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPenTipTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_PenTipTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDrawAsHighlighter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DrawAsHighlighter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDrawAsHighlighter(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DrawAsHighlighter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributes2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cab6508-8ec4-42fd-a5a5-e4b7d1d5316d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PenTipTransform: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_PenTipTransform: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
        get_DrawAsHighlighter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DrawAsHighlighter: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkDrawingAttributes3 = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!InkDrawingAttributesKind {
        var _r: InkDrawingAttributesKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPencilProperties(self: *@This()) core.HResult!*InkDrawingAttributesPencilProperties {
        var _r: *InkDrawingAttributesPencilProperties = undefined;
        const _c = self.vtable.get_PencilProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributes3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72020002-7d5b-4690-8af4-e664cbe2b74f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *InkDrawingAttributesKind) callconv(.winapi) HRESULT,
        get_PencilProperties: *const fn(self: *anyopaque, _r: **InkDrawingAttributesPencilProperties) callconv(.winapi) HRESULT,
    };
};
pub const IInkDrawingAttributes4 = extern struct {
    vtable: *const VTable,
    pub fn getIgnoreTilt(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IgnoreTilt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIgnoreTilt(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IgnoreTilt(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributes4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef65dc25-9f19-456d-91a3-bc3a3d91c5fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IgnoreTilt: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IgnoreTilt: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkDrawingAttributes5 = extern struct {
    vtable: *const VTable,
    pub fn getModelerAttributes(self: *@This()) core.HResult!*InkModelerAttributes {
        var _r: *InkModelerAttributes = undefined;
        const _c = self.vtable.get_ModelerAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributes5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d11aa0bb-0775-4852-ae64-41143a7ae6c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ModelerAttributes: *const fn(self: *anyopaque, _r: **InkModelerAttributes) callconv(.winapi) HRESULT,
    };
};
pub const IInkDrawingAttributesPencilProperties = extern struct {
    vtable: *const VTable,
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Opacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Opacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributesPencilProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f2534cb-2d86-41bb-b0e8-e4c2a0253c52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Opacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Opacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IInkDrawingAttributesStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForPencil(self: *@This()) core.HResult!*InkDrawingAttributes {
        var _r: *InkDrawingAttributes = undefined;
        const _c = self.vtable.CreateForPencil(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkDrawingAttributesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f731e03f-1a65-4862-96cb-6e1665e17f6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForPencil: *const fn(self: *anyopaque, _r: **InkDrawingAttributes) callconv(.winapi) HRESULT,
    };
};
pub const IInkInputConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getIsPrimaryBarrelButtonInputEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrimaryBarrelButtonInputEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPrimaryBarrelButtonInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPrimaryBarrelButtonInputEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsEraserInputEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEraserInputEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEraserInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEraserInputEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkInputConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93a68dc4-0b7b-49d7-b34f-9901e524dcf2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPrimaryBarrelButtonInputEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPrimaryBarrelButtonInputEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsEraserInputEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEraserInputEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkInputConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn getIsPenHapticFeedbackEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPenHapticFeedbackEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPenHapticFeedbackEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPenHapticFeedbackEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkInputConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ac2272e-81b4-5cc4-a36d-d057c387dfda";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPenHapticFeedbackEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPenHapticFeedbackEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkInputProcessingConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!InkInputProcessingMode {
        var _r: InkInputProcessingMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: InkInputProcessingMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightDragAction(self: *@This()) core.HResult!InkInputRightDragAction {
        var _r: InkInputRightDragAction = undefined;
        const _c = self.vtable.get_RightDragAction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightDragAction(self: *@This(), value: InkInputRightDragAction) core.HResult!void {
        const _c = self.vtable.put_RightDragAction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkInputProcessingConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2778d85e-33ca-4b06-a6d3-ac3945116d37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *InkInputProcessingMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: InkInputProcessingMode) callconv(.winapi) HRESULT,
        get_RightDragAction: *const fn(self: *anyopaque, _r: *InkInputRightDragAction) callconv(.winapi) HRESULT,
        put_RightDragAction: *const fn(self: *anyopaque, value: InkInputRightDragAction) callconv(.winapi) HRESULT,
    };
};
pub const IInkManager = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!InkManipulationMode {
        var _r: InkManipulationMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: InkManipulationMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessPointerDown(self: *@This(), pointerPoint: *PointerPoint) core.HResult!void {
        const _c = self.vtable.ProcessPointerDown(@ptrCast(self), pointerPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessPointerUpdate(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ProcessPointerUpdate(@ptrCast(self), pointerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProcessPointerUp(self: *@This(), pointerPoint: *PointerPoint) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.ProcessPointerUp(@ptrCast(self), pointerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDefaultDrawingAttributes(self: *@This(), drawingAttributes: *InkDrawingAttributes) core.HResult!void {
        const _c = self.vtable.SetDefaultDrawingAttributes(@ptrCast(self), drawingAttributes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RecognizeAsync(self: *@This(), recognitionTarget: InkRecognitionTarget) core.HResult!*IAsyncOperation(IVectorView(InkRecognitionResult)) {
        var _r: *IAsyncOperation(IVectorView(InkRecognitionResult)) = undefined;
        const _c = self.vtable.RecognizeAsync(@ptrCast(self), recognitionTarget, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4744737d-671b-4163-9c95-4e8d7a035fe1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *InkManipulationMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: InkManipulationMode) callconv(.winapi) HRESULT,
        ProcessPointerDown: *const fn(self: *anyopaque, pointerPoint: *PointerPoint) callconv(.winapi) HRESULT,
        ProcessPointerUpdate: *const fn(self: *anyopaque, pointerPoint: *PointerPoint, _r: **IInspectable) callconv(.winapi) HRESULT,
        ProcessPointerUp: *const fn(self: *anyopaque, pointerPoint: *PointerPoint, _r: *Rect) callconv(.winapi) HRESULT,
        SetDefaultDrawingAttributes: *const fn(self: *anyopaque, drawingAttributes: *InkDrawingAttributes) callconv(.winapi) HRESULT,
        RecognizeAsync: *const fn(self: *anyopaque, recognitionTarget: InkRecognitionTarget, _r: **IAsyncOperation(IVectorView(InkRecognitionResult))) callconv(.winapi) HRESULT,
    };
};
pub const IInkModelerAttributes = extern struct {
    vtable: *const VTable,
    pub fn getPredictionTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_PredictionTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPredictionTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_PredictionTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScalingFactor(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ScalingFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScalingFactor(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_ScalingFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkModelerAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bad31f27-0cd9-4bfd-b6f3-9e03ba8d7454";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PredictionTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_PredictionTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ScalingFactor: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_ScalingFactor: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IInkModelerAttributes2 = extern struct {
    vtable: *const VTable,
    pub fn getUseVelocityBasedPressure(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseVelocityBasedPressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseVelocityBasedPressure(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseVelocityBasedPressure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkModelerAttributes2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86d1d09a-4ef8-5e25-b7bc-b65424f16bb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UseVelocityBasedPressure: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseVelocityBasedPressure: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkPoint = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPressure(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f87272b-858c-46a5-9b41-d195970459fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IInkPoint2 = extern struct {
    vtable: *const VTable,
    pub fn getTiltX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TiltX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiltY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TiltY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPoint2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fba9c3f7-ae56-4d5c-bd2f-0ac45f5e4af9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TiltX: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_TiltY: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IInkPointFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInkPoint(self: *@This(), position: Point, pressure: f32) core.HResult!*InkPoint {
        var _r: *InkPoint = undefined;
        const _c = self.vtable.CreateInkPoint(@ptrCast(self), position, pressure, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPointFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29e5d51c-c98f-405d-9f3b-e53e31068d4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInkPoint: *const fn(self: *anyopaque, position: Point, pressure: f32, _r: **InkPoint) callconv(.winapi) HRESULT,
    };
};
pub const IInkPointFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateInkPointWithTiltAndTimestamp(self: *@This(), position: Point, pressure: f32, tiltX: f32, tiltY: f32, timestamp: u64) core.HResult!*InkPoint {
        var _r: *InkPoint = undefined;
        const _c = self.vtable.CreateInkPointWithTiltAndTimestamp(@ptrCast(self), position, pressure, tiltX, tiltY, timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPointFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0145e85-daff-45f2-ad69-050d8256a209";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInkPointWithTiltAndTimestamp: *const fn(self: *anyopaque, position: Point, pressure: f32, tiltX: f32, tiltY: f32, timestamp: u64, _r: **InkPoint) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenter = extern struct {
    vtable: *const VTable,
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInputEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInputEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputDeviceTypes(self: *@This()) core.HResult!CoreInputDeviceTypes {
        var _r: CoreInputDeviceTypes = undefined;
        const _c = self.vtable.get_InputDeviceTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputDeviceTypes(self: *@This(), value: CoreInputDeviceTypes) core.HResult!void {
        const _c = self.vtable.put_InputDeviceTypes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUnprocessedInput(self: *@This()) core.HResult!*InkUnprocessedInput {
        var _r: *InkUnprocessedInput = undefined;
        const _c = self.vtable.get_UnprocessedInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeInput(self: *@This()) core.HResult!*InkStrokeInput {
        var _r: *InkStrokeInput = undefined;
        const _c = self.vtable.get_StrokeInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputProcessingConfiguration(self: *@This()) core.HResult!*InkInputProcessingConfiguration {
        var _r: *InkInputProcessingConfiguration = undefined;
        const _c = self.vtable.get_InputProcessingConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeContainer(self: *@This()) core.HResult!*InkStrokeContainer {
        var _r: *InkStrokeContainer = undefined;
        const _c = self.vtable.get_StrokeContainer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeContainer(self: *@This(), value: *InkStrokeContainer) core.HResult!void {
        const _c = self.vtable.put_StrokeContainer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CopyDefaultDrawingAttributes(self: *@This()) core.HResult!*InkDrawingAttributes {
        var _r: *InkDrawingAttributes = undefined;
        const _c = self.vtable.CopyDefaultDrawingAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateDefaultDrawingAttributes(self: *@This(), value: *InkDrawingAttributes) core.HResult!void {
        const _c = self.vtable.UpdateDefaultDrawingAttributes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ActivateCustomDrying(self: *@This()) core.HResult!*InkSynchronizer {
        var _r: *InkSynchronizer = undefined;
        const _c = self.vtable.ActivateCustomDrying(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPredefinedConfiguration(self: *@This(), value: InkPresenterPredefinedConfiguration) core.HResult!void {
        const _c = self.vtable.SetPredefinedConfiguration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStrokesCollected(self: *@This(), handler: *TypedEventHandler(InkPresenter,InkStrokesCollectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StrokesCollected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStrokesCollected(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StrokesCollected(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStrokesErased(self: *@This(), handler: *TypedEventHandler(InkPresenter,InkStrokesErasedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StrokesErased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStrokesErased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StrokesErased(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a69b70e2-887b-458f-b173-4fe4438930a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsInputEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInputEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InputDeviceTypes: *const fn(self: *anyopaque, _r: *CoreInputDeviceTypes) callconv(.winapi) HRESULT,
        put_InputDeviceTypes: *const fn(self: *anyopaque, value: CoreInputDeviceTypes) callconv(.winapi) HRESULT,
        get_UnprocessedInput: *const fn(self: *anyopaque, _r: **InkUnprocessedInput) callconv(.winapi) HRESULT,
        get_StrokeInput: *const fn(self: *anyopaque, _r: **InkStrokeInput) callconv(.winapi) HRESULT,
        get_InputProcessingConfiguration: *const fn(self: *anyopaque, _r: **InkInputProcessingConfiguration) callconv(.winapi) HRESULT,
        get_StrokeContainer: *const fn(self: *anyopaque, _r: **InkStrokeContainer) callconv(.winapi) HRESULT,
        put_StrokeContainer: *const fn(self: *anyopaque, value: *InkStrokeContainer) callconv(.winapi) HRESULT,
        CopyDefaultDrawingAttributes: *const fn(self: *anyopaque, _r: **InkDrawingAttributes) callconv(.winapi) HRESULT,
        UpdateDefaultDrawingAttributes: *const fn(self: *anyopaque, value: *InkDrawingAttributes) callconv(.winapi) HRESULT,
        ActivateCustomDrying: *const fn(self: *anyopaque, _r: **InkSynchronizer) callconv(.winapi) HRESULT,
        SetPredefinedConfiguration: *const fn(self: *anyopaque, value: InkPresenterPredefinedConfiguration) callconv(.winapi) HRESULT,
        add_StrokesCollected: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkPresenter,InkStrokesCollectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StrokesCollected: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StrokesErased: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkPresenter,InkStrokesErasedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StrokesErased: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenter2 = extern struct {
    vtable: *const VTable,
    pub fn getHighContrastAdjustment(self: *@This()) core.HResult!InkHighContrastAdjustment {
        var _r: InkHighContrastAdjustment = undefined;
        const _c = self.vtable.get_HighContrastAdjustment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHighContrastAdjustment(self: *@This(), value: InkHighContrastAdjustment) core.HResult!void {
        const _c = self.vtable.put_HighContrastAdjustment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf53e612-9a34-11e6-9f33-a24fc0d9649c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HighContrastAdjustment: *const fn(self: *anyopaque, _r: *InkHighContrastAdjustment) callconv(.winapi) HRESULT,
        put_HighContrastAdjustment: *const fn(self: *anyopaque, value: InkHighContrastAdjustment) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenter3 = extern struct {
    vtable: *const VTable,
    pub fn getInputConfiguration(self: *@This()) core.HResult!*InkInputConfiguration {
        var _r: *InkInputConfiguration = undefined;
        const _c = self.vtable.get_InputConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenter3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51e1ce89-d37d-4a90-83fc-7f5e9dfbf217";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputConfiguration: *const fn(self: *anyopaque, _r: **InkInputConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenterProtractor = extern struct {
    vtable: *const VTable,
    pub fn getAreTickMarksVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreTickMarksVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAreTickMarksVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AreTickMarksVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAreRaysVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreRaysVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAreRaysVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AreRaysVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCenterMarkerVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCenterMarkerVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCenterMarkerVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCenterMarkerVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAngleReadoutVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAngleReadoutVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAngleReadoutVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAngleReadoutVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsResizable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsResizable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsResizable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsResizable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRadius(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Radius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadius(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Radius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccentColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_AccentColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccentColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_AccentColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenterProtractor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7de3f2aa-ef6c-4e91-a73b-5b70d56fbd17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AreTickMarksVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AreTickMarksVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AreRaysVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AreRaysVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCenterMarkerVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCenterMarkerVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAngleReadoutVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAngleReadoutVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsResizable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsResizable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Radius: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Radius: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_AccentColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_AccentColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenterProtractorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), inkPresenter: *InkPresenter) core.HResult!*InkPresenterProtractor {
        var _r: *InkPresenterProtractor = undefined;
        const _c = self.vtable.Create(@ptrCast(self), inkPresenter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenterProtractorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "320103c9-68fa-47e9-8127-8370711fc46c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, inkPresenter: *InkPresenter, _r: **InkPresenterProtractor) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenterRuler = extern struct {
    vtable: *const VTable,
    pub fn getLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLength(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Length(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Width(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenterRuler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cda7d5a-dec7-4dd7-877a-2133f183d48a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Length: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Width: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenterRuler2 = extern struct {
    vtable: *const VTable,
    pub fn getAreTickMarksVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreTickMarksVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAreTickMarksVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AreTickMarksVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCompassVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCompassVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCompassVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCompassVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenterRuler2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45130dc1-bc61-44d4-a423-54712ae671c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AreTickMarksVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AreTickMarksVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCompassVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCompassVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenterRulerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), inkPresenter: *InkPresenter) core.HResult!*InkPresenterRuler {
        var _r: *InkPresenterRuler = undefined;
        const _c = self.vtable.Create(@ptrCast(self), inkPresenter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenterRulerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34361beb-9001-4a4b-a690-69dbaf63e501";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, inkPresenter: *InkPresenter, _r: **InkPresenterRuler) callconv(.winapi) HRESULT,
    };
};
pub const IInkPresenterStencil = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!InkPresenterStencilKind {
        var _r: InkPresenterStencilKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForegroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_ForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransform(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_Transform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_Transform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkPresenterStencil";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30d12d6d-3e06-4d02-b116-277fb5d8addc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *InkPresenterStencilKind) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_ForegroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_ForegroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Transform: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_Transform: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
    };
};
pub const IInkRecognitionResult = extern struct {
    vtable: *const VTable,
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextCandidates(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetTextCandidates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        var _r: *IVectorView(InkStroke) = undefined;
        const _c = self.vtable.GetStrokes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkRecognitionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36461a94-5068-40ef-8a05-2c2fb60908a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BoundingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        GetTextCandidates: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        GetStrokes: *const fn(self: *anyopaque, _r: **IVectorView(InkStroke)) callconv(.winapi) HRESULT,
    };
};
pub const IInkRecognizer = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "077ccea3-904d-442a-b151-aaca3631c43b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IInkRecognizerContainer = extern struct {
    vtable: *const VTable,
    pub fn SetDefaultRecognizer(self: *@This(), recognizer: *InkRecognizer) core.HResult!void {
        const _c = self.vtable.SetDefaultRecognizer(@ptrCast(self), recognizer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RecognizeAsync(self: *@This(), strokeCollection: *InkStrokeContainer, recognitionTarget: InkRecognitionTarget) core.HResult!*IAsyncOperation(IVectorView(InkRecognitionResult)) {
        var _r: *IAsyncOperation(IVectorView(InkRecognitionResult)) = undefined;
        const _c = self.vtable.RecognizeAsync(@ptrCast(self), strokeCollection, recognitionTarget, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRecognizers(self: *@This()) core.HResult!*IVectorView(InkRecognizer) {
        var _r: *IVectorView(InkRecognizer) = undefined;
        const _c = self.vtable.GetRecognizers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkRecognizerContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a74d9a31-8047-4698-a912-f82a5085012f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetDefaultRecognizer: *const fn(self: *anyopaque, recognizer: *InkRecognizer) callconv(.winapi) HRESULT,
        RecognizeAsync: *const fn(self: *anyopaque, strokeCollection: *InkStrokeContainer, recognitionTarget: InkRecognitionTarget, _r: **IAsyncOperation(IVectorView(InkRecognitionResult))) callconv(.winapi) HRESULT,
        GetRecognizers: *const fn(self: *anyopaque, _r: **IVectorView(InkRecognizer)) callconv(.winapi) HRESULT,
    };
};
pub const IInkStroke = extern struct {
    vtable: *const VTable,
    pub fn getDrawingAttributes(self: *@This()) core.HResult!*InkDrawingAttributes {
        var _r: *InkDrawingAttributes = undefined;
        const _c = self.vtable.get_DrawingAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDrawingAttributes(self: *@This(), value: *InkDrawingAttributes) core.HResult!void {
        const _c = self.vtable.put_DrawingAttributes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Selected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Selected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecognized(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Recognized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRenderingSegments(self: *@This()) core.HResult!*IVectorView(InkStrokeRenderingSegment) {
        var _r: *IVectorView(InkStrokeRenderingSegment) = undefined;
        const _c = self.vtable.GetRenderingSegments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clone(self: *@This()) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStroke";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15144d60-cce3-4fcf-9d52-11518ab6afd4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DrawingAttributes: *const fn(self: *anyopaque, _r: **InkDrawingAttributes) callconv(.winapi) HRESULT,
        put_DrawingAttributes: *const fn(self: *anyopaque, value: *InkDrawingAttributes) callconv(.winapi) HRESULT,
        get_BoundingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_Selected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Selected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Recognized: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetRenderingSegments: *const fn(self: *anyopaque, _r: **IVectorView(InkStrokeRenderingSegment)) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **InkStroke) callconv(.winapi) HRESULT,
    };
};
pub const IInkStroke2 = extern struct {
    vtable: *const VTable,
    pub fn getPointTransform(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_PointTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_PointTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInkPoints(self: *@This()) core.HResult!*IVectorView(InkPoint) {
        var _r: *IVectorView(InkPoint) = undefined;
        const _c = self.vtable.GetInkPoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStroke2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5db9e4f4-bafa-4de1-89d3-201b1ed7d89b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointTransform: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_PointTransform: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
        GetInkPoints: *const fn(self: *anyopaque, _r: **IVectorView(InkPoint)) callconv(.winapi) HRESULT,
    };
};
pub const IInkStroke3 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeStartedTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_StrokeStartedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeStartedTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_StrokeStartedTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_StrokeDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_StrokeDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStroke3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a807374-9499-411d-a1c4-68855d03d65f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_StrokeStartedTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_StrokeStartedTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_StrokeDuration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_StrokeDuration: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IInkStroke4 = extern struct {
    vtable: *const VTable,
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PointerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStroke4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd5b62e5-b6e9-5b91-a577-1921d2348690";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeBuilder = extern struct {
    vtable: *const VTable,
    pub fn BeginStroke(self: *@This(), pointerPoint: *PointerPoint) core.HResult!void {
        const _c = self.vtable.BeginStroke(@ptrCast(self), pointerPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendToStroke(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*PointerPoint {
        var _r: *PointerPoint = undefined;
        const _c = self.vtable.AppendToStroke(@ptrCast(self), pointerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EndStroke(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.EndStroke(@ptrCast(self), pointerPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStroke(self: *@This(), points: *IIterable(Point)) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.CreateStroke(@ptrCast(self), points, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDefaultDrawingAttributes(self: *@This(), drawingAttributes: *InkDrawingAttributes) core.HResult!void {
        const _c = self.vtable.SetDefaultDrawingAttributes(@ptrCast(self), drawingAttributes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82bbd1dc-1c63-41dc-9e07-4b4a70ced801";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BeginStroke: *const fn(self: *anyopaque, pointerPoint: *PointerPoint) callconv(.winapi) HRESULT,
        AppendToStroke: *const fn(self: *anyopaque, pointerPoint: *PointerPoint, _r: **PointerPoint) callconv(.winapi) HRESULT,
        EndStroke: *const fn(self: *anyopaque, pointerPoint: *PointerPoint, _r: **InkStroke) callconv(.winapi) HRESULT,
        CreateStroke: *const fn(self: *anyopaque, points: *IIterable(Point), _r: **InkStroke) callconv(.winapi) HRESULT,
        SetDefaultDrawingAttributes: *const fn(self: *anyopaque, drawingAttributes: *InkDrawingAttributes) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeBuilder2 = extern struct {
    vtable: *const VTable,
    pub fn CreateStrokeFromInkPoints(self: *@This(), inkPoints: *IIterable(InkPoint), transform: Matrix3x2) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.CreateStrokeFromInkPoints(@ptrCast(self), inkPoints, transform, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeBuilder2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd82bc27-731f-4cbc-bbbf-6d468044f1e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateStrokeFromInkPoints: *const fn(self: *anyopaque, inkPoints: *IIterable(InkPoint), transform: Matrix3x2, _r: **InkStroke) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeBuilder3 = extern struct {
    vtable: *const VTable,
    pub fn CreateStrokeFromInkPoints(self: *@This(), inkPoints: *IIterable(InkPoint), transform: Matrix3x2, strokeStartedTime: *IReference(DateTime), strokeDuration: *IReference(TimeSpan)) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.CreateStrokeFromInkPoints(@ptrCast(self), inkPoints, transform, strokeStartedTime, strokeDuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeBuilder3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2c71fcd-5472-46b1-a81d-c37a3d169441";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateStrokeFromInkPoints: *const fn(self: *anyopaque, inkPoints: *IIterable(InkPoint), transform: Matrix3x2, strokeStartedTime: *IReference(DateTime), strokeDuration: *IReference(TimeSpan), _r: **InkStroke) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeContainer = extern struct {
    vtable: *const VTable,
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        const _c = self.vtable.AddStroke(@ptrCast(self), stroke);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DeleteSelected(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.DeleteSelected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveSelected(self: *@This(), translation: Point) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.MoveSelected(@ptrCast(self), translation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectWithPolyLine(self: *@This(), polyline: *IIterable(Point)) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.SelectWithPolyLine(@ptrCast(self), polyline, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectWithLine(self: *@This(), from: Point, to: Point) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.SelectWithLine(@ptrCast(self), from, to, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopySelectedToClipboard(self: *@This()) core.HResult!void {
        const _c = self.vtable.CopySelectedToClipboard(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PasteFromClipboard(self: *@This(), position: Point) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.PasteFromClipboard(@ptrCast(self), position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanPasteFromClipboard(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanPasteFromClipboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadAsync(self: *@This(), inputStream: *IInputStream) core.HResult!*IAsyncActionWithProgress(u64) {
        var _r: *IAsyncActionWithProgress(u64) = undefined;
        const _c = self.vtable.LoadAsync(@ptrCast(self), inputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var _r: *IAsyncOperationWithProgress(u32,u32) = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), outputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateRecognitionResults(self: *@This(), recognitionResults: *IVectorView(InkRecognitionResult)) core.HResult!void {
        const _c = self.vtable.UpdateRecognitionResults(@ptrCast(self), recognitionResults);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        var _r: *IVectorView(InkStroke) = undefined;
        const _c = self.vtable.GetStrokes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRecognitionResults(self: *@This()) core.HResult!*IVectorView(InkRecognitionResult) {
        var _r: *IVectorView(InkRecognitionResult) = undefined;
        const _c = self.vtable.GetRecognitionResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22accbc6-faa9-4f14-b68c-f6cee670ae16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BoundingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        AddStroke: *const fn(self: *anyopaque, stroke: *InkStroke) callconv(.winapi) HRESULT,
        DeleteSelected: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        MoveSelected: *const fn(self: *anyopaque, translation: Point, _r: *Rect) callconv(.winapi) HRESULT,
        SelectWithPolyLine: *const fn(self: *anyopaque, polyline: *IIterable(Point), _r: *Rect) callconv(.winapi) HRESULT,
        SelectWithLine: *const fn(self: *anyopaque, from: Point, to: Point, _r: *Rect) callconv(.winapi) HRESULT,
        CopySelectedToClipboard: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PasteFromClipboard: *const fn(self: *anyopaque, position: Point, _r: *Rect) callconv(.winapi) HRESULT,
        CanPasteFromClipboard: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        LoadAsync: *const fn(self: *anyopaque, inputStream: *IInputStream, _r: **IAsyncActionWithProgress(u64)) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, outputStream: *IOutputStream, _r: **IAsyncOperationWithProgress(u32,u32)) callconv(.winapi) HRESULT,
        UpdateRecognitionResults: *const fn(self: *anyopaque, recognitionResults: *IVectorView(InkRecognitionResult)) callconv(.winapi) HRESULT,
        GetStrokes: *const fn(self: *anyopaque, _r: **IVectorView(InkStroke)) callconv(.winapi) HRESULT,
        GetRecognitionResults: *const fn(self: *anyopaque, _r: **IVectorView(InkRecognitionResult)) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeContainer2 = extern struct {
    vtable: *const VTable,
    pub fn AddStrokes(self: *@This(), strokes: *IIterable(InkStroke)) core.HResult!void {
        const _c = self.vtable.AddStrokes(@ptrCast(self), strokes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeContainer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8901d364-da36-4bcf-9e5c-d195825995b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddStrokes: *const fn(self: *anyopaque, strokes: *IIterable(InkStroke)) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeContainer3 = extern struct {
    vtable: *const VTable,
    pub fn SaveAsync(self: *@This(), outputStream: *IOutputStream, inkPersistenceFormat: InkPersistenceFormat) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var _r: *IAsyncOperationWithProgress(u32,u32) = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), outputStream, inkPersistenceFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStrokeById(self: *@This(), id: u32) core.HResult!*InkStroke {
        var _r: *InkStroke = undefined;
        const _c = self.vtable.GetStrokeById(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeContainer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d07bea5-baea-4c82-a719-7b83da1067d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, outputStream: *IOutputStream, inkPersistenceFormat: InkPersistenceFormat, _r: **IAsyncOperationWithProgress(u32,u32)) callconv(.winapi) HRESULT,
        GetStrokeById: *const fn(self: *anyopaque, id: u32, _r: **InkStroke) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeInput = extern struct {
    vtable: *const VTable,
    pub fn addStrokeStarted(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StrokeStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStrokeStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StrokeStarted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStrokeContinued(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StrokeContinued(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStrokeContinued(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StrokeContinued(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStrokeEnded(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StrokeEnded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStrokeEnded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StrokeEnded(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStrokeCanceled(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StrokeCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStrokeCanceled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StrokeCanceled(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        var _r: *InkPresenter = undefined;
        const _c = self.vtable.get_InkPresenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf2ffe7b-5e10-43c6-a080-88f26e1dc67d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_StrokeStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StrokeStarted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StrokeContinued: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StrokeContinued: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StrokeEnded: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StrokeEnded: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StrokeCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StrokeCanceled: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_InkPresenter: *const fn(self: *anyopaque, _r: **InkPresenter) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokeRenderingSegment = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBezierControlPoint1(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_BezierControlPoint1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBezierControlPoint2(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_BezierControlPoint2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPressure(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiltX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TiltX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiltY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TiltY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTwist(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Twist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokeRenderingSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68510f1f-88e3-477a-a2fa-569f5f1f9bd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_BezierControlPoint1: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_BezierControlPoint2: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_TiltX: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_TiltY: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Twist: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokesCollectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        var _r: *IVectorView(InkStroke) = undefined;
        const _c = self.vtable.get_Strokes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokesCollectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4f3f229-1938-495c-b4d9-6de4b08d4811";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Strokes: *const fn(self: *anyopaque, _r: **IVectorView(InkStroke)) callconv(.winapi) HRESULT,
    };
};
pub const IInkStrokesErasedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        var _r: *IVectorView(InkStroke) = undefined;
        const _c = self.vtable.get_Strokes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkStrokesErasedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4216a22-1503-4ebf-8ff5-2de84584a8aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Strokes: *const fn(self: *anyopaque, _r: **IVectorView(InkStroke)) callconv(.winapi) HRESULT,
    };
};
pub const IInkSynchronizer = extern struct {
    vtable: *const VTable,
    pub fn BeginDry(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        var _r: *IVectorView(InkStroke) = undefined;
        const _c = self.vtable.BeginDry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EndDry(self: *@This()) core.HResult!void {
        const _c = self.vtable.EndDry(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkSynchronizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b9ea160-ae9b-45f9-8407-4b493b163661";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BeginDry: *const fn(self: *anyopaque, _r: **IVectorView(InkStroke)) callconv(.winapi) HRESULT,
        EndDry: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IInkUnprocessedInput = extern struct {
    vtable: *const VTable,
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerEntered(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerHovered(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerHovered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerHovered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerHovered(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerExited(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerMoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerReleased(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPointerLost(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PointerLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePointerLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PointerLost(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        var _r: *InkPresenter = undefined;
        const _c = self.vtable.get_InkPresenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IInkUnprocessedInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db4445e0-8398-4921-ac3b-ab978c5ba256";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PointerEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerEntered: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerHovered: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerHovered: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerExited: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerMoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerMoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerReleased: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PointerLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PointerLost: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_InkPresenter: *const fn(self: *anyopaque, _r: **InkPresenter) callconv(.winapi) HRESULT,
    };
};
pub const IPenAndInkSettings = extern struct {
    vtable: *const VTable,
    pub fn getIsHandwritingDirectlyIntoTextFieldEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHandwritingDirectlyIntoTextFieldEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPenHandedness(self: *@This()) core.HResult!PenHandedness {
        var _r: PenHandedness = undefined;
        const _c = self.vtable.get_PenHandedness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandwritingLineHeight(self: *@This()) core.HResult!HandwritingLineHeight {
        var _r: HandwritingLineHeight = undefined;
        const _c = self.vtable.get_HandwritingLineHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FontFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserConsentsToHandwritingTelemetryCollection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UserConsentsToHandwritingTelemetryCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTouchHandwritingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTouchHandwritingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IPenAndInkSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc2ceb8f-0066-44a8-bb7a-b839b3deb8f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsHandwritingDirectlyIntoTextFieldEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PenHandedness: *const fn(self: *anyopaque, _r: *PenHandedness) callconv(.winapi) HRESULT,
        get_HandwritingLineHeight: *const fn(self: *anyopaque, _r: *HandwritingLineHeight) callconv(.winapi) HRESULT,
        get_FontFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserConsentsToHandwritingTelemetryCollection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTouchHandwritingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPenAndInkSettings2 = extern struct {
    vtable: *const VTable,
    pub fn SetPenHandedness(self: *@This(), value: PenHandedness) core.HResult!void {
        const _c = self.vtable.SetPenHandedness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IPenAndInkSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3262da53-1f44-55e2-9929-ebf77e5481b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetPenHandedness: *const fn(self: *anyopaque, value: PenHandedness) callconv(.winapi) HRESULT,
    };
};
pub const IPenAndInkSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*PenAndInkSettings {
        var _r: *PenAndInkSettings = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.IPenAndInkSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed6dd036-5708-5c3c-96db-f2f552eab641";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **PenAndInkSettings) callconv(.winapi) HRESULT,
    };
};
pub const InkDrawingAttributes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getPenTip(self: *@This()) core.HResult!PenTipShape {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.getPenTip();
    }
    pub fn putPenTip(self: *@This(), value: PenTipShape) core.HResult!void {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.putPenTip(value);
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: Size) core.HResult!void {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn getIgnorePressure(self: *@This()) core.HResult!bool {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.getIgnorePressure();
    }
    pub fn putIgnorePressure(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.putIgnorePressure(value);
    }
    pub fn getFitToCurve(self: *@This()) core.HResult!bool {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.getFitToCurve();
    }
    pub fn putFitToCurve(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkDrawingAttributes = @ptrCast(self);
        return try this.putFitToCurve(value);
    }
    pub fn getPenTipTransform(self: *@This()) core.HResult!Matrix3x2 {
        var this: ?*IInkDrawingAttributes2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPenTipTransform();
    }
    pub fn putPenTipTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        var this: ?*IInkDrawingAttributes2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPenTipTransform(value);
    }
    pub fn getDrawAsHighlighter(self: *@This()) core.HResult!bool {
        var this: ?*IInkDrawingAttributes2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDrawAsHighlighter();
    }
    pub fn putDrawAsHighlighter(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkDrawingAttributes2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDrawAsHighlighter(value);
    }
    pub fn getKind(self: *@This()) core.HResult!InkDrawingAttributesKind {
        var this: ?*IInkDrawingAttributes3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPencilProperties(self: *@This()) core.HResult!*InkDrawingAttributesPencilProperties {
        var this: ?*IInkDrawingAttributes3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPencilProperties();
    }
    pub fn getIgnoreTilt(self: *@This()) core.HResult!bool {
        var this: ?*IInkDrawingAttributes4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIgnoreTilt();
    }
    pub fn putIgnoreTilt(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkDrawingAttributes4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIgnoreTilt(value);
    }
    pub fn getModelerAttributes(self: *@This()) core.HResult!*InkModelerAttributes {
        var this: ?*IInkDrawingAttributes5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkDrawingAttributes5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModelerAttributes();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInkDrawingAttributes.IID)));
    }
    pub fn CreateForPencil() core.HResult!*InkDrawingAttributes {
        const factory = @This().IInkDrawingAttributesStaticsCache.get();
        return try factory.CreateForPencil();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkDrawingAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkDrawingAttributes.GUID;
    pub const IID: Guid = IInkDrawingAttributes.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkDrawingAttributes.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IInkDrawingAttributesStaticsCache: FactoryCache(IInkDrawingAttributesStatics, RUNTIME_NAME) = .{};
};
pub const InkDrawingAttributesKind = enum(i32) {
    Default = 0,
    Pencil = 1,
};
pub const InkDrawingAttributesPencilProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        const this: *IInkDrawingAttributesPencilProperties = @ptrCast(self);
        return try this.getOpacity();
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IInkDrawingAttributesPencilProperties = @ptrCast(self);
        return try this.putOpacity(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkDrawingAttributesPencilProperties.GUID;
    pub const IID: Guid = IInkDrawingAttributesPencilProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkDrawingAttributesPencilProperties.SIGNATURE);
};
pub const InkHighContrastAdjustment = enum(i32) {
    UseSystemColorsWhenNecessary = 0,
    UseSystemColors = 1,
    UseOriginalColors = 2,
};
pub const InkInputConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsPrimaryBarrelButtonInputEnabled(self: *@This()) core.HResult!bool {
        const this: *IInkInputConfiguration = @ptrCast(self);
        return try this.getIsPrimaryBarrelButtonInputEnabled();
    }
    pub fn putIsPrimaryBarrelButtonInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkInputConfiguration = @ptrCast(self);
        return try this.putIsPrimaryBarrelButtonInputEnabled(value);
    }
    pub fn getIsEraserInputEnabled(self: *@This()) core.HResult!bool {
        const this: *IInkInputConfiguration = @ptrCast(self);
        return try this.getIsEraserInputEnabled();
    }
    pub fn putIsEraserInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkInputConfiguration = @ptrCast(self);
        return try this.putIsEraserInputEnabled(value);
    }
    pub fn getIsPenHapticFeedbackEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IInkInputConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkInputConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPenHapticFeedbackEnabled();
    }
    pub fn putIsPenHapticFeedbackEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkInputConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkInputConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsPenHapticFeedbackEnabled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkInputConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkInputConfiguration.GUID;
    pub const IID: Guid = IInkInputConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkInputConfiguration.SIGNATURE);
};
pub const InkInputProcessingConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!InkInputProcessingMode {
        const this: *IInkInputProcessingConfiguration = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: InkInputProcessingMode) core.HResult!void {
        const this: *IInkInputProcessingConfiguration = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getRightDragAction(self: *@This()) core.HResult!InkInputRightDragAction {
        const this: *IInkInputProcessingConfiguration = @ptrCast(self);
        return try this.getRightDragAction();
    }
    pub fn putRightDragAction(self: *@This(), value: InkInputRightDragAction) core.HResult!void {
        const this: *IInkInputProcessingConfiguration = @ptrCast(self);
        return try this.putRightDragAction(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkInputProcessingConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkInputProcessingConfiguration.GUID;
    pub const IID: Guid = IInkInputProcessingConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkInputProcessingConfiguration.SIGNATURE);
};
pub const InkInputProcessingMode = enum(i32) {
    None = 0,
    Inking = 1,
    Erasing = 2,
};
pub const InkInputRightDragAction = enum(i32) {
    LeaveUnprocessed = 0,
    AllowProcessing = 1,
};
pub const InkManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!InkManipulationMode {
        const this: *IInkManager = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: InkManipulationMode) core.HResult!void {
        const this: *IInkManager = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn ProcessPointerDown(self: *@This(), pointerPoint: *PointerPoint) core.HResult!void {
        const this: *IInkManager = @ptrCast(self);
        return try this.ProcessPointerDown(pointerPoint);
    }
    pub fn ProcessPointerUpdate(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*IInspectable {
        const this: *IInkManager = @ptrCast(self);
        return try this.ProcessPointerUpdate(pointerPoint);
    }
    pub fn ProcessPointerUp(self: *@This(), pointerPoint: *PointerPoint) core.HResult!Rect {
        const this: *IInkManager = @ptrCast(self);
        return try this.ProcessPointerUp(pointerPoint);
    }
    pub fn SetDefaultDrawingAttributes(self: *@This(), drawingAttributes: *InkDrawingAttributes) core.HResult!void {
        const this: *IInkManager = @ptrCast(self);
        return try this.SetDefaultDrawingAttributes(drawingAttributes);
    }
    pub fn RecognizeAsync(self: *@This(), recognitionTarget: InkRecognitionTarget) core.HResult!*IAsyncOperation(IVectorView(InkRecognitionResult)) {
        var this: ?*IInkRecognizerContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkRecognizerContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RecognizeAsync(recognitionTarget);
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn AddStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddStroke(stroke);
    }
    pub fn DeleteSelected(self: *@This()) core.HResult!Rect {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteSelected();
    }
    pub fn MoveSelected(self: *@This(), translation: Point) core.HResult!Rect {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveSelected(translation);
    }
    pub fn SelectWithPolyLine(self: *@This(), polyline: *IIterable(Point)) core.HResult!Rect {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectWithPolyLine(polyline);
    }
    pub fn SelectWithLine(self: *@This(), from: Point, to: Point) core.HResult!Rect {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectWithLine(from, to);
    }
    pub fn CopySelectedToClipboard(self: *@This()) core.HResult!void {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopySelectedToClipboard();
    }
    pub fn PasteFromClipboard(self: *@This(), position: Point) core.HResult!Rect {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PasteFromClipboard(position);
    }
    pub fn CanPasteFromClipboard(self: *@This()) core.HResult!bool {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CanPasteFromClipboard();
    }
    pub fn LoadAsync(self: *@This(), inputStream: *IInputStream) core.HResult!*IAsyncActionWithProgress(u64) {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LoadAsync(inputStream);
    }
    pub fn SaveAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SaveAsync(outputStream);
    }
    pub fn UpdateRecognitionResults(self: *@This(), recognitionResults: *IVectorView(InkRecognitionResult)) core.HResult!void {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateRecognitionResults(recognitionResults);
    }
    pub fn GetStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokes();
    }
    pub fn GetRecognitionResults(self: *@This()) core.HResult!*IVectorView(InkRecognitionResult) {
        var this: ?*IInkStrokeContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRecognitionResults();
    }
    pub fn SetDefaultRecognizer(self: *@This(), recognizer: *InkRecognizer) core.HResult!void {
        var this: ?*IInkRecognizerContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkRecognizerContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDefaultRecognizer(recognizer);
    }
    pub fn RecognizeAsync(self: *@This(), strokeCollection: *InkStrokeContainer, recognitionTarget: InkRecognitionTarget) core.HResult!*IAsyncOperation(IVectorView(InkRecognitionResult)) {
        var this: ?*IInkRecognizerContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkRecognizerContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RecognizeAsync(strokeCollection, recognitionTarget);
    }
    pub fn GetRecognizers(self: *@This()) core.HResult!*IVectorView(InkRecognizer) {
        var this: ?*IInkRecognizerContainer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkRecognizerContainer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRecognizers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInkManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkManager.GUID;
    pub const IID: Guid = IInkManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InkManipulationMode = enum(i32) {
    Inking = 0,
    Erasing = 1,
    Selecting = 2,
};
pub const InkModelerAttributes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPredictionTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IInkModelerAttributes = @ptrCast(self);
        return try this.getPredictionTime();
    }
    pub fn putPredictionTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IInkModelerAttributes = @ptrCast(self);
        return try this.putPredictionTime(value);
    }
    pub fn getScalingFactor(self: *@This()) core.HResult!f32 {
        const this: *IInkModelerAttributes = @ptrCast(self);
        return try this.getScalingFactor();
    }
    pub fn putScalingFactor(self: *@This(), value: f32) core.HResult!void {
        const this: *IInkModelerAttributes = @ptrCast(self);
        return try this.putScalingFactor(value);
    }
    pub fn getUseVelocityBasedPressure(self: *@This()) core.HResult!bool {
        var this: ?*IInkModelerAttributes2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkModelerAttributes2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseVelocityBasedPressure();
    }
    pub fn putUseVelocityBasedPressure(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkModelerAttributes2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkModelerAttributes2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseVelocityBasedPressure(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkModelerAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkModelerAttributes.GUID;
    pub const IID: Guid = IInkModelerAttributes.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkModelerAttributes.SIGNATURE);
};
pub const InkPersistenceFormat = enum(i32) {
    GifWithEmbeddedIsf = 0,
    Isf = 1,
};
pub const InkPoint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IInkPoint = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getPressure(self: *@This()) core.HResult!f32 {
        const this: *IInkPoint = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn getTiltX(self: *@This()) core.HResult!f32 {
        var this: ?*IInkPoint2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPoint2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTiltX();
    }
    pub fn getTiltY(self: *@This()) core.HResult!f32 {
        var this: ?*IInkPoint2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPoint2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTiltY();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var this: ?*IInkPoint2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPoint2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInkPoint(position: Point, pressure: f32) core.HResult!*InkPoint {
        const factory = @This().IInkPointFactoryCache.get();
        return try factory.CreateInkPoint(position, pressure);
    }
    pub fn CreateInkPointWithTiltAndTimestamp(position: Point, pressure: f32, tiltX: f32, tiltY: f32, timestamp: u64) core.HResult!*InkPoint {
        const factory = @This().IInkPointFactory2Cache.get();
        return try factory.CreateInkPointWithTiltAndTimestamp(position, pressure, tiltX, tiltY, timestamp);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkPoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkPoint.GUID;
    pub const IID: Guid = IInkPoint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkPoint.SIGNATURE);
    var _IInkPointFactoryCache: FactoryCache(IInkPointFactory, RUNTIME_NAME) = .{};
    var _IInkPointFactory2Cache: FactoryCache(IInkPointFactory2, RUNTIME_NAME) = .{};
};
pub const InkPresenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsInputEnabled(self: *@This()) core.HResult!bool {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.getIsInputEnabled();
    }
    pub fn putIsInputEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.putIsInputEnabled(value);
    }
    pub fn getInputDeviceTypes(self: *@This()) core.HResult!CoreInputDeviceTypes {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.getInputDeviceTypes();
    }
    pub fn putInputDeviceTypes(self: *@This(), value: CoreInputDeviceTypes) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.putInputDeviceTypes(value);
    }
    pub fn getUnprocessedInput(self: *@This()) core.HResult!*InkUnprocessedInput {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.getUnprocessedInput();
    }
    pub fn getStrokeInput(self: *@This()) core.HResult!*InkStrokeInput {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.getStrokeInput();
    }
    pub fn getInputProcessingConfiguration(self: *@This()) core.HResult!*InkInputProcessingConfiguration {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.getInputProcessingConfiguration();
    }
    pub fn getStrokeContainer(self: *@This()) core.HResult!*InkStrokeContainer {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.getStrokeContainer();
    }
    pub fn putStrokeContainer(self: *@This(), value: *InkStrokeContainer) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.putStrokeContainer(value);
    }
    pub fn CopyDefaultDrawingAttributes(self: *@This()) core.HResult!*InkDrawingAttributes {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.CopyDefaultDrawingAttributes();
    }
    pub fn UpdateDefaultDrawingAttributes(self: *@This(), value: *InkDrawingAttributes) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.UpdateDefaultDrawingAttributes(value);
    }
    pub fn ActivateCustomDrying(self: *@This()) core.HResult!*InkSynchronizer {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.ActivateCustomDrying();
    }
    pub fn SetPredefinedConfiguration(self: *@This(), value: InkPresenterPredefinedConfiguration) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.SetPredefinedConfiguration(value);
    }
    pub fn addStrokesCollected(self: *@This(), handler: *TypedEventHandler(InkPresenter,InkStrokesCollectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.addStrokesCollected(handler);
    }
    pub fn removeStrokesCollected(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.removeStrokesCollected(cookie);
    }
    pub fn addStrokesErased(self: *@This(), handler: *TypedEventHandler(InkPresenter,InkStrokesErasedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.addStrokesErased(handler);
    }
    pub fn removeStrokesErased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkPresenter = @ptrCast(self);
        return try this.removeStrokesErased(cookie);
    }
    pub fn getHighContrastAdjustment(self: *@This()) core.HResult!InkHighContrastAdjustment {
        var this: ?*IInkPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHighContrastAdjustment();
    }
    pub fn putHighContrastAdjustment(self: *@This(), value: InkHighContrastAdjustment) core.HResult!void {
        var this: ?*IInkPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHighContrastAdjustment(value);
    }
    pub fn getInputConfiguration(self: *@This()) core.HResult!*InkInputConfiguration {
        var this: ?*IInkPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInputConfiguration();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkPresenter.GUID;
    pub const IID: Guid = IInkPresenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkPresenter.SIGNATURE);
};
pub const InkPresenterPredefinedConfiguration = enum(i32) {
    SimpleSinglePointer = 0,
    SimpleMultiplePointer = 1,
};
pub const InkPresenterProtractor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAreTickMarksVisible(self: *@This()) core.HResult!bool {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getAreTickMarksVisible();
    }
    pub fn putAreTickMarksVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putAreTickMarksVisible(value);
    }
    pub fn getAreRaysVisible(self: *@This()) core.HResult!bool {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getAreRaysVisible();
    }
    pub fn putAreRaysVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putAreRaysVisible(value);
    }
    pub fn getIsCenterMarkerVisible(self: *@This()) core.HResult!bool {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getIsCenterMarkerVisible();
    }
    pub fn putIsCenterMarkerVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putIsCenterMarkerVisible(value);
    }
    pub fn getIsAngleReadoutVisible(self: *@This()) core.HResult!bool {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getIsAngleReadoutVisible();
    }
    pub fn putIsAngleReadoutVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putIsAngleReadoutVisible(value);
    }
    pub fn getIsResizable(self: *@This()) core.HResult!bool {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getIsResizable();
    }
    pub fn putIsResizable(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putIsResizable(value);
    }
    pub fn getRadius(self: *@This()) core.HResult!f64 {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getRadius();
    }
    pub fn putRadius(self: *@This(), value: f64) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putRadius(value);
    }
    pub fn getAccentColor(self: *@This()) core.HResult!Color {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.getAccentColor();
    }
    pub fn putAccentColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IInkPresenterProtractor = @ptrCast(self);
        return try this.putAccentColor(value);
    }
    pub fn getKind(self: *@This()) core.HResult!InkPresenterStencilKind {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsVisible();
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsVisible(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBackgroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBackgroundColor(value);
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getForegroundColor();
    }
    pub fn putForegroundColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putForegroundColor(value);
    }
    pub fn getTransform(self: *@This()) core.HResult!Matrix3x2 {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransform();
    }
    pub fn putTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransform(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(inkPresenter: *InkPresenter) core.HResult!*InkPresenterProtractor {
        const factory = @This().IInkPresenterProtractorFactoryCache.get();
        return try factory.Create(inkPresenter);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkPresenterProtractor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkPresenterProtractor.GUID;
    pub const IID: Guid = IInkPresenterProtractor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkPresenterProtractor.SIGNATURE);
    var _IInkPresenterProtractorFactoryCache: FactoryCache(IInkPresenterProtractorFactory, RUNTIME_NAME) = .{};
};
pub const InkPresenterRuler = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLength(self: *@This()) core.HResult!f64 {
        const this: *IInkPresenterRuler = @ptrCast(self);
        return try this.getLength();
    }
    pub fn putLength(self: *@This(), value: f64) core.HResult!void {
        const this: *IInkPresenterRuler = @ptrCast(self);
        return try this.putLength(value);
    }
    pub fn getWidth(self: *@This()) core.HResult!f64 {
        const this: *IInkPresenterRuler = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn putWidth(self: *@This(), value: f64) core.HResult!void {
        const this: *IInkPresenterRuler = @ptrCast(self);
        return try this.putWidth(value);
    }
    pub fn getKind(self: *@This()) core.HResult!InkPresenterStencilKind {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsVisible();
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsVisible(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBackgroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBackgroundColor(value);
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getForegroundColor();
    }
    pub fn putForegroundColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putForegroundColor(value);
    }
    pub fn getTransform(self: *@This()) core.HResult!Matrix3x2 {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransform();
    }
    pub fn putTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        var this: ?*IInkPresenterStencil = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterStencil.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransform(value);
    }
    pub fn getAreTickMarksVisible(self: *@This()) core.HResult!bool {
        var this: ?*IInkPresenterRuler2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterRuler2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreTickMarksVisible();
    }
    pub fn putAreTickMarksVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkPresenterRuler2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterRuler2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAreTickMarksVisible(value);
    }
    pub fn getIsCompassVisible(self: *@This()) core.HResult!bool {
        var this: ?*IInkPresenterRuler2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterRuler2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCompassVisible();
    }
    pub fn putIsCompassVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInkPresenterRuler2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkPresenterRuler2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsCompassVisible(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(inkPresenter: *InkPresenter) core.HResult!*InkPresenterRuler {
        const factory = @This().IInkPresenterRulerFactoryCache.get();
        return try factory.Create(inkPresenter);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkPresenterRuler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkPresenterRuler.GUID;
    pub const IID: Guid = IInkPresenterRuler.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkPresenterRuler.SIGNATURE);
    var _IInkPresenterRulerFactoryCache: FactoryCache(IInkPresenterRulerFactory, RUNTIME_NAME) = .{};
};
pub const InkPresenterStencilKind = enum(i32) {
    Other = 0,
    Ruler = 1,
    Protractor = 2,
};
pub const InkRecognitionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        const this: *IInkRecognitionResult = @ptrCast(self);
        return try this.getBoundingRect();
    }
    pub fn GetTextCandidates(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IInkRecognitionResult = @ptrCast(self);
        return try this.GetTextCandidates();
    }
    pub fn GetStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        const this: *IInkRecognitionResult = @ptrCast(self);
        return try this.GetStrokes();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkRecognitionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkRecognitionResult.GUID;
    pub const IID: Guid = IInkRecognitionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkRecognitionResult.SIGNATURE);
};
pub const InkRecognitionTarget = enum(i32) {
    All = 0,
    Selected = 1,
    Recent = 2,
};
pub const InkRecognizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IInkRecognizer = @ptrCast(self);
        return try this.getName();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkRecognizer.GUID;
    pub const IID: Guid = IInkRecognizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkRecognizer.SIGNATURE);
};
pub const InkRecognizerContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetDefaultRecognizer(self: *@This(), recognizer: *InkRecognizer) core.HResult!void {
        const this: *IInkRecognizerContainer = @ptrCast(self);
        return try this.SetDefaultRecognizer(recognizer);
    }
    pub fn RecognizeAsync(self: *@This(), strokeCollection: *InkStrokeContainer, recognitionTarget: InkRecognitionTarget) core.HResult!*IAsyncOperation(IVectorView(InkRecognitionResult)) {
        const this: *IInkRecognizerContainer = @ptrCast(self);
        return try this.RecognizeAsync(strokeCollection, recognitionTarget);
    }
    pub fn GetRecognizers(self: *@This()) core.HResult!*IVectorView(InkRecognizer) {
        const this: *IInkRecognizerContainer = @ptrCast(self);
        return try this.GetRecognizers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInkRecognizerContainer.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkRecognizerContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkRecognizerContainer.GUID;
    pub const IID: Guid = IInkRecognizerContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkRecognizerContainer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InkStroke = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDrawingAttributes(self: *@This()) core.HResult!*InkDrawingAttributes {
        const this: *IInkStroke = @ptrCast(self);
        return try this.getDrawingAttributes();
    }
    pub fn putDrawingAttributes(self: *@This(), value: *InkDrawingAttributes) core.HResult!void {
        const this: *IInkStroke = @ptrCast(self);
        return try this.putDrawingAttributes(value);
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        const this: *IInkStroke = @ptrCast(self);
        return try this.getBoundingRect();
    }
    pub fn getSelected(self: *@This()) core.HResult!bool {
        const this: *IInkStroke = @ptrCast(self);
        return try this.getSelected();
    }
    pub fn putSelected(self: *@This(), value: bool) core.HResult!void {
        const this: *IInkStroke = @ptrCast(self);
        return try this.putSelected(value);
    }
    pub fn getRecognized(self: *@This()) core.HResult!bool {
        const this: *IInkStroke = @ptrCast(self);
        return try this.getRecognized();
    }
    pub fn GetRenderingSegments(self: *@This()) core.HResult!*IVectorView(InkStrokeRenderingSegment) {
        const this: *IInkStroke = @ptrCast(self);
        return try this.GetRenderingSegments();
    }
    pub fn Clone(self: *@This()) core.HResult!*InkStroke {
        const this: *IInkStroke = @ptrCast(self);
        return try this.Clone();
    }
    pub fn getPointTransform(self: *@This()) core.HResult!Matrix3x2 {
        var this: ?*IInkStroke2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointTransform();
    }
    pub fn putPointTransform(self: *@This(), value: Matrix3x2) core.HResult!void {
        var this: ?*IInkStroke2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointTransform(value);
    }
    pub fn GetInkPoints(self: *@This()) core.HResult!*IVectorView(InkPoint) {
        var this: ?*IInkStroke2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetInkPoints();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkStroke3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStrokeStartedTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IInkStroke3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStrokeStartedTime();
    }
    pub fn putStrokeStartedTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        var this: ?*IInkStroke3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStrokeStartedTime(value);
    }
    pub fn getStrokeDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IInkStroke3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStrokeDuration();
    }
    pub fn putStrokeDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IInkStroke3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStrokeDuration(value);
    }
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkStroke4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStroke4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerId();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStroke";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStroke.GUID;
    pub const IID: Guid = IInkStroke.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStroke.SIGNATURE);
};
pub const InkStrokeBuilder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn BeginStroke(self: *@This(), pointerPoint: *PointerPoint) core.HResult!void {
        const this: *IInkStrokeBuilder = @ptrCast(self);
        return try this.BeginStroke(pointerPoint);
    }
    pub fn AppendToStroke(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*PointerPoint {
        const this: *IInkStrokeBuilder = @ptrCast(self);
        return try this.AppendToStroke(pointerPoint);
    }
    pub fn EndStroke(self: *@This(), pointerPoint: *PointerPoint) core.HResult!*InkStroke {
        const this: *IInkStrokeBuilder = @ptrCast(self);
        return try this.EndStroke(pointerPoint);
    }
    pub fn CreateStroke(self: *@This(), points: *IIterable(Point)) core.HResult!*InkStroke {
        const this: *IInkStrokeBuilder = @ptrCast(self);
        return try this.CreateStroke(points);
    }
    pub fn SetDefaultDrawingAttributes(self: *@This(), drawingAttributes: *InkDrawingAttributes) core.HResult!void {
        const this: *IInkStrokeBuilder = @ptrCast(self);
        return try this.SetDefaultDrawingAttributes(drawingAttributes);
    }
    pub fn CreateStrokeFromInkPoints(self: *@This(), inkPoints: *IIterable(InkPoint), transform: Matrix3x2) core.HResult!*InkStroke {
        var this: ?*IInkStrokeBuilder3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeBuilder3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateStrokeFromInkPoints(inkPoints, transform);
    }
    pub fn CreateStrokeFromInkPoints(self: *@This(), inkPoints: *IIterable(InkPoint), transform: Matrix3x2, strokeStartedTime: *IReference(DateTime), strokeDuration: *IReference(TimeSpan)) core.HResult!*InkStroke {
        var this: ?*IInkStrokeBuilder3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeBuilder3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateStrokeFromInkPoints(inkPoints, transform, strokeStartedTime, strokeDuration);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInkStrokeBuilder.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStrokeBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStrokeBuilder.GUID;
    pub const IID: Guid = IInkStrokeBuilder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStrokeBuilder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InkStrokeContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.getBoundingRect();
    }
    pub fn AddStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.AddStroke(stroke);
    }
    pub fn DeleteSelected(self: *@This()) core.HResult!Rect {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.DeleteSelected();
    }
    pub fn MoveSelected(self: *@This(), translation: Point) core.HResult!Rect {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.MoveSelected(translation);
    }
    pub fn SelectWithPolyLine(self: *@This(), polyline: *IIterable(Point)) core.HResult!Rect {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.SelectWithPolyLine(polyline);
    }
    pub fn SelectWithLine(self: *@This(), from: Point, to: Point) core.HResult!Rect {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.SelectWithLine(from, to);
    }
    pub fn CopySelectedToClipboard(self: *@This()) core.HResult!void {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.CopySelectedToClipboard();
    }
    pub fn PasteFromClipboard(self: *@This(), position: Point) core.HResult!Rect {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.PasteFromClipboard(position);
    }
    pub fn CanPasteFromClipboard(self: *@This()) core.HResult!bool {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.CanPasteFromClipboard();
    }
    pub fn LoadAsync(self: *@This(), inputStream: *IInputStream) core.HResult!*IAsyncActionWithProgress(u64) {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.LoadAsync(inputStream);
    }
    pub fn SaveAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IInkStrokeContainer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SaveAsync(outputStream);
    }
    pub fn UpdateRecognitionResults(self: *@This(), recognitionResults: *IVectorView(InkRecognitionResult)) core.HResult!void {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.UpdateRecognitionResults(recognitionResults);
    }
    pub fn GetStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.GetStrokes();
    }
    pub fn GetRecognitionResults(self: *@This()) core.HResult!*IVectorView(InkRecognitionResult) {
        const this: *IInkStrokeContainer = @ptrCast(self);
        return try this.GetRecognitionResults();
    }
    pub fn AddStrokes(self: *@This(), strokes: *IIterable(InkStroke)) core.HResult!void {
        var this: ?*IInkStrokeContainer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddStrokes(strokes);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IInkStrokeContainer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn SaveAsync(self: *@This(), outputStream: *IOutputStream, inkPersistenceFormat: InkPersistenceFormat) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IInkStrokeContainer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SaveAsync(outputStream, inkPersistenceFormat);
    }
    pub fn GetStrokeById(self: *@This(), id: u32) core.HResult!*InkStroke {
        var this: ?*IInkStrokeContainer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkStrokeContainer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeById(id);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInkStrokeContainer.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStrokeContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStrokeContainer.GUID;
    pub const IID: Guid = IInkStrokeContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStrokeContainer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InkStrokeInput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addStrokeStarted(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.addStrokeStarted(handler);
    }
    pub fn removeStrokeStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.removeStrokeStarted(cookie);
    }
    pub fn addStrokeContinued(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.addStrokeContinued(handler);
    }
    pub fn removeStrokeContinued(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.removeStrokeContinued(cookie);
    }
    pub fn addStrokeEnded(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.addStrokeEnded(handler);
    }
    pub fn removeStrokeEnded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.removeStrokeEnded(cookie);
    }
    pub fn addStrokeCanceled(self: *@This(), handler: *TypedEventHandler(InkStrokeInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.addStrokeCanceled(handler);
    }
    pub fn removeStrokeCanceled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.removeStrokeCanceled(cookie);
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        const this: *IInkStrokeInput = @ptrCast(self);
        return try this.getInkPresenter();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStrokeInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStrokeInput.GUID;
    pub const IID: Guid = IInkStrokeInput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStrokeInput.SIGNATURE);
};
pub const InkStrokeRenderingSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getBezierControlPoint1(self: *@This()) core.HResult!Point {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getBezierControlPoint1();
    }
    pub fn getBezierControlPoint2(self: *@This()) core.HResult!Point {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getBezierControlPoint2();
    }
    pub fn getPressure(self: *@This()) core.HResult!f32 {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn getTiltX(self: *@This()) core.HResult!f32 {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getTiltX();
    }
    pub fn getTiltY(self: *@This()) core.HResult!f32 {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getTiltY();
    }
    pub fn getTwist(self: *@This()) core.HResult!f32 {
        const this: *IInkStrokeRenderingSegment = @ptrCast(self);
        return try this.getTwist();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStrokeRenderingSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStrokeRenderingSegment.GUID;
    pub const IID: Guid = IInkStrokeRenderingSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStrokeRenderingSegment.SIGNATURE);
};
pub const InkStrokesCollectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        const this: *IInkStrokesCollectedEventArgs = @ptrCast(self);
        return try this.getStrokes();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStrokesCollectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStrokesCollectedEventArgs.GUID;
    pub const IID: Guid = IInkStrokesCollectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStrokesCollectedEventArgs.SIGNATURE);
};
pub const InkStrokesErasedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStrokes(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        const this: *IInkStrokesErasedEventArgs = @ptrCast(self);
        return try this.getStrokes();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkStrokesErasedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkStrokesErasedEventArgs.GUID;
    pub const IID: Guid = IInkStrokesErasedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkStrokesErasedEventArgs.SIGNATURE);
};
pub const InkSynchronizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn BeginDry(self: *@This()) core.HResult!*IVectorView(InkStroke) {
        const this: *IInkSynchronizer = @ptrCast(self);
        return try this.BeginDry();
    }
    pub fn EndDry(self: *@This()) core.HResult!void {
        const this: *IInkSynchronizer = @ptrCast(self);
        return try this.EndDry();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkSynchronizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkSynchronizer.GUID;
    pub const IID: Guid = IInkSynchronizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkSynchronizer.SIGNATURE);
};
pub const InkUnprocessedInput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPointerEntered(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerEntered(handler);
    }
    pub fn removePointerEntered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerEntered(cookie);
    }
    pub fn addPointerHovered(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerHovered(handler);
    }
    pub fn removePointerHovered(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerHovered(cookie);
    }
    pub fn addPointerExited(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerExited(handler);
    }
    pub fn removePointerExited(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerExited(cookie);
    }
    pub fn addPointerPressed(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerPressed(handler);
    }
    pub fn removePointerPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerPressed(cookie);
    }
    pub fn addPointerMoved(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerMoved(handler);
    }
    pub fn removePointerMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerMoved(cookie);
    }
    pub fn addPointerReleased(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerReleased(handler);
    }
    pub fn removePointerReleased(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerReleased(cookie);
    }
    pub fn addPointerLost(self: *@This(), handler: *TypedEventHandler(InkUnprocessedInput,PointerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.addPointerLost(handler);
    }
    pub fn removePointerLost(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.removePointerLost(cookie);
    }
    pub fn getInkPresenter(self: *@This()) core.HResult!*InkPresenter {
        const this: *IInkUnprocessedInput = @ptrCast(self);
        return try this.getInkPresenter();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.InkUnprocessedInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkUnprocessedInput.GUID;
    pub const IID: Guid = IInkUnprocessedInput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkUnprocessedInput.SIGNATURE);
};
pub const PenAndInkSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsHandwritingDirectlyIntoTextFieldEnabled(self: *@This()) core.HResult!bool {
        const this: *IPenAndInkSettings = @ptrCast(self);
        return try this.getIsHandwritingDirectlyIntoTextFieldEnabled();
    }
    pub fn getPenHandedness(self: *@This()) core.HResult!PenHandedness {
        const this: *IPenAndInkSettings = @ptrCast(self);
        return try this.getPenHandedness();
    }
    pub fn getHandwritingLineHeight(self: *@This()) core.HResult!HandwritingLineHeight {
        const this: *IPenAndInkSettings = @ptrCast(self);
        return try this.getHandwritingLineHeight();
    }
    pub fn getFontFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPenAndInkSettings = @ptrCast(self);
        return try this.getFontFamilyName();
    }
    pub fn getUserConsentsToHandwritingTelemetryCollection(self: *@This()) core.HResult!bool {
        const this: *IPenAndInkSettings = @ptrCast(self);
        return try this.getUserConsentsToHandwritingTelemetryCollection();
    }
    pub fn getIsTouchHandwritingEnabled(self: *@This()) core.HResult!bool {
        const this: *IPenAndInkSettings = @ptrCast(self);
        return try this.getIsTouchHandwritingEnabled();
    }
    pub fn SetPenHandedness(self: *@This(), value: PenHandedness) core.HResult!void {
        var this: ?*IPenAndInkSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPenAndInkSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPenHandedness(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*PenAndInkSettings {
        const factory = @This().IPenAndInkSettingsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.PenAndInkSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenAndInkSettings.GUID;
    pub const IID: Guid = IPenAndInkSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenAndInkSettings.SIGNATURE);
    var _IPenAndInkSettingsStaticsCache: FactoryCache(IPenAndInkSettingsStatics, RUNTIME_NAME) = .{};
};
pub const PenHandedness = enum(i32) {
    Right = 0,
    Left = 1,
};
pub const PenTipShape = enum(i32) {
    Circle = 0,
    Rectangle = 1,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const Matrix3x2 = @import("../../Foundation/Numerics.zig").Matrix3x2;
const Size = @import("../../Foundation.zig").Size;
const IAsyncOperationWithProgress = @import("../../Foundation.zig").IAsyncOperationWithProgress;
const IAsyncActionWithProgress = @import("../../Foundation.zig").IAsyncActionWithProgress;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const HRESULT = @import("../../root.zig").HRESULT;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IReference = @import("../../Foundation.zig").IReference;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const Point = @import("../../Foundation.zig").Point;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const PointerEventArgs = @import("../Core.zig").PointerEventArgs;
const PointerPoint = @import("../Input.zig").PointerPoint;
const CoreInputDeviceTypes = @import("../Core.zig").CoreInputDeviceTypes;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const Color = @import("../../UI.zig").Color;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IOutputStream = @import("../../Storage/Streams.zig").IOutputStream;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
pub const Analysis = @import("./Inking/Analysis.zig");
pub const Core = @import("./Inking/Core.zig");
pub const Preview = @import("./Inking/Preview.zig");
