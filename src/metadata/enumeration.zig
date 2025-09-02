const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const TypeDef = metadata.TypeDef;

pub fn serialize(typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Enum);

    try writer.print("pub const {s} = enum(i32) {{\n", .{ typedef.Name });
    for (typedef.Values.?) |variant| {
        try writer.print("    {s} = {d},\n", .{ variant.Name, variant.Value });
    }
    try writer.writeAll("};\n");
}
