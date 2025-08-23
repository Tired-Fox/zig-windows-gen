const std = @import("std");
const winrt = @import("winrt");
const win32 = @import("win32");

const foundation = win32.foundation;
const windows_and_messaging = win32.ui.windows_and_messaging;

const CreateWindow = win32.ui.windows_and_messaging.CreateWindowExA;
const GetModuleHandle = win32.system.library_loader.GetModuleHandleA;
const RegisterClass = win32.ui.windows_and_messaging.RegisterClassA;

const ShowWindow = win32.ui.windows_and_messaging.ShowWindow;

const WNDCLASS = win32.ui.windows_and_messaging.WNDCLASSA;
const WINDOW_STYLE = win32.ui.windows_and_messaging.WINDOW_STYLE;
const WNDCLASS_STYLES = win32.ui.windows_and_messaging.WNDCLASS_STYLES;
const HWND = win32.foundation.HWND;
const IInspectable = winrt.IInspectable;

const UISettings = winrt.ui.view_management.UISettings;
const TypedEventHandler = winrt.foundation.TypedEventHandler;
const Color = winrt.ui.Color;

var brush: ?win32.graphics.gdi.HGDIOBJ = undefined;

fn onColorChange(state: ?*anyopaque, settings: *UISettings, _: *IInspectable) callconv(.c) void {
    const hwnd: HWND = @ptrCast(@alignCast(state.?));

    const lightTheme = isLight(settings.getColorValue(.foreground) catch return);
    std.debug.print("[LIGHT] {any}\n", .{lightTheme});
    if (brush) |hbrush| _ = win32.graphics.gdi.DeleteObject(hbrush);
    brush = win32.graphics.gdi.GetStockObject(if (lightTheme) win32.graphics.gdi.LTGRAY_BRUSH else win32.graphics.gdi.BLACK_BRUSH);

    _ = win32.graphics.dwm.DwmSetWindowAttribute(
        hwnd,
        win32.graphics.dwm.DWMWA_USE_IMMERSIVE_DARK_MODE,
        &if (lightTheme) win32.zig.FALSE else win32.zig.TRUE,
        @sizeOf(win32.foundation.BOOL),
    );
    _ = win32.graphics.gdi.RedrawWindow(
        hwnd,
        null,
        null,
        win32.graphics.gdi.REDRAW_WINDOW_FLAGS{ .INVALIDATE = 1, .ERASE = 1 },
    );
}

fn isLight(clr: Color) bool {
    return ((5 * @as(u32, @intCast(clr.g))) + (2 * @as(u32, @intCast(clr.r))) + @as(u32, @intCast(clr.b))) <= (8 * 128);
}

pub fn main() !void {
    const uisettings = try UISettings.init();
    defer uisettings.deinit();

    const class: [:0]align(1) const u8 = "winrt-example-reactive-theme";
    const title: [:0]const u8 = "Winrt Reactive Theme";

    const instance = GetModuleHandle(null);
    const wnd_class = WNDCLASS{
        .lpszClassName = class.ptr,
        .style = WNDCLASS_STYLES{ .HREDRAW = 1, .VREDRAW = 1 },
        .cbClsExtra = 0,
        .cbWndExtra = 0,
        .hIcon = null,
        .hCursor = null,
        .hbrBackground = null,
        .lpszMenuName = null,
        .hInstance = instance,
        .lpfnWndProc = wndProc,
    };

    const result = RegisterClass(&wnd_class);
    if (result == 0) {
        std.log.err("failed to register class", .{});
        return;
    }

    const handle = CreateWindow(
        windows_and_messaging.WINDOW_EX_STYLE{},
        class.ptr,
        title.ptr,
        windows_and_messaging.WS_OVERLAPPEDWINDOW,
        windows_and_messaging.CW_USEDEFAULT,
        windows_and_messaging.CW_USEDEFAULT,
        windows_and_messaging.CW_USEDEFAULT,
        windows_and_messaging.CW_USEDEFAULT,
        null, //parent,
        null, // menu,
        instance,
        null,
    ) orelse {
        std.log.err("failed to create window", .{});
        return;
    };

    const lightTheme = isLight(try uisettings.getColorValue(.foreground));
    std.debug.print("[LIGHT] {any}\n", .{lightTheme});
    brush = win32.graphics.gdi.GetStockObject(if (lightTheme) win32.graphics.gdi.LTGRAY_BRUSH else win32.graphics.gdi.BLACK_BRUSH);
    defer {
        if (brush) |hbrush| _ = win32.graphics.gdi.DeleteObject(hbrush);
    }

    _ = win32.graphics.dwm.DwmSetWindowAttribute(
        handle,
        win32.graphics.dwm.DWMWA_USE_IMMERSIVE_DARK_MODE,
        &if (lightTheme) win32.zig.FALSE else win32.zig.TRUE,
        @sizeOf(foundation.BOOL),
    );
    _ = ShowWindow(handle, windows_and_messaging.SW_SHOWDEFAULT);

    var handler = TypedEventHandler(UISettings, IInspectable).initWithState(onColorChange, handle);
    const hid = try uisettings.colorValuesChanged(&handler);

    var message: windows_and_messaging.MSG = undefined;
    while (windows_and_messaging.GetMessageA(&message, null, 0, 0) == win32.zig.TRUE) {
        _ = windows_and_messaging.TranslateMessage(&message);
        _ = windows_and_messaging.DispatchMessageA(&message);
    }

    try uisettings.removeColorValuesChanged(hid);
}

fn wndProc(
    hwnd: foundation.HWND,
    uMsg: u32,
    wparam: foundation.WPARAM,
    lparam: foundation.LPARAM,
) callconv(std.os.windows.WINAPI) foundation.LRESULT {
    switch (uMsg) {
        windows_and_messaging.WM_DESTROY => {
            windows_and_messaging.PostQuitMessage(0);
        },
        windows_and_messaging.WM_ERASEBKGND => {
            const hdc: win32.graphics.gdi.HDC = @ptrFromInt(wparam);
            var rect: win32.foundation.RECT = undefined;
            _ = windows_and_messaging.GetClientRect(hwnd, &rect);

            if (brush) |hbrush| {
                _ = win32.graphics.gdi.FillRect(hdc, &rect, hbrush);
            }
            return 1;
        },
        else => return windows_and_messaging.DefWindowProcA(hwnd, uMsg, wparam, lparam),
    }

    return 0;
}
