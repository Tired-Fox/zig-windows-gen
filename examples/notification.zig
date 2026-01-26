const std = @import("std");
const win32 = @import("win32");
const winrt = @import("winrt");

const XmlDocument = winrt.Data.Xml.Dom.XmlDocument;
const XmlElement = winrt.Data.Xml.Dom.XmlElement;
const IXmlNode = winrt.Data.Xml.Dom.IXmlNode;
const IInspectable = winrt.IInspectable;
const ToastNotificationManager = winrt.UI.Notifications.ToastNotificationManager;
const ToastNotification = winrt.UI.Notifications.ToastNotification;

const ToastDismissedEventArgs = winrt.UI.Notifications.ToastDismissedEventArgs;
const ToastActivatedEventArgs = winrt.UI.Notifications.ToastActivatedEventArgs;
const ToastFailedEventArgs = winrt.UI.Notifications.ToastFailedEventArgs;

const TypedEventHandler = winrt.Foundation.TypedEventHandler;

const L = std.unicode.utf8ToUtf16LeStringLiteral;

fn dismissNotification(_: ?*anyopaque, sender: *ToastNotification, args: *ToastDismissedEventArgs) void {
    _ = sender;
    std.debug.print("{any}\n", .{args.reason()});
    wait.store(false, .release);
}

fn activatedNotification(_: ?*anyopaque, sender: *ToastNotification, args: *IInspectable) void {
    _ = sender;

    const event_args: *ToastActivatedEventArgs = @ptrCast(@alignCast(args));

    const arguments = std.unicode.utf16LeToUtf8Alloc(std.heap.smp_allocator, event_args.arguments()) catch return;
    defer std.heap.smp_allocator.free(arguments);

    std.debug.print("Activated: {s}\n", .{arguments});
    wait.store(false, .release);
}

fn failedNotification(_: ?*anyopaque, sender: *ToastNotification, args: *ToastFailedEventArgs) void {
    _ = sender;
    std.debug.print("[0x{X}] Toast Failure", .{args.error_code()});
    wait.store(false, .release);
}

fn relative_file_uri(allocator: std.mem.Allocator, path: []const u8) ![:0]const u16 {
    const file_path = try std.fs.cwd().realpathAlloc(allocator, path);
    defer allocator.free(file_path);

    const uriUtf8 = try std.fmt.allocPrint(allocator, "file:///{s}", .{file_path});
    defer allocator.free(uriUtf8);

    return try std.unicode.utf8ToUtf16LeAllocZ(allocator, uriUtf8);
}

var wait = std.atomic.Value(bool).init(true);

pub fn main() !void {
    @setEvalBranchQuota(10_000);
    const POWERSHELL: [:0]const u16 = L("{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\\WindowsPowerShell\\v1.0\\powershell.exe");

    const xml_document = try XmlDocument.init();
    defer xml_document.deinit();

    const toastElement = try xml_document.CreateElement(L("toast"));
    defer toastElement.deinit();
    _ = try xml_document.AppendChild(@ptrCast(toastElement));

    const visualElement = try xml_document.CreateElement(L("visual"));
    defer visualElement.deinit();
    _ = try toastElement.AppendChild(@ptrCast(visualElement));

    const bindingElement = try xml_document.CreateElement(L("binding"));
    defer bindingElement.deinit();
    _ = try visualElement.AppendChild(@ptrCast(bindingElement));

    try bindingElement.SetAttribute(L("template"), L("ToastGeneric"));

    const logoElement = try xml_document.CreateElement(L("image"));
    defer logoElement.deinit();
    _ = try bindingElement.AppendChild(@ptrCast(logoElement));

    const hero_uri = try relative_file_uri(std.heap.smp_allocator, "examples\\images\\hero.png");
    defer std.heap.smp_allocator.free(hero_uri);

    try logoElement.SetAttribute(L("id"), L("0"));
    try logoElement.SetAttribute(L("src"), hero_uri);
    try logoElement.SetAttribute(L("alt"), L("Banner"));
    try logoElement.SetAttribute(L("placement"), L("hero"));

    const titleElement = try xml_document.CreateElement(L("text"));
    defer _ = titleElement.Release();
    _ = try bindingElement.AppendChild(@ptrCast(titleElement));

    try titleElement.SetAttribute(L("id"), L("1"));
    try titleElement.SetAttribute(L("hint-style"), L("title"));

    const titleText = try xml_document.CreateTextNode(L("Zig Windows Runtime"));
    defer titleText.deinit();
    _ = try titleElement.AppendChild(@ptrCast(titleText));

    const bodyElement = try xml_document.CreateElement(L("text"));
    defer _ = bodyElement.Release();
    _ = try bindingElement.AppendChild(@ptrCast(bodyElement));

    try bodyElement.SetAttribute(L("id"), L("2"));

    const bodyText = try xml_document.CreateTextNode(L("No Powershell needed!"));
    defer bodyText.deinit();
    _ = try bodyElement.AppendChild(@ptrCast(bodyText));

    const heroElement = try xml_document.CreateElement(L("image"));
    defer heroElement.deinit();
    _ = try bindingElement.AppendChild(@ptrCast(heroElement));

    const logo_uri = try relative_file_uri(std.heap.smp_allocator, "examples\\images\\logo.png");
    defer std.heap.smp_allocator.free(logo_uri);

    try heroElement.SetAttribute(L("id"), L("3"));
    try heroElement.SetAttribute(L("src"), logo_uri);
    try heroElement.SetAttribute(L("alt"), L("Logo"));
    try heroElement.SetAttribute(L("placement"), L("appLogoOverride"));
    try heroElement.SetAttribute(L("hint-crop"), L("circle"));

    const actionsElement = try xml_document.CreateElement(L("actions"));
    defer actionsElement.deinit();
    _ = try toastElement.appendChild(@ptrCast(actionsElement));

    const buttonElement = try xml_document.CreateElement(L("action"));
    defer buttonElement.deinit();
    _ = try actionsElement.AppendChild(@ptrCast(buttonElement));

    try buttonElement.SetAttribute(L("content"), L("Click Me"));
    try buttonElement.SetAttribute(L("arguments"), L("click:click-me"));
    try buttonElement.SetAttribute(L("activationType"), L("background"));

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

    const notification = try ToastNotification.CreateToastNotification(xml_document);
    defer notification.deinit();

    const dhandler = try TypedEventHandler(ToastNotification, ToastDismissedEventArgs).initWithState(dismissNotification, notification);
    const dhandle = try notification.addDismissed(dhandler);

    const ahandler = try TypedEventHandler(ToastNotification, IInspectable).initWithState(activatedNotification, notification);
    const ahandle = try notification.addActivated(ahandler);

    const fhandler = try TypedEventHandler(ToastNotification, ToastFailedEventArgs).initWithState(failedNotification, notification);
    const fhandle = try notification.addFailed(fhandler);

    var notifier = try ToastNotificationManager.CreateToastNotifierWithApplicationId(POWERSHELL);
    defer notifier.deinit();

    try notifier.Show(notification);

    while (wait.load(.acquire)) {
        std.time.sleep(std.time.ns_per_s * 1);
    }

    std.debug.print("END\n", .{});
    _ = notification.removeDismissed(dhandle);
    _ = notification.removeActivated(ahandle);
    _ = notification.removeFailed(fhandle);
}
