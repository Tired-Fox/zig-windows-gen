pub const core = @import("../core.zig");
pub const std = @import("std");
pub const win32 = @import("win32");
pub const winrt = @import("../../root.zig");

const ITypedEventHandler = winrt.foundation.ITypedEventHandler;
const TypedEventHandler = winrt.foundation.TypedEventHandler;
const ValueSet = winrt.foundation.collections.ValueSet;
const XmlDocument = winrt.data.xml.dom.XmlDocument;

pub const IInspectable = winrt.IInspectable;
pub const TrustLevel = winrt.TrustLevel;
pub const WindowsGetString = winrt.WindowsGetString;
pub const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;

pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;
pub const HSTRING = win32.system.win_rt.HSTRING;
pub const Signature = core.Signature;

pub const FactoryCache = core.FactoryCache;
pub const FactoryError = core.FactoryError;
pub const Implements = core.Implements;
pub const IGenericFactory = core.IGenericFactory;

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

pub const NotificationUpdateResult = enum (i32) {
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

    pub fn reason(self: *@This()) ToastDismissalReason {
        var result: ToastDismissalReason = undefined;
        _ = self.vtable.Reason(@ptrCast(self), &result);
        return result;
    }

    pub const GUID: []const u8 = "3f89d935-d9cb-4538-a0f0-ffe7659938f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Reason: *const fn(*anyopaque, *ToastDismissalReason) callconv(.C) HRESULT,
    });
};

pub const IToastActivatedEventArgs = extern struct {
    vtable: *const VTable,

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
        Arguments: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    });
};

pub const IToastActivatedEventArgs2 = extern struct {
    vtable: *const VTable,

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
         UserInput: *const fn(*anyopaque, **ValueSet) callconv(.C) HRESULT,
    });
};

pub const ToastActivatedEventArgs = extern struct {
    vtable: *const IToastActivatedEventArgs.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        const this: *IToastActivatedEventArgs2 = try self.queryInterface(IToastActivatedEventArgs2);
        return this.user_input();
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastActivatedEventArgs";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    pub const GUID: []const u8 = IToastActivatedEventArgs.GUID;
    pub const IID: Guid = IToastActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastActivatedEventArgs.SIGNATURE);

    pub const VTable = Implements(IInspectable.VTable, struct {
         UserInput: *const fn(*anyopaque, **ValueSet) callconv(.C) HRESULT,
    });
};

pub const IToastFailedEventArgs = extern struct {
    vtable: *const VTable,

    pub fn error_code(self: *@This()) HRESULT {
        var result: HRESULT = 0;
        _ = self.vtable.ErrorCode(@ptrCast(self), &result);
        return result;
    }
    
    pub const GUID: []const u8 = "35176862-cfd4-44f8-ad64-f500fd896c3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        ErrorCode: *const fn(*anyopaque, *HRESULT) callconv(.C) HRESULT,
    });
};

pub const ToastDismissedEventArgs = extern struct {
    vtable: *const IToastDismissedEventArgs.VTable,

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

pub const IToastNotification = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        // TODO: Update these params to be the correct types
        Content: *const fn(*anyopaque, **XmlDocument) callconv(.C) HRESULT,
        SetExpirationTime: *const fn(*anyopaque, ?*anyopaque) callconv(.C) HRESULT,
        ExpirationTime: *const fn(*anyopaque, *?*anyopaque) callconv(.C) HRESULT,
        Dismissed: *const fn(*anyopaque, *ITypedEventHandler, *i64) callconv(.C) HRESULT,
        RemoveDismissed: *const fn(*anyopaque, i64) callconv(.C) HRESULT,
        Activated: *const fn(*anyopaque, *ITypedEventHandler, *i64) callconv(.C) HRESULT,
        RemoveActivated: *const fn(*anyopaque, i64) callconv(.C) HRESULT,
        Failed: *const fn(*anyopaque, *ITypedEventHandler, *i64) callconv(.C) HRESULT,
        RemoveFailed: *const fn(*anyopaque, i64) callconv(.C) HRESULT,
    });
};

pub const IToastNotification2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        SetTag: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        Tag: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetGroup: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        Group: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetSuppressPopup: *const fn(*anyopaque, bool) callconv(.C) HRESULT,
        SuppressPopup: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
    });
};

pub const IToastNotification3 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        NotificationMirroring: *const fn(*anyopaque, *NotificationMirroring) callconv(.C) HRESULT,
        SetNotificationMirroring: *const fn(*anyopaque, NotificationMirroring) callconv(.C) HRESULT,
        RemoteId: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetRemoteId: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
    });
};

pub const IToastNotification4 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        Data: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetData: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        Priority: *const fn(*anyopaque, *ToastNotificationPriority) callconv(.C) HRESULT,
        SetPriority: *const fn(*anyopaque, ToastNotificationPriority) callconv(.C) HRESULT,
    });
};

pub const IToastNotification6 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        ExpiresOnReboot: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
        SetExpiresOnReboot: *const fn(*anyopaque, bool) callconv(.C) HRESULT,
    });
};

pub const IToastNotificationFactory = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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

    pub const VTable = Implements(IInspectable.VTable, struct {
        CreateToastNotification: *const fn(*anyopaque, *const XmlDocument, **ToastNotification) callconv(.C) HRESULT
    });
};

pub const IToastNotificationManagerStatics = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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

    pub const GUID: []const u8 = "50ac103f-d235-4598-bbef-98fe4d1a3ad4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        CreateToastNotifier: *const fn(*anyopaque, **ToastNotifier) callconv(.C) HRESULT,
        CreateToastNotifierWithId: *const fn(*anyopaque, HSTRING, **ToastNotifier) callconv(.C) HRESULT,
        GetTemplateContent: *const fn(*anyopaque, ToastTemplateType, **XmlDocument) callconv(.C) HRESULT,
    });
};

pub const IToastNotificationManagerStatics2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        History: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    });
};

pub const IToastNotificationManagerStatics4 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        GetForUser: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.C) HRESULT,
        ConfigureNotificationMirroring: *const fn(*anyopaque, NotificationMirroring) callconv(.C) HRESULT,
    });
};

pub const IToastNotificationManagerStatics5 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        GetDefault: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    });
};

pub const IToastNotifier = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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
        Show: *const fn(*anyopaque, *ToastNotification) callconv(.C) HRESULT,
        Hide: *const fn(*anyopaque, *ToastNotification) callconv(.C) HRESULT,
        Setting: *const fn(*anyopaque, *NotificationSetting) callconv(.C) HRESULT,
        AddToSchedule: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        RemoveFromSchedule: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        GetScheduledToastNotifications: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    });
};

pub const IToastNotifier2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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

    pub const GUID: []const u8 = "354389c6-7c01-4bd5-9c20-604340cd2b74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        UpdateWithTagAndGroup: *const fn(*anyopaque, *anyopaque, *anyopaque, *anyopaque, *NotificationUpdateResult) callconv(.C) HRESULT,
        UpdateWithTag: *const fn(*anyopaque, *anyopaque, *anyopaque, *NotificationUpdateResult) callconv(.C) HRESULT,
    });
};

pub const IToastNotifier3 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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

    pub const GUID: []const u8 = "ae75a04a-3b0c-51ad-b7e8-b08ab6052549";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: update the params to be the correct type
        ScheduledToastNotificationShowing: *const fn(*anyopaque, *anyopaque, *i64) callconv(.C) HRESULT,
        RemoveScheduledToastNotificationShowing: *const fn(*anyopaque, i64) callconv(.C) HRESULT,
    });
};

pub const ToastNotifier = extern struct {
    vtable: *const IToastNotifier.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotifier";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral();
    const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastNotifier.SIGNATURE);
};

pub const ToastNotificationManager = extern struct {
    pub fn createToastNotifier() !*ToastNotifier {
        const factory: *IToastNotificationManagerStatics = try @This().Factory.call(
            IToastNotificationManagerStatics,
            @This().RUNTIME_NAME,
        );

        var notifier: *ToastNotifier = undefined;
        if (factory.vtable.CreateToastNotifier(@ptrCast(factory), &notifier) < S_OK ) {
            return error.Notifier;
        }

        return notifier;
    }

    pub fn createToastNotifierWithId(id: [:0]const u16) !*ToastNotifier {
        const factory: *IToastNotificationManagerStatics = try @This().Factory.call(
            IToastNotificationManagerStatics,
            @This().RUNTIME_NAME,
        );

        const id_hstring: ?HSTRING = try winrt.WindowsCreateString(id);
        defer winrt.WindowsDeleteString(id_hstring);

        var notifier: *ToastNotifier = undefined;
        if (factory.vtable.CreateToastNotifierWithId(@ptrCast(factory), id_hstring.?, &notifier) < S_OK ) {
            return error.Notifier;
        }

        return notifier;
    }

    pub fn getTemplateContent(template: ToastTemplateType) !*XmlDocument {
        const factory: *IToastNotificationManagerStatics = try @This().Factory.call(
            IToastNotificationManagerStatics,
            @This().RUNTIME_NAME,
        );

        var document: *XmlDocument = undefined;
        if (factory.vtable.GetTemplateContent(@ptrCast(factory), template, &document) < S_OK ) {
            return error.TemplateContent;
        }

        return document;
    }

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationManager";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};
};

pub const ToastNotification = extern struct {
    vtable: *IToastNotification.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
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

    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn createToastNotification(xml: *XmlDocument) !*@This() {
        const factory: *IToastNotificationFactory = try @This().Factory.call(
            IToastNotificationFactory,
            @This().RUNTIME_NAME,
        );

        var result: *@This() = undefined;
        if (factory.vtable.CreateToastNotification(@ptrCast(factory), xml, &result) < S_OK) {
            return error.ToastCreationFailure;
        }

        return result;
    }

    // ToastDismissedEventArgs
    pub fn onDismissed(self: *@This(), handler: *TypedEventHandler(ToastNotification, ToastDismissedEventArgs)) !i64 {
        const this: *IToastNotification = @ptrCast(@alignCast(self));
        return this.onDismissed(handler);
    }

    pub fn removeOnDismissed(self: *@This(), handle: i64) void {
        const this: *IToastNotification = @ptrCast(@alignCast(self));
        return this.removeOnDismissed(handle);
    }

    pub fn onActivated(self: *@This(), handler: *TypedEventHandler(ToastNotification, IInspectable)) !i64 {
        const this: *IToastNotification = @ptrCast(@alignCast(self));
        return this.onActivated(handler);
    }

    pub fn removeOnActivated(self: *@This(), handle: i64) void {
        const this: *IToastNotification = @ptrCast(@alignCast(self));
        return this.removeOnActivated(handle);
    }

    pub fn onFailed(self: *@This(), handler: *TypedEventHandler(ToastNotification, ToastFailedEventArgs)) !i64 {
        const this: *IToastNotification = @ptrCast(@alignCast(self));
        return this.onFailed(handler);
    }

    pub fn removeOnFailed(self: *@This(), handle: i64) void {
        const this: *IToastNotification = @ptrCast(@alignCast(self));
        return this.removeOnFailed(handle);
    }

    pub const DismissedTypedEventHandler = TypedEventHandler(ToastNotification, ToastDismissedEventArgs);
    pub const ActivatedTypedEventHandler = TypedEventHandler(ToastNotification, IInspectable);
    pub const FailedTypedEventHandler = TypedEventHandler(ToastNotification, ToastFailedEventArgs);

    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotification";
    pub const SIGNATURE: []const u8 = std.fmt.comptimePrint("rc({s};{s})", .{ TYPE_NAME, IToastNotification.SIGNATURE });
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};
};
