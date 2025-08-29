pub const IPhoneCallBlockedTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCallBlockedReason(self: *@This()) core.HResult!PhoneCallBlockedReason {
        var _r: PhoneCallBlockedReason = undefined;
        const _c = self.vtable.get_CallBlockedReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.IPhoneCallBlockedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4a690a2-e4c1-427f-864e-e470477ddb67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CallBlockedReason: *const fn(self: *anyopaque, _r: *PhoneCallBlockedReason) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallOriginDataRequestTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.IPhoneCallOriginDataRequestTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e9b5b3f-c54b-4e82-4cc9-e329a4184592";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneIncomingCallDismissedTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDismissalTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DismissalTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextReplyMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TextReplyMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!PhoneIncomingCallDismissedReason {
        var _r: PhoneIncomingCallDismissedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.IPhoneIncomingCallDismissedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bad30276-83b6-5732-9c38-0c206546196a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DismissalTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_TextReplyMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *PhoneIncomingCallDismissedReason) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneIncomingCallNotificationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCallId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.IPhoneIncomingCallNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b0e6044-9b32-5d42-8222-d2812e39fb21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CallId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineChangedTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChangeType(self: *@This()) core.HResult!PhoneLineChangeKind {
        var _r: PhoneLineChangeKind = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasLinePropertyChanged(self: *@This(), lineProperty: PhoneLineProperties) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasLinePropertyChanged(@ptrCast(self), lineProperty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.IPhoneLineChangedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6d321e7-d11d-40d8-b2b7-e40a01d66249";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *PhoneLineChangeKind) callconv(.winapi) HRESULT,
        HasLinePropertyChanged: *const fn(self: *anyopaque, lineProperty: PhoneLineProperties, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneNewVoicemailMessageTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVoicemailCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_VoicemailCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOperatorMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OperatorMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.IPhoneNewVoicemailMessageTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13a8c01b-b831-48d3-8ba9-8d22a6580dcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_VoicemailCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_OperatorMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const PhoneCallBlockedReason = enum(i32) {
    InCallBlockingList = 0,
    PrivateNumber = 1,
    UnknownNumber = 2,
};
pub const PhoneCallBlockedTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallBlockedTriggerDetails = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneCallBlockedTriggerDetails = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getCallBlockedReason(self: *@This()) core.HResult!PhoneCallBlockedReason {
        const this: *IPhoneCallBlockedTriggerDetails = @ptrCast(self);
        return try this.getCallBlockedReason();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.PhoneCallBlockedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallBlockedTriggerDetails.GUID;
    pub const IID: Guid = IPhoneCallBlockedTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallBlockedTriggerDetails.SIGNATURE);
};
pub const PhoneCallOriginDataRequestTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneCallOriginDataRequestTriggerDetails = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallOriginDataRequestTriggerDetails = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.PhoneCallOriginDataRequestTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallOriginDataRequestTriggerDetails.GUID;
    pub const IID: Guid = IPhoneCallOriginDataRequestTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallOriginDataRequestTriggerDetails.SIGNATURE);
};
pub const PhoneIncomingCallDismissedReason = enum(i32) {
    Unknown = 0,
    CallRejected = 1,
    TextReply = 2,
    ConnectionLost = 3,
};
pub const PhoneIncomingCallDismissedTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneIncomingCallDismissedTriggerDetails = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneIncomingCallDismissedTriggerDetails = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneIncomingCallDismissedTriggerDetails = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDismissalTime(self: *@This()) core.HResult!DateTime {
        const this: *IPhoneIncomingCallDismissedTriggerDetails = @ptrCast(self);
        return try this.getDismissalTime();
    }
    pub fn getTextReplyMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneIncomingCallDismissedTriggerDetails = @ptrCast(self);
        return try this.getTextReplyMessage();
    }
    pub fn getReason(self: *@This()) core.HResult!PhoneIncomingCallDismissedReason {
        const this: *IPhoneIncomingCallDismissedTriggerDetails = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.PhoneIncomingCallDismissedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneIncomingCallDismissedTriggerDetails.GUID;
    pub const IID: Guid = IPhoneIncomingCallDismissedTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneIncomingCallDismissedTriggerDetails.SIGNATURE);
};
pub const PhoneIncomingCallNotificationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneIncomingCallNotificationTriggerDetails = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getCallId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneIncomingCallNotificationTriggerDetails = @ptrCast(self);
        return try this.getCallId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.PhoneIncomingCallNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneIncomingCallNotificationTriggerDetails.GUID;
    pub const IID: Guid = IPhoneIncomingCallNotificationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneIncomingCallNotificationTriggerDetails.SIGNATURE);
};
pub const PhoneLineChangeKind = enum(i32) {
    Added = 0,
    Removed = 1,
    PropertiesChanged = 2,
};
pub const PhoneLineChangedTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneLineChangedTriggerDetails = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getChangeType(self: *@This()) core.HResult!PhoneLineChangeKind {
        const this: *IPhoneLineChangedTriggerDetails = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn HasLinePropertyChanged(self: *@This(), lineProperty: PhoneLineProperties) core.HResult!bool {
        const this: *IPhoneLineChangedTriggerDetails = @ptrCast(self);
        return try this.HasLinePropertyChanged(lineProperty);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.PhoneLineChangedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineChangedTriggerDetails.GUID;
    pub const IID: Guid = IPhoneLineChangedTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineChangedTriggerDetails.SIGNATURE);
};
pub const PhoneLineProperties = enum(i32) {
    None = 0,
    BrandingOptions = 1,
    CanDial = 2,
    CellularDetails = 4,
    DisplayColor = 8,
    DisplayName = 16,
    NetworkName = 32,
    NetworkState = 64,
    Transport = 128,
    Voicemail = 256,
};
pub const PhoneNewVoicemailMessageTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneNewVoicemailMessageTriggerDetails = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getVoicemailCount(self: *@This()) core.HResult!i32 {
        const this: *IPhoneNewVoicemailMessageTriggerDetails = @ptrCast(self);
        return try this.getVoicemailCount();
    }
    pub fn getOperatorMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneNewVoicemailMessageTriggerDetails = @ptrCast(self);
        return try this.getOperatorMessage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.Background.PhoneNewVoicemailMessageTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneNewVoicemailMessageTriggerDetails.GUID;
    pub const IID: Guid = IPhoneNewVoicemailMessageTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneNewVoicemailMessageTriggerDetails.SIGNATURE);
};
pub const PhoneTriggerType = enum(i32) {
    NewVoicemailMessage = 0,
    CallHistoryChanged = 1,
    LineChanged = 2,
    AirplaneModeDisabledForEmergencyCall = 3,
    CallOriginDataRequest = 4,
    CallBlocked = 5,
    IncomingCallDismissed = 6,
    IncomingCallNotification = 7,
};
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const DateTime = @import("../../Foundation.zig").DateTime;
const HSTRING = @import("../../root.zig").HSTRING;
