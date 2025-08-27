const std = @import("std");

const metadata = @import("../metadata.zig");
const TypeDef = metadata.TypeDef;

/// Helper that replaces all of a pattern with the replacement allocating
/// and returning the result of the replacement.
///
/// The caller is responsible for freeing returned allocated memory
pub fn replaceAll(allocator: std.mem.Allocator, input_str: []const u8, pattern: []const u8, replacement: []const u8) ![]u8 {
    const output_size = std.mem.replacementSize(u8, input_str, pattern, replacement);
    const output_buffer = try allocator.alloc(u8, output_size);
    _ = std.mem.replace(u8, input_str, pattern, replacement, output_buffer);
    return output_buffer;
}

pub fn serialize(allocator: std.mem.Allocator, requirements: *metadata.Requirements, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Interface);
    _ = requirements;

    try writer.print("pub const {s} = extern struct {{\n", .{ typedef.Name });
    try writer.writeAll("    vtable: *const VTable,\n");

    // TODO: emit zig methods for interface
    if (typedef.Methods) |methods| {
        for (methods) |method| {
            if (method.Static) continue;

            const mname = try replaceAll(allocator, method.Name, "_", "");
            defer allocator.free(mname);

            try writer.print("    pub fn {s}(self: *@This()", .{ mname });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    // TODO: Convert type to a param type, includes logic for [IN] and [OUT] attributes
                    try writer.print(", {s}: {s}", .{ param.Name, param.Type.Name });
                }
            }

            const hasReturn = !std.mem.eql(u8, method.ReturnType.Name, "Void");
            if (hasReturn) {
                try writer.print(", _r: *{s}", .{ method.ReturnType.Name });
            }

            try writer.writeAll(") HRESULT {\n");
            try writer.print("        return self.vtable.{s}(@ptrCast(self)", .{ method.Name });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    try writer.print(", {s}", .{ param.Name });
                }
            }
            if (hasReturn) {
                    try writer.writeAll(", _r");
            }
            try writer.writeAll(");\n");

            try writer.writeAll("    }\n");
        }
    }

    try writer.print("    pub const NAME: []const u8 = \"{s}.{s}\";\n", .{ typedef.Namespace, typedef.Name });
    try writer.writeAll("    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeLiteral(TYPE_NAME);\n");

    if (typedef.Guid) |guid| {
        try writer.print("    pub const GUID: []const u8 = \"{s}\";\n", .{ guid });
        try writer.writeAll("    pub const IID: Guid = Guid.iniString(GUID);\n");
        try writer.writeAll("    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID)\n");
    }

    try writer.writeAll("    pub const VTable = extern struct {\n");
    try writer.writeAll(
        \\        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        \\        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        \\        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        \\        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        \\        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        \\        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        \\
    );

    if (typedef.Methods) |methods| {
        for (methods) |method| {
            // Ignore static methods as they cannot be used
            // with how the bindings are set up
            if (method.Static) continue;

            try writer.print("        {s}: *const fn(self: *anyopaque", .{ method.Name });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    // TODO: Convert type to a param type, includes logic for [IN] and [OUT] attributes
                    try writer.print(", {s}: {s}", .{ param.Name, param.Type.Name });
                }
            }

            if (!std.mem.eql(u8, method.ReturnType.Name, "Void")) {
                try writer.print(", _r: *{s}", .{ method.ReturnType.Name });
            }
            try writer.writeAll(") callconv(.winapi) HRESULT\n");
        }
    }

    try writer.writeAll("    };\n");

    try writer.writeAll("};\n");
}
