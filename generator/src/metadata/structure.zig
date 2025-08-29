const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const TypeDef = metadata.TypeDef;

pub fn serialize(allocator: std.mem.Allocator, ctx: *metadata.Context, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Struct);

    if (typedef.Fields) |fields| {
        try writer.print("pub const {s} = extern struct {{\n", .{ typedef.Name });
        for (fields) |field| {
            if (try ty.winToZig(allocator, ctx, &field.Type)) |t| {
                defer t.deinit(allocator);
                try writer.print("    {s}: {f},\n", .{ field.Name, t.asParam() });
            }
        }
        try writer.writeAll("};\n");
    } else {
        std.debug.print("\x1b[31m[SKIPPING STRUCTURE WITH NO FIELDS] {s}.{s}\x1b[39m\n", .{ typedef.Namespace, typedef.Name });
    }
}
