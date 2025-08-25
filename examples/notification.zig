const std = @import("std");
const win32 = @import("win32");
const winrt = @import("winrt");

const XmlDocument = winrt.data.xml.dom.XmlDocument;
const XmlElement = winrt.data.xml.dom.XmlElement;
const IXmlNode = winrt.data.xml.dom.IXmlNode;
const IInspectable = winrt.IInspectable;
const ToastNotificationManager = winrt.ui.notifications.ToastNotificationManager;
const ToastNotification = winrt.ui.notifications.ToastNotification;

const ToastDismissedEventArgs = winrt.ui.notifications.ToastDismissedEventArgs;
const ToastActivatedEventArgs = winrt.ui.notifications.ToastActivatedEventArgs;
const ToastFailedEventArgs = winrt.ui.notifications.ToastFailedEventArgs;

const L = std.unicode.utf8ToUtf16LeStringLiteral;

// TODO: Add ability to register ativator and com server
// so that clicking on the notification can activate the
// app even if it isn't running.

fn dismissNotification(_: ?*anyopaque, sender: *ToastNotification, args: *ToastDismissedEventArgs) callconv(.C) void {
    _ = sender;
    std.debug.print("{any}\n", .{ args.reason() });
    wait.store(false, .release);
}

fn activatedNotification(_: ?*anyopaque, sender: *ToastNotification, args: *IInspectable) callconv(.C) void {
    _ = sender;

    const event_args: *ToastActivatedEventArgs = @ptrCast(@alignCast(args));

    const arguments = std.unicode.utf16LeToUtf8Alloc(std.heap.smp_allocator, event_args.arguments()) catch return;
    defer std.heap.smp_allocator.free(arguments);

    std.debug.print("Activated: {s}\n", .{ arguments });
    wait.store(false, .release);
}

fn failedNotification(_: ?*anyopaque, sender: *ToastNotification, args: *ToastFailedEventArgs) callconv(.C) void {
    _ = sender;
    std.debug.print("[0x{X}] Toast Failure", .{ args.error_code() });
    wait.store(false, .release);
}

fn relative_file_uri(allocator: std.mem.Allocator, path: []const u8) ![:0]const u16 {
    const file_path = try std.fs.cwd().realpathAlloc(allocator, path);
    defer allocator.free(file_path);

    const uriUtf8 = try std.fmt.allocPrint(allocator, "file:///{s}", .{ file_path });
    defer allocator.free(uriUtf8);

    return try std.unicode.utf8ToUtf16LeAllocZ(allocator, uriUtf8);
}

var wait = std.atomic.Value(bool).init(true);

pub fn main() !void {
    @setEvalBranchQuota(10_000);
    const POWERSHELL: [:0]const u16 = L("{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\\WindowsPowerShell\\v1.0\\powershell.exe");

    const xml_document = try XmlDocument.init();
    defer xml_document.deinit();

    const toastElement = try xml_document.createElement(L("toast"));
    defer _ = toastElement.release();
    _ = try xml_document.appendChild(@ptrCast(toastElement));

    const visualElement = try xml_document.createElement(L("visual"));
    defer _ = visualElement.release();
    _ = try toastElement.appendChild(@ptrCast(visualElement));

    const bindingElement = try xml_document.createElement(L("binding"));
    defer _ = bindingElement.release();
    _ = try visualElement.appendChild(@ptrCast(bindingElement));

    try bindingElement.setAttribute(L("template"), L("ToastGeneric"));

    const logoElement = try xml_document.createElement(L("image"));
    defer _ = logoElement.release();
    _ = try bindingElement.appendChild(@ptrCast(logoElement));

    const hero_uri = try relative_file_uri(std.heap.smp_allocator, "examples\\images\\hero.png");
    defer std.heap.smp_allocator.free(hero_uri);

    try logoElement.setAttribute(L("id"), L("0"));
    try logoElement.setAttribute(L("src"), hero_uri);
    try logoElement.setAttribute(L("alt"), L("Banner"));
    try logoElement.setAttribute(L("placement"), L("hero"));

    const titleElement = try xml_document.createElement(L("text"));
    defer _ = titleElement.release();
    _ = try bindingElement.appendChild(@ptrCast(titleElement));

    try titleElement.setAttribute(L("id"), L("1"));
    try titleElement.setAttribute(L("hint-style"), L("title"));

    const titleText = try xml_document.createTextNode(L("Zig Windows Runtime"));
    defer _ = titleText.release();
    _ = try titleElement.appendChild(@ptrCast(titleText));

    const bodyElement = try xml_document.createElement(L("text"));
    defer _ = bodyElement.release();
    _ = try bindingElement.appendChild(@ptrCast(bodyElement));

    try bodyElement.setAttribute(L("id"), L("2"));

    const bodyText = try xml_document.createTextNode(L("No Powershell needed!"));
    defer _ = bodyText.release();
    _ = try bodyElement.appendChild(@ptrCast(bodyText));

    const heroElement = try xml_document.createElement(L("image"));
    defer _ = heroElement.release();
    _ = try bindingElement.appendChild(@ptrCast(heroElement));

    const logo_uri = try relative_file_uri(std.heap.smp_allocator, "examples\\images\\logo.png");
    defer std.heap.smp_allocator.free(logo_uri);

    try heroElement.setAttribute(L("id"), L("3"));
    try heroElement.setAttribute(L("src"), logo_uri);
    try heroElement.setAttribute(L("alt"), L("Logo"));
    try heroElement.setAttribute(L("placement"), L("appLogoOverride"));
    try heroElement.setAttribute(L("hint-crop"), L("circle"));

    const actionsElement = try xml_document.createElement(L("actions"));
    defer _ = actionsElement.release();
    _ = try toastElement.appendChild(@ptrCast(actionsElement));

    const buttonElement = try xml_document.createElement(L("action"));
    defer _ = buttonElement.release();
    _ = try actionsElement.appendChild(@ptrCast(buttonElement));

    try buttonElement.setAttribute(L("content"), L("Click Me"));
    try buttonElement.setAttribute(L("arguments"), L("click:click-me"));
    try buttonElement.setAttribute(L("activationType"), L("background"));

    // Above is the same as just parsing the xml
    //
    // const xml: [:0]const u16 = L(
    //     \\<toast>
    //     \\    <visual>
    //     \\        <binding template="ToastGeneric">
    //     \\          <image
    //     \\            id="0"
    //     \\            src="..."
    //     \\            alt="Banner"
    //     \\            placement="hero"
    //     \\          />
    //     \\          <text id="1" hint-style="title">Zig Windows Runtime</text>
    //     \\          <text id="2">No Powershell needed!</text>
    //     \\          <image
    //     \\            id="3"
    //     \\            src="..."
    //     \\            alt="Logo"
    //     \\            placement="appLogoOverride"
    //     \\            hint-crop="circle"
    //     \\          />
    //     \\        </binding>
    //     \\    </visual>
    //     \\</toast>
    // );
    // try xml_document.loadXml(xml);

    {
        const built_xml = try std.unicode.utf16LeToUtf8Alloc(std.heap.smp_allocator, try xml_document.getXml());
        defer std.heap.smp_allocator.free(built_xml);
        std.debug.print("[XML]\n{s}\n", .{built_xml});
    }

    const notification = try ToastNotification.createToastNotification(xml_document);
    defer _ = notification.release();

    var dhandler = ToastNotification.DismissedTypedEventHandler.init(dismissNotification);
    const dhandle = try notification.onDismissed(&dhandler);

    var ahandler = ToastNotification.ActivatedTypedEventHandler.init(activatedNotification);
    const ahandle = try notification.onActivated(&ahandler);

    var fhandler = ToastNotification.FailedTypedEventHandler.init(failedNotification);
    const fhandle = try notification.onFailed(&fhandler);

    var notifier = try ToastNotificationManager.createToastNotifierWithId(POWERSHELL);
    defer _ = notifier.release();

    try notifier.show(notification);

    while (wait.load(.acquire)) {
        std.time.sleep(std.time.ns_per_s * 1);
    }

    std.debug.print("END\n", .{});
    _ = notification.removeOnDismissed(dhandle);
    _ = notification.removeOnActivated(ahandle);
    _ = notification.removeOnFailed(fhandle);
}
