pub const core = @import("../core.zig");
pub const std = @import("std");
pub const win32 = @import("win32");
pub const winrt = @import("../../root.zig");

const TypedEventHandler = winrt.foundation.TypedEventHandler;
const IReference = winrt.foundation.IReference;
const DateTime = winrt.foundation.DateTime;
const TimeSpan = winrt.foundation.TimeSpan;
const ValueSet = winrt.foundation.collections.ValueSet;
const IIterable = winrt.foundation.collections.IIterable;
const IMap = winrt.foundation.collections.IMap;
const IKeyValuePair = winrt.foundation.collections.IKeyValuePair;
const IVectorView = winrt.foundation.collections.IVectorView;
const XmlDocument = winrt.data.xml.dom.XmlDocument;

pub const IInspectable = winrt.IInspectable;
pub const IUnknown = winrt.IUnknown;
pub const IID_IAgileObject = winrt.IID_IAgileObject;
pub const TrustLevel = winrt.TrustLevel;
pub const WindowsGetString = winrt.WindowsGetString;
pub const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;
pub const E_NOINTERFACE = winrt.E_NOINTERFACE;

pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;
pub const HSTRING = win32.system.win_rt.HSTRING;

pub const FactoryCache = core.FactoryCache;
pub const FactoryError = core.FactoryError;
pub const Implements = core.Implements;
pub const IActivationFactory = core.IActivationFactory;
pub const Signature = core.Signature;
const wiredGuidEql = core.wiredGuidEql;

pub const S_OK = winrt.S_OK;

pub const ToastNotificationPriority = enum(i32) {
    default = 0,
    high = 1,
};

pub const NotificationMirroring = enum(i32) {
    allowed = 0,
    disabled = 1,
};

pub const ToastTemplateType = enum(i32) {
    image_and_text_01 = 0,
    image_and_text_02 = 1,
    image_and_text_03 = 2,
    image_and_text_04 = 3,
    text_01 = 4,
    text_02 = 5,
    text_03 = 6,
    text_04 = 7,
};

pub const NotificationUpdateResult = enum(i32) {
    succeeded = 0,
    failed = 1,
    notification_not_found = 2,
};

pub const NotificationSetting = enum(i32) {
    enabled = 0,
    disabled_for_application = 1,
    disabled_for_user = 2,
    disabled_by_group_policy = 3,
    disabled_by_manifest = 4,
};

pub const ToastDismissalReason = enum(i32) {
    user_canceled = 0,
    application_hidden = 1,
    timed_out = 2,
};

pub const IToastDismissedEventArgs = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn reason(self: *@This()) ToastDismissalReason {
        var result: ToastDismissalReason = undefined;
        _ = self.vtable.Reason(@ptrCast(self), &result);
        return result;
    }

    pub const GUID: []const u8 = "3f89d935-d9cb-4538-a0f0-ffe7659938f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Reason: *const fn (*anyopaque, *ToastDismissalReason) callconv(.c) HRESULT,
    });
};

pub const IToastActivatedEventArgs = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn arguments(self: *@This()) []const u16 {
        var result: HSTRING = undefined;
        _ = self.vtable.Arguments(@ptrCast(self), &result);
        return winrt.WindowsGetString(result).?;
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.IToastActivatedEventArgs";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = "e3bf92f3-c197-436f-8265-0625824f8dac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Arguments: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IToastActivatedEventArgs2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn user_input(self: *@This()) *ValueSet {
        var result: *ValueSet = undefined;
        _ = self.vtable.UserInput(@ptrCast(self), &result);
        return result;
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.IToastActivatedEventArgs2";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = "ab7da512-cc61-568e-81be-304ac31038fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        UserInput: *const fn (*anyopaque, **ValueSet) callconv(.c) HRESULT,
    });
};

pub const IScheduledToastNotificationShowingEventArgs = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn cancel(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.Cancel(@ptrCast(self), &result);
        return result;
    }

    pub fn setCancel(self: *@This(), state: bool) void {
        _ = self.vtable.SetCancel(@ptrCast(self), state);
    }

    pub fn scheduledToastNotification(self: *@This()) *ScheduledToastNotification {
        var result: *ScheduledToastNotification = undefined;
        _ = self.vtable.ScheduledToastNotification(@ptrCast(self), &result);
        return result;
    }

    pub fn getDeferral(self: *@This()) *Deferral {
        var result: *Deferral = undefined;
        _ = self.vtable.GetDeferral(@ptrCast(self), &result);
        return result;
    }

    pub const GUID: []const u8 = "6173f6b4-412a-5e2c-a6ed-a0209aef9a09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Cancel: *const fn (*anyopaque, *bool) callconv(.c) HRESULT,
        SetCancel: *const fn (*anyopaque, bool) callconv(.c) HRESULT,
        ScheduledToastNotification: *const fn (*anyopaque, **ScheduledToastNotification) callconv(.c) HRESULT,
        GetDeferral: *const fn (*anyopaque, **Deferral) callconv(.c) HRESULT,
    });
};

pub const ToastActivatedEventArgs = extern struct {
    vtable: *const IToastActivatedEventArgs.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn arguments(self: *@This()) []const u16 {
        const this: *IToastActivatedEventArgs = @ptrCast(@alignCast(self));
        return this.arguments();
    }

    pub fn user_input(self: *@This()) *ValueSet {
        const this: *IToastActivatedEventArgs2 = self.queryInterface(IToastActivatedEventArgs2) catch unreachable;
        return this.user_input();
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastActivatedEventArgs";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = IToastActivatedEventArgs.GUID;
    pub const IID: Guid = IToastActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastActivatedEventArgs.SIGNATURE);
};

pub const IToastFailedEventArgs = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn error_code(self: *@This()) HRESULT {
        var result: HRESULT = 0;
        _ = self.vtable.ErrorCode(@ptrCast(self), &result);
        return result;
    }

    pub const GUID: []const u8 = "35176862-cfd4-44f8-ad64-f500fd896c3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        ErrorCode: *const fn (*anyopaque, *HRESULT) callconv(.c) HRESULT,
    });
};

pub const ToastDismissedEventArgs = extern struct {
    vtable: *const IToastDismissedEventArgs.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn reason(self: *@This()) ToastDismissalReason {
        const this: *IToastDismissedEventArgs = @ptrCast(@alignCast(self));
        return this.reason();
    }

    pub const GUID: []const u8 = IToastDismissedEventArgs.GUID;
    pub const IID: Guid = IToastDismissedEventArgs.IID;
    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastDismissedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral();
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastDismissedEventArgs.SIGNATURE);
};

pub const ToastFailedEventArgs = extern struct {
    vtable: *const IToastFailedEventArgs.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn error_code(self: *@This()) HRESULT {
        const this: *IToastFailedEventArgs = @ptrCast(@alignCast(self));
        return this.error_code();
    }

    pub const GUID: []const u8 = IToastFailedEventArgs.GUID;
    pub const IID: Guid = IToastFailedEventArgs.IID;
    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral();
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastFailedEventArgs.SIGNATURE);
};

pub const ScheduledToastNotificationShowingEventArgs = extern struct {
    vtable: *const IScheduledToastNotificationShowingEventArgs.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn cancel(self: *@This()) bool {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(@alignCast(self));
        return this.cancel();
    }

    pub fn setCancel(self: *@This(), state: bool) void {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(@alignCast(self));
        return this.setCancel(state);
    }

    pub fn scheduledToastNotification(self: *@This()) *ScheduledToastNotification {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(@alignCast(self));
        return this.scheduledToastNotification();
    }

    pub fn getDeferral(self: *@This()) *Deferral {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(@alignCast(self));
        return this.getDeferral();
    }

    pub const GUID: []const u8 = IScheduledToastNotificationShowingEventArgs.GUID;
    pub const IID: Guid = IScheduledToastNotificationShowingEventArgs.IID;
    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ScheduledToastNotificationShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral();
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IScheduledToastNotificationShowingEventArgs.SIGNATURE);
};

pub const IScheduledToastNotification = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn content(self: *@This()) *XmlDocument {
        var result: *XmlDocument = undefined;
        _ = self.vtable.Content(@ptrCast(self), &result);
        return result;
    }

    pub fn deliveryTime(self: *@This()) DateTime {
        var result: DateTime = undefined;
        _ = self.vtable.DeliveryTime(@ptrCast(self), &result);
        return result;
    }

    pub fn snoozeInterval(self: *@This()) TimeSpan {
        var result: TimeSpan = undefined;
        _ = self.vtable.SnoozeInterval(@ptrCast(self), &result);
        return result;
    }

    pub fn maximumSnoozeCount(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.MaximumSnoozeCount(@ptrCast(self), &result);
        return result;
    }

    pub fn id(self: *@This()) []const u16 {
        var result: HSTRING = 0;
        _ = self.vtable.Id(@ptrCast(self), &result);
        return winrt.WindowsGetString(result).?;
    }

    pub fn setId(self: *@This(), value: [:0]const u16) !void {
        const h_id = try winrt.WindowsCreateString(value);
        defer winrt.WindowsDeleteString(h_id);
        _ = self.vtable.Id(@ptrCast(self), h_id.?);
    }

    pub const GUID: []const u8 = "79f577f8-0de7-48cd-9740-9b370490c838";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Content: *const fn (*anyopaque, **XmlDocument) callconv(.c) HRESULT,
        DeliveryTime: *const fn (*anyopaque, *DateTime) callconv(.c) HRESULT,
        SnoozeInterval: *const fn (*anyopaque, *TimeSpan) callconv(.c) HRESULT,
        MaximumSnoozeCount: *const fn (*anyopaque, *u32) callconv(.c) HRESULT,
        SetId: *const fn (*anyopaque, HSTRING) callconv(.c) HRESULT,
        Id: *const fn (*anyopaque, *HSTRING) callconv(.c) HRESULT,
    });
};

pub const IScheduledToastNotification2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn tag(self: *@This()) []const u16 {
        var result: HSTRING = undefined;
        _ = self.vtable.Tag(@ptrCast(self), &result);
        return winrt.WindowsGetString(result).?;
    }

    pub fn setTag(self: *@This(), value: [:0]const u16) !void {
        const h_tag = try winrt.WindowsCreateString(value);
        defer winrt.WindowsDeleteString(h_tag);
        _ = self.vtable.SetTag(@ptrCast(self), h_tag.?);
    }

    pub fn group(self: *@This()) []const u16 {
        var result: HSTRING = undefined;
        _ = self.vtable.Group(@ptrCast(self), &result);
        return winrt.WindowsGetString(result).?;
    }

    pub fn setGroup(self: *@This(), value: [:0]const u16) !void {
        const h_group = try winrt.WindowsCreateString(value);
        defer winrt.WindowsDeleteString(h_group);
        _ = self.vtable.SetGroup(@ptrCast(self), h_group.?);
    }

    pub fn suppressPopup(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.SuppressPopup(@ptrCast(self), &result);
        return result;
    }

    pub fn setSuppressPopup(self: *@This(), state: bool) void {
        _ = self.vtable.SetSuppressPopup(@ptrCast(self), state);
    }

    pub const GUID: []const u8 = "a66ea09c-31b4-43b0-b5dd-7a40e85363b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        SetTag: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
        Tag: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetGroup: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
        Group: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetSuppressPopup: *const fn (*anyopaque, bool) callconv(.c) HRESULT,
        SuppressPopup: *const fn (*anyopaque, *bool) callconv(.c) HRESULT,
    });
};

pub const IScheduledToastNotification3 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn notificationMirroring(self: *@This()) NotificationMirroring {
        var result: NotificationMirroring = undefined;
        _ = self.vtable.NotificationMirroring(@ptrCast(self), &result);
        return result;
    }

    pub fn setNotificationMirroring(self: *@This(), mirroring: NotificationMirroring) void {
        _ = self.vtable.SetNotificationMirroring(@ptrCast(self), mirroring);
    }

    pub fn remoteId(self: *@This()) []const u16 {
        var result: HSTRING = undefined;
        _ = self.vtable.RemoteId(@ptrCast(self), &result);
        return winrt.WindowsGetString(result).?;
    }

    pub fn setRemoteId(self: *@This(), value: [:0]const u16) !void {
        const h_id: ?HSTRING = try winrt.WindowsCreateString(value);
        defer winrt.WindowsDeleteString(h_id);
        _ = self.vtable.SetRemoteId(@ptrCast(self), h_id.?);
    }

    pub const GUID: []const u8 = "98429e8b-bd32-4a3b-9d15-22aea49462a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        NotificationMirroring: *const fn (*anyopaque, *NotificationMirroring) callconv(.c) HRESULT,
        SetNotificationMirroring: *const fn (*anyopaque, NotificationMirroring) callconv(.c) HRESULT,
        RemoteId: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetRemoteId: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
    });
};

pub const IScheduledToastNotification4 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn expirationTime(self: *@This()) *IReference(DateTime) {
        var result: *IReference(DateTime) = undefined;
        _ = self.vtable.ExpirationTime(@ptrCast(self), &result);
        return result;
    }

    pub fn setExpirationTime(self: *@This(), value: *IReference(DateTime)) void {
        _ = self.vtable.SetExpirationTime(@ptrCast(self), value);
    }

    pub const GUID: []const u8 = "1d4761fd-bdef-4e4a-96be-0101369b58d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        ExpirationTime: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetExpirationTime: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
    });
};

pub const IScheduledToastNotificationFactory = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn createScheduledToastNotification(
        self: *@This(),
        document: *XmlDocument,
        delivery_time: DateTime,
    ) !*ScheduledToastNotification {
        var result: *ScheduledToastNotification = undefined;
        if (self.vtable.CreateScheduledToastNotification(@ptrCast(self), document, delivery_time, &result) != S_OK) {
            return error.ScheduleNotification;
        }
        return result;
    }

    pub fn createScheduledToastNotificationRecurring(
        self: *@This(),
        document: *XmlDocument,
        delivery_time: DateTime,
        snooze_interval: TimeSpan,
        maximum_snooze_count: u32,
    ) !*ScheduledToastNotification {
        var result: *ScheduledToastNotification = undefined;
        if (self.vtable.CreateScheduledToastNotificationRecurring(
            @ptrCast(self),
            document,
            delivery_time,
            snooze_interval,
            maximum_snooze_count,
            &result,
        ) != S_OK) {
            return error.ScheduleNotification;
        }
        return result;
    }

    pub const GUID: []const u8 = "e7bed191-0bb9-4189-8394-31761b476fd7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        CreateScheduledToastNotification: *const fn (*anyopaque, *XmlDocument, DateTime, **ScheduledToastNotification) callconv(.c) HRESULT,
        CreateScheduledToastNotificationRecurring: *const fn (*anyopaque, *XmlDocument, DateTime, TimeSpan, u32, **ScheduledToastNotification) callconv(.c) HRESULT,
    });
};

pub const ScheduledToastNotification = extern struct {
    vtable: *const IScheduledToastNotification.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn content(self: *@This()) *XmlDocument {
        const this: *IScheduledToastNotification = @ptrCast(@alignCast(self));
        return this.content();
    }

    pub fn deliveryTime(self: *@This()) DateTime {
        const this: *IScheduledToastNotification = @ptrCast(@alignCast(self));
        return this.deliveryTime();
    }

    pub fn snoozeInterval(self: *@This()) TimeSpan {
        const this: *IScheduledToastNotification = @ptrCast(@alignCast(self));
        return this.snoozeInterval();
    }

    pub fn maximumSnoozeCount(self: *@This()) u32 {
        const this: *IScheduledToastNotification = @ptrCast(@alignCast(self));
        return this.maximumSnoozeCount();
    }

    pub fn id(self: *@This()) []const u16 {
        const this: *IScheduledToastNotification = @ptrCast(@alignCast(self));
        return this.id();
    }

    pub fn setId(self: *@This(), value: [:0]const u16) !void {
        const this: *IScheduledToastNotification = @ptrCast(@alignCast(self));
        return this.setId(value);
    }

    pub fn tag(self: *@This()) []const u16 {
        const this: *IScheduledToastNotification2 = self.queryInterface(IScheduledToastNotification2) catch unreachable;
        return this.tag();
    }

    pub fn setTag(self: *@This(), value: [:0]const u16) !void {
        const this: *IScheduledToastNotification2 = self.queryInterface(IScheduledToastNotification2) catch unreachable;
        return this.setTag(value);
    }

    pub fn group(self: *@This()) []const u16 {
        const this: *IScheduledToastNotification2 = self.queryInterface(IScheduledToastNotification2) catch unreachable;
        return this.group();
    }

    pub fn setGroup(self: *@This(), value: [:0]const u16) !void {
        const this: *IScheduledToastNotification2 = self.queryInterface(IScheduledToastNotification2) catch unreachable;
        return this.setGroup(value);
    }

    pub fn suppressPopup(self: *@This()) bool {
        const this: *IScheduledToastNotification2 = self.queryInterface(IScheduledToastNotification2) catch unreachable;
        return this.suppressPopup();
    }

    pub fn setSuppressPopup(self: *@This(), state: bool) void {
        const this: *IScheduledToastNotification2 = self.queryInterface(IScheduledToastNotification2) catch unreachable;
        return this.setSuppressPopup(state);
    }

    pub fn notificationMirroring(self: *@This()) NotificationMirroring {
        const this: *IScheduledToastNotification3 = self.queryInterface(IScheduledToastNotification3) catch unreachable;
        return this.notificationMirroring();
    }

    pub fn setNotificationMirroring(self: *@This(), mirroring: NotificationMirroring) void {
        const this: *IScheduledToastNotification3 = self.queryInterface(IScheduledToastNotification3) catch unreachable;
        return this.setNotificationMirroring(mirroring);
    }

    pub fn remoteId(self: *@This()) []const u16 {
        const this: *IScheduledToastNotification3 = self.queryInterface(IScheduledToastNotification3) catch unreachable;
        return this.remoteId();
    }

    pub fn setRemoteId(self: *@This(), value: [:0]const u16) void {
        const this: *IScheduledToastNotification3 = self.queryInterface(IScheduledToastNotification3) catch unreachable;
        return this.setRemoteId(value);
    }

    pub fn expirationTime(self: *@This()) *IReference(DateTime) {
        const this: *IScheduledToastNotification4 = self.queryInterface(IScheduledToastNotification4) catch unreachable;
        return this.expirationTime();
    }

    pub fn setExpirationTime(self: *@This(), value: *IReference(DateTime)) void {
        const this: *IScheduledToastNotification4 = self.queryInterface(IScheduledToastNotification4) catch unreachable;
        return this.setExpirationTime(value);
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ScheduledToastNotification";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = IScheduledToastNotification.GUID;
    pub const IID: Guid = IScheduledToastNotification.IID;
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IScheduledToastNotification.SIGNATURE);
};

pub const IClosable = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn close(self: *@This()) void {
        _ = self.vtable.Close(@ptrCast(self));
    }

    pub const TYPE_NAME: []const u8 = "Windows.Foundation.IClosable";
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = "30d5a829-7fa4-4026-83bb-d75bae4ea99e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        Close: *const fn(*anyopaque) callconv(.c) HRESULT,
    });
};

pub const IDeferral = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn complete(self: *@This()) void {
        _ = self.vtable.Complete(@ptrCast(self));
    }

    pub const GUID: []const u8 = "d6269732-3b7f-46a7-b40b-4fdca2a2c693";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        Complete: *const fn(*anyopaque) callconv(.c) HRESULT,
    });
};

pub const IDeferralFactory = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn create(
        self: *@This(),
        handler: *DeferralCompletedHandler,
    ) !*Deferral {
        var result: *Deferral = undefined;
        if (self.vtable.Create(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.CreateDeferral;
        }
        return result;
    }

    pub const GUID: []const u8 = "65a1ecc5-3fb5-4832-8ca9-f061b281d13a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Create: *const fn(*anyopaque, *DeferralCompletedHandler, **Deferral) callconv(.c) HRESULT,
    });
};

/// Represents a method that handles deferrel completed events
//
/// This method handles delegating the invoked callback for a
/// given typed event.
pub const DeferralCompletedHandler = extern struct {
    const GUID: []const u8 = "ed32a372-f3c8-4faa-9cfb-470148da3888";
    const IID: Guid = Guid.initString(GUID);
    const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTABLE: VTable = .{
        .QueryInterface = queryInterface,
        .AddRef = addRef,
        .Release = release,
        .Invoke = invoke,
    };

    vtable: *const VTable,
    refs: std.atomic.Value(u32),
    cb: *const fn (context: ?*anyopaque) callconv(.c) void,
    context: ?*anyopaque = null,

    pub fn init(callback: *const fn (context: ?*anyopaque) callconv(.c) void) @This() {
        return .{
            .vtable = &VTABLE,
            .refs = std.atomic.Value(u32).init(1),
            .cb = callback,
        };
    }

    pub fn initWithState(callback: *const fn (context: ?*anyopaque) callconv(.c) void, context: anytype) @This() {
        return .{
            .vtable = &VTABLE,
            .refs = std.atomic.Value(u32).init(1),
            .cb = callback,
            .context = @ptrCast(context),
        };
    }

    fn queryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (wiredGuidEql(riid, &IID) or
            wiredGuidEql(riid, &IUnknown.IID) or
            wiredGuidEql(riid, IID_IAgileObject))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = addRef(self);
            return S_OK;
        }
        out.* = null;
        return @bitCast(E_NOINTERFACE);
    }

    fn addRef(self: *anyopaque) callconv(.c) u32 {
        const me: *@This() = @ptrCast(@alignCast(self));
        return me.refs.fetchAdd(1, .monotonic) + 1;
    }

    fn release(self: *anyopaque) callconv(.c) u32 {
        const me: *@This() = @ptrCast(@alignCast(self));
        const left = me.refs.fetchSub(1, .acq_rel) - 1;
        return left;
    }

    // Invoke()
    //
    // This will always return `S_OK` because event callbacks shouldn't fail
    fn invoke(self: *@This()) callconv(.c) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this.cb(this.context);
        return S_OK;
    }

    pub const VTable = extern struct {
        QueryInterface: *const fn (
            self: *anyopaque,
            riid: *const Guid,
            ppvObject: *?*anyopaque,
        ) callconv(.c) HRESULT,
        AddRef: *const fn (
            self: *anyopaque,
        ) callconv(.c) u32,
        Release: *const fn (
            self: *anyopaque,
        ) callconv(.c) u32,

        // Invoke method for the delegate
        Invoke: *const fn (
            self: *DeferralCompletedHandler,
        ) callconv(.c) HRESULT,
    };
};

pub const Deferral = extern struct {
    vtable: *const IDeferral.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn close(self: *@This()) void {
        const this: *IClosable = self.queryInterface(IClosable) catch unreachable;
        this.close();
    }

    pub fn complete(self: *@This()) !void {
        const this: *IDeferral = @ptrCast(self);
        this.complete();
    }

    pub fn create(handler: *DeferralCompletedHandler) !Deferral {
        const factory = @This().IDeferralFactoryCache.get();
        return try factory.create(handler);
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.Deferral";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = IDeferral.GUID;
    pub const IID: Guid = IDeferral.IID;
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IDeferral.SIGNATURE);

    var IDeferralFactoryCache: FactoryCache(IDeferralFactory, RUNTIME_NAME) = .{};
};

pub const INotificationData = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn values(self: *@This()) *IMap(HSTRING, HSTRING) {
        var result: *IMap(HSTRING, HSTRING) = undefined;
        _ = self.vtable.Values(@ptrCast(self), &result);
        return result;
    }

    pub fn sequenceNumber(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.SequenceNumber(@ptrCast(self), &result);
        return result;
    }

    pub fn setSequenceNumber(self: *@This(), value: u32) void {
        _ = self.vtable.SetSequenceNumber(@ptrCast(self), value);
    }

    pub const GUID: []const u8 = "9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Values: *const fn (*anyopaque, **IMap(HSTRING, HSTRING)) callconv(.c) HRESULT,
        SequenceNumber: *const fn (*anyopaque, *u32) callconv(.c) HRESULT,
        SetSequenceNumber: *const fn (*anyopaque, u32) callconv(.c) HRESULT,
    });
};

pub const IToastNotification = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    // ToastDismissedEventArgs
    pub fn onDismissed(self: *@This(), handler: *TypedEventHandler(ToastNotification, ToastDismissedEventArgs)) !i64 {
        var handle: i64 = 0;
        if (self.vtable.Dismissed(@ptrCast(self), @ptrCast(handler), &handle) != S_OK) {
            return error.BindHookFailure;
        }
        return handle;
    }

    pub fn removeOnDismissed(self: *@This(), handle: i64) void {
        _ = self.vtable.RemoveDismissed(@ptrCast(self), handle);
    }

    pub fn onActivated(self: *@This(), handler: *TypedEventHandler(ToastNotification, IInspectable)) !i64 {
        var handle: i64 = 0;
        if (self.vtable.Activated(@ptrCast(self), @ptrCast(handler), &handle) != S_OK) {
            return error.BindHookFailure;
        }
        return handle;
    }

    pub fn removeOnActivated(self: *@This(), handle: i64) void {
        _ = self.vtable.RemoveActivated(@ptrCast(self), handle);
    }

    pub fn onFailed(self: *@This(), handler: *TypedEventHandler(ToastNotification, ToastFailedEventArgs)) !i64 {
        var handle: i64 = 0;
        if (self.vtable.Failed(@ptrCast(self), @ptrCast(handler), &handle) != S_OK) {
            return error.BindHookFailure;
        }
        return handle;
    }

    pub fn removeOnFailed(self: *@This(), handle: i64) void {
        _ = self.vtable.RemoveFailed(@ptrCast(self), handle);
    }

    pub const GUID: []const u8 = "997e2675-059e-4e60-8b06-1760917c8b80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Content: *const fn (*anyopaque, **XmlDocument) callconv(.c) HRESULT,
        SetExpirationTime: *const fn (*anyopaque, *IReference(DateTime)) callconv(.c) HRESULT,
        ExpirationTime: *const fn (*anyopaque, **IReference(DateTime)) callconv(.c) HRESULT,
        Dismissed: *const fn (*anyopaque, *TypedEventHandler(ToastNotification, ToastDismissedEventArgs), *i64) callconv(.c) HRESULT,
        RemoveDismissed: *const fn (*anyopaque, i64) callconv(.c) HRESULT,
        Activated: *const fn (*anyopaque, *TypedEventHandler(ToastNotification, IInspectable), *i64) callconv(.c) HRESULT,
        RemoveActivated: *const fn (*anyopaque, i64) callconv(.c) HRESULT,
        Failed: *const fn (*anyopaque, *TypedEventHandler(ToastNotification, ToastFailedEventArgs), *i64) callconv(.c) HRESULT,
        RemoveFailed: *const fn (*anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const IToastNotification2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "9dfb9fd1-143a-490e-90bf-b9fba7132de7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update these params to be the correct types
        SetTag: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
        Tag: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetGroup: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
        Group: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetSuppressPopup: *const fn (*anyopaque, bool) callconv(.c) HRESULT,
        SuppressPopup: *const fn (*anyopaque, *bool) callconv(.c) HRESULT,
    });
};

pub const IToastNotification3 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "15154935-28ea-4727-88e9-c58680e2d118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update these params to be the correct types
        NotificationMirroring: *const fn (*anyopaque, *NotificationMirroring) callconv(.c) HRESULT,
        SetNotificationMirroring: *const fn (*anyopaque, NotificationMirroring) callconv(.c) HRESULT,
        RemoteId: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
        SetRemoteId: *const fn (*anyopaque, *anyopaque) callconv(.c) HRESULT,
    });
};

pub const IToastNotification4 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn data(self: *@This()) *NotificationData {
        var result: *NotificationData = undefined;
        _ = self.vtable.Data(@ptrCast(self), &result);
        return result;
    }

    pub fn setData(self: *@This(), value: *NotificationData) void {
        _ = self.vtable.SetData(@ptrCast(self), value);
    }

    pub fn priority(self: *@This()) ToastNotificationPriority {
        var result: ToastNotificationPriority = undefined;
        _ = self.vtable.Priority(@ptrCast(self), &result);
        return result;
    }

    pub fn setPriority(self: *@This(), value: ToastNotificationPriority) void {
        _ = self.vtable.SetPriority(@ptrCast(self), value);
    }

    pub const GUID: []const u8 = "15154935-28ea-4727-88e9-c58680e2d118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update these params to be the correct types
        Data: *const fn (*anyopaque, **NotificationData) callconv(.c) HRESULT,
        SetData: *const fn (*anyopaque, *NotificationData) callconv(.c) HRESULT,
        Priority: *const fn (*anyopaque, *ToastNotificationPriority) callconv(.c) HRESULT,
        SetPriority: *const fn (*anyopaque, ToastNotificationPriority) callconv(.c) HRESULT,
    });
};

pub const IToastNotification6 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "43ebfe53-89ae-5c1e-a279-3aecfe9b6f54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update these params to be the correct types
        ExpiresOnReboot: *const fn (*anyopaque, *bool) callconv(.c) HRESULT,
        SetExpiresOnReboot: *const fn (*anyopaque, bool) callconv(.c) HRESULT,
    });
};

pub const INotificationDataFactory = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn createNotificationDataWithValuesAndSequenceNumber(
        self: *@This(),
        initialvalues: *IIterable(IKeyValuePair(HSTRING, HSTRING)),
        sequencenumber: u32,
    ) !*NotificationData {
        var result: *NotificationData = undefined;
        if (self.vtable.CreateNotificationDataWithValuesAndSequenceNumber(initialvalues, sequencenumber, &result) != S_OK) {
            return error.NotificationData;
        }
        return result;
    }

    pub fn createNotificationDataWithValues(self: *@This(), initialvalues: IIterable(IKeyValuePair(HSTRING, HSTRING))) !*NotificationData {
        var result: *NotificationData = undefined;
        if (self.vtable.CreateNotificationDataWithValues(initialvalues, &result) != S_OK) {
            return error.NotificationData;
        }
        return result;
    }

    pub const GUID: []const u8 = "23c1e33a-1c10-46fb-8040-dec384621cf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        CreateNotificationDataWithValuesAndSequenceNumber: *const fn (*anyopaque, *anyopaque, u32, **anyopaque) callconv(.c) HRESULT,
        CreateNotificationDataWithValues: *const fn (*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IToastNotificationFactory = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "04124b20-82c6-4229-b109-fd9ed4662b53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct { CreateToastNotification: *const fn (*anyopaque, *const XmlDocument, **ToastNotification) callconv(.c) HRESULT });
};

pub const IToastNotificationManagerStatics = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn GetTemplateContent(self: *@This(), template: ToastTemplateType, document: **XmlDocument) HRESULT {
        return self.vtable.GetTemplateContent(@ptrCast(self), template, document);
    }

    pub const GUID: []const u8 = "50ac103f-d235-4598-bbef-98fe4d1a3ad4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        CreateToastNotifier: *const fn (*anyopaque, **ToastNotifier) callconv(.c) HRESULT,
        CreateToastNotifierWithId: *const fn (*anyopaque, HSTRING, **ToastNotifier) callconv(.c) HRESULT,
        GetTemplateContent: *const fn (*anyopaque, ToastTemplateType, **XmlDocument) callconv(.c) HRESULT,
    });
};

pub const IToastNotificationManagerStatics2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "7ab93c52-0e48-4750-ba9d-1a4113981847";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        History: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IToastNotificationManagerStatics4 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "8f993fd3-e516-45fb-8130-398e93fa52c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        GetForUser: *const fn (*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        ConfigureNotificationMirroring: *const fn (*anyopaque, NotificationMirroring) callconv(.c) HRESULT,
    });
};

pub const IToastNotificationManagerStatics5 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "d6f5f569-d40d-407c-8989-88cab42cfd14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        GetDefault: *const fn (*anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IToastNotifier = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "75927b93-03f3-41ec-91d3-6e5bac1b38e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        Show: *const fn (*anyopaque, *ToastNotification) callconv(.c) HRESULT,
        Hide: *const fn (*anyopaque, *ToastNotification) callconv(.c) HRESULT,
        Setting: *const fn (*anyopaque, *NotificationSetting) callconv(.c) HRESULT,
        AddToSchedule: *const fn (*anyopaque, *ScheduledToastNotification) callconv(.c) HRESULT,
        RemoveFromSchedule: *const fn (*anyopaque, *ScheduledToastNotification) callconv(.c) HRESULT,
        GetScheduledToastNotifications: *const fn (*anyopaque, **IVectorView(ScheduledToastNotification)) callconv(.c) HRESULT,
    });
};

pub const IToastNotifier2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn updateWithTagAndGroup(self: *@This(), data: *NotificationData, tag: [:0]const u16, group: [:0]const u16) !NotificationUpdateResult {
        const h_tag: ?HSTRING = try winrt.WindowsCreateString(tag);
        defer winrt.WindowsDeleteString(h_tag);

        const h_group: ?HSTRING = try winrt.WindowsCreateString(group);
        defer winrt.WindowsDeleteString(h_group);

        var result: NotificationUpdateResult = undefined;
        _ = self.vtable.UpdateWithTagAndGroup(@ptrCast(self), data, h_tag.?, h_group.?, &result);
        return result;
    }

    pub fn updateWithTag(self: *@This(), data: *NotificationData, tag: [:0]const u16) !NotificationUpdateResult {
        const h_tag: ?HSTRING = try winrt.WindowsCreateString(tag);
        defer winrt.WindowsDeleteString(h_tag);

        var result: NotificationUpdateResult = undefined;
        _ = self.vtable.UpdateWithTag(@ptrCast(self), data, h_tag.?, &result);
        return result;
    }

    pub const GUID: []const u8 = "354389c6-7c01-4bd5-9c20-604340cd2b74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        UpdateWithTagAndGroup: *const fn (*anyopaque, *NotificationData, HSTRING, HSTRING, *NotificationUpdateResult) callconv(.c) HRESULT,
        UpdateWithTag: *const fn (*anyopaque, *NotificationData, HSTRING, *NotificationUpdateResult) callconv(.c) HRESULT,
    });
};

pub const IToastNotifier3 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn scheduledToastNotificationShowing(self: *@This(), handler: *TypedEventHandler(ToastNotifier, ScheduledToastNotificationShowingEventArgs)) !i64 {
        var result: i64 = 0;
        if (self.vtable.ScheduledToastNotificationShowing(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeScheduledToastNotificationShowing(self: *@This(), handle: i64) void {
        _ = self.vtable.RemoveScheduledToastNotificationShowing(@ptrCast(self), handle);
    }

    pub const GUID: []const u8 = "ae75a04a-3b0c-51ad-b7e8-b08ab6052549";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        ScheduledToastNotificationShowing: *const fn (*anyopaque, *TypedEventHandler(ToastNotifier, ScheduledToastNotificationShowingEventArgs), *i64) callconv(.c) HRESULT,
        RemoveScheduledToastNotificationShowing: *const fn (*anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const ToastNotifier = extern struct {
    vtable: *const IToastNotifier.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn show(self: *@This(), toast: *ToastNotification) !void {
        if (self.vtable.Show(@ptrCast(self), toast) != S_OK) {
            return error.ShowNotification;
        }
    }

    pub fn hide(self: *@This(), toast: *ToastNotification) !void {
        if (self.vtable.Hide(@ptrCast(self), toast) != S_OK) {
            return error.HideNotification;
        }
    }

    pub fn setting(self: *@This()) !NotificationSetting {
        var result: NotificationSetting = undefined;
        if (self.vtable.Setting(@ptrCast(self), &result) != S_OK) {
            return error.GetNotificationSetting;
        }
        return result;
    }

    pub fn updateWithTagAndGroup(self: *@This(), data: *NotificationData, tag: [:0]const u16, group: [:0]const u16) !NotificationUpdateResult {
        const this: *IToastNotifier2 = self.queryInterface(IToastNotifier2) catch unreachable;
        return this.updateWithTagAndGroup(data, tag, group);
    }

    pub fn updateWithTag(self: *@This(), data: *NotificationData, tag: [:0]const u16) !NotificationUpdateResult {
        const this: *IToastNotifier2 = self.queryInterface(IToastNotifier2) catch unreachable;
        return this.updateWithTag(data, tag);
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn addToSchedule(self: *@This(), tile: *ScheduledToastNotification) !void {
        const this: *IToastNotifier = @ptrCast(self);
        if (this.vtable.AddToSchedule(@ptrCast(this), tile) != S_OK) {
            return error.ScheduleNotification;
        }
    }

    pub fn removeFromSchedule(self: *@This(), tile: *ScheduledToastNotification) !void {
        const this: *IToastNotifier = @ptrCast(self);
        if (this.vtable.RemoveToSchedule(@ptrCast(this), tile) != S_OK) {
            return error.UnscheduleNotification;
        }
    }

    pub fn getScheduledToastNotifications(self: *@This()) !*IVectorView(ScheduledToastNotification) {
        const this: *IToastNotifier = @ptrCast(self);

        var result: *IVectorView(ScheduledToastNotification) = undefined;
        if (this.vtable.GetScheduledToastNotifications(@ptrCast(this), &result) != S_OK) {
            return error.GetScheduledNotifications;
        }
        return result;
    }

    pub fn scheduledToastNotificationShowing(self: *@This(), handler: *ScheduledTypedEventHandler) !i64 {
        const this: *IToastNotifier3 = self.queryInterface(IToastNotifier3) catch unreachable;
        return this.scheduledToastNotificationShowing(handler);
    }

    pub fn removeScheduledToastNotificationShowing(self: *@This(), handle: i64) !void {
        const this: *IToastNotifier3 = self.queryInterface(IToastNotifier3) catch unreachable;
        return this.removeScheduledToastNotificationShowing(handle);
    }

    pub const ScheduledTypedEventHandler = TypedEventHandler(ToastNotifier, ScheduledToastNotificationShowingEventArgs);

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotifier";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral();
    const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastNotifier.SIGNATURE);
};

pub const ToastNotificationManager = extern struct {
    pub fn createToastNotifier() !*ToastNotifier {
        const factory = try @This().IToastNotificationManagerStaticsCache.get();

        var notifier: *ToastNotifier = undefined;
        if (factory.vtable.CreateToastNotifier(@ptrCast(factory), &notifier) < S_OK) {
            return error.Notifier;
        }

        return notifier;
    }

    pub fn createToastNotifierWithId(id: [:0]const u16) !*ToastNotifier {
        const factory = try @This().IToastNotificationManagerStaticsCache.get();

        const id_hstring: ?HSTRING = try winrt.WindowsCreateString(id);
        defer winrt.WindowsDeleteString(id_hstring);

        var notifier: *ToastNotifier = undefined;
        if (factory.vtable.CreateToastNotifierWithId(@ptrCast(factory), id_hstring.?, &notifier) < S_OK) {
            return error.Notifier;
        }

        return notifier;
    }

    pub fn getTemplateContent(template: ToastTemplateType) !*XmlDocument {
        const factory = try @This().IToastNotificationManagerStaticsCache.get();

        var document: *XmlDocument = undefined;
        if (factory.GetTemplateContent(template, &document) != S_OK) {
            return error.TemplateContent;
        }

        return document;
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationManager";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var IToastNotificationManagerStaticsCache: FactoryCache(IToastNotificationManagerStatics, RUNTIME_NAME) = .{};
};

pub const ToastNotification = extern struct {
    vtable: *IInspectable.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn createToastNotification(xml: *XmlDocument) !*@This() {
        const factory = try @This().IToastNotificationFactoryCache.get();

        var result: *@This() = undefined;
        if (factory.vtable.CreateToastNotification(@ptrCast(factory), xml, &result) < S_OK) {
            return error.ToastCreationFailure;
        }

        return result;
    }

    // ToastDismissedEventArgs
    pub fn onDismissed(self: *@This(), handler: *TypedEventHandler(ToastNotification, ToastDismissedEventArgs)) !i64 {
        const this: *IToastNotification = @ptrCast(self);
        return this.onDismissed(handler);
    }

    pub fn removeOnDismissed(self: *@This(), handle: i64) void {
        const this: *IToastNotification = @ptrCast(self);
        this.removeOnDismissed(handle);
    }

    pub fn onActivated(self: *@This(), handler: *TypedEventHandler(ToastNotification, IInspectable)) !i64 {
        const this: *IToastNotification = @ptrCast(self);
        return this.onActivated(handler);
    }

    pub fn removeOnActivated(self: *@This(), handle: i64) void {
        const this: *IToastNotification = @ptrCast(self);
        this.removeOnActivated(handle);
    }

    pub fn onFailed(self: *@This(), handler: *TypedEventHandler(ToastNotification, ToastFailedEventArgs)) !i64 {
        const this: *IToastNotification = @ptrCast(self);
        return this.onFailed(handler);
    }

    pub fn removeOnFailed(self: *@This(), handle: i64) void {
        const this: *IToastNotification = @ptrCast(self);
        this.removeOnFailed(handle);
    }

    pub fn content(self: *@This()) *XmlDocument {
        var result: *XmlDocument = undefined;
        _ = self.vtable.Content(@ptrCast(self), &result);
        return result;
    }

    pub fn expirationTime(self: *@This()) *IReference(DateTime) {
        var result: *IReference(DateTime) = undefined;
        _ = self.vtable.ExpirationTime(@ptrCast(self), &result);
        return result;
    }

    pub fn setExpirationTime(self: *@This(), et: *IReference(DateTime)) void {
        _ = self.vtable.SetExpirationTime(@ptrCast(self), et);
    }

    pub fn data(self: *@This()) *NotificationData {
        const this: *IToastNotification4 = self.queryInterface(IToastNotification4) catch unreachable;
        return this.data();
    }

    pub fn setData(self: *@This(), value: *NotificationData) void {
        const this: *IToastNotification4 = self.queryInterface(IToastNotification4) catch unreachable;
        return this.setData(value);
    }

    pub fn priority(self: *@This()) ToastNotificationPriority {
        const this: *IToastNotification4 = self.queryInterface(IToastNotification4) catch unreachable;
        return this.priority();
    }

    pub fn setPriority(self: *@This(), value: ToastNotificationPriority) !void {
        const this: *IToastNotification4 = self.queryInterface(IToastNotification4) catch unreachable;
        return this.setPriority(value);
    }

    pub const DismissedTypedEventHandler = TypedEventHandler(ToastNotification, ToastDismissedEventArgs);
    pub const ActivatedTypedEventHandler = TypedEventHandler(ToastNotification, IInspectable);
    pub const FailedTypedEventHandler = TypedEventHandler(ToastNotification, ToastFailedEventArgs);

    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotification";
    pub const SIGNATURE: []const u8 = std.fmt.comptimePrint("rc({s};{s})", .{ TYPE_NAME, IToastNotification.SIGNATURE });
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var IToastNotificationFactoryCache: FactoryCache(IToastNotificationFactory, RUNTIME_NAME) = .{};
};

pub const NotificationData = extern struct {
    vtable: *INotificationData.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.E_NOINTERFACE;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn values(self: *@This()) *IMap(HSTRING, HSTRING) {
        const this: *INotificationData = @ptrCast(@alignCast(self));
        return this.values();
    }

    pub fn sequenceNumber(self: *@This()) u32 {
        const this: *INotificationData = @ptrCast(@alignCast(self));
        return this.sequenceNumber();
    }

    pub fn setSequenceNumber(self: *@This(), value: u32) void {
        const this: *INotificationData = @ptrCast(@alignCast(self));
        return this.setSequenceNumber(value);
    }

    pub fn init() !*@This() {
        const factory = try @This().IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try factory.ActivateInstance()));
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn createNotificationDataWithValuesAndSequenceNumber(
        initialvalues: IIterable(IKeyValuePair(HSTRING, HSTRING)),
        sequencenumber: u32,
    ) !*NotificationData {
        const factory = try @This().INotificationDataFactoryCache.get();
        return factory.createNotificationDataWithValuesAndSequenceNumber(initialvalues, sequencenumber);
    }

    pub fn createNotificationDataWithValues(initialvalues: IIterable(IKeyValuePair(HSTRING, HSTRING))) !*NotificationData {
        const factory = try @This().INotificationDataFactoryCache.get();
        return factory.createNotificationDataWithValues(initialvalues);
    }

    pub const DismissedTypedEventHandler = TypedEventHandler(ToastNotification, ToastDismissedEventArgs);
    pub const ActivatedTypedEventHandler = TypedEventHandler(ToastNotification, IInspectable);
    pub const FailedTypedEventHandler = TypedEventHandler(ToastNotification, ToastFailedEventArgs);

    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.NotificationData";
    pub const SIGNATURE: []const u8 = std.fmt.comptimePrint("rc({s};{s})", .{ TYPE_NAME, INotificationData.SIGNATURE });
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = INotificationData.GUID;
    pub const IID: Guid = INotificationData.IID;

    var IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var INotificationDataFactoryCache: FactoryCache(INotificationDataFactory, RUNTIME_NAME) = .{};
};
