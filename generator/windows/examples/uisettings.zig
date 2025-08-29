const std = @import("std");
const windows = @import("windows");

const UISettings = windows.UI.ViewManagement.UISettings;

pub fn main() !void {
    var ui = try UISettings.init();
    defer ui.deinit();

    std.debug.print("[Foreground] {any}\n", .{ try ui.GetColorValue(.Foreground) });
    std.debug.print("[Background] {any}\n", .{ try ui.GetColorValue(.Background) });
    std.debug.print("[Accent] {any}\n", .{ try ui.GetColorValue(.Accent) });
}
