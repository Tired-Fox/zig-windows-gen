pub const CoreTextCompositionCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextCompositionCompletedEventArgs = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn getCompositionSegments(self: *@This()) core.HResult!*IVectorView(CoreTextCompositionSegment) {
        const this: *ICoreTextCompositionCompletedEventArgs = @ptrCast(self);
        return try this.getCompositionSegments();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextCompositionCompletedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextCompositionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextCompositionCompletedEventArgs.GUID;
    pub const IID: Guid = ICoreTextCompositionCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextCompositionCompletedEventArgs.SIGNATURE);
};
pub const CoreTextCompositionSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreconversionString(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreTextCompositionSegment = @ptrCast(self);
        return try this.getPreconversionString();
    }
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextCompositionSegment = @ptrCast(self);
        return try this.getRange();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextCompositionSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextCompositionSegment.GUID;
    pub const IID: Guid = ICoreTextCompositionSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextCompositionSegment.SIGNATURE);
};
pub const CoreTextCompositionStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextCompositionStartedEventArgs = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextCompositionStartedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextCompositionStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextCompositionStartedEventArgs.GUID;
    pub const IID: Guid = ICoreTextCompositionStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextCompositionStartedEventArgs.SIGNATURE);
};
pub const CoreTextEditContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getInputScope(self: *@This()) core.HResult!CoreTextInputScope {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.getInputScope();
    }
    pub fn putInputScope(self: *@This(), value: CoreTextInputScope) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.putInputScope(value);
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.getIsReadOnly();
    }
    pub fn putIsReadOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.putIsReadOnly(value);
    }
    pub fn getInputPaneDisplayPolicy(self: *@This()) core.HResult!CoreTextInputPaneDisplayPolicy {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.getInputPaneDisplayPolicy();
    }
    pub fn putInputPaneDisplayPolicy(self: *@This(), value: CoreTextInputPaneDisplayPolicy) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.putInputPaneDisplayPolicy(value);
    }
    pub fn addTextRequested(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextTextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addTextRequested(handler);
    }
    pub fn removeTextRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeTextRequested(cookie);
    }
    pub fn addSelectionRequested(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextSelectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addSelectionRequested(handler);
    }
    pub fn removeSelectionRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeSelectionRequested(cookie);
    }
    pub fn addLayoutRequested(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextLayoutRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addLayoutRequested(handler);
    }
    pub fn removeLayoutRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeLayoutRequested(cookie);
    }
    pub fn addTextUpdating(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextTextUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addTextUpdating(handler);
    }
    pub fn removeTextUpdating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeTextUpdating(cookie);
    }
    pub fn addSelectionUpdating(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextSelectionUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addSelectionUpdating(handler);
    }
    pub fn removeSelectionUpdating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeSelectionUpdating(cookie);
    }
    pub fn addFormatUpdating(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextFormatUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addFormatUpdating(handler);
    }
    pub fn removeFormatUpdating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeFormatUpdating(cookie);
    }
    pub fn addCompositionStarted(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextCompositionStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addCompositionStarted(handler);
    }
    pub fn removeCompositionStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeCompositionStarted(cookie);
    }
    pub fn addCompositionCompleted(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextCompositionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addCompositionCompleted(handler);
    }
    pub fn removeCompositionCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeCompositionCompleted(cookie);
    }
    pub fn addFocusRemoved(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.addFocusRemoved(handler);
    }
    pub fn removeFocusRemoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.removeFocusRemoved(cookie);
    }
    pub fn NotifyFocusEnter(self: *@This()) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.NotifyFocusEnter();
    }
    pub fn NotifyFocusLeave(self: *@This()) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.NotifyFocusLeave();
    }
    pub fn NotifyTextChanged(self: *@This(), modifiedRange: CoreTextRange, newLength: i32, newSelection: CoreTextRange) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.NotifyTextChanged(modifiedRange, newLength, newSelection);
    }
    pub fn NotifySelectionChanged(self: *@This(), selection: CoreTextRange) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.NotifySelectionChanged(selection);
    }
    pub fn NotifyLayoutChanged(self: *@This()) core.HResult!void {
        const this: *ICoreTextEditContext = @ptrCast(self);
        return try this.NotifyLayoutChanged();
    }
    pub fn addNotifyFocusLeaveCompleted(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreTextEditContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreTextEditContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addNotifyFocusLeaveCompleted(handler);
    }
    pub fn removeNotifyFocusLeaveCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreTextEditContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreTextEditContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeNotifyFocusLeaveCompleted(cookie);
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextEditContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextEditContext.GUID;
    pub const IID: Guid = ICoreTextEditContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextEditContext.SIGNATURE);
};
pub const CoreTextFormatUpdatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getRange();
    }
    pub fn getTextColor(self: *@This()) core.HResult!*IReference(UIElementType) {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getTextColor();
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!*IReference(UIElementType) {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn getUnderlineColor(self: *@This()) core.HResult!*IReference(UIElementType) {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getUnderlineColor();
    }
    pub fn getUnderlineType(self: *@This()) core.HResult!*IReference(UnderlineType) {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getUnderlineType();
    }
    pub fn getReason(self: *@This()) core.HResult!CoreTextFormatUpdatingReason {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub fn getResult(self: *@This()) core.HResult!CoreTextFormatUpdatingResult {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub fn putResult(self: *@This(), value: CoreTextFormatUpdatingResult) core.HResult!void {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.putResult(value);
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextFormatUpdatingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextFormatUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextFormatUpdatingEventArgs.GUID;
    pub const IID: Guid = ICoreTextFormatUpdatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextFormatUpdatingEventArgs.SIGNATURE);
};
pub const CoreTextFormatUpdatingReason = enum(i32) {
    None = 0,
    CompositionUnconverted = 1,
    CompositionConverted = 2,
    CompositionTargetUnconverted = 3,
    CompositionTargetConverted = 4,
};
pub const CoreTextFormatUpdatingResult = enum(i32) {
    Succeeded = 0,
    Failed = 1,
};
pub const CoreTextInputPaneDisplayPolicy = enum(i32) {
    Automatic = 0,
    Manual = 1,
};
pub const CoreTextInputScope = enum(i32) {
    Default = 0,
    Url = 1,
    FilePath = 2,
    FileName = 3,
    EmailUserName = 4,
    EmailAddress = 5,
    UserName = 6,
    PersonalFullName = 7,
    PersonalNamePrefix = 8,
    PersonalGivenName = 9,
    PersonalMiddleName = 10,
    PersonalSurname = 11,
    PersonalNameSuffix = 12,
    Address = 13,
    AddressPostalCode = 14,
    AddressStreet = 15,
    AddressStateOrProvince = 16,
    AddressCity = 17,
    AddressCountryName = 18,
    AddressCountryShortName = 19,
    CurrencyAmountAndSymbol = 20,
    CurrencyAmount = 21,
    Date = 22,
    DateMonth = 23,
    DateDay = 24,
    DateYear = 25,
    DateMonthName = 26,
    DateDayName = 27,
    Number = 29,
    SingleCharacter = 30,
    Password = 31,
    TelephoneNumber = 32,
    TelephoneCountryCode = 33,
    TelephoneAreaCode = 34,
    TelephoneLocalNumber = 35,
    Time = 36,
    TimeHour = 37,
    TimeMinuteOrSecond = 38,
    NumberFullWidth = 39,
    AlphanumericHalfWidth = 40,
    AlphanumericFullWidth = 41,
    CurrencyChinese = 42,
    Bopomofo = 43,
    Hiragana = 44,
    KatakanaHalfWidth = 45,
    KatakanaFullWidth = 46,
    Hanja = 47,
    HangulHalfWidth = 48,
    HangulFullWidth = 49,
    Search = 50,
    Formula = 51,
    SearchIncremental = 52,
    ChineseHalfWidth = 53,
    ChineseFullWidth = 54,
    NativeScript = 55,
    Text = 57,
    Chat = 58,
    NameOrPhoneNumber = 59,
    EmailUserNameOrAddress = 60,
    Private = 61,
    Maps = 62,
    PasswordNumeric = 63,
    FormulaNumber = 67,
    ChatWithoutEmoji = 68,
    Digits = 28,
    PinNumeric = 64,
    PinAlphanumeric = 65,
};
pub const CoreTextLayoutBounds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextBounds(self: *@This()) core.HResult!Rect {
        const this: *ICoreTextLayoutBounds = @ptrCast(self);
        return try this.getTextBounds();
    }
    pub fn putTextBounds(self: *@This(), value: Rect) core.HResult!void {
        const this: *ICoreTextLayoutBounds = @ptrCast(self);
        return try this.putTextBounds(value);
    }
    pub fn getControlBounds(self: *@This()) core.HResult!Rect {
        const this: *ICoreTextLayoutBounds = @ptrCast(self);
        return try this.getControlBounds();
    }
    pub fn putControlBounds(self: *@This(), value: Rect) core.HResult!void {
        const this: *ICoreTextLayoutBounds = @ptrCast(self);
        return try this.putControlBounds(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextLayoutBounds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextLayoutBounds.GUID;
    pub const IID: Guid = ICoreTextLayoutBounds.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextLayoutBounds.SIGNATURE);
};
pub const CoreTextLayoutRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextLayoutRequest = @ptrCast(self);
        return try this.getRange();
    }
    pub fn getLayoutBounds(self: *@This()) core.HResult!*CoreTextLayoutBounds {
        const this: *ICoreTextLayoutRequest = @ptrCast(self);
        return try this.getLayoutBounds();
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextLayoutRequest = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextLayoutRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getLayoutBoundsVisualPixels(self: *@This()) core.HResult!*CoreTextLayoutBounds {
        var this: ?*ICoreTextLayoutRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreTextLayoutRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLayoutBoundsVisualPixels();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextLayoutRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextLayoutRequest.GUID;
    pub const IID: Guid = ICoreTextLayoutRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextLayoutRequest.SIGNATURE);
};
pub const CoreTextLayoutRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*CoreTextLayoutRequest {
        const this: *ICoreTextLayoutRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextLayoutRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextLayoutRequestedEventArgs.GUID;
    pub const IID: Guid = ICoreTextLayoutRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextLayoutRequestedEventArgs.SIGNATURE);
};
pub const CoreTextRange = extern struct {
    StartCaretPosition: i32,
    EndCaretPosition: i32,
};
pub const CoreTextSelectionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelection(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextSelectionRequest = @ptrCast(self);
        return try this.getSelection();
    }
    pub fn putSelection(self: *@This(), value: CoreTextRange) core.HResult!void {
        const this: *ICoreTextSelectionRequest = @ptrCast(self);
        return try this.putSelection(value);
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextSelectionRequest = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextSelectionRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextSelectionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextSelectionRequest.GUID;
    pub const IID: Guid = ICoreTextSelectionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextSelectionRequest.SIGNATURE);
};
pub const CoreTextSelectionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*CoreTextSelectionRequest {
        const this: *ICoreTextSelectionRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextSelectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextSelectionRequestedEventArgs.GUID;
    pub const IID: Guid = ICoreTextSelectionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextSelectionRequestedEventArgs.SIGNATURE);
};
pub const CoreTextSelectionUpdatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelection(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextSelectionUpdatingEventArgs = @ptrCast(self);
        return try this.getSelection();
    }
    pub fn getResult(self: *@This()) core.HResult!CoreTextSelectionUpdatingResult {
        const this: *ICoreTextSelectionUpdatingEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub fn putResult(self: *@This(), value: CoreTextSelectionUpdatingResult) core.HResult!void {
        const this: *ICoreTextSelectionUpdatingEventArgs = @ptrCast(self);
        return try this.putResult(value);
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextSelectionUpdatingEventArgs = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextSelectionUpdatingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextSelectionUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextSelectionUpdatingEventArgs.GUID;
    pub const IID: Guid = ICoreTextSelectionUpdatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextSelectionUpdatingEventArgs.SIGNATURE);
};
pub const CoreTextSelectionUpdatingResult = enum(i32) {
    Succeeded = 0,
    Failed = 1,
};
pub const CoreTextServicesConstants = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getHiddenCharacter() core.HResult!u16 {
        const factory = @This().ICoreTextServicesStaticsCache.get();
        return try factory.getHiddenCharacter();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextServicesConstants";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICoreTextServicesStaticsCache: FactoryCache(ICoreTextServicesStatics, RUNTIME_NAME) = .{};
};
pub const CoreTextServicesManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputLanguage(self: *@This()) core.HResult!*Language {
        const this: *ICoreTextServicesManager = @ptrCast(self);
        return try this.getInputLanguage();
    }
    pub fn addInputLanguageChanged(self: *@This(), handler: *TypedEventHandler(CoreTextServicesManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICoreTextServicesManager = @ptrCast(self);
        return try this.addInputLanguageChanged(handler);
    }
    pub fn removeInputLanguageChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ICoreTextServicesManager = @ptrCast(self);
        return try this.removeInputLanguageChanged(cookie);
    }
    pub fn CreateEditContext(self: *@This()) core.HResult!*CoreTextEditContext {
        const this: *ICoreTextServicesManager = @ptrCast(self);
        return try this.CreateEditContext();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*CoreTextServicesManager {
        const factory = @This().ICoreTextServicesManagerStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextServicesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextServicesManager.GUID;
    pub const IID: Guid = ICoreTextServicesManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextServicesManager.SIGNATURE);
    var _ICoreTextServicesManagerStaticsCache: FactoryCache(ICoreTextServicesManagerStatics, RUNTIME_NAME) = .{};
};
pub const CoreTextTextRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextTextRequest = @ptrCast(self);
        return try this.getRange();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreTextTextRequest = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICoreTextTextRequest = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextTextRequest = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextTextRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextTextRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextTextRequest.GUID;
    pub const IID: Guid = ICoreTextTextRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextTextRequest.SIGNATURE);
};
pub const CoreTextTextRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*CoreTextTextRequest {
        const this: *ICoreTextTextRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextTextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextTextRequestedEventArgs.GUID;
    pub const IID: Guid = ICoreTextTextRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextTextRequestedEventArgs.SIGNATURE);
};
pub const CoreTextTextUpdatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.getRange();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.getText();
    }
    pub fn getNewSelection(self: *@This()) core.HResult!CoreTextRange {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.getNewSelection();
    }
    pub fn getInputLanguage(self: *@This()) core.HResult!*Language {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.getInputLanguage();
    }
    pub fn getResult(self: *@This()) core.HResult!CoreTextTextUpdatingResult {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub fn putResult(self: *@This(), value: CoreTextTextUpdatingResult) core.HResult!void {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.putResult(value);
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ICoreTextTextUpdatingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.CoreTextTextUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreTextTextUpdatingEventArgs.GUID;
    pub const IID: Guid = ICoreTextTextUpdatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreTextTextUpdatingEventArgs.SIGNATURE);
};
pub const CoreTextTextUpdatingResult = enum(i32) {
    Succeeded = 0,
    Failed = 1,
};
pub const ICoreTextCompositionCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompositionSegments(self: *@This()) core.HResult!*IVectorView(CoreTextCompositionSegment) {
        var _r: *IVectorView(CoreTextCompositionSegment) = undefined;
        const _c = self.vtable.get_CompositionSegments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextCompositionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f34ebb6-b79f-4121-a5e7-fda9b8616e30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CompositionSegments: *const fn(self: *anyopaque, _r: **IVectorView(CoreTextCompositionSegment)) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextCompositionSegment = extern struct {
    vtable: *const VTable,
    pub fn getPreconversionString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PreconversionString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextCompositionSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "776c6bd9-4ead-4da7-8f47-3a88b523cc34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreconversionString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextCompositionStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextCompositionStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "276b16a9-64e7-4ab0-bc4b-a02d73835bfb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextEditContext = extern struct {
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
    pub fn getInputScope(self: *@This()) core.HResult!CoreTextInputScope {
        var _r: CoreTextInputScope = undefined;
        const _c = self.vtable.get_InputScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputScope(self: *@This(), value: CoreTextInputScope) core.HResult!void {
        const _c = self.vtable.put_InputScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsReadOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsReadOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputPaneDisplayPolicy(self: *@This()) core.HResult!CoreTextInputPaneDisplayPolicy {
        var _r: CoreTextInputPaneDisplayPolicy = undefined;
        const _c = self.vtable.get_InputPaneDisplayPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputPaneDisplayPolicy(self: *@This(), value: CoreTextInputPaneDisplayPolicy) core.HResult!void {
        const _c = self.vtable.put_InputPaneDisplayPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTextRequested(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextTextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSelectionRequested(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextSelectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SelectionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSelectionRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SelectionRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLayoutRequested(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextLayoutRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LayoutRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLayoutRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LayoutRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTextUpdating(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextTextUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextUpdating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextUpdating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextUpdating(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSelectionUpdating(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextSelectionUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SelectionUpdating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSelectionUpdating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SelectionUpdating(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFormatUpdating(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextFormatUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FormatUpdating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFormatUpdating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FormatUpdating(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompositionStarted(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextCompositionStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CompositionStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompositionStarted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CompositionStarted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompositionCompleted(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,CoreTextCompositionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CompositionCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompositionCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CompositionCompleted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFocusRemoved(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FocusRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFocusRemoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FocusRemoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyFocusEnter(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyFocusEnter(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyFocusLeave(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyFocusLeave(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyTextChanged(self: *@This(), modifiedRange: CoreTextRange, newLength: i32, newSelection: CoreTextRange) core.HResult!void {
        const _c = self.vtable.NotifyTextChanged(@ptrCast(self), modifiedRange, newLength, newSelection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifySelectionChanged(self: *@This(), selection: CoreTextRange) core.HResult!void {
        const _c = self.vtable.NotifySelectionChanged(@ptrCast(self), selection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyLayoutChanged(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyLayoutChanged(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextEditContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf6608af-4041-47c3-b263-a918eb5eaef2";
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
        get_InputScope: *const fn(self: *anyopaque, _r: *CoreTextInputScope) callconv(.winapi) HRESULT,
        put_InputScope: *const fn(self: *anyopaque, value: CoreTextInputScope) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsReadOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InputPaneDisplayPolicy: *const fn(self: *anyopaque, _r: *CoreTextInputPaneDisplayPolicy) callconv(.winapi) HRESULT,
        put_InputPaneDisplayPolicy: *const fn(self: *anyopaque, value: CoreTextInputPaneDisplayPolicy) callconv(.winapi) HRESULT,
        add_TextRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextTextRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SelectionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextSelectionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SelectionRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LayoutRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextLayoutRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LayoutRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TextUpdating: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextTextUpdatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextUpdating: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SelectionUpdating: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextSelectionUpdatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SelectionUpdating: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FormatUpdating: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextFormatUpdatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FormatUpdating: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CompositionStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextCompositionStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CompositionStarted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CompositionCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,CoreTextCompositionCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CompositionCompleted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FocusRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FocusRemoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        NotifyFocusEnter: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyFocusLeave: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyTextChanged: *const fn(self: *anyopaque, modifiedRange: CoreTextRange, newLength: i32, newSelection: CoreTextRange) callconv(.winapi) HRESULT,
        NotifySelectionChanged: *const fn(self: *anyopaque, selection: CoreTextRange) callconv(.winapi) HRESULT,
        NotifyLayoutChanged: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextEditContext2 = extern struct {
    vtable: *const VTable,
    pub fn addNotifyFocusLeaveCompleted(self: *@This(), handler: *TypedEventHandler(CoreTextEditContext,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NotifyFocusLeaveCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNotifyFocusLeaveCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NotifyFocusLeaveCompleted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextEditContext2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1867dbb-083b-49e1-b281-2b35d62bf466";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_NotifyFocusLeaveCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextEditContext,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NotifyFocusLeaveCompleted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextFormatUpdatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextColor(self: *@This()) core.HResult!*IReference(UIElementType) {
        var _r: *IReference(UIElementType) = undefined;
        const _c = self.vtable.get_TextColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!*IReference(UIElementType) {
        var _r: *IReference(UIElementType) = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnderlineColor(self: *@This()) core.HResult!*IReference(UIElementType) {
        var _r: *IReference(UIElementType) = undefined;
        const _c = self.vtable.get_UnderlineColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnderlineType(self: *@This()) core.HResult!*IReference(UnderlineType) {
        var _r: *IReference(UnderlineType) = undefined;
        const _c = self.vtable.get_UnderlineType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!CoreTextFormatUpdatingReason {
        var _r: CoreTextFormatUpdatingReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!CoreTextFormatUpdatingResult {
        var _r: CoreTextFormatUpdatingResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResult(self: *@This(), value: CoreTextFormatUpdatingResult) core.HResult!void {
        const _c = self.vtable.put_Result(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7310bd33-b4a8-43b1-b37b-0724d4aca7ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_TextColor: *const fn(self: *anyopaque, _r: **IReference(UIElementType)) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: **IReference(UIElementType)) callconv(.winapi) HRESULT,
        get_UnderlineColor: *const fn(self: *anyopaque, _r: **IReference(UIElementType)) callconv(.winapi) HRESULT,
        get_UnderlineType: *const fn(self: *anyopaque, _r: **IReference(UnderlineType)) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *CoreTextFormatUpdatingReason) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: *CoreTextFormatUpdatingResult) callconv(.winapi) HRESULT,
        put_Result: *const fn(self: *anyopaque, value: CoreTextFormatUpdatingResult) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextLayoutBounds = extern struct {
    vtable: *const VTable,
    pub fn getTextBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_TextBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextBounds(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_TextBounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControlBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ControlBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putControlBounds(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_ControlBounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextLayoutBounds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e972c974-4436-4917-80d0-a525e4ca6780";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextBounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_TextBounds: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_ControlBounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_ControlBounds: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextLayoutRequest = extern struct {
    vtable: *const VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLayoutBounds(self: *@This()) core.HResult!*CoreTextLayoutBounds {
        var _r: *CoreTextLayoutBounds = undefined;
        const _c = self.vtable.get_LayoutBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextLayoutRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2555a8cc-51fd-4f03-98bf-ac78174d68e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_LayoutBounds: *const fn(self: *anyopaque, _r: **CoreTextLayoutBounds) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextLayoutRequest2 = extern struct {
    vtable: *const VTable,
    pub fn getLayoutBoundsVisualPixels(self: *@This()) core.HResult!*CoreTextLayoutBounds {
        var _r: *CoreTextLayoutBounds = undefined;
        const _c = self.vtable.get_LayoutBoundsVisualPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextLayoutRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "676de624-cd3d-4bcd-bf01-7f7110954511";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LayoutBoundsVisualPixels: *const fn(self: *anyopaque, _r: **CoreTextLayoutBounds) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextLayoutRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*CoreTextLayoutRequest {
        var _r: *CoreTextLayoutRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextLayoutRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1dc6ae0-9a7b-4e9e-a566-4a6b5f8ad676";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **CoreTextLayoutRequest) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextSelectionRequest = extern struct {
    vtable: *const VTable,
    pub fn getSelection(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Selection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelection(self: *@This(), value: CoreTextRange) core.HResult!void {
        const _c = self.vtable.put_Selection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextSelectionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0a70403-208b-4301-883c-74ca7485fd8d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Selection: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        put_Selection: *const fn(self: *anyopaque, value: CoreTextRange) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextSelectionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*CoreTextSelectionRequest {
        var _r: *CoreTextSelectionRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextSelectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13c6682b-f614-421a-8f4b-9ec8a5a37fcd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **CoreTextSelectionRequest) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextSelectionUpdatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSelection(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Selection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!CoreTextSelectionUpdatingResult {
        var _r: CoreTextSelectionUpdatingResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResult(self: *@This(), value: CoreTextSelectionUpdatingResult) core.HResult!void {
        const _c = self.vtable.put_Result(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d445839f-fe7f-4bd5-8a26-0922c1b3e639";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Selection: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: *CoreTextSelectionUpdatingResult) callconv(.winapi) HRESULT,
        put_Result: *const fn(self: *anyopaque, value: CoreTextSelectionUpdatingResult) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextServicesManager = extern struct {
    vtable: *const VTable,
    pub fn getInputLanguage(self: *@This()) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.get_InputLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addInputLanguageChanged(self: *@This(), handler: *TypedEventHandler(CoreTextServicesManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InputLanguageChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInputLanguageChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InputLanguageChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateEditContext(self: *@This()) core.HResult!*CoreTextEditContext {
        var _r: *CoreTextEditContext = undefined;
        const _c = self.vtable.CreateEditContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextServicesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2507d83-6e0a-4a8a-bdf8-1948874854ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputLanguage: *const fn(self: *anyopaque, _r: **Language) callconv(.winapi) HRESULT,
        add_InputLanguageChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreTextServicesManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InputLanguageChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateEditContext: *const fn(self: *anyopaque, _r: **CoreTextEditContext) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextServicesManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*CoreTextServicesManager {
        var _r: *CoreTextServicesManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextServicesManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1520a388-e2cf-4d65-aeb9-b32d86fe39b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **CoreTextServicesManager) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextServicesStatics = extern struct {
    vtable: *const VTable,
    pub fn getHiddenCharacter(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HiddenCharacter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextServicesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91859a46-eccf-47a4-8ae7-098a9c6fbb15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HiddenCharacter: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextTextRequest = extern struct {
    vtable: *const VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextTextRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50d950a9-f51e-4cc1-8ca1-e6346d1a61be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextTextRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*CoreTextTextRequest {
        var _r: *CoreTextTextRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextTextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f096a2d0-41c6-4c02-8b1a-d953b00cabb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **CoreTextTextRequest) callconv(.winapi) HRESULT,
    };
};
pub const ICoreTextTextUpdatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewSelection(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_NewSelection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputLanguage(self: *@This()) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.get_InputLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!CoreTextTextUpdatingResult {
        var _r: CoreTextTextUpdatingResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResult(self: *@This(), value: CoreTextTextUpdatingResult) core.HResult!void {
        const _c = self.vtable.put_Result(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eea7918d-cc2b-4f03-8ff6-02fd217db450";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NewSelection: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_InputLanguage: *const fn(self: *anyopaque, _r: **Language) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: *CoreTextTextUpdatingResult) callconv(.winapi) HRESULT,
        put_Result: *const fn(self: *anyopaque, value: CoreTextTextUpdatingResult) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../../Foundation.zig").Deferral;
const Language = @import("../../Globalization.zig").Language;
const IReference = @import("../../Foundation.zig").IReference;
const FactoryCache = @import("../../core.zig").FactoryCache;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const UIElementType = @import("../ViewManagement.zig").UIElementType;
const UnderlineType = @import("../Text.zig").UnderlineType;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
