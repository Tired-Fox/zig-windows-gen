const std = @import("std");
const metadata = @import("../metadata.zig");

const TypeReference = metadata.TypeReference;

pub fn wait(writer: *std.io.Writer, generics: ?[]const []const u8, prefix: []const u8) !void {
    try writer.print("{s}pub fn wait(self: *@This()) !void {{\n", .{ prefix });
    try writer.print("{s}    const asyncComplete = (struct {{\n", .{ prefix });

    try writer.print("{s}        pub fn asyncComplete(state: ?*anyopaque, result: *IAsyncOperation(", .{ prefix });
    if (generics) |g| {
        try writer.print("{s}", .{ g[0] });
        for (1..g.len) |i| {
            try writer.print(",{s}", .{ g[i] });
        }
    }
    try writer.writeAll("), status: AsyncStatus) void {\n");

    try writer.print("{s}            _ = result;\n", .{ prefix });
    try writer.print("{s}            _ = status;\n", .{ prefix });
    try writer.print("{s}            const ctx: *@import(\"std\").Thread.Semaphore = @ptrCast(@alignCast(state.?));\n", .{ prefix });
    try writer.print("{s}            ctx.post();\n", .{ prefix });
    try writer.print("{s}        }}\n", .{ prefix });
    try writer.print("{s}    }}).asyncComplete;\n", .{ prefix });
    try writer.print("{s}    var _async_context: @import(\"std\").Thread.Semaphore = .{{}};\n", .{ prefix });

    try writer.print("{s}    const async_handler = try AsyncOperationCompletedHandler(", .{ prefix });
    if (generics) |g| {
        try writer.print("{s}", .{ g[0] });
        for (1..g.len) |i| {
            try writer.print(",{s}", .{ g[i] });
        }
    }
    try writer.writeAll(").initWithState(\n");

    try writer.print("{s}        asyncComplete,\n", .{ prefix });
    try writer.print("{s}        &_async_context,\n", .{ prefix });
    try writer.print("{s}    );\n", .{ prefix });
    try writer.print("{s}    defer async_handler.deinit();\n", .{ prefix });
    try writer.print("{s}    try self.putCompleted(async_handler);\n", .{ prefix });
    try writer.print("{s}    _async_context.wait();\n", .{ prefix });
    try writer.print("{s}}}\n", .{ prefix });
}
