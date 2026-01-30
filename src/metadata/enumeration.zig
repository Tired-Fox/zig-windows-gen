const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const TypeDef = metadata.TypeDef;

pub fn serialize(typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Enum);

    if (typedef.Flags) {
        try writer.print("pub const {s} = packed struct(u32) {{\n", .{typedef.Name});
        var total: usize = typedef.Values.?.len;
        for (typedef.Values.?) |variant| {
            if (variant.Value == 0) {
                total -|= 1;
                continue;
            }
            try writer.print("    {s}: bool = false,\n", .{variant.Name});
        }
        const diff = 32 -| total;
        if (diff > 0) {
            try writer.print("    _m: u{d} = 0,\n", .{diff});
        }
        try writer.writeAll("};\n");
    } else {
        try writer.print("pub const {s} = enum(i32) {{\n", .{typedef.Name});
        for (typedef.Values.?) |variant| {
            try writer.print("    {s} = {d},\n", .{ variant.Name, variant.Value });
        }
        try writer.writeAll("};\n");
    }
}
