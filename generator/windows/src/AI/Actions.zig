pub const ActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!ActionEntityKind {
        const this: *IActionEntity = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getDisplayInfo(self: *@This()) core.HResult!*ActionEntityDisplayInfo {
        const this: *IActionEntity = @ptrCast(self);
        return try this.getDisplayInfo();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IActionEntity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionEntity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionEntity.GUID;
    pub const IID: Guid = IActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionEntity.SIGNATURE);
    var _IActionEntityFactoryCache: FactoryCache(IActionEntityFactory, RUNTIME_NAME) = .{};
};
pub const ActionEntityDisplayInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IActionEntityDisplayInfo = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionEntityDisplayInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionEntityDisplayInfo.GUID;
    pub const IID: Guid = IActionEntityDisplayInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionEntityDisplayInfo.SIGNATURE);
};
pub const ActionEntityFactory = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateFileEntity(self: *@This(), path: HSTRING) core.HResult!*FileActionEntity {
        const this: *IActionEntityFactory2 = @ptrCast(self);
        return try this.CreateFileEntity(path);
    }
    pub fn CreateDocumentEntity(self: *@This(), path: HSTRING) core.HResult!*DocumentActionEntity {
        const this: *IActionEntityFactory2 = @ptrCast(self);
        return try this.CreateDocumentEntity(path);
    }
    pub fn CreatePhotoEntity(self: *@This(), path: HSTRING) core.HResult!*PhotoActionEntity {
        const this: *IActionEntityFactory2 = @ptrCast(self);
        return try this.CreatePhotoEntity(path);
    }
    pub fn CreateTextEntity(self: *@This(), text: HSTRING) core.HResult!*TextActionEntity {
        const this: *IActionEntityFactory2 = @ptrCast(self);
        return try this.CreateTextEntity(text);
    }
    pub fn CreateRemoteFileEntity(self: *@This(), sourceId: HSTRING, fileKind: RemoteFileKind, sourceUri: *Uri, fileId: HSTRING, contentType: HSTRING, driveId: HSTRING, accountId: HSTRING, extension: HSTRING) core.HResult!*RemoteFileActionEntity {
        var this: ?*IActionEntityFactory3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionEntityFactory3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRemoteFileEntity(sourceId, fileKind, sourceUri, fileId, contentType, driveId, accountId, extension);
    }
    pub fn CreateTextEntityWithTextFormat(self: *@This(), text: HSTRING, textFormat: ActionEntityTextFormat) core.HResult!*TextActionEntity {
        var this: ?*IActionEntityFactory3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionEntityFactory3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateTextEntityWithTextFormat(text, textFormat);
    }
    pub fn CreateStreamingTextActionEntityWriter(self: *@This(), textFormat: ActionEntityTextFormat) core.HResult!*StreamingTextActionEntityWriter {
        var this: ?*IActionEntityFactory3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionEntityFactory3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateStreamingTextActionEntityWriter(textFormat);
    }
    pub fn CreateTableEntity(self: *@This(), data: [*]HSTRING, columnCount: u32) core.HResult!*TableActionEntity {
        var this: ?*IActionEntityFactory4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionEntityFactory4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateTableEntity(data, columnCount);
    }
    pub fn CreateContactEntity(self: *@This(), contact: *Contact) core.HResult!*ContactActionEntity {
        var this: ?*IActionEntityFactory4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionEntityFactory4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateContactEntity(contact);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionEntityFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionEntityFactory2.GUID;
    pub const IID: Guid = IActionEntityFactory2.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionEntityFactory2.SIGNATURE);
    var _IActionEntityFactoryFactoryCache: FactoryCache(IActionEntityFactoryFactory, RUNTIME_NAME) = .{};
};
pub const ActionEntityKind = enum(i32) {
    None = 0,
    Document = 1,
    File = 2,
    Photo = 3,
    Text = 4,
    StreamingText = 5,
    RemoteFile = 6,
    Table = 7,
    Contact = 8,
};
pub const ActionEntityTextFormat = enum(i32) {
    Plain = 0,
    Markdown = 1,
};
pub const ActionFeedback = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFeedbackKind(self: *@This()) core.HResult!ActionFeedbackKind {
        const this: *IActionFeedback = @ptrCast(self);
        return try this.getFeedbackKind();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionFeedback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionFeedback.GUID;
    pub const IID: Guid = IActionFeedback.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionFeedback.SIGNATURE);
};
pub const ActionFeedbackKind = enum(i32) {
    Positive = 0,
    Negative = 1,
};
pub const ActionInvocationContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEntityFactory(self: *@This()) core.HResult!*ActionEntityFactory {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.getEntityFactory();
    }
    pub fn SetInputEntity(self: *@This(), inputName: HSTRING, inputValue: *ActionEntity) core.HResult!void {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.SetInputEntity(inputName, inputValue);
    }
    pub fn GetInputEntities(self: *@This()) core.HResult![*]NamedActionEntity {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.GetInputEntities();
    }
    pub fn SetOutputEntity(self: *@This(), outputName: HSTRING, outputValue: *ActionEntity) core.HResult!void {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.SetOutputEntity(outputName, outputValue);
    }
    pub fn GetOutputEntities(self: *@This()) core.HResult![*]NamedActionEntity {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.GetOutputEntities();
    }
    pub fn getResult(self: *@This()) core.HResult!ActionInvocationResult {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.getResult();
    }
    pub fn putResult(self: *@This(), value: ActionInvocationResult) core.HResult!void {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.putResult(value);
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn putExtendedError(self: *@This(), value: HResult) core.HResult!void {
        const this: *IActionInvocationContext = @ptrCast(self);
        return try this.putExtendedError(value);
    }
    pub fn getInvokerWindowId(self: *@This()) core.HResult!WindowId {
        var this: ?*IActionInvocationContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionInvocationContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInvokerWindowId();
    }
    pub fn getHelpDetails(self: *@This()) core.HResult!*ActionInvocationHelpDetails {
        var this: ?*IActionInvocationContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionInvocationContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHelpDetails();
    }
    pub fn getActionId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IActionInvocationContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionInvocationContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActionId();
    }
    pub fn getInvokerAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IActionInvocationContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionInvocationContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInvokerAppUserModelId();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionInvocationContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionInvocationContext.GUID;
    pub const IID: Guid = IActionInvocationContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionInvocationContext.SIGNATURE);
};
pub const ActionInvocationHelpDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!ActionInvocationHelpKind {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ActionInvocationHelpKind) core.HResult!void {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getHelpUri(self: *@This()) core.HResult!*Uri {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.getHelpUri();
    }
    pub fn putHelpUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.putHelpUri(value);
    }
    pub fn getHelpUriDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.getHelpUriDescription();
    }
    pub fn putHelpUriDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IActionInvocationHelpDetails = @ptrCast(self);
        return try this.putHelpUriDescription(value);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionInvocationHelpDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionInvocationHelpDetails.GUID;
    pub const IID: Guid = IActionInvocationHelpDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionInvocationHelpDetails.SIGNATURE);
};
pub const ActionInvocationHelpKind = enum(i32) {
    None = 0,
    Error = 1,
    Warning = 2,
};
pub const ActionInvocationResult = enum(i32) {
    Success = 0,
    UserCanceled = 1,
    Unsupported = 2,
    Unavailable = 3,
};
pub const ActionRuntime = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActionCatalog(self: *@This()) core.HResult!*ActionCatalog {
        const this: *IActionRuntime = @ptrCast(self);
        return try this.getActionCatalog();
    }
    pub fn getEntityFactory(self: *@This()) core.HResult!*ActionEntityFactory {
        const this: *IActionRuntime = @ptrCast(self);
        return try this.getEntityFactory();
    }
    pub fn CreateInvocationContext(self: *@This(), actionId: HSTRING) core.HResult!*ActionInvocationContext {
        const this: *IActionRuntime = @ptrCast(self);
        return try this.CreateInvocationContext(actionId);
    }
    pub fn CreateActionFeedback(self: *@This(), feedbackKind: ActionFeedbackKind) core.HResult!*ActionFeedback {
        var this: ?*IActionRuntime2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateActionFeedback(feedbackKind);
    }
    pub fn SetActionAvailability(self: *@This(), actionId: HSTRING, isAvailable: bool) core.HResult!void {
        var this: ?*IActionRuntime2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetActionAvailability(actionId, isAvailable);
    }
    pub fn GetActionAvailability(self: *@This(), actionId: HSTRING) core.HResult!bool {
        var this: ?*IActionRuntime2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActionAvailability(actionId);
    }
    pub fn CreateInvocationContextWithWindowId(self: *@This(), actionId: HSTRING, invokerWindowId: WindowId) core.HResult!*ActionInvocationContext {
        var this: ?*IActionRuntime3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateInvocationContextWithWindowId(actionId, invokerWindowId);
    }
    pub fn GetActionEntityById(self: *@This(), entityId: HSTRING) core.HResult!*ActionEntity {
        var this: ?*IActionRuntime3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActionEntityById(entityId);
    }
    pub fn getLatestSupportedSchemaVersion(self: *@This()) core.HResult!u32 {
        var this: ?*IActionRuntime3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLatestSupportedSchemaVersion();
    }
    pub fn GetActionInvocationContextFromToken(self: *@This(), token: HSTRING) core.HResult!*ActionInvocationContext {
        var this: ?*IActionRuntime4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActionRuntime4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetActionInvocationContextFromToken(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ActionRuntime";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActionRuntime.GUID;
    pub const IID: Guid = IActionRuntime.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActionRuntime.SIGNATURE);
    var _IActionRuntimeFactoryCache: FactoryCache(IActionRuntimeFactory, RUNTIME_NAME) = .{};
};
pub const ContactActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactActionEntity = @ptrCast(self);
        return try this.getContact();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ContactActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactActionEntity.GUID;
    pub const IID: Guid = IContactActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactActionEntity.SIGNATURE);
};
pub const DocumentActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFullPath(self: *@This()) core.HResult!HSTRING {
        const this: *IDocumentActionEntity = @ptrCast(self);
        return try this.getFullPath();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.DocumentActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDocumentActionEntity.GUID;
    pub const IID: Guid = IDocumentActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDocumentActionEntity.SIGNATURE);
};
pub const FileActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFullPath(self: *@This()) core.HResult!HSTRING {
        const this: *IFileActionEntity = @ptrCast(self);
        return try this.getFullPath();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.FileActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileActionEntity.GUID;
    pub const IID: Guid = IFileActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileActionEntity.SIGNATURE);
};
pub const IActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!ActionEntityKind {
        var _r: ActionEntityKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayInfo(self: *@This()) core.HResult!*ActionEntityDisplayInfo {
        var _r: *ActionEntityDisplayInfo = undefined;
        const _c = self.vtable.get_DisplayInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "445e700f-2122-5668-9a16-4cab2982c5f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ActionEntityKind) callconv(.winapi) HRESULT,
        get_DisplayInfo: *const fn(self: *anyopaque, _r: **ActionEntityDisplayInfo) callconv(.winapi) HRESULT,
    };
};
pub const IActionEntity2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntity2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98fe136d-dd3a-58c1-af76-feb4e19dce9e";
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
    };
};
pub const IActionEntityDisplayInfo = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntityDisplayInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "057a9ede-03e1-55c6-acba-c7056216735a";
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
    };
};
pub const IActionEntityFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntityFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cb752a0-5bf8-5be2-916e-b00eff80088d";
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
pub const IActionEntityFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFileEntity(self: *@This(), path: HSTRING) core.HResult!*FileActionEntity {
        var _r: *FileActionEntity = undefined;
        const _c = self.vtable.CreateFileEntity(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDocumentEntity(self: *@This(), path: HSTRING) core.HResult!*DocumentActionEntity {
        var _r: *DocumentActionEntity = undefined;
        const _c = self.vtable.CreateDocumentEntity(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePhotoEntity(self: *@This(), path: HSTRING) core.HResult!*PhotoActionEntity {
        var _r: *PhotoActionEntity = undefined;
        const _c = self.vtable.CreatePhotoEntity(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextEntity(self: *@This(), text: HSTRING) core.HResult!*TextActionEntity {
        var _r: *TextActionEntity = undefined;
        const _c = self.vtable.CreateTextEntity(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntityFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea2fb6a5-ec6d-5180-9d30-bc663b84e7b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFileEntity: *const fn(self: *anyopaque, path: HSTRING, _r: **FileActionEntity) callconv(.winapi) HRESULT,
        CreateDocumentEntity: *const fn(self: *anyopaque, path: HSTRING, _r: **DocumentActionEntity) callconv(.winapi) HRESULT,
        CreatePhotoEntity: *const fn(self: *anyopaque, path: HSTRING, _r: **PhotoActionEntity) callconv(.winapi) HRESULT,
        CreateTextEntity: *const fn(self: *anyopaque, text: HSTRING, _r: **TextActionEntity) callconv(.winapi) HRESULT,
    };
};
pub const IActionEntityFactory3 = extern struct {
    vtable: *const VTable,
    pub fn CreateRemoteFileEntity(self: *@This(), sourceId: HSTRING, fileKind: RemoteFileKind, sourceUri: *Uri, fileId: HSTRING, contentType: HSTRING, driveId: HSTRING, accountId: HSTRING, extension: HSTRING) core.HResult!*RemoteFileActionEntity {
        var _r: *RemoteFileActionEntity = undefined;
        const _c = self.vtable.CreateRemoteFileEntity(@ptrCast(self), sourceId, fileKind, sourceUri, fileId, contentType, driveId, accountId, extension, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextEntity(self: *@This(), text: HSTRING, textFormat: ActionEntityTextFormat) core.HResult!*TextActionEntity {
        var _r: *TextActionEntity = undefined;
        const _c = self.vtable.CreateTextEntity(@ptrCast(self), text, textFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStreamingTextActionEntityWriter(self: *@This(), textFormat: ActionEntityTextFormat) core.HResult!*StreamingTextActionEntityWriter {
        var _r: *StreamingTextActionEntityWriter = undefined;
        const _c = self.vtable.CreateStreamingTextActionEntityWriter(@ptrCast(self), textFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntityFactory3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4910e689-00b5-56bb-9c65-0fcc76215283";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRemoteFileEntity: *const fn(self: *anyopaque, sourceId: HSTRING, fileKind: RemoteFileKind, sourceUri: *Uri, fileId: HSTRING, contentType: HSTRING, driveId: HSTRING, accountId: HSTRING, extension: HSTRING, _r: **RemoteFileActionEntity) callconv(.winapi) HRESULT,
        CreateTextEntity: *const fn(self: *anyopaque, text: HSTRING, textFormat: ActionEntityTextFormat, _r: **TextActionEntity) callconv(.winapi) HRESULT,
        CreateStreamingTextActionEntityWriter: *const fn(self: *anyopaque, textFormat: ActionEntityTextFormat, _r: **StreamingTextActionEntityWriter) callconv(.winapi) HRESULT,
    };
};
pub const IActionEntityFactory4 = extern struct {
    vtable: *const VTable,
    pub fn CreateTableEntity(self: *@This(), data: [*]HSTRING, columnCount: u32) core.HResult!*TableActionEntity {
        var _r: *TableActionEntity = undefined;
        const _c = self.vtable.CreateTableEntity(@ptrCast(self), data, columnCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContactEntity(self: *@This(), contact: *Contact) core.HResult!*ContactActionEntity {
        var _r: *ContactActionEntity = undefined;
        const _c = self.vtable.CreateContactEntity(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntityFactory4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "332eda05-de0e-5a58-b318-a2ad771f013d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTableEntity: *const fn(self: *anyopaque, data: [*]HSTRING, columnCount: u32, _r: **TableActionEntity) callconv(.winapi) HRESULT,
        CreateContactEntity: *const fn(self: *anyopaque, contact: *Contact, _r: **ContactActionEntity) callconv(.winapi) HRESULT,
    };
};
pub const IActionEntityFactoryFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionEntityFactoryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9147d8f-88a0-5ec0-a564-47e2a1081412";
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
pub const IActionFeedback = extern struct {
    vtable: *const VTable,
    pub fn getFeedbackKind(self: *@This()) core.HResult!ActionFeedbackKind {
        var _r: ActionFeedbackKind = undefined;
        const _c = self.vtable.get_FeedbackKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionFeedback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a12ee7ab-2454-56c9-bbdf-c089457fbc5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FeedbackKind: *const fn(self: *anyopaque, _r: *ActionFeedbackKind) callconv(.winapi) HRESULT,
    };
};
pub const IActionInvocationContext = extern struct {
    vtable: *const VTable,
    pub fn getEntityFactory(self: *@This()) core.HResult!*ActionEntityFactory {
        var _r: *ActionEntityFactory = undefined;
        const _c = self.vtable.get_EntityFactory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetInputEntity(self: *@This(), inputName: HSTRING, inputValue: *ActionEntity) core.HResult!void {
        const _c = self.vtable.SetInputEntity(@ptrCast(self), inputName, inputValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInputEntities(self: *@This()) core.HResult![*]NamedActionEntity {
        var _r: [*]NamedActionEntity = undefined;
        const _c = self.vtable.GetInputEntities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetOutputEntity(self: *@This(), outputName: HSTRING, outputValue: *ActionEntity) core.HResult!void {
        const _c = self.vtable.SetOutputEntity(@ptrCast(self), outputName, outputValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetOutputEntities(self: *@This()) core.HResult![*]NamedActionEntity {
        var _r: [*]NamedActionEntity = undefined;
        const _c = self.vtable.GetOutputEntities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!ActionInvocationResult {
        var _r: ActionInvocationResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResult(self: *@This(), value: ActionInvocationResult) core.HResult!void {
        const _c = self.vtable.put_Result(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtendedError(self: *@This(), value: HResult) core.HResult!void {
        const _c = self.vtable.put_ExtendedError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionInvocationContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c32b622e-86e1-5eba-9661-605910104978";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EntityFactory: *const fn(self: *anyopaque, _r: **ActionEntityFactory) callconv(.winapi) HRESULT,
        SetInputEntity: *const fn(self: *anyopaque, inputName: HSTRING, inputValue: *ActionEntity) callconv(.winapi) HRESULT,
        GetInputEntities: *const fn(self: *anyopaque, _r: *[*]NamedActionEntity) callconv(.winapi) HRESULT,
        SetOutputEntity: *const fn(self: *anyopaque, outputName: HSTRING, outputValue: *ActionEntity) callconv(.winapi) HRESULT,
        GetOutputEntities: *const fn(self: *anyopaque, _r: *[*]NamedActionEntity) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: *ActionInvocationResult) callconv(.winapi) HRESULT,
        put_Result: *const fn(self: *anyopaque, value: ActionInvocationResult) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        put_ExtendedError: *const fn(self: *anyopaque, value: HResult) callconv(.winapi) HRESULT,
    };
};
pub const IActionInvocationContext2 = extern struct {
    vtable: *const VTable,
    pub fn getInvokerWindowId(self: *@This()) core.HResult!WindowId {
        var _r: WindowId = undefined;
        const _c = self.vtable.get_InvokerWindowId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHelpDetails(self: *@This()) core.HResult!*ActionInvocationHelpDetails {
        var _r: *ActionInvocationHelpDetails = undefined;
        const _c = self.vtable.get_HelpDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvokerAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InvokerAppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionInvocationContext2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c843086-9279-5bcd-8f2e-d15121e7a827";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InvokerWindowId: *const fn(self: *anyopaque, _r: *WindowId) callconv(.winapi) HRESULT,
        get_HelpDetails: *const fn(self: *anyopaque, _r: **ActionInvocationHelpDetails) callconv(.winapi) HRESULT,
        get_ActionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InvokerAppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IActionInvocationHelpDetails = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!ActionInvocationHelpKind {
        var _r: ActionInvocationHelpKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ActionInvocationHelpKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
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
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHelpUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_HelpUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHelpUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_HelpUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHelpUriDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HelpUriDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHelpUriDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_HelpUriDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionInvocationHelpDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5430f272-078f-5722-8f7d-90cf8ddd595e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ActionInvocationHelpKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ActionInvocationHelpKind) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HelpUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_HelpUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_HelpUriDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_HelpUriDescription: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IActionRuntime = extern struct {
    vtable: *const VTable,
    pub fn getActionCatalog(self: *@This()) core.HResult!*ActionCatalog {
        var _r: *ActionCatalog = undefined;
        const _c = self.vtable.get_ActionCatalog(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEntityFactory(self: *@This()) core.HResult!*ActionEntityFactory {
        var _r: *ActionEntityFactory = undefined;
        const _c = self.vtable.get_EntityFactory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInvocationContext(self: *@This(), actionId: HSTRING) core.HResult!*ActionInvocationContext {
        var _r: *ActionInvocationContext = undefined;
        const _c = self.vtable.CreateInvocationContext(@ptrCast(self), actionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionRuntime";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "206efa2c-c909-508a-b4b0-9482be96db9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActionCatalog: *const fn(self: *anyopaque, _r: **ActionCatalog) callconv(.winapi) HRESULT,
        get_EntityFactory: *const fn(self: *anyopaque, _r: **ActionEntityFactory) callconv(.winapi) HRESULT,
        CreateInvocationContext: *const fn(self: *anyopaque, actionId: HSTRING, _r: **ActionInvocationContext) callconv(.winapi) HRESULT,
    };
};
pub const IActionRuntime2 = extern struct {
    vtable: *const VTable,
    pub fn CreateActionFeedback(self: *@This(), feedbackKind: ActionFeedbackKind) core.HResult!*ActionFeedback {
        var _r: *ActionFeedback = undefined;
        const _c = self.vtable.CreateActionFeedback(@ptrCast(self), feedbackKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetActionAvailability(self: *@This(), actionId: HSTRING, isAvailable: bool) core.HResult!void {
        const _c = self.vtable.SetActionAvailability(@ptrCast(self), actionId, isAvailable);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetActionAvailability(self: *@This(), actionId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetActionAvailability(@ptrCast(self), actionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionRuntime2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2da4d2c0-e593-5350-8143-15bb24f63411";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateActionFeedback: *const fn(self: *anyopaque, feedbackKind: ActionFeedbackKind, _r: **ActionFeedback) callconv(.winapi) HRESULT,
        SetActionAvailability: *const fn(self: *anyopaque, actionId: HSTRING, isAvailable: bool) callconv(.winapi) HRESULT,
        GetActionAvailability: *const fn(self: *anyopaque, actionId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IActionRuntime3 = extern struct {
    vtable: *const VTable,
    pub fn CreateInvocationContextWithWindowId(self: *@This(), actionId: HSTRING, invokerWindowId: WindowId) core.HResult!*ActionInvocationContext {
        var _r: *ActionInvocationContext = undefined;
        const _c = self.vtable.CreateInvocationContextWithWindowId(@ptrCast(self), actionId, invokerWindowId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActionEntityById(self: *@This(), entityId: HSTRING) core.HResult!*ActionEntity {
        var _r: *ActionEntity = undefined;
        const _c = self.vtable.GetActionEntityById(@ptrCast(self), entityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLatestSupportedSchemaVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LatestSupportedSchemaVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionRuntime3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f020c3c0-caec-5928-ad00-81069b80fbc1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInvocationContextWithWindowId: *const fn(self: *anyopaque, actionId: HSTRING, invokerWindowId: WindowId, _r: **ActionInvocationContext) callconv(.winapi) HRESULT,
        GetActionEntityById: *const fn(self: *anyopaque, entityId: HSTRING, _r: **ActionEntity) callconv(.winapi) HRESULT,
        get_LatestSupportedSchemaVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IActionRuntime4 = extern struct {
    vtable: *const VTable,
    pub fn GetActionInvocationContextFromToken(self: *@This(), token: HSTRING) core.HResult!*ActionInvocationContext {
        var _r: *ActionInvocationContext = undefined;
        const _c = self.vtable.GetActionInvocationContextFromToken(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionRuntime4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06851dcd-c743-5c7f-88a1-bbaeb02f5e28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetActionInvocationContextFromToken: *const fn(self: *anyopaque, token: HSTRING, _r: **ActionInvocationContext) callconv(.winapi) HRESULT,
    };
};
pub const IActionRuntimeFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.AI.Actions.IActionRuntimeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3f366e9-8dc9-50a0-8040-e5c14fa609d6";
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
pub const IContactActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IContactActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "458c3e07-5892-5485-bd9b-8f7a540c9501";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IDocumentActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getFullPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IDocumentActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56715297-960b-59ff-af4b-ece1098b2e36";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FullPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getFullPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IFileActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f20ab43f-4c80-5904-bd42-3e6248babfcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FullPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INamedActionEntity = extern struct {
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
    pub fn getEntity(self: *@This()) core.HResult!*ActionEntity {
        var _r: *ActionEntity = undefined;
        const _c = self.vtable.get_Entity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEntity(self: *@This(), value: *ActionEntity) core.HResult!void {
        const _c = self.vtable.put_Entity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.INamedActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1aaebeef-435b-5a0d-8182-05fe4dd47712";
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
        get_Entity: *const fn(self: *anyopaque, _r: **ActionEntity) callconv(.winapi) HRESULT,
        put_Entity: *const fn(self: *anyopaque, value: *ActionEntity) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getFullPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IPhotoActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "425123b3-20ef-51a6-b35f-8414384765c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FullPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteFileActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getSourceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileKind(self: *@This()) core.HResult!RemoteFileKind {
        var _r: RemoteFileKind = undefined;
        const _c = self.vtable.get_FileKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDriveId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DriveId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtension(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Extension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IRemoteFileActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5d8ec21-a2bd-545a-abfc-d7aa79fd0b81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FileKind: *const fn(self: *anyopaque, _r: *RemoteFileKind) callconv(.winapi) HRESULT,
        get_SourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_FileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DriveId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Extension: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStreamingTextActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextFormat(self: *@This()) core.HResult!ActionEntityTextFormat {
        var _r: ActionEntityTextFormat = undefined;
        const _c = self.vtable.get_TextFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTextChanged(self: *@This(), handler: *TypedEventHandler(StreamingTextActionEntity,StreamingTextActionEntityTextChangedArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IStreamingTextActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44cd8a16-abc9-5703-b4bf-6fe8b7a802fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TextFormat: *const fn(self: *anyopaque, _r: *ActionEntityTextFormat) callconv(.winapi) HRESULT,
        add_TextChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(StreamingTextActionEntity,StreamingTextActionEntityTextChangedArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStreamingTextActionEntityTextChangedArgs = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IStreamingTextActionEntityTextChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c62011f-3e06-588b-a3bd-d726bd82fb13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStreamingTextActionEntityWriter = extern struct {
    vtable: *const VTable,
    pub fn getReaderEntity(self: *@This()) core.HResult!*StreamingTextActionEntity {
        var _r: *StreamingTextActionEntity = undefined;
        const _c = self.vtable.get_ReaderEntity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextFormat(self: *@This()) core.HResult!ActionEntityTextFormat {
        var _r: ActionEntityTextFormat = undefined;
        const _c = self.vtable.get_TextFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetText(self: *@This(), text: HSTRING) core.HResult!void {
        const _c = self.vtable.SetText(@ptrCast(self), text);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.IStreamingTextActionEntityWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bce2f76-a8af-5ff2-833c-108737ba0f42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReaderEntity: *const fn(self: *anyopaque, _r: **StreamingTextActionEntity) callconv(.winapi) HRESULT,
        get_TextFormat: *const fn(self: *anyopaque, _r: *ActionEntityTextFormat) callconv(.winapi) HRESULT,
        SetText: *const fn(self: *anyopaque, text: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITableActionEntity = extern struct {
    vtable: *const VTable,
    pub fn GetTextContent(self: *@This()) core.HResult![*]HSTRING {
        var _r: [*]HSTRING = undefined;
        const _c = self.vtable.GetTextContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RowCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColumnCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ColumnCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ITableActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f252cdb-ba24-5dbb-9d17-1b300773d141";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTextContent: *const fn(self: *anyopaque, _r: *[*]HSTRING) callconv(.winapi) HRESULT,
        get_RowCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ColumnCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ITextActionEntity = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ITextActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c4ec25f-5adb-5f73-b8f3-080fbeadd612";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITextActionEntity2 = extern struct {
    vtable: *const VTable,
    pub fn getTextFormat(self: *@This()) core.HResult!ActionEntityTextFormat {
        var _r: ActionEntityTextFormat = undefined;
        const _c = self.vtable.get_TextFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.ITextActionEntity2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c500889-cf08-51e7-beca-f0bbc7a7486c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextFormat: *const fn(self: *anyopaque, _r: *ActionEntityTextFormat) callconv(.winapi) HRESULT,
    };
};
pub const NamedActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *INamedActionEntity = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INamedActionEntity = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getEntity(self: *@This()) core.HResult!*ActionEntity {
        const this: *INamedActionEntity = @ptrCast(self);
        return try this.getEntity();
    }
    pub fn putEntity(self: *@This(), value: *ActionEntity) core.HResult!void {
        const this: *INamedActionEntity = @ptrCast(self);
        return try this.putEntity(value);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.NamedActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INamedActionEntity.GUID;
    pub const IID: Guid = INamedActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INamedActionEntity.SIGNATURE);
};
pub const PhotoActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFullPath(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoActionEntity = @ptrCast(self);
        return try this.getFullPath();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.PhotoActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoActionEntity.GUID;
    pub const IID: Guid = IPhotoActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoActionEntity.SIGNATURE);
};
pub const RemoteFileActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getSourceId();
    }
    pub fn getFileKind(self: *@This()) core.HResult!RemoteFileKind {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getFileKind();
    }
    pub fn getSourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getSourceUri();
    }
    pub fn getFileId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getFileId();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn getDriveId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getDriveId();
    }
    pub fn getAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getAccountId();
    }
    pub fn getExtension(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteFileActionEntity = @ptrCast(self);
        return try this.getExtension();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.RemoteFileActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteFileActionEntity.GUID;
    pub const IID: Guid = IRemoteFileActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteFileActionEntity.SIGNATURE);
};
pub const RemoteFileKind = enum(i32) {
    Document = 0,
    Photo = 1,
    File = 2,
};
pub const StreamingTextActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IStreamingTextActionEntity = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn GetText(self: *@This()) core.HResult!HSTRING {
        const this: *IStreamingTextActionEntity = @ptrCast(self);
        return try this.GetText();
    }
    pub fn getTextFormat(self: *@This()) core.HResult!ActionEntityTextFormat {
        const this: *IStreamingTextActionEntity = @ptrCast(self);
        return try this.getTextFormat();
    }
    pub fn addTextChanged(self: *@This(), handler: *TypedEventHandler(StreamingTextActionEntity,StreamingTextActionEntityTextChangedArgs)) core.HResult!EventRegistrationToken {
        const this: *IStreamingTextActionEntity = @ptrCast(self);
        return try this.addTextChanged(handler);
    }
    pub fn removeTextChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IStreamingTextActionEntity = @ptrCast(self);
        return try this.removeTextChanged(token);
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.StreamingTextActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamingTextActionEntity.GUID;
    pub const IID: Guid = IStreamingTextActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamingTextActionEntity.SIGNATURE);
};
pub const StreamingTextActionEntityTextChangedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IStreamingTextActionEntityTextChangedArgs = @ptrCast(self);
        return try this.getText();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IStreamingTextActionEntityTextChangedArgs = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.StreamingTextActionEntityTextChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamingTextActionEntityTextChangedArgs.GUID;
    pub const IID: Guid = IStreamingTextActionEntityTextChangedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamingTextActionEntityTextChangedArgs.SIGNATURE);
};
pub const StreamingTextActionEntityWriter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReaderEntity(self: *@This()) core.HResult!*StreamingTextActionEntity {
        const this: *IStreamingTextActionEntityWriter = @ptrCast(self);
        return try this.getReaderEntity();
    }
    pub fn getTextFormat(self: *@This()) core.HResult!ActionEntityTextFormat {
        const this: *IStreamingTextActionEntityWriter = @ptrCast(self);
        return try this.getTextFormat();
    }
    pub fn SetText(self: *@This(), text: HSTRING) core.HResult!void {
        const this: *IStreamingTextActionEntityWriter = @ptrCast(self);
        return try this.SetText(text);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.StreamingTextActionEntityWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamingTextActionEntityWriter.GUID;
    pub const IID: Guid = IStreamingTextActionEntityWriter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamingTextActionEntityWriter.SIGNATURE);
};
pub const TableActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetTextContent(self: *@This()) core.HResult![*]HSTRING {
        const this: *ITableActionEntity = @ptrCast(self);
        return try this.GetTextContent();
    }
    pub fn getRowCount(self: *@This()) core.HResult!u32 {
        const this: *ITableActionEntity = @ptrCast(self);
        return try this.getRowCount();
    }
    pub fn getColumnCount(self: *@This()) core.HResult!u32 {
        const this: *ITableActionEntity = @ptrCast(self);
        return try this.getColumnCount();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.TableActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITableActionEntity.GUID;
    pub const IID: Guid = ITableActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITableActionEntity.SIGNATURE);
};
pub const TextActionEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextActionEntity = @ptrCast(self);
        return try this.getText();
    }
    pub fn getTextFormat(self: *@This()) core.HResult!ActionEntityTextFormat {
        var this: ?*ITextActionEntity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextActionEntity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTextFormat();
    }
    pub const NAME: []const u8 = "Windows.AI.Actions.TextActionEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextActionEntity.GUID;
    pub const IID: Guid = ITextActionEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextActionEntity.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const WindowId = @import("../UI.zig").WindowId;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const Contact = @import("../ApplicationModel/Contacts.zig").Contact;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const ActionCatalog = @import("./Hosting.zig").ActionCatalog;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
pub const Hosting = @import("./Actions/Hosting.zig");
pub const Provider = @import("./Actions/Provider.zig");
