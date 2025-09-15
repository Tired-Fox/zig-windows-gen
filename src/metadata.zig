const std = @import("std");
const root = @import("./root.zig");

const Json = root.Json;

pub const interface = @import("metadata/interface.zig");
pub const class = @import("metadata/class.zig");
pub const enumeration = @import("metadata/enumeration.zig");
pub const structure = @import("metadata/structure.zig");
pub const delegate = @import("metadata/delegate.zig");

pub const Kind = enum { Native, Generic, Function, Delegate, Class, Struct, Interface, Enum };

pub const Type = enum {
    Array,
    Pointer,
    Ref,
};

pub const Interface = struct {
    Name: []const u8,
    Namespace: []const u8,
    GenericArguments: ?[]const TypeReference = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const FactoryInfo = struct {
    Interfaces: ?[]const Interface = null,
    Statics: ?[]const Interface = null,
    Composable: ?[]const Interface = null,
    HasDefault: bool = false,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const TypeSignature = struct {
    Kind: Kind, // Class|Interface|struct|Enum|Delegate|Type
    Namespace: []const u8,
    Name: []const u8,
    Methods: ?[]const Method = null,
};

pub const TypeDef = struct {
    Kind: Kind, // Class|Interface|struct|Enum|Delegate|Type
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
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const Parameter = struct {
    Name: []const u8,
    Type: TypeReference,
    Attributes: ?[]const []const u8 = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const Method = struct {
    Name: []const u8,
    Static: bool,
    GenericParameters: ?[]const []const u8 = null,
    Parameters: ?[]const Parameter = null,
    ReturnType: TypeReference,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const Property = struct {
    Name: []const u8,
    Type: TypeReference,
    Accessors: ?[]const []const u8 = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const Event = struct {
    Name: []const u8,
    HandlerType: TypeReference,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const Field = struct {
    Name: []const u8,
    Type: TypeReference,
    Value: ?[]const u8 = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const TypeReference = struct {
    Kind: ?Kind = null,
    Type: ?Type = null,
    Namespace: ?[]const u8 = null,
    Name: []const u8,
    GenericArguments: ?[]const TypeReference = null,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
    }
};

pub const EnumValue = struct {
    Name: []const u8,
    Value: i32,

    pub fn format(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .indent_4, .emit_null_optional_fields = false })});
    }

    pub fn formatMinify(self: @This(), writer: *std.io.Writer) std.io.Writer.Error!void {
        try writer.print("{f}", .{std.json.fmt(self, .{ .whitespace = .minified, .emit_null_optional_fields = false })});
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
    const types = std.json.parseFromSliceLeaky([]const TypeDef, arena.allocator(), data, .{ .ignore_unknown_fields = true }) catch |err| {
        std.debug.print("[error in {s}]\n", .{path});
        return err;
    };

    return .{
        .arena = arena,
        .data = data,
        .types = types,
        .namespace = path[0 .. path.len - 5],
    };
}

pub const Signature = struct {
    arena: std.heap.ArenaAllocator,
    data: []const u8,
    namespace: []const u8,
    types: []const TypeSignature,

    pub fn deinit(self: @This()) void {
        self.arena.deinit();
    }
};

pub fn parseSignature(allocator: std.mem.Allocator, base: *const std.fs.Dir, path: []const u8) !Signature {
    var arena = std.heap.ArenaAllocator.init(allocator);

    const data = try base.readFileAlloc(arena.allocator(), path, std.math.maxInt(usize));
    const types = try std.json.parseFromSliceLeaky([]const TypeSignature, arena.allocator(), data, .{ .ignore_unknown_fields = true });

    return .{
        .arena = arena,
        .data = data,
        .types = types,
        .namespace = path[0 .. path.len - 5],
    };
}

pub const Requirements = struct {
    allocator: std.mem.Allocator,
    items: std.StringHashMapUnmanaged([]const u8),

    pub fn init(allocator: std.mem.Allocator) @This() {
        return .{ .allocator = allocator, .items = .empty };
    }

    pub fn deinit(self: *@This()) void {
        self.items.deinit(self.allocator);
    }

    pub fn add(self: *@This(), namespace: []const u8, name: []const u8) !void {
        if (self.items.contains(name)) return;
        _ = try self.items.put(self.allocator, name, namespace);
    }

    pub fn addIInspectable(self: *@This()) !void {
        try self.add("Windows.Foundation", "IInspectable");
    }

    pub fn addHSTRING(self: *@This()) !void {
        try self.add("Windows", "HSTRING");
    }

    pub fn addCore(self: *@This()) !void {
        try self.add("Windows", "core");
    }

    pub fn addObjectDependencies(self: *@This()) !void {
        try self.add("Windows", "core");
        try self.add("Windows", "Guid");
        try self.add("Windows", "HSTRING");
        try self.add("Windows", "TrustLevel");
        try self.add("Windows", "HRESULT");
        try self.add("Windows.Foundation", "IInspectable");
    }

    pub fn addDelegateDependencies(self: *@This()) !void {
        try self.add("Windows", "core");
        try self.add("Windows", "Guid");
        try self.add("Windows", "HSTRING");
        try self.add("Windows", "TrustLevel");
        try self.add("Windows", "IAgileObject");
        try self.add("Windows", "IUnknown");
        try self.add("Windows", "HRESULT");
    }
};

pub const Definition = struct {
    kind: Kind,
    methods: ?[]const Method,
};

pub const Definitions = struct {
    arena: std.heap.ArenaAllocator,
    items: std.StringHashMapUnmanaged(std.StringHashMapUnmanaged(Definition)),

    pub fn init(a: std.mem.Allocator) @This() {
        return .{ .arena = std.heap.ArenaAllocator.init(a), .items = .empty };
    }

    pub fn deinit(self: *@This()) void {
        self.arena.deinit();
    }

    pub fn allocator(self: *@This()) std.mem.Allocator {
        return self.arena.allocator();
    }

    pub fn get(self: *const @This(), namespace: []const u8, name: []const u8) ?Definition {
        if (self.items.getPtr(namespace)) |ns| {
            return ns.get(name);
        }
        return null;
    }

    pub fn getKind(self: *const @This(), namespace: []const u8, name: []const u8) ?Kind {
        if (self.items.getPtr(namespace)) |ns| {
            if (ns.get(name)) |d| return d.kind;
        }
        return null;
    }

    pub fn getMethods(self: *const @This(), namespace: []const u8, name: []const u8) ?[]const Method {
        if (self.items.getPtr(namespace)) |ns| {
            if (ns.get(name)) |d| return d.methods;
        }
        return null;
    }

    pub fn add(self: *@This(), namespace: []const u8, name: []const u8, kind: Kind, methods: ?[]const Method) !void {
        const allo = self.allocator();
        const ns = try self.items.getOrPut(allo, namespace);

        if (ns.found_existing) {
            try ns.value_ptr.put(allo, name, .{
                .kind = kind,
                .methods = methods,
            });
        } else {
            var table: std.StringHashMapUnmanaged(Definition) = .empty;

            try table.put(allo, name, .{ .kind = kind, .methods = methods });

            ns.value_ptr.* = table;
        }
    }
};

pub const Context = struct {
    requirements: Requirements,
    definitions: *const Definitions,
    snippets: *const Snippets,
};

pub const Snippets = struct {
    interface: std.StringHashMapUnmanaged([]const MethodSnippet),

    const MethodSnippet = *const fn (*std.io.Writer, ?[]const[]const u8, prefix: []const u8) anyerror!void;

    pub fn init(allocator: std.mem.Allocator) !@This() {
        var interface_method_snippets = std.StringHashMapUnmanaged([]const MethodSnippet).empty;
        errdefer interface_method_snippets.deinit(allocator);

        try interface_method_snippets.put(allocator, "IAsyncOperation", &.{
            @import("./snippets/IAsyncOperation.zig").wait,
        });

        return .{
            .interface = interface_method_snippets
        };
    }

    pub fn deinit(self: *@This(), allocator: std.mem.Allocator) void {
        self.interface.deinit(allocator);
    }
};

pub fn noreserved(name: []const u8) []const u8 {
    if (std.mem.eql(u8, name, "type")) {
        return "ty";
    } else if (std.mem.eql(u8, name, "error")) {
        return "err";
    } else if (std.mem.eql(u8, name, "align")) {
        return "alignment";
    } else if (std.mem.eql(u8, name, "RatedContentDescription")) {
        return "ratedContentDescription";
    }
    return name;
}

pub fn generateMethodNameMap(allocator: std.mem.Allocator, methods: []const Method) ![]const []const u8 {
    var buckets: std.StringHashMap(std.ArrayList(usize)) = .init(allocator);
    defer {
        var it = buckets.valueIterator();
        while (it.next()) |n| n.deinit(allocator);
        buckets.deinit();
    }

    for (methods, 0..) |*method, m| {
        const entry = try buckets.getOrPut(method.Name);
        if (entry.found_existing) {
            try entry.value_ptr.append(allocator, m);
        } else {
            var list: std.ArrayList(usize) = .empty;
            try list.append(allocator, m);
            entry.value_ptr.* = list;
        }
    }

    var map: [][]const u8 = try allocator.alloc([]const u8, methods.len);

    var it = buckets.iterator();
    while (it.next()) |bucket| {
        var items = bucket.value_ptr.items;

        std.sort.heap(usize, items, .{methods}, sortMethodBucket);

        const base = methods[items[0]];
        map[items[0]] = try allocator.dupe(u8, base.Name);

        if (items.len > 1) {
            for (items[1..]) |m| {
                const method = methods[m];

                // TODO: Resolution algorithm
                var buffer: std.io.Writer.Allocating = .init(allocator);
                const writer = &buffer.writer;
                try writer.writeAll(method.Name);

                const bpc = if (base.Parameters) |p| p.len else 0;
                const cpc = if (method.Parameters) |p| p.len else 0;
                if (cpc > bpc) {
                    var with: usize = 0;
                    if (base.Parameters) |bp| {
                        for (bp, method.Parameters.?[0..bpc]) |a, b| {
                            if (!std.mem.eql(u8, a.Type.Name, b.Type.Name)) {
                                try writer.print("{s}{c}{s}", .{
                                    if (with > 0) "And" else "With",
                                    std.ascii.toUpper(b.Name[0]),
                                    b.Name[1..],
                                });
                                with += 1;
                            }
                        }
                    }

                    for (method.Parameters.?[bpc..]) |param| {
                        const name = noreserved(param.Name);
                        try writer.print("{s}{c}{s}", .{
                            if (with > 0) "And" else "With",
                            std.ascii.toUpper(name[0]),
                            name[1..],
                        });
                        with += 1;
                    }
                } else if (cpc == bpc) {
                    var param_diff_found = false;
                    if (base.Parameters) |bp| {
                        for (bp, method.Parameters.?) |a, b| {
                            if (!std.mem.eql(u8, a.Type.Name, b.Type.Name)) {
                                if (std.mem.eql(u8, a.Name, b.Name)) {
                                    try writer.print("{s}{c}{s}{s}", .{
                                        if (param_diff_found) "And" else "With",
                                        std.ascii.toUpper(b.Name[0]),
                                        b.Name[1..],
                                        b.Type.Name,
                                    });
                                } else {
                                    try writer.print("{s}{c}{s}", .{
                                        if (param_diff_found) "And" else "With",
                                        std.ascii.toUpper(b.Name[0]),
                                        b.Name[1..],
                                    });
                                }
                                param_diff_found = true;
                            }
                        }
                    }

                    if (!param_diff_found) {
                        if (!std.mem.eql(u8, base.ReturnType.Name, method.ReturnType.Name)) {
                            try writer.print("As{s}", .{method.ReturnType.Name});
                        } else if (method.Static and !base.Static) {
                            try writer.writeAll("Static");
                        } else {
                            return error.ComplexNameResolution;
                        }
                    }
                } else {
                    return error.ComplexNameResolution;
                }

                map[m] = try buffer.toOwnedSlice();
            }
        }
    }

    return map;
}

fn sortMethodBucket(context: std.meta.Tuple(&.{[]const Method}), lhs: usize, rhs: usize) bool {
    const a = context[0][lhs];
    const b = context[0][rhs];

    if (!a.Static and b.Static) return true;
    if (!b.Static and a.Static) return false;

    const lpc = if (a.Parameters) |p| p.len else 0;
    const rpc = if (b.Parameters) |p| p.len else 0;

    return lpc < rpc;
}
