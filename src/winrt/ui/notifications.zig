pub const core = @import("../core.zig");
pub const std = @import("std");
pub const win32 = @import("win32");
pub const winrt = @import("../../root.zig");

const ITypedEventHandler = winrt.foundation.ITypedEventHandler;
const XmlDocument = winrt.data.xml.dom.XmlDocument;

pub const IInspectable = winrt.IInspectable;
pub const TrustLevel = winrt.TrustLevel;

pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;
pub const HSTRING = win32.system.win_rt.HSTRING;
pub const Signature = core.Signature;

pub const FactoryCache = core.FactoryCache;
pub const FactoryError = core.FactoryError;
pub const IGenericFactory = core.IGenericFactory;

pub const S_OK = winrt.S_OK;

pub const IToastNotification = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "997e2675-059e-4e60-8b06-1760917c8b80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *[*]Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *TrustLevel) callconv(.C) HRESULT,

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
    };
};

pub const IToastNotification2 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "9dfb9fd1-143a-490e-90bf-b9fba7132de7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: Update these params to be the correct types
        SetTag: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        Tag: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetGroup: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        Group: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetSuppressPopup: *const fn(*anyopaque, bool) callconv(.C) HRESULT,
        SuppressPopup: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
    };
};

pub const IToastNotification3 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "15154935-28ea-4727-88e9-c58680e2d118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: Update these params to be the correct types
        NotificationMirroring: *const fn(*anyopaque, *NotificationMirroring) callconv(.C) HRESULT,
        SetNotificationMirroring: *const fn(*anyopaque, NotificationMirroring) callconv(.C) HRESULT,
        RemoteId: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetRemoteId: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
    };
};

pub const IToastNotification4 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "15154935-28ea-4727-88e9-c58680e2d118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: Update these params to be the correct types
        Data: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
        SetData: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        Priority: *const fn(*anyopaque, *ToastNotificationPriority) callconv(.C) HRESULT,
        SetPriority: *const fn(*anyopaque, ToastNotificationPriority) callconv(.C) HRESULT,
    };
};

pub const IToastNotification6 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "43ebfe53-89ae-5c1e-a279-3aecfe9b6f54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: Update these params to be the correct types
        ExpiresOnReboot: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
        SetExpiresOnReboot: *const fn(*anyopaque, bool) callconv(.C) HRESULT,
    };
};

pub const IToastNotificationFactory = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "04124b20-82c6-4229-b109-fd9ed4662b53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        CreateToastNotification: *const fn(*anyopaque, *const XmlDocument, **ToastNotification) callconv(.C) HRESULT
    };
};

pub const IToastNotificationManagerStatics = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "50ac103f-d235-4598-bbef-98fe4d1a3ad4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        CreateToastNotifier: *const fn(*anyopaque, **ToastNotifier) callconv(.C) HRESULT,
        CreateToastNotifierWithId: *const fn(*anyopaque, HSTRING, **ToastNotifier) callconv(.C) HRESULT,
        GetTemplateContent: *const fn(*anyopaque, ToastTemplateType, **XmlDocument) callconv(.C) HRESULT,
    };
};

pub const IToastNotificationManagerStatics2 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "7ab93c52-0e48-4750-ba9d-1a4113981847";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: update the params to be the correct type
        History: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    };
};

pub const IToastNotificationManagerStatics4 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "8f993fd3-e516-45fb-8130-398e93fa52c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: update the params to be the correct type
        GetForUser: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.C) HRESULT,
        ConfigureNotificationMirroring: *const fn(*anyopaque, NotificationMirroring) callconv(.C) HRESULT,
    };
};

pub const IToastNotificationManagerStatics5 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "d6f5f569-d40d-407c-8989-88cab42cfd14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: update the params to be the correct type
        GetDefault: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    };
};

pub const IToastNotifier = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "75927b93-03f3-41ec-91d3-6e5bac1b38e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: update the params to be the correct type
        Show: *const fn(*anyopaque, *ToastNotification) callconv(.C) HRESULT,
        Hide: *const fn(*anyopaque, *ToastNotification) callconv(.C) HRESULT,
        Setting: *const fn(*anyopaque, *NotificationSetting) callconv(.C) HRESULT,
        AddToSchedule: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        RemoveFromSchedule: *const fn(*anyopaque, *anyopaque) callconv(.C) HRESULT,
        GetScheduledToastNotifications: *const fn(*anyopaque, **anyopaque) callconv(.C) HRESULT,
    };
};

pub const IToastNotifier2 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "354389c6-7c01-4bd5-9c20-604340cd2b74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: update the params to be the correct type
        UpdateWithTagAndGroup: *const fn(*anyopaque, *anyopaque, *anyopaque, *anyopaque, *NotificationUpdateResult) callconv(.C) HRESULT,
        UpdateWithTag: *const fn(*anyopaque, *anyopaque, *anyopaque, *NotificationUpdateResult) callconv(.C) HRESULT,
    };
};

pub const IToastNotifier3 = extern struct {
    vtable: *const VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const GUID: []const u8 = "ae75a04a-3b0c-51ad-b7e8-b08ab6052549";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = extern struct {
        // IUnknown
        QueryInterface: *const fn(self: *anyopaque, riid:*const Guid, out:**anyopaque) callconv(.C) HRESULT,
        AddRef:         *const fn(self: *anyopaque) callconv(.C) u32,
        Release:        *const fn(self: *anyopaque) callconv(.C) u32,

        // IInspectable
        GetIids:             *const fn(self: *anyopaque, count: *u32, iids: *?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, s: *HSTRING) callconv(.C) HRESULT,
        GetTrustLevel:       *const fn(self: *anyopaque, trust: *i32) callconv(.C) HRESULT,

        // TODO: update the params to be the correct type
        ScheduledToastNotificationShowing: *const fn(*anyopaque, *anyopaque, *i64) callconv(.C) HRESULT,
        RemoveScheduledToastNotificationShowing: *const fn(*anyopaque, i64) callconv(.C) HRESULT,
    };
};

pub const ToastNotifier = extern struct {
    vtable: *const IToastNotifier.VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotifier";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral();
    const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IToastNotifier.SIGNATURE);

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
};

pub const ToastNotificationManager = extern struct {
    const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationManager";
    const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};

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
};

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

pub const ToastNotification = extern struct {
    vtable: *IToastNotification.VTable,

    pub usingnamespace IInspectable.Mixins(@This());

    pub const TYPE_NAME: []const u8 = "Windows.UI.Notifications.ToastNotification";
    pub const SIGNATURE: []const u8 = std.fmt.comptimePrint("rc({s};{s})", .{ TYPE_NAME, IToastNotification.SIGNATURE });
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};

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
};
