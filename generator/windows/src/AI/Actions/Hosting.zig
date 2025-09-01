pub const ActionCatalog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAllActions(self: *@This()) core.HResult![*]ActionDefinition {
        const this: *IActionCatalog = @ptrCast(self);
        return try this.GetAllActions();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(ActionCatalog,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IActionCatalog = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IActionCatalog = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub fn GetActionsForInputs(self: *@This(), inputEntities: [*]ActionEntity) core.HResult![*]ActionInstance {
        var this: ?*IActionCatalog2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionCatalog2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActionsForInputs(inputEntities);
    }
    pub fn GetActionsForInputsWithInvokerWindowId(self: *@This(), inputEntities: [*]ActionEntity, invokerWindowId: WindowId) core.HResult![*]ActionInstance {
        var this: ?*IActionCatalog2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionCatalog2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActionsForInputsWithInvokerWindowId(inputEntities, invokerWindowId);
    }
    pub fn GetActionsForCurrentApp(self: *@This()) core.HResult![*]ActionDefinition {
        var this: ?*IActionCatalog3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionCatalog3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActionsForCurrentApp();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.ActionCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionCatalog.GUID;
    pub const IID: Guid = IActionCatalog.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionCatalog.SIGNATURE);
};
pub const ActionDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getIconFullPath(self: *@This()) core.HResult!HSTRING {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.getIconFullPath();
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn GetInputs(self: *@This()) core.HResult![*]ActionEntityRegistrationInfo {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.GetInputs();
    }
    pub fn GetOutputs(self: *@This()) core.HResult![*]ActionEntityRegistrationInfo {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.GetOutputs();
    }
    pub fn GetOverloads(self: *@This()) core.HResult![*]ActionOverload {
        const this: *IActionDefinition = @ptrCast(self);
        return try this.GetOverloads();
    }
    pub fn getDisplaysUI(self: *@This()) core.HResult!bool {
        var this: ?*IActionDefinition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionDefinition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplaysUI();
    }
    pub fn getUsesGenerativeAI(self: *@This()) core.HResult!bool {
        var this: ?*IActionDefinition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionDefinition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUsesGenerativeAI();
    }
    pub fn getSchemaVersion(self: *@This()) core.HResult!u32 {
        var this: ?*IActionDefinition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionDefinition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSchemaVersion();
    }
    pub fn getPackageRelativeApplicationId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IActionDefinition3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionDefinition3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPackageRelativeApplicationId();
    }
    pub fn getIsCurrentlyAvailable(self: *@This()) core.HResult!bool {
        var this: ?*IActionDefinition4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionDefinition4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCurrentlyAvailable();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.ActionDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionDefinition.GUID;
    pub const IID: Guid = IActionDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionDefinition.SIGNATURE);
};
pub const ActionEntityRegistrationInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IActionEntityRegistrationInfo = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IActionEntityRegistrationInfo = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getKind(self: *@This()) core.HResult!ActionEntityKind {
        const this: *IActionEntityRegistrationInfo = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ActionEntityKind) core.HResult!void {
        const this: *IActionEntityRegistrationInfo = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.ActionEntityRegistrationInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionEntityRegistrationInfo.GUID;
    pub const IID: Guid = IActionEntityRegistrationInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionEntityRegistrationInfo.SIGNATURE);
};
pub const ActionInstance = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayInfo(self: *@This()) core.HResult!*ActionInstanceDisplayInfo {
        const this: *IActionInstance = @ptrCast(self);
        return try this.getDisplayInfo();
    }
    pub fn getDefinition(self: *@This()) core.HResult!*ActionDefinition {
        const this: *IActionInstance = @ptrCast(self);
        return try this.getDefinition();
    }
    pub fn getContext(self: *@This()) core.HResult!*ActionInvocationContext {
        const this: *IActionInstance = @ptrCast(self);
        return try this.getContext();
    }
    pub fn InvokeAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IActionInstance = @ptrCast(self);
        return try this.InvokeAsync();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.ActionInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionInstance.GUID;
    pub const IID: Guid = IActionInstance.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionInstance.SIGNATURE);
};
pub const ActionInstanceDisplayInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IActionInstanceDisplayInfo = @ptrCast(self);
        return try this.getDescription();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.ActionInstanceDisplayInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionInstanceDisplayInfo.GUID;
    pub const IID: Guid = IActionInstanceDisplayInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionInstanceDisplayInfo.SIGNATURE);
};
pub const ActionOverload = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDescriptionTemplate(self: *@This()) core.HResult!HSTRING {
        const this: *IActionOverload = @ptrCast(self);
        return try this.getDescriptionTemplate();
    }
    pub fn GetInputs(self: *@This()) core.HResult![*]ActionEntityRegistrationInfo {
        const this: *IActionOverload = @ptrCast(self);
        return try this.GetInputs();
    }
    pub fn InvokeAsync(self: *@This(), context: *ActionInvocationContext) core.HResult!*IAsyncAction {
        const this: *IActionOverload = @ptrCast(self);
        return try this.InvokeAsync(context);
    }
    pub fn InvokeFeedbackAsync(self: *@This(), context: *ActionInvocationContext, feedback: *ActionFeedback) core.HResult!*IAsyncAction {
        var this: ?*IActionOverload2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionOverload2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InvokeFeedbackAsync(context, feedback);
    }
    pub fn GetSupportsFeedback(self: *@This()) core.HResult!bool {
        var this: ?*IActionOverload2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionOverload2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSupportsFeedback();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.ActionOverload";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionOverload.GUID;
    pub const IID: Guid = IActionOverload.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionOverload.SIGNATURE);
};
pub const IActionCatalog = extern struct {
    vtable: *const VTable,
    pub fn GetAllActions(self: *@This()) core.HResult![*]ActionDefinition {
        var _r: [*]ActionDefinition = undefined;
        const _c = self.vtable.GetAllActions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(ActionCatalog,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbe7c537-66ea-5394-9085-4fc19d78375c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAllActions: *const fn(self: *anyopaque, _r: *[*]ActionDefinition) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ActionCatalog,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IActionCatalog2 = extern struct {
    vtable: *const VTable,
    pub fn GetActionsForInputs(self: *@This(), inputEntities: [*]ActionEntity) core.HResult![*]ActionInstance {
        var _r: [*]ActionInstance = undefined;
        const _c = self.vtable.GetActionsForInputs(@ptrCast(self), inputEntities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActionsForInputsWithInvokerWindowId(self: *@This(), inputEntities: [*]ActionEntity, invokerWindowId: WindowId) core.HResult![*]ActionInstance {
        var _r: [*]ActionInstance = undefined;
        const _c = self.vtable.GetActionsForInputsWithInvokerWindowId(@ptrCast(self), inputEntities, invokerWindowId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionCatalog2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "370360b1-a14b-5ea8-b611-b5f70342ba44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetActionsForInputs: *const fn(self: *anyopaque, inputEntities: [*]ActionEntity, _r: *[*]ActionInstance) callconv(.winapi) HRESULT,
        GetActionsForInputsWithInvokerWindowId: *const fn(self: *anyopaque, inputEntities: [*]ActionEntity, invokerWindowId: WindowId, _r: *[*]ActionInstance) callconv(.winapi) HRESULT,
    };
};
pub const IActionCatalog3 = extern struct {
    vtable: *const VTable,
    pub fn GetActionsForCurrentApp(self: *@This()) core.HResult![*]ActionDefinition {
        var _r: [*]ActionDefinition = undefined;
        const _c = self.vtable.GetActionsForCurrentApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionCatalog3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e05d518-8680-55d3-820d-2605adb7d62d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetActionsForCurrentApp: *const fn(self: *anyopaque, _r: *[*]ActionDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IActionDefinition = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIconFullPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IconFullPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInputs(self: *@This()) core.HResult![*]ActionEntityRegistrationInfo {
        var _r: [*]ActionEntityRegistrationInfo = undefined;
        const _c = self.vtable.GetInputs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOutputs(self: *@This()) core.HResult![*]ActionEntityRegistrationInfo {
        var _r: [*]ActionEntityRegistrationInfo = undefined;
        const _c = self.vtable.GetOutputs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOverloads(self: *@This()) core.HResult![*]ActionOverload {
        var _r: [*]ActionOverload = undefined;
        const _c = self.vtable.GetOverloads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe766add-924d-5231-855e-dac9e82c7e6c";
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
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IconFullPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetInputs: *const fn(self: *anyopaque, _r: *[*]ActionEntityRegistrationInfo) callconv(.winapi) HRESULT,
        GetOutputs: *const fn(self: *anyopaque, _r: *[*]ActionEntityRegistrationInfo) callconv(.winapi) HRESULT,
        GetOverloads: *const fn(self: *anyopaque, _r: *[*]ActionOverload) callconv(.winapi) HRESULT,
    };
};
pub const IActionDefinition2 = extern struct {
    vtable: *const VTable,
    pub fn getDisplaysUI(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisplaysUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsesGenerativeAI(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UsesGenerativeAI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSchemaVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SchemaVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionDefinition2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1f44733-f563-54e2-bd2b-dc4c732054cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplaysUI: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UsesGenerativeAI: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SchemaVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IActionDefinition3 = extern struct {
    vtable: *const VTable,
    pub fn getPackageRelativeApplicationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageRelativeApplicationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionDefinition3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89c9a7e0-4bfd-55f4-9eed-dce2250114fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageRelativeApplicationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IActionDefinition4 = extern struct {
    vtable: *const VTable,
    pub fn getIsCurrentlyAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentlyAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionDefinition4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6dd91071-8847-55b6-9518-9ff8de421eb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCurrentlyAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IActionEntityRegistrationInfo = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!ActionEntityKind {
        var _r: ActionEntityKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ActionEntityKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionEntityRegistrationInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3b92bdb-03c3-5a9e-b049-002fa0405699";
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
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ActionEntityKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ActionEntityKind) callconv(.winapi) HRESULT,
    };
};
pub const IActionInstance = extern struct {
    vtable: *const VTable,
    pub fn getDisplayInfo(self: *@This()) core.HResult!*ActionInstanceDisplayInfo {
        var _r: *ActionInstanceDisplayInfo = undefined;
        const _c = self.vtable.get_DisplayInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefinition(self: *@This()) core.HResult!*ActionDefinition {
        var _r: *ActionDefinition = undefined;
        const _c = self.vtable.get_Definition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContext(self: *@This()) core.HResult!*ActionInvocationContext {
        var _r: *ActionInvocationContext = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InvokeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvokeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "809bcb6e-e6ef-5f16-b89a-06b8893df20e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayInfo: *const fn(self: *anyopaque, _r: **ActionInstanceDisplayInfo) callconv(.winapi) HRESULT,
        get_Definition: *const fn(self: *anyopaque, _r: **ActionDefinition) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: **ActionInvocationContext) callconv(.winapi) HRESULT,
        InvokeAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IActionInstanceDisplayInfo = extern struct {
    vtable: *const VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionInstanceDisplayInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcfdce21-678b-5602-b9dc-2f4533a6f4b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IActionOverload = extern struct {
    vtable: *const VTable,
    pub fn getDescriptionTemplate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DescriptionTemplate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInputs(self: *@This()) core.HResult![*]ActionEntityRegistrationInfo {
        var _r: [*]ActionEntityRegistrationInfo = undefined;
        const _c = self.vtable.GetInputs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InvokeAsync(self: *@This(), context: *ActionInvocationContext) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvokeAsync(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionOverload";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d184610-d09d-5375-9849-505c359dca01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DescriptionTemplate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetInputs: *const fn(self: *anyopaque, _r: *[*]ActionEntityRegistrationInfo) callconv(.winapi) HRESULT,
        InvokeAsync: *const fn(self: *anyopaque, context: *ActionInvocationContext, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IActionOverload2 = extern struct {
    vtable: *const VTable,
    pub fn InvokeFeedbackAsync(self: *@This(), context: *ActionInvocationContext, feedback: *ActionFeedback) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvokeFeedbackAsync(@ptrCast(self), context, feedback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportsFeedback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetSupportsFeedback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.Hosting.IActionOverload2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57ec9906-8231-5a9e-929f-bf39e952eb93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InvokeFeedbackAsync: *const fn(self: *anyopaque, context: *ActionInvocationContext, feedback: *ActionFeedback, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetSupportsFeedback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const ActionEntityKind = @import("../Actions.zig").ActionEntityKind;
const WindowId = @import("../../UI.zig").WindowId;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const ActionFeedback = @import("../Actions.zig").ActionFeedback;
const ActionInvocationContext = @import("../Actions.zig").ActionInvocationContext;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IClosable = @import("../../Foundation.zig").IClosable;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const ActionEntity = @import("../Actions.zig").ActionEntity;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
