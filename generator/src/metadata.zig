const std = @import("std");
const root = @import("./root.zig");

const Json = root.Json;

pub const interface = @import("metadata/interface.zig");

pub const Interface = struct {
    Name: []const u8,
    Namespace: []const u8,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const FactoryInfo = struct {
    Interfaces: ?[]const Interface = null,
    Statics: ?[]const Interface = null,
    Composable: ?[]const Interface = null,
    HasDefault: bool = false,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const TypeKind = enum {
    Class,
    Interface,
    Struct,
    Enum,
    Delegate,
    Type,
};

pub const TypeDef = struct {
    Kind: TypeKind, // Class|Interface|struct|Enum|Delegate|Type
    Namespace: []const u8,
    Name: []const u8,
    Guid: ?[]const u8 = null,
    Agile: bool,
    BaseType: ?TypeReference = null,
    GenericParameters: ?[]const []const u8 = null,
    Factory: ?FactoryInfo = null,
    DefaultInterface: ?Interface = null,
    Interfaces: ?[]const Interface = null,
    Fields: ?[]const Field = null,
    Methods: ?[]const Method = null,
    Values: ?[]const EnumValue = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Parameter = struct {
    Name: []const u8,
    Type: TypeReference,
    Attributes: ?[]const []const u8 = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Method = struct {
    Name: []const u8,
    Static: bool,
    GenericParameters: ?[]const []const u8 = null,
    Parameters: ?[]const Parameter = null,
    ReturnType: TypeReference,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Property = struct {
    Name: []const u8,
    Type: TypeReference,
    Accessors: ?[]const []const u8 = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Event = struct {
    Name: []const u8,
    HandlerType: TypeReference,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Field = struct {
    Name: []const u8,
    Type: TypeReference,
    Value: ?[]const u8 = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Kind = enum {
    Native,
    Generic,
    Function,
    Delegate,
    Class,
    Struct,
    Interface,
    Enum
};

pub const Type = enum {
    Array,
    Pointer,
    Ref,
};

pub const TypeReference = struct {
    Kind: ?Kind = null,
    Type: ?Type = null,
    Namespace: ?[]const u8 = null,
    Name: []const u8,
    GenericArguments: ?[]const TypeReference = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const EnumValue = struct {
    Name: []const u8,
    Value: u32,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false }) });
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{ std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false }) });
    }
};

pub const Namespace = struct {
    arena: std.heap.ArenaAllocator,
    data: []const u8,
    namespace: []const u8,
    types: []const TypeDef,

    pub fn deinit(self: @This()) void {
        self.arena.deinit();
    }
};

pub fn parse(allocator: std.mem.Allocator, base: *const std.fs.Dir, path: []const u8) !Namespace {
    var arena = std.heap.ArenaAllocator.init(allocator);

    const data = try base.readFileAlloc(arena.allocator(), path, std.math.maxInt(usize));
    const types = try std.json.parseFromSliceLeaky([]const TypeDef, arena.allocator(), data, .{ .ignore_unknown_fields = true });

    return .{
        .arena = arena,
        .data = data,
        .types = types,
        .namespace = path[0..path.len - 5],
    };
}

pub const Requirements = struct {
    allocator: std.mem.Allocator,
    items: std.StringHashMapUnmanaged([]const u8),

    pub fn init(allocator: std.mem.Allocator) @This() {
        return .{
            .allocator = allocator,
            .items = .empty
        };
    }

    pub fn deinit(self: @This()) void {
        self.items.deinit(self.allocator);
    }

    pub fn add(self: *@This(), name: []const u8, namespace: []const u8) !void {
        if (self.items.contains(name)) return;
        _ = try self.items.put(self.allocator, name, namespace);
    }
};

pub const Definitions = struct {
    allocator: std.mem.Allocator,
    items: std.StringHashMapUnmanaged(std.StringHashMapUnmanaged(Kind)),

    pub fn init(allocator: std.mem.Allocator) @This() {
        return .{
            .allocator = allocator,
            .items = .empty
        };
    }

    pub fn deinit(self: *@This()) void {
        var it = self.items.valueIterator();
        while (it.next()) |ns| {
            ns.deinit(self.allocator);
        }
        self.items.deinit(self.allocator);
    }

    pub fn get(self: *const @This(), namespace: []const u8, name: []const u8) ?Kind {
        if (self.items.getPtr(namespace)) |ns| {
            return ns.get(name);
        }
        return null;
    }

    pub fn add(self: *@This(), namespace: []const u8, name: []const u8, kind: Kind) !void {
        const ns = try self.items.getOrPut(self.allocator, namespace);
        if (ns.found_existing) {
            try ns.value_ptr.put(self.allocator, name, kind);
        } else {
            var table: std.StringHashMapUnmanaged(Kind) = .empty;
            try table.put(self.allocator, name, kind);
            ns.value_ptr.* = table;
        }
    }
};

