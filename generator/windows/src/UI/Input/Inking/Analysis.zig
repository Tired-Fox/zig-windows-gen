pub const IInkAnalysisInkBullet = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisInkBullet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee049368-6110-4136-95f9-ee809fc20030";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisInkDrawing = extern struct {
    vtable: *const VTable,
    pub fn getDrawingKind(self: *@This()) core.HResult!InkAnalysisDrawingKind {
        var _r: InkAnalysisDrawingKind = undefined;
        const _c = self.vtable.get_DrawingKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenter(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPoints(self: *@This()) core.HResult!*IVectorView(Point) {
        var _r: *IVectorView(Point) = undefined;
        const _c = self.vtable.get_Points(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a85ed1f-1fe4-4e15-898c-8e112377e021";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DrawingKind: *const fn(self: *anyopaque, _r: *InkAnalysisDrawingKind) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Points: *const fn(self: *anyopaque, _r: **IVectorView(Point)) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisInkWord = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextAlternates(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_TextAlternates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisInkWord";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bd228ad-83af-4034-8f3b-f8687dfff436";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TextAlternates: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisLine = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndentLevel(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_IndentLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a06d048d-2b8d-4754-ad5a-d0871193a956";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IndentLevel: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisListItem = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisListItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4e3c23f-c4c3-4c3a-a1a6-9d85547ee586";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisNode = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var _r: InkAnalysisNodeKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var _r: *IVectorView(Point) = undefined;
        const _c = self.vtable.get_RotatedBoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var _r: *IVectorView(IInkAnalysisNode) = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var _r: *IInkAnalysisNode = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.GetStrokeIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30831f05-5f64-4a2c-ba37-4f4887879574";
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
        get_Kind: *const fn(self: *anyopaque, _r: *InkAnalysisNodeKind) callconv(.winapi) HRESULT,
        get_BoundingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_RotatedBoundingRect: *const fn(self: *anyopaque, _r: **IVectorView(Point)) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **IVectorView(IInkAnalysisNode)) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **IInkAnalysisNode) callconv(.winapi) HRESULT,
        GetStrokeIds: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisParagraph = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisParagraph";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9ad045c-0cd1-4dd4-a68b-eb1f12b3d727";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!InkAnalysisStatus {
        var _r: InkAnalysisStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8948ba79-a243-4aa3-a294-1f98bd0ff580";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *InkAnalysisStatus) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisRoot = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindNodes(self: *@This(), nodeKind: InkAnalysisNodeKind) core.HResult!*IVectorView(IInkAnalysisNode) {
        var _r: *IVectorView(IInkAnalysisNode) = undefined;
        const _c = self.vtable.FindNodes(@ptrCast(self), nodeKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fb6a3c4-2fde-4061-8502-a90f32545b84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FindNodes: *const fn(self: *anyopaque, nodeKind: InkAnalysisNodeKind, _r: **IVectorView(IInkAnalysisNode)) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalysisWritingRegion = extern struct {
    vtable: *const VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RecognizedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalysisWritingRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd6d6231-bd16-4663-b5ae-941d3043ef5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecognizedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalyzer = extern struct {
    vtable: *const VTable,
    pub fn getAnalysisRoot(self: *@This()) core.HResult!*InkAnalysisRoot {
        var _r: *InkAnalysisRoot = undefined;
        const _c = self.vtable.get_AnalysisRoot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAnalyzing(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnalyzing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddDataForStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        const _c = self.vtable.AddDataForStroke(@ptrCast(self), stroke);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDataForStrokes(self: *@This(), strokes: *IIterable(InkStroke)) core.HResult!void {
        const _c = self.vtable.AddDataForStrokes(@ptrCast(self), strokes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearDataForAllStrokes(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearDataForAllStrokes(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveDataForStroke(self: *@This(), strokeId: u32) core.HResult!void {
        const _c = self.vtable.RemoveDataForStroke(@ptrCast(self), strokeId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveDataForStrokes(self: *@This(), strokeIds: *IIterable(u32)) core.HResult!void {
        const _c = self.vtable.RemoveDataForStrokes(@ptrCast(self), strokeIds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReplaceDataForStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        const _c = self.vtable.ReplaceDataForStroke(@ptrCast(self), stroke);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStrokeDataKind(self: *@This(), strokeId: u32, strokeKind: InkAnalysisStrokeKind) core.HResult!void {
        const _c = self.vtable.SetStrokeDataKind(@ptrCast(self), strokeId, strokeKind);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AnalyzeAsync(self: *@This()) core.HResult!*IAsyncOperation(InkAnalysisResult) {
        var _r: *IAsyncOperation(InkAnalysisResult) = undefined;
        const _c = self.vtable.AnalyzeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalyzer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f12b8f95-0866-4dc5-8c77-f88614dfe38c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnalysisRoot: *const fn(self: *anyopaque, _r: **InkAnalysisRoot) callconv(.winapi) HRESULT,
        get_IsAnalyzing: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        AddDataForStroke: *const fn(self: *anyopaque, stroke: *InkStroke) callconv(.winapi) HRESULT,
        AddDataForStrokes: *const fn(self: *anyopaque, strokes: *IIterable(InkStroke)) callconv(.winapi) HRESULT,
        ClearDataForAllStrokes: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RemoveDataForStroke: *const fn(self: *anyopaque, strokeId: u32) callconv(.winapi) HRESULT,
        RemoveDataForStrokes: *const fn(self: *anyopaque, strokeIds: *IIterable(u32)) callconv(.winapi) HRESULT,
        ReplaceDataForStroke: *const fn(self: *anyopaque, stroke: *InkStroke) callconv(.winapi) HRESULT,
        SetStrokeDataKind: *const fn(self: *anyopaque, strokeId: u32, strokeKind: InkAnalysisStrokeKind) callconv(.winapi) HRESULT,
        AnalyzeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(InkAnalysisResult)) callconv(.winapi) HRESULT,
    };
};
pub const IInkAnalyzerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateAnalyzer(self: *@This()) core.HResult!*InkAnalyzer {
        var _r: *InkAnalyzer = undefined;
        const _c = self.vtable.CreateAnalyzer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.IInkAnalyzerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29138686-1963-49d8-9589-e14384c769e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAnalyzer: *const fn(self: *anyopaque, _r: **InkAnalyzer) callconv(.winapi) HRESULT,
    };
};
pub const InkAnalysisDrawingKind = enum(i32) {
    Drawing = 0,
    Circle = 1,
    Ellipse = 2,
    Triangle = 3,
    IsoscelesTriangle = 4,
    EquilateralTriangle = 5,
    RightTriangle = 6,
    Quadrilateral = 7,
    Rectangle = 8,
    Square = 9,
    Diamond = 10,
    Trapezoid = 11,
    Parallelogram = 12,
    Pentagon = 13,
    Hexagon = 14,
};
pub const InkAnalysisInkBullet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisInkBullet = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisInkBullet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisInkBullet.GUID;
    pub const IID: Guid = IInkAnalysisInkBullet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisInkBullet.SIGNATURE);
};
pub const InkAnalysisInkDrawing = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDrawingKind(self: *@This()) core.HResult!InkAnalysisDrawingKind {
        const this: *IInkAnalysisInkDrawing = @ptrCast(self);
        return try this.getDrawingKind();
    }
    pub fn getCenter(self: *@This()) core.HResult!Point {
        const this: *IInkAnalysisInkDrawing = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn getPoints(self: *@This()) core.HResult!*IVectorView(Point) {
        const this: *IInkAnalysisInkDrawing = @ptrCast(self);
        return try this.getPoints();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisInkDrawing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisInkDrawing.GUID;
    pub const IID: Guid = IInkAnalysisInkDrawing.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisInkDrawing.SIGNATURE);
};
pub const InkAnalysisInkWord = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisInkWord = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn getTextAlternates(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IInkAnalysisInkWord = @ptrCast(self);
        return try this.getTextAlternates();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisInkWord";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisInkWord.GUID;
    pub const IID: Guid = IInkAnalysisInkWord.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisInkWord.SIGNATURE);
};
pub const InkAnalysisLine = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisLine = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn getIndentLevel(self: *@This()) core.HResult!i32 {
        const this: *IInkAnalysisLine = @ptrCast(self);
        return try this.getIndentLevel();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisLine.GUID;
    pub const IID: Guid = IInkAnalysisLine.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisLine.SIGNATURE);
};
pub const InkAnalysisListItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisListItem = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisListItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisListItem.GUID;
    pub const IID: Guid = IInkAnalysisListItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisListItem.SIGNATURE);
};
pub const InkAnalysisNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IInkAnalysisNode = @ptrCast(self);
        return try this.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisNode.GUID;
    pub const IID: Guid = IInkAnalysisNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisNode.SIGNATURE);
};
pub const InkAnalysisNodeKind = enum(i32) {
    UnclassifiedInk = 0,
    Root = 1,
    WritingRegion = 2,
    Paragraph = 3,
    Line = 4,
    InkWord = 5,
    InkBullet = 6,
    InkDrawing = 7,
    ListItem = 8,
};
pub const InkAnalysisParagraph = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisParagraph = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisParagraph";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisParagraph.GUID;
    pub const IID: Guid = IInkAnalysisParagraph.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisParagraph.SIGNATURE);
};
pub const InkAnalysisResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!InkAnalysisStatus {
        const this: *IInkAnalysisResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisResult.GUID;
    pub const IID: Guid = IInkAnalysisResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisResult.SIGNATURE);
};
pub const InkAnalysisRoot = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisRoot = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn FindNodes(self: *@This(), nodeKind: InkAnalysisNodeKind) core.HResult!*IVectorView(IInkAnalysisNode) {
        const this: *IInkAnalysisRoot = @ptrCast(self);
        return try this.FindNodes(nodeKind);
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisRoot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisRoot.GUID;
    pub const IID: Guid = IInkAnalysisRoot.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisRoot.SIGNATURE);
};
pub const InkAnalysisStatus = enum(i32) {
    Updated = 0,
    Unchanged = 1,
};
pub const InkAnalysisStrokeKind = enum(i32) {
    Auto = 0,
    Writing = 1,
    Drawing = 2,
};
pub const InkAnalysisWritingRegion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRecognizedText(self: *@This()) core.HResult!HSTRING {
        const this: *IInkAnalysisWritingRegion = @ptrCast(self);
        return try this.getRecognizedText();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!InkAnalysisNodeKind {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBoundingRect();
    }
    pub fn getRotatedBoundingRect(self: *@This()) core.HResult!*IVectorView(Point) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotatedBoundingRect();
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(IInkAnalysisNode) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getParent(self: *@This()) core.HResult!*IInkAnalysisNode {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParent();
    }
    pub fn GetStrokeIds(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IInkAnalysisNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInkAnalysisNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStrokeIds();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalysisWritingRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalysisWritingRegion.GUID;
    pub const IID: Guid = IInkAnalysisWritingRegion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalysisWritingRegion.SIGNATURE);
};
pub const InkAnalyzer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAnalysisRoot(self: *@This()) core.HResult!*InkAnalysisRoot {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.getAnalysisRoot();
    }
    pub fn getIsAnalyzing(self: *@This()) core.HResult!bool {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.getIsAnalyzing();
    }
    pub fn AddDataForStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.AddDataForStroke(stroke);
    }
    pub fn AddDataForStrokes(self: *@This(), strokes: *IIterable(InkStroke)) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.AddDataForStrokes(strokes);
    }
    pub fn ClearDataForAllStrokes(self: *@This()) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.ClearDataForAllStrokes();
    }
    pub fn RemoveDataForStroke(self: *@This(), strokeId: u32) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.RemoveDataForStroke(strokeId);
    }
    pub fn RemoveDataForStrokes(self: *@This(), strokeIds: *IIterable(u32)) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.RemoveDataForStrokes(strokeIds);
    }
    pub fn ReplaceDataForStroke(self: *@This(), stroke: *InkStroke) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.ReplaceDataForStroke(stroke);
    }
    pub fn SetStrokeDataKind(self: *@This(), strokeId: u32, strokeKind: InkAnalysisStrokeKind) core.HResult!void {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.SetStrokeDataKind(strokeId, strokeKind);
    }
    pub fn AnalyzeAsync(self: *@This()) core.HResult!*IAsyncOperation(InkAnalysisResult) {
        const this: *IInkAnalyzer = @ptrCast(self);
        return try this.AnalyzeAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInkAnalyzer.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Analysis.InkAnalyzer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkAnalyzer.GUID;
    pub const IID: Guid = IInkAnalyzer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkAnalyzer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const HSTRING = @import("../../../root.zig").HSTRING;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const InkStroke = @import("../Inking.zig").InkStroke;
const Point = @import("../../../Foundation.zig").Point;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const Rect = @import("../../../Foundation.zig").Rect;
const TrustLevel = @import("../../../root.zig").TrustLevel;
