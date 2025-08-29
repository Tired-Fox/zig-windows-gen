const std = @import("std");
const ty = @import("./type.zig");

const metadata = @import("../metadata.zig");
const TypeDef = metadata.TypeDef;

pub fn serialize(allocator: std.mem.Allocator, ctx: *metadata.Context, typedef: *const TypeDef, writer: *std.io.Writer) !void {
    // At this piont the kind should have already been determined;
    std.debug.assert(typedef.Kind == .Class);
    try ctx.requirements.addObjectDependencies();

    try writer.print("pub const {s} = extern struct {{\n", .{ typedef.Name });
    try writer.writeAll("    vtable: *const IInspectable.VTable,\n");

    var method_to_interface: std.StringHashMapUnmanaged([]const u8) = .empty;
    defer method_to_interface.deinit(allocator);

    if (typedef.Interfaces) |interfaces| {
        if (interfaces.len > 1) {
            try ctx.requirements.add("Windows", "IUnknown");
        }

        for (interfaces) |interface| {
            try ctx.requirements.add(interface.Namespace, interface.Name);
            if (ctx.definitions.getMethods(interface.Namespace, interface.Name)) |methods| {
                for (methods) |method| {
                    try method_to_interface.put(allocator, method.Name, interface.Name);
                }
            }
        }
    }

    if (typedef.Methods) |methods| {
        for (methods) |method| {
            if (method.Static or std.mem.eql(u8, method.Name, ".ctor")) continue;

            const mname = try metadata.replaceAll(allocator, method.Name, "_", "");
            defer allocator.free(mname);

            try writer.print("    pub fn {s}(self: *@This()", .{ mname });
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
                try writer.writeAll(") core.HResult!void {\n");
            }

            if (return_type) |rt| {
                try writer.print("        var _r: {f} = undefined;\n", .{ rt.asParam() });
            }

            const interface_method = method_to_interface.get(method.Name);
            if (interface_method) |interface| {
                if (typedef.DefaultInterface != null and std.mem.eql(u8, typedef.DefaultInterface.?.Name, interface)) {
                    try writer.print("        const this: *{s} = @ptrCast(self);\n", .{ interface });
                    try writer.print("        try this.{s}(this", .{ mname });
                } else {
                    try writer.print("        const this: ?*{s} = undefined;\n", .{ interface });
                    try writer.print("        var _c = IUnknown.QueryInterface(@ptrCast(self), &{s}.IID, &this);\n", .{ interface });
                    try writer.writeAll("        if (this == null or _c != 0) return core.hresultToError(_c).err;\n");
                    try writer.print("        try this.?.{s}(this", .{ mname });
                }
            } else {
                try writer.print("        _c = self.vtable.{s}(@ptrCast(self)", .{ method.Name });
            }
            if (method.Parameters) |parameters| {
                for (parameters) |param| {
                    try writer.print(", {s}", .{ param.Name });
                }
            }
            if (return_type != null) try writer.writeAll(", &_r");
            try writer.writeAll(");\n");
            if (interface_method == null) {
                try writer.writeAll("        if (_c != 0) return core.hresultToError(_c).err;\n");
            }
            if (return_type != null) try writer.writeAll("        return _r;\n");
            try writer.writeAll("    }\n");
        }
    }

    if (typedef.Factory) |info| {
        try writer.writeAll("    pub fn deinit(self: *@This()) void {\n");
        try writer.writeAll("        _ = IUnknown.Release(@ptrCast(self));\n");
        try writer.writeAll("    }\n");

        if (info.HasDefault) {
            try writer.writeAll("    pub fn init() core.HResult!*@This() {\n");
            try writer.writeAll("        const _f = @This()._IActivationFactoryCache.get();\n");
            try writer.writeAll("        return @ptrCast(@alignCast(try _f.ActivateInstance()));\n");
            try writer.writeAll("    }\n");
        }
        // TODO: Add support for looking up the methods in the interface and creating
        // calls to those factory methods to generate the class instance.
        //     + Include validation on return type must be the same as the current class
        if (info.Interfaces) |factories| {
            for (factories) |factory| {
                _ = factory;
                return error.NonDefaultFactoriesNotImplemented;
            }
        }
        if (info.Statics) |factories| {
            for (factories) |factory| {
                _ = factory;
                return error.NonDefaultFactoriesNotImplemented;
            }
        }
        if (info.Composable) |factories| {
            for (factories) |factory| {
                _ = factory;
                return error.NonDefaultFactoriesNotImplemented;
            }
        }
    }

    try writer.print("    pub const NAME: []const u8 = \"{s}.{s}\";\n", .{ typedef.Namespace, typedef.Name });
    try writer.writeAll("    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeLiteral(TYPE_NAME);\n");

    if (typedef.DefaultInterface) |di| {
        try ctx.requirements.add(di.Namespace, di.Name);
        try writer.print("    pub const GUID: []const u8 = {s}.GUID;\n", .{ di.Name });
        try writer.print("    pub const IID: Guid = {s}.IID;\n", .{ di.Name });
        try writer.writeAll("    pub const SIGNATURE: []const u8 = core.Signature.class(TYPE_NAME, GUID);\n");
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
