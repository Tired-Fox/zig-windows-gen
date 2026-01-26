const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const replaceAll = @import("../root.zig").replaceAll;
const noreserved = metadata.noreserved;
const generateMethodNameMap = metadata.generateMethodNameMap;
const TypeDef = metadata.TypeDef;

pub fn serialize(allocator: std.mem.Allocator, ctx: *metadata.Context, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Interface);
    try ctx.requirements.addObjectDependencies();

    var offset: []const u8 = "    ";
    if (typedef.GenericParameters) |gp| {
        offset = "        ";
        try writer.print("pub fn {s}(", .{typedef.Name});
        try writer.print("{s}: type", .{gp[0]});
        for (1..gp.len) |i| {
            try writer.print(", {s}: type", .{gp[i]});
        }
        try writer.writeAll(") type {\n    return extern struct {\n");
    } else {
        try writer.print("pub const {s} = extern struct {{\n", .{typedef.Name});
    }

    try writer.print("{s}vtable: *const VTable,\n", .{offset});

    try writer.print("{s}/// Must call `deinit` or `IUnknown.Release` on returned pointer\n", .{offset});
    try writer.print("{s}pub fn cast(self: *@This(), AS: type) !*AS {{\n", .{offset});
    try writer.print("{s}    var _r: ?*AS = undefined;\n", .{offset});
    try writer.print("{s}    try IUnknown.QueryInterface(@ptrCast(self), &AS.IID, @ptrCast(&_r));\n", .{offset});
    try writer.print("{s}    return _r.?;\n", .{offset});
    try writer.print("{s}}}\n", .{offset});

    try metadata.Snippets.IUnknownMixin(writer, offset);

    var nameMap: ?[]const []const u8 = null;
    defer {
        if (nameMap) |m| {
            for (m) |n| allocator.free(n);
            allocator.free(m);
        }
    }
    if (typedef.Methods) |methods| {
        nameMap = try generateMethodNameMap(allocator, methods);
    }

    if (typedef.Methods) |methods| {
        for (methods, 0..) |method, m| {
            if (method.Static) continue;
            if (std.mem.eql(u8, method.Name, ".ctor")) continue;

            const mname = try replaceAll(allocator, nameMap.?[m], "_", "");
            defer allocator.free(mname);

            try writer.print("{s}pub fn {s}(self: *@This()", .{ offset, mname });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                        defer t.deinit(allocator);
                        try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
                    }
                }
            }

            const return_type = try ty.winToZig(allocator, ctx, &method.ReturnType);
            defer if (return_type) |rt| rt.deinit(allocator);

            if (return_type) |rt| {
                try writer.print(") core.HResult!{f} {{\n", .{rt.asParam()});
            } else {
                try writer.writeAll(") core.HResult!void {\n");
            }

            if (return_type) |rt| {
                try writer.print("{s}    var _r: {f} = undefined;\n", .{ offset, rt.asParam() });
            }

            try writer.print("{s}    const _c = self.vtable.{s}(@ptrCast(self)", .{ offset, nameMap.?[m] });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    try writer.print(", {s}", .{noreserved(param.Name)});
                }
            }
            if (return_type != null) try writer.writeAll(", &_r");
            try writer.writeAll(");\n");
            try writer.print("{s}    try core.hresultToError(_c);\n", .{offset});
            if (return_type != null) try writer.print("{s}    return _r;\n", .{offset});

            try writer.print("{s}}}\n", .{offset});
        }
    }

    if (ctx.snippets.interface.get(typedef.Name)) |snippets| {
        for (snippets) |snippet| {
            try snippet(writer, typedef.GenericParameters, offset);
        }
    }

    try writer.print("{s}pub const NAME: []const u8 = \"{s}.{s}\";\n", .{ offset, typedef.Namespace, typedef.Name });
    try writer.print("{s}pub const RUNTIME_NAME: [:0]const u16 = @import(\"std\").unicode.utf8ToUtf16LeStringLiteral(NAME);\n", .{offset});

    if (typedef.Guid) |guid| {
        if (typedef.GenericParameters) |gp| {
            try writer.print("{s}pub const SIGNATURE: []const u8 = core.Signature.pinterface(\"{s}\", &.{{", .{ offset, guid });
            try writer.print("core.Signature.get({s})", .{gp[0]});
            for (1..gp.len) |i| {
                try writer.print(",core.Signature.get({s})", .{gp[i]});
            }
            try writer.writeAll("});\n");
            try writer.print("{s}pub const IID: Guid = core.Signature.guid(SIGNATURE);\n", .{offset});
            try writer.print("{s}pub const GUID: []const u8 = &core.guidToString(IID);\n", .{offset});
        } else {
            try writer.print("{s}pub const GUID: []const u8 = \"{s}\";\n", .{ offset, guid });
            try writer.print("{s}pub const IID: Guid = Guid.initString(GUID);\n", .{offset});
            try writer.print("{s}pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);\n", .{offset});
        }
    }

    try writer.print("{s}pub const VTable = extern struct {{\n", .{offset});
    try writer.print("{s}    QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,\n", .{offset});
    try writer.print("{s}    AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,\n", .{offset});
    try writer.print("{s}    Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,\n", .{offset});
    try writer.print("{s}    GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]const Guid) callconv(.winapi) HRESULT,\n", .{offset});
    try writer.print("{s}    GetRuntimeClassName: *const fn(self: *anyopaque, className: *?HSTRING) callconv(.winapi) HRESULT,\n", .{offset});
    try writer.print("{s}    GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,\n", .{offset});

    if (typedef.Methods) |methods| {
        for (methods, 0..) |method, m| {
            // Ignore static methods as they cannot be used
            // with how the bindings are set up
            if (method.Static) continue;
            if (std.mem.eql(u8, method.Name, ".ctor")) continue;

            try writer.print("{s}    {s}: *const fn(self: *anyopaque", .{ offset, nameMap.?[m] });
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                        defer t.deinit(allocator);
                        try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
                    }
                }
            }

            if (try ty.winToZig(allocator, ctx, &method.ReturnType)) |rt| {
                defer rt.deinit(allocator);
                try writer.print(", _r: *{f}", .{rt.asParam()});
            }
            try writer.writeAll(") callconv(.winapi) HRESULT,\n");
        }
    }

    try writer.print("{s}}};\n", .{offset});

    if (typedef.GenericParameters != null) {
        try writer.writeAll("    };\n}\n");
    } else {
        try writer.writeAll("};\n");
    }
}
