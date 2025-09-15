const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const replaceAll = @import("../root.zig").replaceAll;
const noreserved = metadata.noreserved;
const generateMethodNameMap = metadata.generateMethodNameMap;
const TypeDef = metadata.TypeDef;

pub fn hashMethod(key: *const metadata.Method) u64 {
    var hash_value: std.hash.Fnv1a_64 = .init();
    hash_value.update(key.Name);
    if (key.Parameters) |params| {
        for (params) |p| {
            hash_value.update(p.Name);
            hash_value.update(p.Type.Name);
        }
    }
    hash_value.update(key.ReturnType.Name);
    return hash_value.final();
}

pub fn serialize(allocator: std.mem.Allocator, ctx: *metadata.Context, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Class);
    try ctx.requirements.addObjectDependencies();

    try writer.print("pub const {s} = extern struct {{\n", .{typedef.Name});
    try writer.writeAll("    vtable: *const IInspectable.VTable,\n");

    var method_to_interface: std.AutoHashMapUnmanaged(u64, *const metadata.Interface) = .empty;
    defer method_to_interface.deinit(allocator);

    if (typedef.Interfaces) |interfaces| {
        if (interfaces.len > 1) {
            try ctx.requirements.add("Windows", "IUnknown");
        }

        for (interfaces) |*interface| {
            try ctx.requirements.add(interface.Namespace, interface.Name);
            if (ctx.definitions.getMethods(interface.Namespace, interface.Name)) |methods| {
                for (methods) |*method| {
                    const h = hashMethod(method);
                    try method_to_interface.put(allocator, h, interface);
                }
            }
        }
    }

    var all_methods: std.ArrayListUnmanaged(metadata.Method) = .empty;

    if (typedef.DefaultInterface != null) {
        if (typedef.Methods) |methods| {
            for (methods) |method| {
                if (std.mem.eql(u8, method.Name, ".ctor")) continue;
                try all_methods.append(allocator, method);
            }
        }
    }

    if (typedef.Factory) |info| {
        if (info.Interfaces) |factories| {
            for (factories) |factory| {
                if (ctx.definitions.getMethods(factory.Namespace, factory.Name)) |methods| {
                    try all_methods.appendSlice(allocator, methods);
                }
            }
        }
        if (info.Statics) |factories| {
            for (factories) |factory| {
                if (ctx.definitions.getMethods(factory.Namespace, factory.Name)) |methods| {
                    try all_methods.appendSlice(allocator, methods);
                }
            }
        }
        if (info.Composable) |factories| {
            for (factories) |factory| {
                if (ctx.definitions.getMethods(factory.Namespace, factory.Name)) |methods| {
                    try all_methods.appendSlice(allocator, methods);
                }
            }
        }
    }

    const nameMap = try generateMethodNameMap(allocator, all_methods.items);
    defer {
        for (nameMap) |n| allocator.free(n);
        allocator.free(nameMap);
    }

    var idx: usize = 0;
    if (typedef.DefaultInterface != null) {
        if (typedef.Methods) |methods| {
            for (methods) |*method| {
                if (std.mem.eql(u8, method.Name, ".ctor")) continue;
                defer idx +|= 1;

                const h = hashMethod(method);
                const interface_ref = method_to_interface.get(h);
                if (interface_ref) |interface| {
                    const mname = try replaceAll(allocator, nameMap[idx], "_", "");
                    defer allocator.free(mname);

                    try writer.print("    pub fn {s}(self: *@This()", .{mname});
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

                    if (typedef.DefaultInterface != null and std.mem.eql(u8, typedef.DefaultInterface.?.Name, interface.Name)) {
                        try writer.print("        const this: *{s}", .{interface.Name});
                        if (interface.GenericArguments) |ga| {
                            try writer.writeAll("(");
                            if (try ty.winToZig(allocator, ctx, &ga[0])) |t| {
                                defer t.deinit(allocator);
                                try writer.print("{f}", .{t.asValue()});
                            }
                            for (1..ga.len) |i| {
                                if (try ty.winToZig(allocator, ctx, &ga[i])) |t| {
                                    defer t.deinit(allocator);
                                    try writer.print(",{f}", .{t.asValue()});
                                }
                            }
                            try writer.writeAll(")");
                        }
                        try writer.writeAll(" = @ptrCast(self);\n");
                        try writer.print("        return try this.{s}(", .{mname});
                    } else {
                        try writer.print("        var this: ?*{s}", .{interface.Name});
                        if (interface.GenericArguments) |ga| {
                            try writer.writeAll("(");
                            if (try ty.winToZig(allocator, ctx, &ga[0])) |t| {
                                defer t.deinit(allocator);
                                try writer.print("{f}", .{t.asValue()});
                            }
                            for (1..ga.len) |i| {
                                if (try ty.winToZig(allocator, ctx, &ga[i])) |t| {
                                    defer t.deinit(allocator);
                                    try writer.print(",{f}", .{t.asValue()});
                                }
                            }

                            try writer.writeAll(")");
                        }
                        try writer.writeAll(" = undefined;\n");
                        try writer.writeAll("        defer _ = IUnknown.Release(@ptrCast(this));\n");
                        try writer.print("        const _c = IUnknown.QueryInterface(@ptrCast(self), &{s}", .{interface.Name});
                        if (interface.GenericArguments) |ga| {
                            try writer.writeAll("(");
                            if (try ty.winToZig(allocator, ctx, &ga[0])) |t| {
                                defer t.deinit(allocator);
                                try writer.print("{f}", .{t.asValue()});
                            }
                            for (1..ga.len) |i| {
                                if (try ty.winToZig(allocator, ctx, &ga[i])) |t| {
                                    defer t.deinit(allocator);
                                    try writer.print(",{f}", .{t.asValue()});
                                }
                            }

                            try writer.writeAll(")");
                        }
                        try writer.writeAll(".IID, @ptrCast(&this));\n");
                        try writer.writeAll("        if (this == null or _c != 0) return core.hresultToError(_c).err;\n");
                        try writer.print("        return try this.?.{s}(", .{mname});
                    }
                    if (method.Parameters) |parameters| {
                        try writer.print("{s}", .{noreserved(parameters[0].Name)});
                        for (1..parameters.len) |i| {
                            try writer.print(", {s}", .{noreserved(parameters[i].Name)});
                        }
                    }
                    try writer.writeAll(");\n    }\n");
                }
            }
        }
    }

    if (typedef.Factory) |info| {
        try ctx.requirements.add("Windows", "IUnknown");
        try writer.writeAll("    pub fn deinit(self: *@This()) void {\n");
        try writer.writeAll("        _ = IUnknown.Release(@ptrCast(self));\n");
        try writer.writeAll("    }\n");

        if (info.HasDefault) {
            if (typedef.DefaultInterface) |di| {
                try writer.writeAll("    pub fn init() core.HResult!*@This() {\n");
                try writer.writeAll("        const _f = try @This()._IActivationFactoryCache.get();\n");
                try writer.print("        return @ptrCast(@alignCast(try _f.ActivateInstance(&{s}.IID)));\n", .{di.Name});
                try writer.writeAll("    }\n");
            }
        }

        // TODO: collect all factory methods and add them to the overall resolver
        // Should probably combine all the factories into a single list then handle
        // them all together

        if (info.Interfaces) |factories| {
            for (factories) |factory| {
                try serializeFactoryMethods(allocator, ctx, factory, &idx, nameMap, writer);
            }
        }
        if (info.Statics) |factories| {
            for (factories) |factory| {
                try serializeFactoryMethods(allocator, ctx, factory, &idx, nameMap, writer);
            }
        }
        if (info.Composable) |factories| {
            for (factories) |factory| {
                try serializeFactoryMethods(allocator, ctx, factory, &idx, nameMap, writer);
            }
        }
    }

    try writer.print("    pub const NAME: []const u8 = \"{s}.{s}\";\n", .{ typedef.Namespace, typedef.Name });
    try writer.writeAll("    pub const RUNTIME_NAME: [:0]const u16 = @import(\"std\").unicode.utf8ToUtf16LeStringLiteral(NAME);\n");

    if (typedef.DefaultInterface) |di| {
        try ctx.requirements.add(di.Namespace, di.Name);
        try writer.print("    pub const GUID: []const u8 = {s}.GUID;\n", .{di.Name});
        try writer.print("    pub const IID: Guid = {s}.IID;\n", .{di.Name});
        try writer.print("    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, {s}.SIGNATURE);\n", .{di.Name});
    }

    if (typedef.Factory) |info| {
        try ctx.requirements.add("Windows.core", "FactoryCache");
        if (info.HasDefault) {
            try ctx.requirements.add("Windows.Foundation", "IActivationFactory");
            try writer.writeAll("    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};\n");
        }
        if (info.Interfaces) |factories| {
            for (factories) |factory| {
                try ctx.requirements.add(factory.Namespace, factory.Name);
                try writer.print("    var _{s}Cache: FactoryCache({s}, RUNTIME_NAME) = .{{}};\n", .{ factory.Name, factory.Name });
            }
        }
        if (info.Statics) |factories| {
            for (factories) |factory| {
                try ctx.requirements.add(factory.Namespace, factory.Name);
                try writer.print("    var _{s}Cache: FactoryCache({s}, RUNTIME_NAME) = .{{}};\n", .{ factory.Name, factory.Name });
            }
        }
        if (info.Composable) |factories| {
            for (factories) |factory| {
                try ctx.requirements.add(factory.Namespace, factory.Name);
                try writer.print("    var _{s}Cache: FactoryCache({s}, RUNTIME_NAME) = .{{}};\n", .{ factory.Name, factory.Name });
            }
        }
    }

    try writer.writeAll("};\n");
}

fn serializeFactoryMethods(
    allocator: std.mem.Allocator,
    ctx: *metadata.Context,
    factory: metadata.Interface,
    resolve_index: *usize,
    resolved_names: []const []const u8,
    writer: *std.io.Writer,
) !void {
    if (ctx.definitions.getMethods(factory.Namespace, factory.Name)) |methods| {
        const nameMap = try generateMethodNameMap(allocator, methods);
        defer {
            for (nameMap) |n| allocator.free(n);
            allocator.free(nameMap);
        }

        for (methods, 0..) |method, m| {
            defer resolve_index.* +|= 1;

            const mname = try replaceAll(allocator, nameMap[m], "_", "");
            defer allocator.free(mname);

            const rmname = try replaceAll(allocator, resolved_names[resolve_index.*], "_", "");
            defer allocator.free(rmname);

            try writer.print("    pub fn {s}(", .{rmname});
            if (method.Parameters) |parameters| {
                if (try ty.winToZig(allocator, ctx, &parameters[0].Type)) |t| {
                    defer t.deinit(allocator);
                    try writer.print("{s}: {f}", .{ noreserved(parameters[0].Name), t.asParam() });
                }

                for (1..parameters.len) |i| {
                    if (try ty.winToZig(allocator, ctx, &parameters[i].Type)) |t| {
                        defer t.deinit(allocator);
                        try writer.print(", {s}: {f}", .{ noreserved(parameters[i].Name), t.asParam() });
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

            try writer.print("        const _f = try @This()._{s}Cache.get();\n", .{factory.Name});
            try writer.print("        return try _f.{s}(", .{mname});
            if (method.Parameters) |parameters| {
                try writer.print("{s}", .{noreserved(parameters[0].Name)});
                for (1..parameters.len) |i| {
                    try writer.print(", {s}", .{noreserved(parameters[i].Name)});
                }
            }
            try writer.writeAll(");\n    }\n");
        }
    }
}
