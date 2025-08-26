const std = @import("std");
const win32 = @import("win32");

const winrt = @import("winrt");
const TypedEventHandler = winrt.foundation.TypedEventHandler;
const UISettings = winrt.ui.view_management.UISettings;
const IInspectable = winrt.IInspectable;

var wait = std.atomic.Value(bool).init(true);

fn onSystemThemeChange(_: ?*anyopaque, settings: *UISettings, _: *IInspectable) callconv(.c) void {
    const fg = settings.getColorValue(.foreground);
    if (fg.b > 0) {
        std.debug.print("\x1b[40;38;2;{d};{d};{d}m DARK \x1b[0m\n", .{ fg.r, fg.g, fg.b });
    } else {
        std.debug.print("\x1b[47;38;2;{d};{d};{d}m LIGHT \x1b[0m\n", .{ fg.r, fg.g, fg.b });
    }
    wait.store(false, .release);
}

const L = std.unicode.utf8ToUtf16LeStringLiteral;

pub fn main() !void {
    var ui_settings = try UISettings.init();
    defer ui_settings.deinit();

    std.debug.print("Current System Foreground Color: {any}\n", .{ ui_settings.getColorValue(.foreground) });

    var handler = UISettings.ColorTypedEventHandler.init(onSystemThemeChange);
    const handle = try ui_settings.colorValuesChanged(&handler);

    // Wait for color change to be detected
    std.debug.print("Waiting for system color change...\n", .{});
    while (wait.load(.acquire)) {
        std.Thread.sleep(std.time.ns_per_s * 1);
    }

    try ui_settings.removeColorValuesChanged(handle);
}
