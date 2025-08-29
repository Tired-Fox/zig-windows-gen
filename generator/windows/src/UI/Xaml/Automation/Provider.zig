pub const IAnnotationProvider = extern struct {
    vtable: *const VTable,
    pub fn getAnnotationTypeId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_AnnotationTypeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnnotationTypeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AnnotationTypeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateTime(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTarget(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IAnnotationProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95ba1417-4437-451b-9461-050a49b59d06";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnnotationTypeId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_AnnotationTypeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DateTime: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const ICustomNavigationProvider = extern struct {
    vtable: *const VTable,
    pub fn NavigateCustom(self: *@This(), direction: AutomationNavigationDirection) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.NavigateCustom(@ptrCast(self), direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ICustomNavigationProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bd8a6d0-2fa3-4717-b28c-4917ce54928d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        NavigateCustom: *const fn(self: *anyopaque, direction: AutomationNavigationDirection, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IDockProvider = extern struct {
    vtable: *const VTable,
    pub fn getDockPosition(self: *@This()) core.HResult!DockPosition {
        var _r: DockPosition = undefined;
        const _c = self.vtable.get_DockPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDockPosition(self: *@This(), dockPosition: DockPosition) core.HResult!void {
        const _c = self.vtable.SetDockPosition(@ptrCast(self), dockPosition);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IDockProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48c243f8-78b1-44a0-ac5f-750757bcde3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DockPosition: *const fn(self: *anyopaque, _r: *DockPosition) callconv(.winapi) HRESULT,
        SetDockPosition: *const fn(self: *anyopaque, dockPosition: DockPosition) callconv(.winapi) HRESULT,
    };
};
pub const IDragProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsGrabbed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGrabbed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropEffect(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DropEffect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropEffects(self: *@This()) core.HResult![*]HSTRING {
        var _r: [*]HSTRING = undefined;
        const _c = self.vtable.get_DropEffects(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGrabbedItems(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetGrabbedItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IDragProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e7786a9-7ffc-4f57-b965-1ef1f373f546";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsGrabbed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DropEffect: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DropEffects: *const fn(self: *anyopaque, _r: *[*]HSTRING) callconv(.winapi) HRESULT,
        GetGrabbedItems: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const IDropTargetProvider = extern struct {
    vtable: *const VTable,
    pub fn getDropEffect(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DropEffect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropEffects(self: *@This()) core.HResult![*]HSTRING {
        var _r: [*]HSTRING = undefined;
        const _c = self.vtable.get_DropEffects(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IDropTargetProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a245bdd-b458-4fe0-98c8-aac89df56d61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DropEffect: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DropEffects: *const fn(self: *anyopaque, _r: *[*]HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IExpandCollapseProvider = extern struct {
    vtable: *const VTable,
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var _r: ExpandCollapseState = undefined;
        const _c = self.vtable.get_ExpandCollapseState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        const _c = self.vtable.Collapse(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        const _c = self.vtable.Expand(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49ac8399-d626-4543-94b9-a6d9a9593af6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpandCollapseState: *const fn(self: *anyopaque, _r: *ExpandCollapseState) callconv(.winapi) HRESULT,
        Collapse: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Expand: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IGridItemProvider = extern struct {
    vtable: *const VTable,
    pub fn getColumn(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Column(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColumnSpan(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ColumnSpan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainingGrid(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.get_ContainingGrid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRow(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Row(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowSpan(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RowSpan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IGridItemProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fff3683c-7407-45bb-a936-df3ed6d3837d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Column: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ColumnSpan: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ContainingGrid: *const fn(self: *anyopaque, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
        get_Row: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_RowSpan: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IGridProvider = extern struct {
    vtable: *const VTable,
    pub fn getColumnCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ColumnCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RowCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItem(self: *@This(), row: i32, column: i32) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetItem(@ptrCast(self), row, column, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IGridProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b62b7a0-932c-4490-9a13-02fdb39a8f5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColumnCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_RowCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetItem: *const fn(self: *anyopaque, row: i32, column: i32, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const IIRawElementProviderSimple = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IIRawElementProviderSimple";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec752224-9b77-4720-bb21-4ac89fdb1afd";
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
pub const IInvokeProvider = extern struct {
    vtable: *const VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        const _c = self.vtable.Invoke(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IInvokeProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7d1a187-b13c-4540-b09e-6778e2dc9ba5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Invoke: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IItemContainerProvider = extern struct {
    vtable: *const VTable,
    pub fn FindItemByProperty(self: *@This(), startAfter: *IRawElementProviderSimple, automationProperty: *AutomationProperty, value: *IInspectable) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.FindItemByProperty(@ptrCast(self), startAfter, automationProperty, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IItemContainerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef5cd845-e1d4-40f4-bad5-c7fad44a703e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindItemByProperty: *const fn(self: *anyopaque, startAfter: *IRawElementProviderSimple, automationProperty: *AutomationProperty, value: *IInspectable, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const IMultipleViewProvider = extern struct {
    vtable: *const VTable,
    pub fn getCurrentView(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedViews(self: *@This()) core.HResult![*]i32 {
        var _r: [*]i32 = undefined;
        const _c = self.vtable.GetSupportedViews(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetViewName(self: *@This(), viewId: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetViewName(@ptrCast(self), viewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCurrentView(self: *@This(), viewId: i32) core.HResult!void {
        const _c = self.vtable.SetCurrentView(@ptrCast(self), viewId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IMultipleViewProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d014e196-0e50-4843-a5d2-c22897c8845a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentView: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetSupportedViews: *const fn(self: *anyopaque, _r: *[*]i32) callconv(.winapi) HRESULT,
        GetViewName: *const fn(self: *anyopaque, viewId: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetCurrentView: *const fn(self: *anyopaque, viewId: i32) callconv(.winapi) HRESULT,
    };
};
pub const IObjectModelProvider = extern struct {
    vtable: *const VTable,
    pub fn GetUnderlyingObjectModel(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetUnderlyingObjectModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IObjectModelProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3ca36b9-0793-4ed0-bbf4-9ff4e0f98f80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUnderlyingObjectModel: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IRangeValueProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLargeChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LargeChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaximum(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Maximum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimum(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Minimum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmallChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SmallChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValue(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.SetValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IRangeValueProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "838a34a8-7d5f-4079-af03-c3d015e93413";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_LargeChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Maximum: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Minimum: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_SmallChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        SetValue: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IRawElementProviderSimple = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIRawElementProviderSimple.GUID;
    pub const IID: Guid = IIRawElementProviderSimple.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIRawElementProviderSimple.SIGNATURE);
};
pub const IScrollItemProvider = extern struct {
    vtable: *const VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        const _c = self.vtable.ScrollIntoView(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IScrollItemProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a3ec090-5d2c-4e42-9ee6-9d58db100b55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ScrollIntoView: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IScrollProvider = extern struct {
    vtable: *const VTable,
    pub fn getHorizontallyScrollable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HorizontallyScrollable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalScrollPercent(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalScrollPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalViewSize(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalViewSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticallyScrollable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_VerticallyScrollable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalScrollPercent(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalScrollPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalViewSize(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalViewSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Scroll(self: *@This(), horizontalAmount: ScrollAmount, verticalAmount: ScrollAmount) core.HResult!void {
        const _c = self.vtable.Scroll(@ptrCast(self), horizontalAmount, verticalAmount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetScrollPercent(self: *@This(), horizontalPercent: f64, verticalPercent: f64) core.HResult!void {
        const _c = self.vtable.SetScrollPercent(@ptrCast(self), horizontalPercent, verticalPercent);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IScrollProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "374bf581-7716-4bbc-82eb-d997006ea999";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontallyScrollable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HorizontalScrollPercent: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HorizontalViewSize: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticallyScrollable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_VerticalScrollPercent: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticalViewSize: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        Scroll: *const fn(self: *anyopaque, horizontalAmount: ScrollAmount, verticalAmount: ScrollAmount) callconv(.winapi) HRESULT,
        SetScrollPercent: *const fn(self: *anyopaque, horizontalPercent: f64, verticalPercent: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISelectionItemProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionContainer(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.get_SelectionContainer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddToSelection(self: *@This()) core.HResult!void {
        const _c = self.vtable.AddToSelection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveFromSelection(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveFromSelection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Select(self: *@This()) core.HResult!void {
        const _c = self.vtable.Select(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a4977c1-830d-42d2-bf62-042ebddecc19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SelectionContainer: *const fn(self: *anyopaque, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
        AddToSelection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RemoveFromSelection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Select: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISelectionProvider = extern struct {
    vtable: *const VTable,
    pub fn getCanSelectMultiple(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSelectMultiple(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSelectionRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelectionRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSelection(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetSelection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ISelectionProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f018fca-b944-4395-8de1-88f674af51d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanSelectMultiple: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSelectionRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetSelection: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const ISpreadsheetItemProvider = extern struct {
    vtable: *const VTable,
    pub fn getFormula(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Formula(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotationObjects(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetAnnotationObjects(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotationTypes(self: *@This()) core.HResult![*]AnnotationType {
        var _r: [*]AnnotationType = undefined;
        const _c = self.vtable.GetAnnotationTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ISpreadsheetItemProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebde8f92-6015-4826-b719-47521a81c67e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Formula: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAnnotationObjects: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
        GetAnnotationTypes: *const fn(self: *anyopaque, _r: *[*]AnnotationType) callconv(.winapi) HRESULT,
    };
};
pub const ISpreadsheetProvider = extern struct {
    vtable: *const VTable,
    pub fn GetItemByName(self: *@This(), name: HSTRING) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetItemByName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ISpreadsheetProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15359093-bd99-4cfd-9f07-3b14b315e23d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetItemByName: *const fn(self: *anyopaque, name: HSTRING, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const IStylesProvider = extern struct {
    vtable: *const VTable,
    pub fn getExtendedProperties(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_FillColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillPatternColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_FillPatternColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillPatternStyle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FillPatternStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShape(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Shape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StyleId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StyleName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IStylesProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a5b7a17-7c01-4bec-9cd4-2dfa7dc246cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedProperties: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FillColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_FillPatternColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_FillPatternStyle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Shape: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StyleId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_StyleName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISynchronizedInputProvider = extern struct {
    vtable: *const VTable,
    pub fn Cancel(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartListening(self: *@This(), inputType: SynchronizedInputType) core.HResult!void {
        const _c = self.vtable.StartListening(@ptrCast(self), inputType);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ISynchronizedInputProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d60cecb-da54-4aa3-b915-e3244427d4ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartListening: *const fn(self: *anyopaque, inputType: SynchronizedInputType) callconv(.winapi) HRESULT,
    };
};
pub const ITableItemProvider = extern struct {
    vtable: *const VTable,
    pub fn GetColumnHeaderItems(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetColumnHeaderItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRowHeaderItems(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetRowHeaderItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITableItemProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b2c49cd-1de2-4ee2-a3e1-fb553559d15d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetColumnHeaderItems: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
        GetRowHeaderItems: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const ITableProvider = extern struct {
    vtable: *const VTable,
    pub fn getRowOrColumnMajor(self: *@This()) core.HResult!RowOrColumnMajor {
        var _r: RowOrColumnMajor = undefined;
        const _c = self.vtable.get_RowOrColumnMajor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetColumnHeaders(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetColumnHeaders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRowHeaders(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetRowHeaders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITableProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a8ed399-6824-4595-bab3-464bc9a04417";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RowOrColumnMajor: *const fn(self: *anyopaque, _r: *RowOrColumnMajor) callconv(.winapi) HRESULT,
        GetColumnHeaders: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
        GetRowHeaders: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const ITextChildProvider = extern struct {
    vtable: *const VTable,
    pub fn getTextContainer(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.get_TextContainer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextRange(self: *@This()) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.get_TextRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITextChildProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1133c336-a89b-4130-9be6-55e33334f557";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextContainer: *const fn(self: *anyopaque, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
        get_TextRange: *const fn(self: *anyopaque, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
    };
};
pub const ITextEditProvider = extern struct {
    vtable: *const VTable,
    pub fn GetActiveComposition(self: *@This()) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.GetActiveComposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversionTarget(self: *@This()) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.GetConversionTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITextEditProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea3605b4-3a05-400e-b5f9-4e91b40f6176";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetActiveComposition: *const fn(self: *anyopaque, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        GetConversionTarget: *const fn(self: *anyopaque, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
    };
};
pub const ITextProvider = extern struct {
    vtable: *const VTable,
    pub fn getDocumentRange(self: *@This()) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.get_DocumentRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedTextSelection(self: *@This()) core.HResult!SupportedTextSelection {
        var _r: SupportedTextSelection = undefined;
        const _c = self.vtable.get_SupportedTextSelection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSelection(self: *@This()) core.HResult![*]ITextRangeProvider {
        var _r: [*]ITextRangeProvider = undefined;
        const _c = self.vtable.GetSelection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVisibleRanges(self: *@This()) core.HResult![*]ITextRangeProvider {
        var _r: [*]ITextRangeProvider = undefined;
        const _c = self.vtable.GetVisibleRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RangeFromChild(self: *@This(), childElement: *IRawElementProviderSimple) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.RangeFromChild(@ptrCast(self), childElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RangeFromPoint(self: *@This(), screenLocation: Point) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.RangeFromPoint(@ptrCast(self), screenLocation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITextProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db5bbc9f-4807-4f2a-8678-1b13f3c60e22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DocumentRange: *const fn(self: *anyopaque, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        get_SupportedTextSelection: *const fn(self: *anyopaque, _r: *SupportedTextSelection) callconv(.winapi) HRESULT,
        GetSelection: *const fn(self: *anyopaque, _r: *[*]ITextRangeProvider) callconv(.winapi) HRESULT,
        GetVisibleRanges: *const fn(self: *anyopaque, _r: *[*]ITextRangeProvider) callconv(.winapi) HRESULT,
        RangeFromChild: *const fn(self: *anyopaque, childElement: *IRawElementProviderSimple, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        RangeFromPoint: *const fn(self: *anyopaque, screenLocation: Point, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
    };
};
pub const ITextProvider2 = extern struct {
    vtable: *const VTable,
    pub fn RangeFromAnnotation(self: *@This(), annotationElement: *IRawElementProviderSimple) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.RangeFromAnnotation(@ptrCast(self), annotationElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCaretRange(self: *@This(), isActive: bool) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.GetCaretRange(@ptrCast(self), isActive, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITextProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df1d48bc-0487-4e7f-9d5e-f09e77e41246";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RangeFromAnnotation: *const fn(self: *anyopaque, annotationElement: *IRawElementProviderSimple, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        GetCaretRange: *const fn(self: *anyopaque, isActive: bool, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
    };
};
pub const ITextRangeProvider = extern struct {
    vtable: *const VTable,
    pub fn Clone(self: *@This()) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Compare(self: *@This(), textRangeProvider: *ITextRangeProvider) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Compare(@ptrCast(self), textRangeProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CompareEndpoints(self: *@This(), endpoint: TextPatternRangeEndpoint, textRangeProvider: *ITextRangeProvider, targetEndpoint: TextPatternRangeEndpoint) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.CompareEndpoints(@ptrCast(self), endpoint, textRangeProvider, targetEndpoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExpandToEnclosingUnit(self: *@This(), unit: TextUnit) core.HResult!void {
        const _c = self.vtable.ExpandToEnclosingUnit(@ptrCast(self), unit);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindAttribute(self: *@This(), attributeId: i32, value: *IInspectable, backward: bool) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.FindAttribute(@ptrCast(self), attributeId, value, backward, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindText(self: *@This(), text: HSTRING, backward: bool, ignoreCase: bool) core.HResult!*ITextRangeProvider {
        var _r: *ITextRangeProvider = undefined;
        const _c = self.vtable.FindText(@ptrCast(self), text, backward, ignoreCase, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttributeValue(self: *@This(), attributeId: i32) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetAttributeValue(@ptrCast(self), attributeId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBoundingRectangles(self: *@This(), returnValue: f64) core.HResult!void {
        const _c = self.vtable.GetBoundingRectangles(@ptrCast(self), returnValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetEnclosingElement(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetEnclosingElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetText(self: *@This(), maxLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetText(@ptrCast(self), maxLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Move(self: *@This(), unit: TextUnit, count: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Move(@ptrCast(self), unit, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveEndpointByUnit(self: *@This(), endpoint: TextPatternRangeEndpoint, unit: TextUnit, count: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveEndpointByUnit(@ptrCast(self), endpoint, unit, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveEndpointByRange(self: *@This(), endpoint: TextPatternRangeEndpoint, textRangeProvider: *ITextRangeProvider, targetEndpoint: TextPatternRangeEndpoint) core.HResult!void {
        const _c = self.vtable.MoveEndpointByRange(@ptrCast(self), endpoint, textRangeProvider, targetEndpoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Select(self: *@This()) core.HResult!void {
        const _c = self.vtable.Select(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddToSelection(self: *@This()) core.HResult!void {
        const _c = self.vtable.AddToSelection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveFromSelection(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveFromSelection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ScrollIntoView(self: *@This(), alignToTop: bool) core.HResult!void {
        const _c = self.vtable.ScrollIntoView(@ptrCast(self), alignToTop);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetChildren(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var _r: [*]IRawElementProviderSimple = undefined;
        const _c = self.vtable.GetChildren(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITextRangeProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0274688d-06e9-4f66-9446-28a5be98fbd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        Compare: *const fn(self: *anyopaque, textRangeProvider: *ITextRangeProvider, _r: *bool) callconv(.winapi) HRESULT,
        CompareEndpoints: *const fn(self: *anyopaque, endpoint: TextPatternRangeEndpoint, textRangeProvider: *ITextRangeProvider, targetEndpoint: TextPatternRangeEndpoint, _r: *i32) callconv(.winapi) HRESULT,
        ExpandToEnclosingUnit: *const fn(self: *anyopaque, unit: TextUnit) callconv(.winapi) HRESULT,
        FindAttribute: *const fn(self: *anyopaque, attributeId: i32, value: *IInspectable, backward: bool, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        FindText: *const fn(self: *anyopaque, text: HSTRING, backward: bool, ignoreCase: bool, _r: **ITextRangeProvider) callconv(.winapi) HRESULT,
        GetAttributeValue: *const fn(self: *anyopaque, attributeId: i32, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetBoundingRectangles: *const fn(self: *anyopaque, returnValue: f64) callconv(.winapi) HRESULT,
        GetEnclosingElement: *const fn(self: *anyopaque, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
        GetText: *const fn(self: *anyopaque, maxLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        Move: *const fn(self: *anyopaque, unit: TextUnit, count: i32, _r: *i32) callconv(.winapi) HRESULT,
        MoveEndpointByUnit: *const fn(self: *anyopaque, endpoint: TextPatternRangeEndpoint, unit: TextUnit, count: i32, _r: *i32) callconv(.winapi) HRESULT,
        MoveEndpointByRange: *const fn(self: *anyopaque, endpoint: TextPatternRangeEndpoint, textRangeProvider: *ITextRangeProvider, targetEndpoint: TextPatternRangeEndpoint) callconv(.winapi) HRESULT,
        Select: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        AddToSelection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RemoveFromSelection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ScrollIntoView: *const fn(self: *anyopaque, alignToTop: bool) callconv(.winapi) HRESULT,
        GetChildren: *const fn(self: *anyopaque, _r: *[*]IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const ITextRangeProvider2 = extern struct {
    vtable: *const VTable,
    pub fn ShowContextMenu(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowContextMenu(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITextRangeProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3be3dfb-9f54-4642-a7a5-5c18d5ee2a3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowContextMenu: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IToggleProvider = extern struct {
    vtable: *const VTable,
    pub fn getToggleState(self: *@This()) core.HResult!ToggleState {
        var _r: ToggleState = undefined;
        const _c = self.vtable.get_ToggleState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Toggle(self: *@This()) core.HResult!void {
        const _c = self.vtable.Toggle(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IToggleProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93b88290-656f-44f7-aeaf-78b8f944d062";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ToggleState: *const fn(self: *anyopaque, _r: *ToggleState) callconv(.winapi) HRESULT,
        Toggle: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITransformProvider = extern struct {
    vtable: *const VTable,
    pub fn getCanMove(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanMove(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanResize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanResize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanRotate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRotate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Move(self: *@This(), x: f64, y: f64) core.HResult!void {
        const _c = self.vtable.Move(@ptrCast(self), x, y);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resize(self: *@This(), width: f64, height: f64) core.HResult!void {
        const _c = self.vtable.Resize(@ptrCast(self), width, height);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Rotate(self: *@This(), degrees: f64) core.HResult!void {
        const _c = self.vtable.Rotate(@ptrCast(self), degrees);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITransformProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79670fdd-f6a9-4a65-af17-861db799a2da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanMove: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanResize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanRotate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Move: *const fn(self: *anyopaque, x: f64, y: f64) callconv(.winapi) HRESULT,
        Resize: *const fn(self: *anyopaque, width: f64, height: f64) callconv(.winapi) HRESULT,
        Rotate: *const fn(self: *anyopaque, degrees: f64) callconv(.winapi) HRESULT,
    };
};
pub const ITransformProvider2 = extern struct {
    vtable: *const VTable,
    pub fn getCanZoom(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanZoom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ZoomLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxZoom(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxZoom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinZoom(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinZoom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Zoom(self: *@This(), zoom: f64) core.HResult!void {
        const _c = self.vtable.Zoom(@ptrCast(self), zoom);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ZoomByUnit(self: *@This(), zoomUnit: ZoomUnit) core.HResult!void {
        const _c = self.vtable.ZoomByUnit(@ptrCast(self), zoomUnit);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.ITransformProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8b11756-a39f-4e97-8c7d-c1ea8dd633c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanZoom: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ZoomLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MaxZoom: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MinZoom: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        Zoom: *const fn(self: *anyopaque, zoom: f64) callconv(.winapi) HRESULT,
        ZoomByUnit: *const fn(self: *anyopaque, zoomUnit: ZoomUnit) callconv(.winapi) HRESULT,
    };
};
pub const IValueProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IValueProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2086b7a7-ac0e-47d1-ab9b-2a64292afdf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetValue: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualizedItemProvider = extern struct {
    vtable: *const VTable,
    pub fn Realize(self: *@This()) core.HResult!void {
        const _c = self.vtable.Realize(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17d4a04b-d658-48e0-a574-5a516c58dfa7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Realize: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWindowProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsModal(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsModal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTopmost(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTopmost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaximizable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Maximizable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimizable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Minimizable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInteractionState(self: *@This()) core.HResult!WindowInteractionState {
        var _r: WindowInteractionState = undefined;
        const _c = self.vtable.get_InteractionState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisualState(self: *@This()) core.HResult!WindowVisualState {
        var _r: WindowVisualState = undefined;
        const _c = self.vtable.get_VisualState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetVisualState(self: *@This(), state: WindowVisualState) core.HResult!void {
        const _c = self.vtable.SetVisualState(@ptrCast(self), state);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WaitForInputIdle(self: *@This(), milliseconds: i32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.WaitForInputIdle(@ptrCast(self), milliseconds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Provider.IWindowProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1baa8b3d-38cf-415a-85d3-20e43a0ec1b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsModal: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTopmost: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Maximizable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Minimizable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_InteractionState: *const fn(self: *anyopaque, _r: *WindowInteractionState) callconv(.winapi) HRESULT,
        get_VisualState: *const fn(self: *anyopaque, _r: *WindowVisualState) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetVisualState: *const fn(self: *anyopaque, state: WindowVisualState) callconv(.winapi) HRESULT,
        WaitForInputIdle: *const fn(self: *anyopaque, milliseconds: i32, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../../root.zig").Guid;
const Color = @import("../../../UI.zig").Color;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const TextUnit = @import("./Text.zig").TextUnit;
const TextPatternRangeEndpoint = @import("./Text.zig").TextPatternRangeEndpoint;
const Point = @import("../../../Foundation.zig").Point;
const WindowInteractionState = @import("../Automation.zig").WindowInteractionState;
const ZoomUnit = @import("../Automation.zig").ZoomUnit;
const AutomationProperty = @import("../Automation.zig").AutomationProperty;
const AnnotationType = @import("../Automation.zig").AnnotationType;
const HRESULT = @import("../../../root.zig").HRESULT;
const core = @import("../../../root.zig").core;
const ScrollAmount = @import("../Automation.zig").ScrollAmount;
const RowOrColumnMajor = @import("../Automation.zig").RowOrColumnMajor;
const DockPosition = @import("../Automation.zig").DockPosition;
const SynchronizedInputType = @import("../Automation.zig").SynchronizedInputType;
const WindowVisualState = @import("../Automation.zig").WindowVisualState;
const AutomationNavigationDirection = @import("./Peers.zig").AutomationNavigationDirection;
const SupportedTextSelection = @import("../Automation.zig").SupportedTextSelection;
const ExpandCollapseState = @import("../Automation.zig").ExpandCollapseState;
const ToggleState = @import("../Automation.zig").ToggleState;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const HSTRING = @import("../../../root.zig").HSTRING;
