const std = @import("std");
const metadata = @import("../metadata.zig");

pub const Type = struct {
    base: union(enum) {
        value: []const u8,
        ref: []const u8,
        generic: []const u8,
    },
    optional: bool = false,
    kind: ?metadata.Type,
    generics: ?[]const Type = null,

    pub fn deinit(self: @This(), allocator: std.mem.Allocator) void {
        if (self.generics) |generics| {
            for (generics) |g| g.deinit(allocator);
            allocator.free(generics);
        }
    }

    pub fn native(name: []const u8, kind: ?metadata.Type, optional: bool) @This() {
        return .{ .base = .{ .value = name }, .kind = kind, .optional = optional };
    }

    pub fn generic(name: []const u8, kind: ?metadata.Type, optional: bool) @This() {
        return .{ .base = .{ .generic = name }, .kind = kind, .optional = optional };
    }

    pub fn value(name: []const u8, generics: ?[]const Type, kind: ?metadata.Type, optional: bool) @This() {
        return .{ .base = .{ .value = name }, .generics = generics, .kind = kind, .optional = optional };
    }

    pub fn ref(name: []const u8, generics: ?[]const Type, kind: ?metadata.Type, optional: bool) @This() {
        return .{ .base = .{ .ref = name }, .generics = generics, .kind = kind, .optional = optional };
    }

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        if(self.optional) try writer.writeByte('?'); 

        if (self.kind == .Array) {
            try writer.writeAll("[*]");
        } else if (self.base == .ref) {
            try writer.writeByte('*');
        }

        switch (self.base) {
            .value, .generic, .ref => |v| try writer.writeAll(v),
        }

        if (self.generics) |generics| {
            try writer.writeAll("(");
            try writer.print("{f}", .{ generics[0].asValue() });
            for (1..generics.len) |i| {
                try writer.print(",{f}", .{ generics[i].asValue() });
            }
            try writer.writeAll(")");
        }
    }

    pub fn formatParam(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        if(self.optional) try writer.writeByte('?'); 

        if (self.kind == .Array) {
            try writer.writeAll("[*]");
        } else if (self.base == .ref) {
            try writer.writeByte('*');
        }

        switch (self.base) {
            .value, .ref => |v| try writer.writeAll(v),
            .generic => |v| try writer.print("core.generic({s})", .{ v }),
        }

        if (self.generics) |generics| {
            try writer.writeAll("(");
            try writer.print("{f}", .{ generics[0].asValue() });
            for (1..generics.len) |i| {
                try writer.print(",{f}", .{ generics[i].asValue() });
            }
            try writer.writeAll(")");
        }
    }

    pub fn asParam(self: @This()) std.fmt.Alt(@This(), @This().formatParam) {
        return .{ .data = self };
    }

    pub fn formatValue(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        if(self.optional) try writer.writeByte('?'); 

        if (self.kind == .Array) {
            try writer.writeAll("[*]");
        }

        switch (self.base) {
            .value, .ref, .generic => |v| try writer.writeAll(v),
        }

        if (self.generics) |generics| {
            try writer.writeAll("(");
            try writer.print("{f}", .{ generics[0].asValue() });
            for (1..generics.len) |i| {
                try writer.print(",{f}", .{ generics[i].asValue() });
            }
            try writer.writeAll(")");
        }
    }

    pub fn asValue(self: @This()) std.fmt.Alt(@This(), @This().formatValue) {
        return .{ .data = self };
    }
};

pub fn winToZig(allocator: std.mem.Allocator, ctx: *metadata.Context, typeref: *const metadata.TypeReference) !?Type {
    // TODO: Handle the instance where the type is an array
    if (typeref.Kind == .Native) {
        if (typeref.GenericArguments != null) {
            return error.NativeTypeWithGenericsNotSupported;
        }

        if (std.mem.eql(u8, typeref.Name, "Void")) {
            return null;
        } else if (std.mem.eql(u8, typeref.Name, "Boolean")) {
            return .native("bool", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Char")) {
            return .native("u16", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "SByte")) {
            return .native("i8", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Byte")) {
            return .native("u8", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Int16")) {
            return .native("i16", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "UInt16")) {
            return .native("u16", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Int32")) {
            return .native("i32", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "UInt32")) {
            return .native("u32", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Int64")) {
            return .native("i64", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "UInt64")) {
            return .native("u64", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Single")) {
            return .native("f32", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Double")) {
            return .native("f64", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "String")) {
            try ctx.requirements.addHSTRING();
            return .native("HSTRING", typeref.Type, true);
        } else if (std.mem.eql(u8, typeref.Name, "TypedReference")) {
            return .native("*anyopaque", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "IntPtr")) {
            return .native("isize", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "UIntPtr")) {
            return .native("usize", typeref.Type, false);
        } else if (std.mem.eql(u8, typeref.Name, "Object")) {
            try ctx.requirements.addIInspectable();
            return .ref("IInspectable", null, typeref.Type, false);
        }
        return error.UnknownNativeType;
    } else if (typeref.Kind == null) {
        if (std.mem.eql(u8, typeref.Name, "Object")) {
            try ctx.requirements.addIInspectable();
            return .ref("IInspectable", null, typeref.Type, false);
        }

        if (std.mem.eql(u8, typeref.Name, "Type")) {
            try ctx.requirements.add("Windows.UI.Xaml.Interop", "TypeName");
            return .value("TypeName", null, typeref.Type, false);
        }

        var generics: ?[]Type = null;
        if (typeref.GenericArguments) |ga| {
            generics = try allocator.alloc(Type, ga.len);
            errdefer allocator.free(generics.?);
            for (ga, 0..) |*g, i| {
                generics.?[i] = (try winToZig(allocator, ctx, g)).?;
            }
        }

        if (typeref.Namespace) |ns| {
            try ctx.requirements.add(ns, typeref.Name);
            if (ctx.definitions.getKind(ns, typeref.Name)) |kind| {
                if (kind != .Interface and kind != .Class and kind != .Delegate) {
                    return .value(typeref.Name, generics, typeref.Type, false);
                }
            }
        }

        return .ref(typeref.Name, generics, typeref.Type, false);
    } else if (typeref.Kind == .Generic) {
        return .generic(typeref.Name, typeref.Type, false);
    }

    std.debug.print("{f}\n", .{ typeref });
    return error.UnknownWindowsType;
}
