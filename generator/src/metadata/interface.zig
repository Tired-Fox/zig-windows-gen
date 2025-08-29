const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const TypeDef = metadata.TypeDef;

pub fn serialize(allocator: std.mem.Allocator, ctx: *metadata.Context, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Interface);
    try ctx.requirements.addObjectDependencies();

    var offset: []const u8 = "    ";
    if (typedef.GenericParameters) |gp| {
        offset = "        ";
        try writer.print("pub fn {s}(", .{ typedef.Name });
        try writer.writeAll(gp[0]);
        for (1..gp.len) |i| {
            try writer.print(", {s}", .{ gp[i] });
        }
        try writer.writeAll(") type {\n    return extern struct {\n");
    } else {
        try writer.print("pub const {s} = extern struct {{\n", .{ typedef.Name });
    }

    try writer.print("{s}vtable: *const VTable,\n", .{ offset });

    if (typedef.Methods) |methods| {
        for (methods) |method| {
            if (method.Static) continue;

            const mname = try metadata.replaceAll(allocator, method.Name, "_", "");
            defer allocator.free(mname);

            try writer.print("{s}pub fn {s}(self: *@This()", .{ offset, mname });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                        defer t.deinit(allocator);
                        try writer.print(", {s}: {f}", .{ param.Name, t.asParam() });
                    }
                }
            }

            const return_type = try ty.winToZig(allocator, ctx, &method.ReturnType);
            defer if (return_type) |rt| rt.deinit(allocator);

            if (return_type) |rt| {
                try writer.print(") core.HResult!{f} {{\n", .{ rt.asParam() });
            } else {
                try writer.writeAll(") core.HResult!void {{\n");
            }

            if (return_type) |rt| {
                try writer.print("        var _r: {f} = undefined;\n", .{ rt.asParam() });
            }

            try writer.print("{s}    const _c = self.vtable.{s}(@ptrCast(self)", .{ offset, method.Name });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    try writer.print(", {s}", .{ param.Name });
                }
            }
            if (return_type != null) try writer.writeAll(", &_r");
            try writer.writeAll(");\n");
            try writer.writeAll("        if (_c != 0) return core.hresultToError(_c).err;\n");
            if (return_type != null) try writer.writeAll("        return _r;\n");

            try writer.print("{s}}}\n", .{ offset });
        }
    }

    try writer.print("{s}pub const NAME: []const u8 = \"{s}.{s}\";\n", .{ offset, typedef.Namespace, typedef.Name });
    try writer.print("{s}pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeLiteral(TYPE_NAME);\n", .{ offset });

    if (typedef.Guid) |guid| {
        try writer.print("{s}pub const GUID: []const u8 = \"{s}\";\n", .{ offset, guid });
        try writer.print("{s}pub const IID: Guid = Guid.iniString(GUID);\n", .{ offset });

        if (typedef.GenericParameters) |gp| {
            try writer.print("{s}pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID, &.{{", .{ offset });
            try writer.print("core.Signature.get({s})", .{ gp[0] });
            for (1..gp.len) |i| {
                try writer.print(",core.Signature.get({s})", .{ gp[i] });
            }
            try writer.writeAll("});\n");
        } else {
            try writer.print("{s}pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);\n", .{ offset });
        }
    }

    try writer.print("{s}pub const VTable = extern struct {{\n", .{ offset });
    try writer.print("{s}    QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,\n", .{ offset });
    try writer.print("{s}    AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,\n", .{ offset });
    try writer.print("{s}    Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,\n", .{ offset });
    try writer.print("{s}    GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,\n", .{ offset });
    try writer.print("{s}    GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,\n", .{ offset });
    try writer.print("{s}    GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,\n", .{ offset });

    if (typedef.Methods) |methods| {
        for (methods) |method| {
            // Ignore static methods as they cannot be used
            // with how the bindings are set up
            if (method.Static) continue;

            try writer.print("{s}    {s}: *const fn(self: *anyopaque", .{ offset, method.Name });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                        defer t.deinit(allocator);
                        try writer.print(", {s}: {f}", .{ param.Name, t.asParam() });
                    }
                }
            }

            if (try ty.winToZig(allocator, ctx, &method.ReturnType)) |rt| {
                defer rt.deinit(allocator);
                try writer.print(", _r: *{f}", .{ rt.asParam() });
            }
            try writer.writeAll(") callconv(.winapi) HRESULT\n");
        }
    }

    try writer.print("{s}}};\n", .{ offset });

    if (typedef.GenericParameters != null) {
        try writer.writeAll("    };\n}\n");
    } else {
        try writer.writeAll("};\n");
    }
}
