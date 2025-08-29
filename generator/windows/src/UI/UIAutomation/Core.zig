pub const AutomationAnnotationTypeRegistration = extern struct {
    LocalId: i32,
};
pub const AutomationRemoteOperationOperandId = extern struct {
    Value: i32,
};
pub const AutomationRemoteOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AutomationRemoteOperationStatus {
        const this: *IAutomationRemoteOperationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAutomationRemoteOperationResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getErrorLocation(self: *@This()) core.HResult!i32 {
        const this: *IAutomationRemoteOperationResult = @ptrCast(self);
        return try this.getErrorLocation();
    }
    pub fn HasOperand(self: *@This(), operandId: AutomationRemoteOperationOperandId) core.HResult!bool {
        const this: *IAutomationRemoteOperationResult = @ptrCast(self);
        return try this.HasOperand(operandId);
    }
    pub fn GetOperand(self: *@This(), operandId: AutomationRemoteOperationOperandId) core.HResult!*IInspectable {
        const this: *IAutomationRemoteOperationResult = @ptrCast(self);
        return try this.GetOperand(operandId);
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.AutomationRemoteOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationRemoteOperationResult.GUID;
    pub const IID: Guid = IAutomationRemoteOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationRemoteOperationResult.SIGNATURE);
};
pub const AutomationRemoteOperationStatus = enum(i32) {
    Success = 0,
    MalformedBytecode = 1,
    InstructionLimitExceeded = 2,
    UnhandledException = 3,
    ExecutionFailure = 4,
};
pub const CoreAutomationRegistrar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RegisterAnnotationType(guid: *Guid) core.HResult!AutomationAnnotationTypeRegistration {
        const factory = @This().ICoreAutomationRegistrarStaticsCache.get();
        return try factory.RegisterAnnotationType(guid);
    }
    pub fn UnregisterAnnotationType(registration: AutomationAnnotationTypeRegistration) core.HResult!void {
        const factory = @This().ICoreAutomationRegistrarStaticsCache.get();
        return try factory.UnregisterAnnotationType(registration);
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.CoreAutomationRegistrar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICoreAutomationRegistrarStaticsCache: FactoryCache(ICoreAutomationRegistrarStatics, RUNTIME_NAME) = .{};
};
pub const CoreAutomationRemoteOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsOpcodeSupported(self: *@This(), opcode: u32) core.HResult!bool {
        const this: *ICoreAutomationRemoteOperation = @ptrCast(self);
        return try this.IsOpcodeSupported(opcode);
    }
    pub fn ImportElement(self: *@This(), operandId: AutomationRemoteOperationOperandId, element: *AutomationElement) core.HResult!void {
        const this: *ICoreAutomationRemoteOperation = @ptrCast(self);
        return try this.ImportElement(operandId, element);
    }
    pub fn ImportTextRange(self: *@This(), operandId: AutomationRemoteOperationOperandId, textRange: *AutomationTextRange) core.HResult!void {
        const this: *ICoreAutomationRemoteOperation = @ptrCast(self);
        return try this.ImportTextRange(operandId, textRange);
    }
    pub fn AddToResults(self: *@This(), operandId: AutomationRemoteOperationOperandId) core.HResult!void {
        const this: *ICoreAutomationRemoteOperation = @ptrCast(self);
        return try this.AddToResults(operandId);
    }
    pub fn Execute(self: *@This(), bytecodeBuffer: [*]u8) core.HResult!*AutomationRemoteOperationResult {
        const this: *ICoreAutomationRemoteOperation = @ptrCast(self);
        return try this.Execute(bytecodeBuffer);
    }
    pub fn ImportConnectionBoundObject(self: *@This(), operandId: AutomationRemoteOperationOperandId, connectionBoundObject: *AutomationConnectionBoundObject) core.HResult!void {
        var this: ?*ICoreAutomationRemoteOperation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreAutomationRemoteOperation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ImportConnectionBoundObject(operandId, connectionBoundObject);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICoreAutomationRemoteOperation.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.CoreAutomationRemoteOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreAutomationRemoteOperation.GUID;
    pub const IID: Guid = ICoreAutomationRemoteOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreAutomationRemoteOperation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CoreAutomationRemoteOperationContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetOperand(self: *@This(), id: AutomationRemoteOperationOperandId) core.HResult!*IInspectable {
        const this: *ICoreAutomationRemoteOperationContext = @ptrCast(self);
        return try this.GetOperand(id);
    }
    pub fn SetOperand(self: *@This(), id: AutomationRemoteOperationOperandId, operand: *IInspectable) core.HResult!void {
        const this: *ICoreAutomationRemoteOperationContext = @ptrCast(self);
        return try this.SetOperand(id, operand);
    }
    pub fn SetOperandWithOperandWithOperandInterfaceId(self: *@This(), id: AutomationRemoteOperationOperandId, operand: *IInspectable, operandInterfaceId: *Guid) core.HResult!void {
        const this: *ICoreAutomationRemoteOperationContext = @ptrCast(self);
        return try this.SetOperandWithOperandWithOperandInterfaceId(id, operand, operandInterfaceId);
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.CoreAutomationRemoteOperationContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreAutomationRemoteOperationContext.GUID;
    pub const IID: Guid = ICoreAutomationRemoteOperationContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreAutomationRemoteOperationContext.SIGNATURE);
};
pub const IAutomationRemoteOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AutomationRemoteOperationStatus {
        var _r: AutomationRemoteOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorLocation(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ErrorLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasOperand(self: *@This(), operandId: AutomationRemoteOperationOperandId) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasOperand(@ptrCast(self), operandId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOperand(self: *@This(), operandId: AutomationRemoteOperationOperandId) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetOperand(@ptrCast(self), operandId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IAutomationRemoteOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0f80c42-4a67-5534-bf5a-09e8a99b36b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AutomationRemoteOperationStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_ErrorLocation: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        HasOperand: *const fn(self: *anyopaque, operandId: AutomationRemoteOperationOperandId, _r: *bool) callconv(.winapi) HRESULT,
        GetOperand: *const fn(self: *anyopaque, operandId: AutomationRemoteOperationOperandId, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAutomationConnectionBoundObjectProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsComThreadingRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComThreadingRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.ICoreAutomationConnectionBoundObjectProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0620bb64-9616-5593-be3a-eb8e6daeb3fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsComThreadingRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAutomationRegistrarStatics = extern struct {
    vtable: *const VTable,
    pub fn RegisterAnnotationType(self: *@This(), guid: *Guid) core.HResult!AutomationAnnotationTypeRegistration {
        var _r: AutomationAnnotationTypeRegistration = undefined;
        const _c = self.vtable.RegisterAnnotationType(@ptrCast(self), guid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterAnnotationType(self: *@This(), registration: AutomationAnnotationTypeRegistration) core.HResult!void {
        const _c = self.vtable.UnregisterAnnotationType(@ptrCast(self), registration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.ICoreAutomationRegistrarStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e50129b-d6dc-5680-b580-ffff78300304";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterAnnotationType: *const fn(self: *anyopaque, guid: *Guid, _r: *AutomationAnnotationTypeRegistration) callconv(.winapi) HRESULT,
        UnregisterAnnotationType: *const fn(self: *anyopaque, registration: AutomationAnnotationTypeRegistration) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAutomationRemoteOperation = extern struct {
    vtable: *const VTable,
    pub fn IsOpcodeSupported(self: *@This(), opcode: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOpcodeSupported(@ptrCast(self), opcode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportElement(self: *@This(), operandId: AutomationRemoteOperationOperandId, element: *AutomationElement) core.HResult!void {
        const _c = self.vtable.ImportElement(@ptrCast(self), operandId, element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ImportTextRange(self: *@This(), operandId: AutomationRemoteOperationOperandId, textRange: *AutomationTextRange) core.HResult!void {
        const _c = self.vtable.ImportTextRange(@ptrCast(self), operandId, textRange);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddToResults(self: *@This(), operandId: AutomationRemoteOperationOperandId) core.HResult!void {
        const _c = self.vtable.AddToResults(@ptrCast(self), operandId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Execute(self: *@This(), bytecodeBuffer: [*]u8) core.HResult!*AutomationRemoteOperationResult {
        var _r: *AutomationRemoteOperationResult = undefined;
        const _c = self.vtable.Execute(@ptrCast(self), bytecodeBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.ICoreAutomationRemoteOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ac656f4-e2bc-5c6e-b8e7-b224fb74b060";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsOpcodeSupported: *const fn(self: *anyopaque, opcode: u32, _r: *bool) callconv(.winapi) HRESULT,
        ImportElement: *const fn(self: *anyopaque, operandId: AutomationRemoteOperationOperandId, element: *AutomationElement) callconv(.winapi) HRESULT,
        ImportTextRange: *const fn(self: *anyopaque, operandId: AutomationRemoteOperationOperandId, textRange: *AutomationTextRange) callconv(.winapi) HRESULT,
        AddToResults: *const fn(self: *anyopaque, operandId: AutomationRemoteOperationOperandId) callconv(.winapi) HRESULT,
        Execute: *const fn(self: *anyopaque, bytecodeBuffer: [*]u8, _r: **AutomationRemoteOperationResult) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAutomationRemoteOperation2 = extern struct {
    vtable: *const VTable,
    pub fn ImportConnectionBoundObject(self: *@This(), operandId: AutomationRemoteOperationOperandId, connectionBoundObject: *AutomationConnectionBoundObject) core.HResult!void {
        const _c = self.vtable.ImportConnectionBoundObject(@ptrCast(self), operandId, connectionBoundObject);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.ICoreAutomationRemoteOperation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eefaf86f-e953-5099-8ce9-dca813482ba0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ImportConnectionBoundObject: *const fn(self: *anyopaque, operandId: AutomationRemoteOperationOperandId, connectionBoundObject: *AutomationConnectionBoundObject) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAutomationRemoteOperationContext = extern struct {
    vtable: *const VTable,
    pub fn GetOperand(self: *@This(), id: AutomationRemoteOperationOperandId) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetOperand(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetOperand(self: *@This(), id: AutomationRemoteOperationOperandId, operand: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetOperand(@ptrCast(self), id, operand);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetOperandWithOperandWithOperandInterfaceId(self: *@This(), id: AutomationRemoteOperationOperandId, operand: *IInspectable, operandInterfaceId: *Guid) core.HResult!void {
        const _c = self.vtable.SetOperandWithOperandWithOperandInterfaceId(@ptrCast(self), id, operand, operandInterfaceId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.ICoreAutomationRemoteOperationContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9af9cbb-3d3e-5918-a16b-7861626a3aeb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOperand: *const fn(self: *anyopaque, id: AutomationRemoteOperationOperandId, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetOperand: *const fn(self: *anyopaque, id: AutomationRemoteOperationOperandId, operand: *IInspectable) callconv(.winapi) HRESULT,
        SetOperandWithOperandWithOperandInterfaceId: *const fn(self: *anyopaque, id: AutomationRemoteOperationOperandId, operand: *IInspectable, operandInterfaceId: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const ICoreAutomationRemoteOperationExtensionProvider = extern struct {
    vtable: *const VTable,
    pub fn CallExtension(self: *@This(), extensionId: *Guid, context: *CoreAutomationRemoteOperationContext, operandIds: [*]AutomationRemoteOperationOperandId) core.HResult!void {
        const _c = self.vtable.CallExtension(@ptrCast(self), extensionId, context, operandIds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsExtensionSupported(self: *@This(), extensionId: *Guid) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsExtensionSupported(@ptrCast(self), extensionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.ICoreAutomationRemoteOperationExtensionProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88f53e67-dc69-553b-a0aa-70477e724da8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CallExtension: *const fn(self: *anyopaque, extensionId: *Guid, context: *CoreAutomationRemoteOperationContext, operandIds: [*]AutomationRemoteOperationOperandId) callconv(.winapi) HRESULT,
        IsExtensionSupported: *const fn(self: *anyopaque, extensionId: *Guid, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteAutomationClientSession = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateWindowAsync(self: *@This(), remoteWindowId: u64, remoteProcessId: u32, parentAutomationElement: *IInspectable) core.HResult!*IAsyncOperation(RemoteAutomationWindow) {
        var _r: *IAsyncOperation(RemoteAutomationWindow) = undefined;
        const _c = self.vtable.CreateWindowAsync(@ptrCast(self), remoteWindowId, remoteProcessId, parentAutomationElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addConnectionRequested(self: *@This(), handler: *TypedEventHandler(RemoteAutomationClientSession,RemoteAutomationConnectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisconnected(self: *@This(), handler: *TypedEventHandler(RemoteAutomationClientSession,RemoteAutomationDisconnectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Disconnected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Disconnected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IRemoteAutomationClientSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c8a091d-94cc-5b33-afdb-678cded2bd54";
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
        CreateWindowAsync: *const fn(self: *anyopaque, remoteWindowId: u64, remoteProcessId: u32, parentAutomationElement: *IInspectable, _r: **IAsyncOperation(RemoteAutomationWindow)) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        add_ConnectionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteAutomationClientSession,RemoteAutomationConnectionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Disconnected: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteAutomationClientSession,RemoteAutomationDisconnectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Disconnected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteAutomationClientSessionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), name: HSTRING) core.HResult!*RemoteAutomationClientSession {
        var _r: *RemoteAutomationClientSession = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstance2(self: *@This(), name: HSTRING, sessionId: *Guid) core.HResult!*RemoteAutomationClientSession {
        var _r: *RemoteAutomationClientSession = undefined;
        const _c = self.vtable.CreateInstance2(@ptrCast(self), name, sessionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IRemoteAutomationClientSessionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f250263d-6057-5373-a5a5-ed7265fe0376";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, name: HSTRING, _r: **RemoteAutomationClientSession) callconv(.winapi) HRESULT,
        CreateInstance2: *const fn(self: *anyopaque, name: HSTRING, sessionId: *Guid, _r: **RemoteAutomationClientSession) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteAutomationConnectionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLocalPipeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalPipeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteProcessId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RemoteProcessId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IRemoteAutomationConnectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea3319a8-e3a8-5dc6-adf8-044e46b14af5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalPipeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteProcessId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteAutomationDisconnectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLocalPipeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalPipeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IRemoteAutomationDisconnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbb33a3d-5d90-5c38-9eb2-dd9dcc1b2e3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalPipeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteAutomationServerStatics = extern struct {
    vtable: *const VTable,
    pub fn ReportSession(self: *@This(), sessionId: *Guid) core.HResult!void {
        const _c = self.vtable.ReportSession(@ptrCast(self), sessionId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IRemoteAutomationServerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6e8945e-0c11-5028-9ae3-c2771288b6b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportSession: *const fn(self: *anyopaque, sessionId: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteAutomationWindow = extern struct {
    vtable: *const VTable,
    pub fn getAutomationProvider(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_AutomationProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnregisterAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.IRemoteAutomationWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c607689-496d-512a-9bd5-c050cfaf1428";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutomationProvider: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        UnregisterAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const RemoteAutomationClientSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.Stop();
    }
    pub fn CreateWindowAsync(self: *@This(), remoteWindowId: u64, remoteProcessId: u32, parentAutomationElement: *IInspectable) core.HResult!*IAsyncOperation(RemoteAutomationWindow) {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.CreateWindowAsync(remoteWindowId, remoteProcessId, parentAutomationElement);
    }
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn addConnectionRequested(self: *@This(), handler: *TypedEventHandler(RemoteAutomationClientSession,RemoteAutomationConnectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.addConnectionRequested(handler);
    }
    pub fn removeConnectionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.removeConnectionRequested(token);
    }
    pub fn addDisconnected(self: *@This(), handler: *TypedEventHandler(RemoteAutomationClientSession,RemoteAutomationDisconnectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.addDisconnected(handler);
    }
    pub fn removeDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteAutomationClientSession = @ptrCast(self);
        return try this.removeDisconnected(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(name: HSTRING) core.HResult!*RemoteAutomationClientSession {
        const factory = @This().IRemoteAutomationClientSessionFactoryCache.get();
        return try factory.CreateInstance(name);
    }
    pub fn CreateInstance2(name: HSTRING, sessionId: *Guid) core.HResult!*RemoteAutomationClientSession {
        const factory = @This().IRemoteAutomationClientSessionFactoryCache.get();
        return try factory.CreateInstance2(name, sessionId);
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.RemoteAutomationClientSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteAutomationClientSession.GUID;
    pub const IID: Guid = IRemoteAutomationClientSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteAutomationClientSession.SIGNATURE);
    var _IRemoteAutomationClientSessionFactoryCache: FactoryCache(IRemoteAutomationClientSessionFactory, RUNTIME_NAME) = .{};
};
pub const RemoteAutomationConnectionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalPipeName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteAutomationConnectionRequestedEventArgs = @ptrCast(self);
        return try this.getLocalPipeName();
    }
    pub fn getRemoteProcessId(self: *@This()) core.HResult!u32 {
        const this: *IRemoteAutomationConnectionRequestedEventArgs = @ptrCast(self);
        return try this.getRemoteProcessId();
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.RemoteAutomationConnectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteAutomationConnectionRequestedEventArgs.GUID;
    pub const IID: Guid = IRemoteAutomationConnectionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteAutomationConnectionRequestedEventArgs.SIGNATURE);
};
pub const RemoteAutomationDisconnectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalPipeName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteAutomationDisconnectedEventArgs = @ptrCast(self);
        return try this.getLocalPipeName();
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.RemoteAutomationDisconnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteAutomationDisconnectedEventArgs.GUID;
    pub const IID: Guid = IRemoteAutomationDisconnectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteAutomationDisconnectedEventArgs.SIGNATURE);
};
pub const RemoteAutomationServer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ReportSession(sessionId: *Guid) core.HResult!void {
        const factory = @This().IRemoteAutomationServerStaticsCache.get();
        return try factory.ReportSession(sessionId);
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.RemoteAutomationServer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRemoteAutomationServerStaticsCache: FactoryCache(IRemoteAutomationServerStatics, RUNTIME_NAME) = .{};
};
pub const RemoteAutomationWindow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutomationProvider(self: *@This()) core.HResult!*IInspectable {
        const this: *IRemoteAutomationWindow = @ptrCast(self);
        return try this.getAutomationProvider();
    }
    pub fn UnregisterAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IRemoteAutomationWindow = @ptrCast(self);
        return try this.UnregisterAsync();
    }
    pub const NAME: []const u8 = "Windows.UI.UIAutomation.Core.RemoteAutomationWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteAutomationWindow.GUID;
    pub const IID: Guid = IRemoteAutomationWindow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteAutomationWindow.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const AutomationConnectionBoundObject = @import("../UIAutomation.zig").AutomationConnectionBoundObject;
const HResult = @import("../../Foundation.zig").HResult;
const AutomationTextRange = @import("../UIAutomation.zig").AutomationTextRange;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const AutomationElement = @import("../UIAutomation.zig").AutomationElement;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
