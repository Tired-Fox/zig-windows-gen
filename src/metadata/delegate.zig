const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const replaceAll = @import("../root.zig").replaceAll;
const TypeDef = metadata.TypeDef;
const noreserved = metadata.noreserved;

pub fn serialize(allocator: std.mem.Allocator, ctx: *metadata.Context, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Delegate);
    try ctx.requirements.addDelegateDependencies();

    var offset: []const u8 = "    ";
    if (typedef.GenericParameters) |gp| {
        offset = "        ";
        try writer.print("pub fn {s}(", .{ typedef.Name });
        try writer.print("{s}: type", .{ gp[0] });
        for (1..gp.len) |i| {
            try writer.print(", {s}: type", .{ gp[i] });
        }
        try writer.writeAll(") type {\n    return extern struct {\n");
    } else {
        try writer.print("pub const {s} = extern struct {{\n", .{ typedef.Name });
    }

    try writer.print("{s}vtable: *const VTable,\n", .{ offset });
    try writer.print("{s}_refs: @import(\"std\").atomic.Value(u32),\n", .{ offset });
    try writer.print("{s}_cb: *anyopaque,\n", .{ offset });
    try writer.print("{s}_context: ?*anyopaque = null,\n", .{ offset });

    var invoke: *const metadata.Method = undefined;
    if (typedef.Methods) |methods| {
        for (methods) |*method| {
            if (std.mem.eql(u8, method.Name, "Invoke")) {
                invoke = method;
                break;
            }
        }
    }

    try writer.print("{s}/// This creates a heap allocated instance that only frees/destroys when all\n", .{ offset });
    try writer.print("{s}/// references are released including any references Windows makes.\n", .{ offset });
    try writer.print("{s}pub fn init(\n{s}    cb: *const fn(?*anyopaque", .{ offset, offset });
    if (invoke.Parameters) |parameters| {
        for (parameters) |param| {
            if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                defer t.deinit(allocator);
                try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
            }
        }
    }
    try writer.print(") void,\n{s}) !*@This() {{\n", .{ offset });
    try writer.print("{s}    const _r = try @import(\"std\").heap.c_allocator.create(@This());\n", .{ offset });
    try writer.print("{s}    _r.* = .{{\n", .{ offset });
    try writer.print("{s}        .vtable = &VTABLE,\n", .{ offset });
    try writer.print("{s}        ._cb = @ptrCast(@constCast(cb)),\n", .{ offset });
    try writer.print("{s}        ._refs = .init(1),\n", .{ offset });
    try writer.print("{s}    }};\n", .{ offset });
    try writer.print("{s}    return _r;\n", .{ offset });
    try writer.print("{s}}}\n", .{ offset });

    try writer.print("{s}/// This creates a heap allocated instance that only frees/destroys when all\n", .{ offset });
    try writer.print("{s}/// references are released including any references Windows makes.\n", .{ offset });
    try writer.print("{s}pub fn initWithState(\n{s}    cb: *const fn(?*anyopaque", .{ offset, offset });
    if (invoke.Parameters) |parameters| {
        for (parameters) |param| {
            if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                defer t.deinit(allocator);
                try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
            }
        }
    }
    try writer.print(") void,\n{s}    context: anytype,\n{s}) !*@This() {{\n", .{ offset, offset });
    try writer.print("{s}    const _r = try @import(\"std\").heap.c_allocator.create(@This());\n", .{ offset });
    try writer.print("{s}    _r.* = .{{\n", .{ offset });
    try writer.print("{s}        .vtable = &VTABLE,\n", .{ offset });
    try writer.print("{s}        ._cb = @ptrCast(@constCast(cb)),\n", .{ offset });
    try writer.print("{s}        ._refs = .init(1),\n", .{ offset });
    try writer.print("{s}        ._context = @ptrCast(context),\n", .{ offset });
    try writer.print("{s}    }};\n", .{ offset });
    try writer.print("{s}    return _r;\n", .{ offset });
    try writer.print("{s}}}\n", .{ offset });

    try writer.print("{s}/// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,\n", .{ offset });
    try writer.print("{s}/// Otherwise the memory stays until all references are released, including all references Windows holds.\n", .{ offset });
    try writer.print("{s}///\n", .{ offset });
    try writer.print("{s}/// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.\n", .{ offset });
    try writer.print("{s}pub fn deinit(self: *@This()) void {{\n", .{ offset });
    try writer.print("{s}    _ = Release(@ptrCast(self));\n", .{ offset });
    try writer.print("{s}}}\n", .{ offset });

    try writer.print("{s}fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {{\n", .{ offset });
    try writer.print("{s}    const std = @import(\"std\");\n", .{ offset });
    try writer.print("{s}    const me: *@This() = @ptrCast(@alignCast(self));\n", .{ offset });
    try writer.print("{s}    // TODO: Handle IMarshal\n", .{ offset });
    try writer.print("{s}    if (std.mem.eql(u8, &riid.Bytes, &IID.Bytes) or\n", .{ offset });
    try writer.print("{s}        std.mem.eql(u8, &riid.Bytes, &IUnknown.IID.Bytes) or\n", .{ offset });
    try writer.print("{s}        std.mem.eql(u8, &riid.Bytes, &IAgileObject.IID.Bytes))\n", .{ offset });
    try writer.print("{s}    {{\n", .{ offset });
    try writer.print("{s}        out.* = @as(?*anyopaque, @ptrCast(me));\n", .{ offset });
    try writer.print("{s}        _ = AddRef(self);\n", .{ offset });
    try writer.print("{s}        return 0;\n", .{ offset });
    try writer.print("{s}    }}\n", .{ offset });
    try writer.print("{s}    out.* = null;\n", .{ offset });
    try writer.print("{s}    return -2147467262; // E_NOINTERFACE\n", .{ offset });
    try writer.print("{s}}}\n", .{ offset });
    try writer.print("{s}fn AddRef(self: *anyopaque) callconv(.c) u32 {{\n", .{ offset });
    try writer.print("{s}    const this: *@This() = @ptrCast(@alignCast(self));\n", .{ offset });
    try writer.print("{s}    return this._refs.fetchAdd(1, .monotonic) + 1;\n", .{ offset });
    try writer.print("{s}}}\n", .{ offset });
    try writer.print("{s}fn Release(self: *anyopaque) callconv(.c) u32 {{\n", .{ offset });
    try writer.print("{s}    const this: *@This() = @ptrCast(@alignCast(self));\n", .{ offset });
    try writer.print("{s}    const left = this._refs.fetchSub(1, .acq_rel) - 1;\n", .{ offset });
    try writer.print("{s}    if (left == 0) @import(\"std\").heap.c_allocator.destroy(this);\n", .{ offset });
    try writer.print("{s}    return left;\n", .{ offset });
    try writer.print("{s}}}\n", .{ offset });

    const mname = try replaceAll(allocator, invoke.Name, "_", "");
    defer allocator.free(mname);

    try writer.print("{s}pub fn {s}(self: *anyopaque", .{ offset, mname });
    if (invoke.Parameters) |parameters| {
        for (parameters) |param| {
            if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                defer t.deinit(allocator);
                try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
            }
        }
    }

    try writer.writeAll(") callconv(.winapi) HRESULT {\n");

    try writer.print("{s}    const this: *@This() = @ptrCast(@alignCast(self));\n", .{ offset });
    try writer.print("{s}    const _callback: *const fn(?*anyopaque", .{ offset });
    if (invoke.Parameters) |parameters| {
        for (parameters) |param| {
            if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                defer t.deinit(allocator);
                try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
            }
        }
    }
    try writer.writeAll(") void = @ptrCast(@alignCast(this._cb));\n");
    try writer.print("{s}    _callback(this._context", .{ offset });
    if (invoke.Parameters) |parameters| {
        for (parameters) |param| {
            try writer.print(", {s}", .{ noreserved(param.Name) });
        }
    }
    try writer.writeAll(");\n");
    try writer.print("{s}    return 0;\n", .{ offset });

    try writer.print("{s}}}\n", .{ offset });

    try writer.print("{s}pub const NAME: []const u8 = \"{s}.{s}\";\n", .{ offset, typedef.Namespace, typedef.Name });
    try writer.print("{s}pub const RUNTIME_NAME: [:0]const u16 = @import(\"std\").unicode.utf8ToUtf16LeStringLiteral(NAME);\n", .{ offset });

    if (typedef.Guid) |guid| {
        if (typedef.GenericParameters) |gp| {
            try writer.print("{s}pub const SIGNATURE: []const u8 = core.Signature.pinterface(\"{s}\", &.{{", .{ offset, guid });
            try writer.print("core.Signature.get({s})", .{ gp[0] });
            for (1..gp.len) |i| {
                try writer.print(",core.Signature.get({s})", .{ gp[i] });
            }
            try writer.writeAll("});\n");
            try writer.print("{s}pub const IID: Guid = core.Signature.guid(SIGNATURE);\n", .{ offset });
            try writer.print("{s}pub const GUID: []const u8 = &core.guidToString(IID);\n", .{ offset });
        } else {
            try writer.print("{s}pub const GUID: []const u8 = \"{s}\";\n", .{ offset, guid });
            try writer.print("{s}pub const IID: Guid = Guid.initString(GUID);\n", .{ offset });
            try writer.print("{s}pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);\n", .{ offset });
        }
    }

    try writer.print("{s}pub const VTable = extern struct {{\n", .{ offset });
    try writer.print("{s}    QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,\n", .{ offset });
    try writer.print("{s}    AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,\n", .{ offset });
    try writer.print("{s}    Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,\n", .{ offset });

    try writer.print("{s}    {s}: *const fn(self: *anyopaque", .{ offset, invoke.Name });
    if (invoke.Parameters) |parameters| {
        for (parameters) |param| {
            if (try ty.winToZig(allocator, ctx, &param.Type)) |t| {
                defer t.deinit(allocator);
                try writer.print(", {s}: {f}", .{ noreserved(param.Name), t.asParam() });
            }
        }
    }

    if (try ty.winToZig(allocator, ctx, &invoke.ReturnType)) |rt| {
        defer rt.deinit(allocator);
        try writer.print(", _r: *{f}", .{ rt.asParam() });
    }
    try writer.writeAll(") callconv(.winapi) HRESULT\n");

    try writer.print("{s}}};\n", .{ offset });

    try writer.print("{s}pub const VTABLE = VTable {{\n", .{ offset });
    try writer.print("{s}    .QueryInterface = QueryInterface,\n", .{ offset });
    try writer.print("{s}    .AddRef = AddRef,\n", .{ offset });
    try writer.print("{s}    .Release = Release,\n", .{ offset });
    try writer.print("{s}    .Invoke = Invoke,\n", .{ offset });
    try writer.print("{s}}};\n", .{ offset });

    if (typedef.GenericParameters != null) {
        try writer.writeAll("    };\n}\n");
    } else {
        try writer.writeAll("};\n");
    }
}
