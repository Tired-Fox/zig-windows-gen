const std = @import("std");
const zwingen = @import("zwin-gen");
const Json = zwingen.Json;
const replaceAll = zwingen.replaceAll;
const metadata = zwingen.metadata;

const Tag = struct {
    name: []const u8,
    zipball_url: []const u8,
    tarball_url: []const u8,
    commit: struct {
        sha: []const u8,
        url: []const u8,
    },
    node_id: []const u8,
};

const Release = struct {
    name: []const u8,
    assets: []const Asset,

    id: usize,
    target_commitish: []const u8,
    url: []const u8,
    assets_url: []const u8,
    created_at: []const u8,
    published_at: []const u8,
};

const Asset = struct {
    name: []const u8,
    browser_download_url: []const u8,

    id: usize,
    content_type: []const u8,
    url: []const u8,
    size: usize,
    digest: []const u8,
    download_count: usize,
    created_at: []const u8,
    updated_at: []const u8,
};

const Config = struct {
    current: []const u8 = "",
    digest: []const u8 = "",

    pub fn parse(allocator: std.mem.Allocator, path: []const u8) !@This() {
        const config_slice = std.fs.cwd().readFileAllocOptions(allocator, path, std.math.maxInt(usize), null, .@"1", 0) catch |err| switch (err) {
            error.FileNotFound => return .{},
            else => return err,
        };
        defer allocator.free(config_slice);

        if (config_slice.len == 0) {
            return .{};
        }

        return try std.zon.parse.fromSlice(Config, allocator, config_slice[0..], null, .{
            .ignore_unknown_fields = true,
            .free_on_error = true,
        });
    }

    pub fn write(self: @This(), path: []const u8) !void {
        var file = try std.fs.cwd().createFile(path, .{ .truncate = true });
        defer file.close();

        var buffer: [8 * 1024]u8 = undefined;
        var file_writer = file.writer(&buffer);
        try std.zon.stringify.serialize(self, .{}, &file_writer.interface);
        try file_writer.interface.flush();
    }

    pub fn deinit(self: @This(), allocator: std.mem.Allocator) void {
        std.zon.parse.free(allocator, self);
    }
};

fn fetch(allocator: std.mem.Allocator, client: *std.http.Client, url: []const u8, R: type) !Json(R) {
    var response_body: std.Io.Writer.Allocating = .init(allocator);
    defer response_body.deinit();

    const res = try client.fetch(.{
        .method = .GET,
        .location = .{ .url = url },
        .response_writer = &response_body.writer,
    });

    if (res.status != .ok) {
        return error.FetchFailed;
    }

    const body = try response_body.toOwnedSlice();
    errdefer allocator.free(body);

    const result = try std.json.parseFromSlice(R, allocator, body, .{ .ignore_unknown_fields = true });
    return Json(R).init(body, result);
}

fn download(client: *std.http.Client, url: []const u8, out: []const u8) !void {
    var file = try std.fs.cwd().createFile(out, .{ .truncate = true });
    defer file.close();

    var buffer: [1024]u8 = undefined;
    var file_writer = file.writer(&buffer);

    const res = try client.fetch(.{
        .method = .GET,
        .location = .{ .url = url },
        .response_writer = &file_writer.interface,
    });

    if (res.status != .ok) {
        return error.DownloadFailed;
    }
}

const UnzipOptions = struct {
    clean: bool = false,
    out: ?[]const u8 = null,
};

fn unzip(source: []const u8, options: UnzipOptions) !void {
    var outdir = std.fs.cwd();
    if (options.out) |out| {
        if (options.clean) outdir.deleteTree(out) catch {};
        try outdir.makePath(out);
        outdir = try outdir.openDir(out, .{ .iterate = true });
    }

    const zip_file = try std.fs.cwd().openFile(source, .{});
    defer zip_file.close();

    //           v This is needed otherwise there will be an integer overflow
    var buffer: [std.compress.flate.max_window_len]u8 = undefined;
    var zf_reader = zip_file.reader(&buffer);
    try std.zip.extract(outdir, &zf_reader, .{});
}

fn downloadMetadata(allocator: std.mem.Allocator) !void {
    print("= Checking for metadata updates from Tired-Fox/winrt-json\n", .{});
    var config = try Config.parse(allocator, "meta.zig.zon");
    defer config.deinit(allocator);

    var client = std.http.Client{ .allocator = allocator };
    defer client.deinit();

    const tags = try fetch(allocator, &client, "https://api.github.com/repos/Tired-Fox/winrt-json/tags", []const Tag);
    defer tags.deinit();

    if (tags.value.len == 0) {
        print("  \x1b[31mx\x1b[39m No winrt-json release found", .{});
        return error.NoTags;
    }

    const latest = tags.value[0];

    const uri = try std.fmt.allocPrint(
        allocator,
        "https://api.github.com/repos/Tired-Fox/winrt-json/releases/tags/{s}",
        .{latest.name},
    );
    defer allocator.free(uri);

    const release = try fetch(allocator, &client, uri, Release);
    defer release.deinit();

    for (release.value.assets) |asset| {
        const name = asset.name;
        if (name.len >= 8 and std.mem.eql(u8, name[0..8], "Metadata")) {
            if (std.mem.eql(u8, latest.name, config.current) and std.mem.eql(u8, asset.digest, config.digest)) {
                print("   + Metadata is up to date\n", .{});
                return;
            }
            print("   Downloading Release {s}\n", .{release.value.name});

            try download(&client, asset.browser_download_url, "Metadata.zip");
            config.current = latest.name;
            config.digest = asset.digest;
            try config.write("meta.zig.zon");
            print("     \x1b[36mv\x1b[39m Downloaded winrt-zig {s} to Metadata.zip\n", .{asset.name});

            try unzip("Metadata.zip", .{ .out = "metadata", .clean = true });
            print("     \x1b[33m>\x1b[39m Unziped Metadata.zip to metadata/\n", .{});

            try std.fs.cwd().deleteTree("Metadata.zip");
            print("     \x1b[31m<\x1b[39m Deleted Metadata.zip\n", .{});

            print("   + Metadata updated\n", .{});

            break;
        }
    } else {
        print("   \x1b[31mx\x1b[39m No release archive found for {s}\n", .{latest.name});
        return error.NoArchive;
    }
}

fn print(comptime fmt: []const u8, args: anytype) void {
    var buffer: [1024]u8 = undefined;
    var stdout = std.fs.File.stdout();
    var stdout_writer = stdout.writer(&buffer);
    stdout_writer.interface.print(fmt, args) catch unreachable;
    stdout_writer.interface.flush() catch unreachable;
}

fn generateHresultEnum(allocator: std.mem.Allocator) !void {
    // TODO: Convert the parsing of the winerror.h file to zig
    print("= Generating HResult enum type\n", .{});
    if (true) {
        const data = try std.fs.cwd().readFileAlloc(allocator, "hresult.json", std.math.maxInt(usize));
        defer allocator.free(data);

        const result = try std.json.parseFromSlice([]const std.meta.Tuple(&.{ []const u8, []const u8 }), allocator, data, .{});
        defer result.deinit();

        var templateCore = try std.fs.cwd().openDir("template/src/core", .{});
        defer templateCore.close();

        var file = try templateCore.createFile("hresult.zig", .{ .truncate = true });
        defer file.close();

        var buffer: [4 * 1024]u8 = undefined;
        var writer = file.writer(&buffer);

        try writer.interface.writeAll("// ----- This code is automatically generated -----\n");

        try writer.interface.writeAll("pub const HResult = error {\n");
        try writer.interface.writeAll("    UNKNOWN,\n");
        for (result.value) |hresult| {
            try writer.interface.print("    {s},\n", .{hresult[0]});
        }
        try writer.interface.writeAll("};\n");

        try writer.interface.writeAll("/// If hresult isn't S_OK (0) then return anyerror representation of the hresult\n");
        try writer.interface.writeAll("pub fn hresultToError(hresult: i32) HResult!void {\n");
        try writer.interface.writeAll("    if (hresult >= 0) return;\n");
        try writer.interface.writeAll("    return switch(@as(u32, @intCast(hresult))){\n");
        for (result.value) |hresult| {
            try writer.interface.print("        {s} => HResult.{s},\n", .{ hresult[1], hresult[0] });
        }
        try writer.interface.writeAll("        else => HResult.UNKNOWN,\n");
        try writer.interface.writeAll("    };\n");
        try writer.interface.writeAll("}");
        try writer.interface.flush();
    }
}

pub fn main() !void {
    var gpa = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer gpa.deinit();
    const allocator = gpa.allocator();

    var args = try std.process.argsWithAllocator(allocator);
    defer args.deinit();
    _ = args.next(); // Discard program name

    const location = if (args.next()) |path| path else return error.ExpectedPathArgument;

    try downloadMetadata(allocator);
    try generateHresultEnum(allocator);

    print("= Generating API\n", .{});
    var module = try std.fs.cwd().openDir(location, .{});
    defer module.close();

    // Prep output directory
    {
        module.deleteTree("src") catch {};
        try std.fs.cwd().makePath("src");

        try copyTemplate("template", module);
    }

    var module_src = try module.openDir("src", .{});
    defer module_src.close();

    const metadata_dir = try std.fs.cwd().openDir("metadata", .{ .iterate = true });

    var definitions = metadata.Definitions.init(allocator);
    defer definitions.deinit();
    // Populate basic type information for lookup while generating the structs
    {
        var it = metadata_dir.iterate();
        while (try it.next()) |ns| {
            if (ns.kind == .file) {
                const namespace = try metadata.parseSignature(definitions.allocator(), &metadata_dir, ns.name);
                for (namespace.types) |*ty| {
                    try definitions.add(ty.Namespace, ty.Name, ty.Kind, ty.Methods);
                }
            }
        }
    }

    var namespaces: std.ArrayListUnmanaged([]const u8) = .empty;
    defer {
        for (namespaces.items) |item| {
            allocator.free(item);
        }
        namespaces.deinit(allocator);
    }

    var snippets = try metadata.Snippets.init(allocator);
    defer snippets.deinit(allocator);

    var ns_iter = metadata_dir.iterate();
    while (try ns_iter.next()) |entry| {
        if (entry.kind != .file) continue;

        const namespace = try metadata.parse(allocator, &metadata_dir, entry.name);
        defer namespace.deinit();

        try namespaces.append(allocator, try allocator.dupe(u8, namespace.namespace));

        print("   * {s}\n", .{namespace.namespace});

        var ctx = metadata.Context{
            .requirements = metadata.Requirements.init(allocator),
            .definitions = &definitions,
            .snippets = &snippets,
        };
        defer ctx.requirements.deinit();

        var ns_file = try openNamespaceFile(allocator, namespace.namespace, module_src);
        defer ns_file.close();

        var buffer: [1024]u8 = undefined;
        var file_writer = ns_file.writer(&buffer);
        try file_writer.seekTo(try ns_file.getEndPos());
        var writer = &file_writer.interface;

        try writer.writeAll("// ----- This code is automatically generated -----\n");

        // var buffer: [1024]u8 = undefined;
        // var stdout = std.fs.File.stdout();
        // var stdout_writer = stdout.writer(&buffer);
        // var writer = &stdout_writer.interface;

        var total: usize = 0;
        for (namespace.types) |*ty| {
            if (std.mem.eql(u8, namespace.namespace, "Windows.UI.WebUI") and (std.mem.eql(u8, ty.Name, "SuspendingOperation") or std.mem.eql(u8, ty.Name, "SuspendingDeferral"))) {
                continue;
            }

            switch (ty.Kind) {
                .Interface => metadata.interface.serialize(allocator, &ctx, ty, writer) catch |e| {
                    print("{s}\n", .{namespace.namespace});
                    print("{f}\n", .{ty});
                    return e;
                },
                .Class => metadata.class.serialize(allocator, &ctx, ty, writer) catch |e| {
                    print("{s}\n", .{namespace.namespace});
                    print("{f}\n", .{ty});
                    return e;
                },
                .Enum => metadata.enumeration.serialize(ty, writer) catch |e| {
                    print("{s}\n", .{namespace.namespace});
                    print("{f}\n", .{ty});
                    return e;
                },
                .Struct => metadata.structure.serialize(allocator, &ctx, ty, writer) catch |e| switch (e) {
                    error.SkipTypeContract => continue,
                    else => {
                        print("{s}\n", .{namespace.namespace});
                        print("{f}\n", .{ty});
                        return e;
                    },
                },
                .Delegate => metadata.delegate.serialize(allocator, &ctx, ty, writer) catch |e| {
                    print("{s}\n", .{namespace.namespace});
                    return e;
                },
                else => print("     \x1b[33m…\x1b[39m Skipping Unknown TypeDef: {s}\n", .{@tagName(ty.Kind)}),
            }
            total += 1;
        }

        print("      # {d} types\n", .{total});

        var it = ctx.requirements.items.iterator();
        while (it.next()) |requirement| {
            if (std.mem.eql(u8, namespace.namespace, "Windows.UI.WebUI") and
                (std.mem.eql(u8, requirement.key_ptr.*, "SuspendingOperation") or
                    std.mem.eql(u8, requirement.key_ptr.*, "SuspendingDeferral")))
            {
                continue;
            }

            if (std.mem.eql(u8, requirement.value_ptr.*, namespace.namespace)) {
                continue;
            }

            if (try relativeNamespace(allocator, namespace.namespace, requirement.value_ptr.*)) |relative| {
                defer allocator.free(relative);
                try writer.print("const {s} = @import(\"{s}\").{s};\n", .{ requirement.key_ptr.*, relative, requirement.key_ptr.* });
            }
        }

        writer.flush() catch unreachable;
    }

    try addNamespaceImports(allocator, namespaces.items, module_src);
}

fn contains(list: []const []const u8, target: []const u8) bool {
    for (list) |s| {
        if (std.mem.eql(u8, s, target)) {
            return true;
        }
    }
    return false;
}

fn addNamespaceImports(allocator: std.mem.Allocator, namespaces: []const []const u8, base: std.fs.Dir) !void {
    var visited: std.StringHashMapUnmanaged(bool) = .empty;
    defer {
        var it = visited.keyIterator();
        while (it.next()) |i| allocator.free(i.*);
        visited.deinit(allocator);
    }

    for (namespaces) |namespace| {
        const rest = namespace[8..];
        if (visited.contains(rest)) continue;
        try visited.put(allocator, try allocator.dupe(u8, rest), true);

        var idx = std.mem.lastIndexOf(u8, rest, ".");

        var dir: ?[]const u8 = null;
        defer {
            if (dir) |d| allocator.free(d);
        }

        var file: []const u8 = undefined;
        var target: []const u8 = undefined;

        if (idx) |i| {
            target = rest[i + 1 ..];
            idx = std.mem.lastIndexOf(u8, rest[0..i], ".");
            if (idx) |k| {
                file = rest[k + 1 .. i];
                dir = rest[0..k];
            } else {
                file = rest[0..i];
            }

            // Walk the parent namespaces and make
            // sure they are also imported in their parent
            var remaining = rest[0..i];
            while (true) {
                if (std.mem.lastIndexOf(u8, remaining, ".")) |p| {
                    defer remaining = remaining[0..p];
                    if (visited.contains(remaining)) {
                        continue;
                    }
                    try visited.put(allocator, try allocator.dupe(u8, remaining), true);

                    const parent = remaining[0..p];
                    if (std.mem.lastIndexOf(u8, parent, ".")) |pidx| {
                        try visited.put(allocator, try allocator.dupe(u8, remaining), true);
                        try writeModuleImport(
                            allocator,
                            parent[pidx + 1 ..],
                            remaining[p + 1 ..],
                            parent[0..pidx],
                            base,
                        );
                    } else {
                        try writeModuleImport(
                            allocator,
                            parent,
                            remaining[p + 1 ..],
                            null,
                            base,
                        );
                    }
                } else {
                    if (visited.contains(remaining)) break;
                    try visited.put(allocator, try allocator.dupe(u8, remaining), true);
                    try writeModuleImport(
                        allocator,
                        "root",
                        remaining,
                        null,
                        base,
                    );
                    break;
                }
            }
        } else {
            target = rest;
            file = "root";
        }

        try writeModuleImport(allocator, file, target, dir, base);
    }
}

fn writeModuleImport(
    allocator: std.mem.Allocator,
    file: []const u8,
    target: []const u8,
    dir: ?[]const u8,
    base: std.fs.Dir,
) !void {
    var location = blk: {
        if (dir) |d| {
            const path = try replaceAll(allocator, d, ".", "/");
            defer allocator.free(path);
            break :blk try base.openDir(path, .{});
        } else {
            break :blk try base.openDir(".", .{});
        }
    };
    defer location.close();

    var ns_file = blk: {
        const target_file = try std.fmt.allocPrint(
            allocator,
            "{s}.zig",
            .{file},
        );
        defer allocator.free(target_file);
        break :blk try location.createFile(target_file, .{ .truncate = false });
    };
    defer ns_file.close();

    var buffer: [1024]u8 = undefined;
    var writer = ns_file.writer(&buffer);
    try writer.seekTo(try ns_file.getEndPos());

    if (std.mem.eql(u8, file, "root")) {
        try writer.interface.print(
            "pub const {s} = @import(\"./{s}.zig\");\n",
            .{ target, target },
        );
    } else {
        try writer.interface.print(
            "pub const {s} = @import(\"./{s}/{s}.zig\");\n",
            .{ target, file, target },
        );
    }

    try writer.interface.flush();
}

fn openNamespaceFile(allocator: std.mem.Allocator, namespace: []const u8, base: std.fs.Dir) !std.fs.File {
    var current = base;

    var parts = std.mem.splitSequence(u8, namespace, ".");

    while (parts.next()) |part| {
        if (parts.peek() == null) {
            const name = try std.fmt.allocPrint(allocator, "{s}.zig", .{part});
            defer allocator.free(name);

            return current.openFile(name, .{ .mode = .write_only }) catch |err| switch (err) {
                error.FileNotFound => return try current.createFile(name, .{ .truncate = false }),
                else => return err,
            };
        } else if (!std.mem.eql(u8, part, "Windows")) {
            try current.makePath(part);
            current = try current.openDir(part, .{});
        }
    }

    return error.FailedToGenerateNamespace;
}

fn relativeNamespace(allocator: std.mem.Allocator, from: []const u8, to: []const u8) !?[]const u8 {
    var back: usize = 0;
    var previous: []const u8 = "root";

    if (std.mem.eql(u8, to, "Windows")) {
        var f_it = std.mem.splitSequence(u8, from[8..], ".");
        while (f_it.next()) |_| back += 1;
        back -|= 1;

        var buffer: std.io.Writer.Allocating = .init(allocator);
        defer buffer.deinit();
        const writer = &buffer.writer;

        if (back >= 1) {
            try writer.writeAll("..");
            for (1..back) |_| {
                try writer.writeAll("/..");
            }
        } else {
            try writer.writeAll(".");
        }

        try writer.writeAll("/root.zig");
        return try buffer.toOwnedSlice();
    }

    if (from.len < to.len and std.mem.eql(u8, from, to[0..from.len])) {
        const start = std.mem.lastIndexOf(u8, from, ".").?;
        const replaced = try replaceAll(allocator, to[start + 1 ..], ".", "/");
        defer allocator.free(replaced);
        return try std.fmt.allocPrint(allocator, "./{s}.zig", .{replaced});
    }

    var f_it = std.mem.splitSequence(u8, from[8..], ".");
    var t_it = std.mem.splitSequence(u8, to[8..], ".");

    while (true) {
        if (f_it.peek() == null) break;
        if (t_it.peek() == null) {
            while (f_it.next()) |_| back += 1;
            break;
        }

        if (!std.mem.eql(u8, f_it.peek().?, t_it.peek().?)) {
            while (f_it.next()) |_| back += 1;
            back -|= 1;
            break;
        }

        previous = f_it.next().?;
        _ = t_it.next();
    }

    var buffer: std.io.Writer.Allocating = .init(allocator);
    defer buffer.deinit();
    const writer = &buffer.writer;

    if (back >= 1) {
        try writer.writeAll("..");
        for (1..back) |_| {
            try writer.writeAll("/..");
        }
    } else {
        try writer.writeAll(".");
    }

    if (t_it.peek() == null) {
        if (std.mem.eql(u8, previous, "Windows")) {
            try writer.writeAll("/root");
        } else {
            try writer.print("/{s}", .{previous});
        }
    } else {
        while (t_it.next()) |p| {
            try writer.print("/{s}", .{p});
        }
    }

    try writer.writeAll(".zig");

    return try buffer.toOwnedSlice();
}

fn copyDirRecursive(source: std.fs.Dir, dest: std.fs.Dir) !void {
    var it = source.iterate();
    while (try it.next()) |entry| {
        switch (entry.kind) {
            .file => {
                try source.copyFile(entry.name, dest, entry.name, .{});
            },
            .directory => {
                try dest.makePath(entry.name);
                var subSrc = try source.openDir(entry.name, .{ .iterate = true });
                defer subSrc.close();
                var subDest = try dest.openDir(entry.name, .{});
                defer subDest.close();
                try copyDirRecursive(subSrc, subDest);
            },
            else => {},
        }
    }
}

fn copyTemplate(source: []const u8, dest: std.fs.Dir) !void {
    var base = try std.fs.cwd().openDir(source, .{ .iterate = true });
    defer base.close();
    try copyDirRecursive(base, dest);
}
