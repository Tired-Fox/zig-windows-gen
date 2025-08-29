const std = @import("std");
const generator = @import("generator");
const Json = generator.Json;
const replaceAll = generator.replaceAll;
const metadata = generator.metadata;

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
        const config_slice = std.fs.cwd().readFileAllocOptions(
            allocator,
            path,
            std.math.maxInt(usize),
            null,
            .@"1",
            0
        ) catch |err| switch (err) {
            error.FileNotFound => return .{ },
            else => return err,
        };
        defer allocator.free(config_slice);

        if (config_slice.len == 0) {
            return .{ };
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
        if (options.clean) {
            outdir.deleteTree(out) catch {};
            try outdir.makePath(out);
        }
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
    var config = try Config.parse(allocator, "meta.zig.zon");
    defer config.deinit(allocator);

    var client = std.http.Client{ .allocator = allocator };
    defer client.deinit();

    const tags = try fetch(allocator, &client, "https://api.github.com/repos/Tired-Fox/winrt-json/tags", []const Tag);
    defer tags.deinit();

    if (tags.value.len == 0) {
        print("\x1b[31m🗙\x1b[39m No winrt-json release found", .{});
        return error.NoTags;
    }

    const latest = tags.value[0];

    const uri = try std.fmt.allocPrint(
        allocator,
        "https://api.github.com/repos/Tired-Fox/winrt-json/releases/tags/{s}",
        .{latest.name},
    );
    defer allocator.free(uri);

    const release = try fetch(
        allocator,
        &client,
        uri,
        Release
    );
    defer release.deinit();

    for (release.value.assets) |asset| {
        const name = asset.name;
        if (name.len >= 8 and std.mem.eql(u8, name[0..8], "Metadata")) {
            if (std.mem.eql(u8, latest.name, config.current) and std.mem.eql(u8, asset.digest, config.digest)) {
                print("🎉 Metadata is up to date\n", .{});
                return;
            }
            print("[Release] {s}\n", .{ release.value.name });

            try download(&client, asset.browser_download_url, "Metadata.zip");
            config.current = latest.name;
            config.digest = asset.digest;
            try config.write("meta.zig.zon");
            print("  \x1b[36m⤓\x1b[39m Downloaded winrt-zig {s} to Metadata.zip\n", .{asset.name});

            try unzip("Metadata.zip", .{ .out = "metadata", .clean = true });
            print("  \x1b[33m↦\x1b[39m Unziped Metadata.zip to metadata/\n", .{});

            try std.fs.cwd().deleteTree("Metadata.zip");
            print("  \x1b[31m⌫\x1b[39m Deleted Metadata.zip\n", .{});

            print("🎉 Metadata updated\n", .{});

            break;
        }
    } else {
        print("\x1b[31m🗙\x1b[39m No release archive found for {s}\n", .{latest.name});
        return error.NoArchive;
    }
}

fn print(comptime fmt: []const u8, args: anytype) void {
    if (@import("builtin").os.tag == .windows) {
        const out = std.fmt.allocPrint(std.heap.smp_allocator, fmt, args) catch unreachable;
        defer std.heap.smp_allocator.free(out);

        const utf16Out = std.unicode.utf8ToUtf16LeAlloc(std.heap.smp_allocator, out) catch unreachable;
        defer std.heap.smp_allocator.free(utf16Out);

        const h = std.os.windows.GetStdHandle(std.os.windows.STD_OUTPUT_HANDLE) catch unreachable;

        var written: u32 = 0;
        _ = std.os.windows.kernel32.WriteConsoleW(h, utf16Out.ptr, @intCast(utf16Out.len), &written, null);
    } else {
        var buffer: [1024]u8 = undefined;
        var stdout = std.fs.File.stdout();
        var stdout_writer = stdout.writer(&buffer);
        stdout_writer.interface.print(fmt, args) catch unreachable;
        stdout_writer.interface.flush() catch unreachable;
    }
}

fn generateHresultEnum(allocator: std.mem.Allocator) !void {
    // TODO: Convert the parsing of the winerror.h file to zig
    print("Generating HRESULT enum type\n", .{});
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

        try writer.interface.writeAll("pub const HResult = error {\n");
        try writer.interface.writeAll("    NOERROR,\n");
        for (result.value) |hresult| {
            try writer.interface.print("    {s},\n", .{ hresult[0] });
        }
        try writer.interface.writeAll("};\n");

        try writer.interface.writeAll("pub fn hresultToError(hresult: i32) struct { err: HResult } {\n");
        try writer.interface.writeAll("    return .{ .err = switch(@as(u32, @bitCast(hresult))) {\n");
        for (result.value) |hresult| {
            try writer.interface.print("        {s} => HResult.{s},\n", .{ hresult[1], hresult[0] });
        }
        try writer.interface.writeAll("        else => error.NOERROR\n");
        try writer.interface.writeAll("    }};\n");
        try writer.interface.writeAll("}");

        try writer.interface.flush();
    }
}

pub fn main() !void {
    var gpa = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer gpa.deinit();
    const allocator = gpa.allocator();

    try downloadMetadata(allocator);
    try generateHresultEnum(allocator);

    try copyTemplate("template", "windows");

    const metaDir = try std.fs.cwd().openDir("metadata", .{ .iterate = true });

    // TODO: Iterate all namespaces and collect types and their kind within namespace scopes
    var definitions = metadata.Definitions.init(allocator);
    defer definitions.deinit();
    // Populate basic type information for lookup while generating the structs
    {
        var it = metaDir.iterate();
        while (try it.next()) |ns| {
            if (ns.kind == .file) {
                const namespace = try metadata.parseSignature(definitions.allocator(), &metaDir, ns.name);
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

    var ns_iter = metaDir.iterate();
    while (try ns_iter.next()) |entry| {
        if (entry.kind != .file) continue;

        const namespace = try metadata.parse(allocator, &metaDir, entry.name);
        defer namespace.deinit();

        var ctx = metadata.Context {
            .requirements = metadata.Requirements.init(allocator),
            .definitions = &definitions,
        };
        defer ctx.requirements.deinit();

        var ns_file = try openNamespaceFile(allocator, namespace.namespace, "windows/src");
        defer ns_file.close();

        var buffer: [1024]u8 = undefined;
        var file_writer = ns_file.writer(&buffer);
        try file_writer.seekTo(try ns_file.getEndPos());
        var writer = &file_writer.interface;

        // var buffer: [1024]u8 = undefined;
        // var stdout = std.fs.File.stdout();
        // var stdout_writer = stdout.writer(&buffer);
        // var writer = &stdout_writer.interface;

        for (namespace.types) |*ty| {
            switch (ty.Kind) {
                .Interface => try metadata.interface.serialize(allocator, &ctx, ty, writer),
                .Class => try metadata.class.serialize(allocator, &ctx, ty, writer),
                .Enum => try metadata.enumeration.serialize(ty, writer),
                .Struct => try metadata.structure.serialize(allocator, &ctx, ty, writer),
                .Delegate => try metadata.delegate.serialize(allocator, &ctx, ty, writer),
                else => std.debug.print("\x1b[31m{f}\x1b[39m\n", .{ ty })
            }
        }

        var it = ctx.requirements.items.iterator();
        while (it.next()) |requirement| {
            if (std.mem.eql(u8, requirement.value_ptr.*, namespace.namespace)) {
                continue;
            }

            const relative = try relativeNamespace(allocator, namespace.namespace, requirement.value_ptr.*);
            defer allocator.free(relative);
            try writer.print("const {s} = @import(\"{s}\").{s};\n", .{ requirement.key_ptr.*, relative, requirement.key_ptr.* });
        }

        writer.flush() catch unreachable;
        std.debug.print("{s}\n", .{ namespace.namespace });
        try namespaces.append(allocator, try allocator.dupe(u8, namespace.namespace));
    }

    try addNamespaceImports(allocator, namespaces.items, "windows/src");

    // TODO: Iterate the namespace json files
    //     TODO: Generate file structure that represents namespace
    //          + This will include generating the file with a template if
    //            one exists
    //     TODO: Iterate typedefs in namespace
    //     TODO: Generate structs based on typedef
    //     TODO: Reference <core> api for reusabel helpers
    //     TODO: Collect needed imports and append to bottom
}

fn contains(list: []const []const u8, target: []const u8) bool {
    for (list) |s| {
        if (std.mem.eql(u8, s, target)) {
            return true;
        }
    }
    return false;
}

fn addNamespaceImports(allocator: std.mem.Allocator, namespaces: []const []const u8, base: []const u8) !void {
    for (namespaces) |namespace| {
        const rest = namespace[8..];

        // Windows.UI.ViewManagement
        // windows/src/UI.zig -> pub const ViewManagement = @import("UI/ViewManagement");
        //
        // Windows     | ...       | UI      | ViewManagement
        // windows/src | more-path | file+dir | imported file

        var idx = std.mem.lastIndexOf(u8, rest, ".");

        var dir: []const u8 = undefined;
        defer allocator.free(dir);

        var file: []const u8 = undefined;
        var target: []const u8 = undefined;

        if (idx) |i| {
            target = rest[i+1..];
            idx = std.mem.lastIndexOf(u8, rest[0..i], ".");
            if (idx) |k| {
                file = rest[k+1..i];
                dir = try std.fmt.allocPrint(allocator, "{s}/{s}", .{ base, rest[0..k] });
            } else {
                file = rest[0..i];
                dir = try allocator.dupe(u8, base);
            }
        } else {
            target = rest;
            file = "root";
            dir = try allocator.dupe(u8, base);
        }

        var location = blk: {
            const path = try replaceAll(allocator, dir, ".", "/");
            defer allocator.free(path);
            break :blk std.fs.cwd().openDir(path, .{}) catch |err| {
                std.debug.print("[Error] Failed to open path: {s}\n", .{ path });
                std.debug.print("  [-] FROM: {s}\n", .{ namespace });
                return err;
            };
        };
        defer location.close();

        var ns_file = blk: {
            const target_file = try std.fmt.allocPrint(allocator, "{s}.zig", .{ file });
            defer allocator.free(target_file);
            break :blk try location.createFile(target_file, .{ .truncate = false });
        };
        defer ns_file.close();

        var buffer: [1024]u8 = undefined;
        var writer = ns_file.writer(&buffer);
        try writer.seekTo(try ns_file.getEndPos());

        if (std.mem.eql(u8, file, "root")) {
            try writer.interface.print("pub const {s} = @import(\"./{s}.zig\");\n", .{
                target,
                target
            });
        } else {
            try writer.interface.print("pub const {s} = @import(\"./{s}/{s}.zig\");\n", .{
                target,
                file,
                target
            });
        }

        try writer.interface.flush();
    }
}

fn openNamespaceFile(allocator: std.mem.Allocator, namespace: []const u8, base: []const u8) !std.fs.File {
    var current = std.fs.cwd();

    var parts = std.mem.splitSequence(u8, namespace, ".");

    while (parts.next()) |part| {
        if (parts.peek() == null) {
            const name = try std.fmt.allocPrint(allocator, "{s}.zig", .{ part });
            defer allocator.free(name);

            return current.openFile(name, .{ .mode = .write_only }) catch |err| switch(err) {
                error.FileNotFound => return try current.createFile(name, .{ .truncate = false }),
                else => return err,
            };
        } else if (std.mem.eql(u8, part, "Windows")) {
            current = try current.openDir(base, .{});
        } else {
            try current.makePath(part);
            current = try current.openDir(part, .{});
        }
    }

    return error.FailedToGenerateNamespace;
}

// UI.ViewManagement
// UI
//
// Foundation
// <root>
fn relativeNamespace(allocator: std.mem.Allocator, from: []const u8, to: []const u8) ![]const u8 {
    var back: usize = 0;
    var previous: []const u8 = "root";

    if (std.mem.eql(u8, to, "Windows")) {
        var f_it = std.mem.splitSequence(u8, from[8..], ".");
        while (f_it.next()) |_| back += 1;
        back -|= 1;

        var buffer: std.io.Writer.Allocating = .init(allocator);
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
            try writer.print("/{s}", .{ previous });
        }
    } else {
        while (t_it.next()) |p| {
            try writer.print("/{s}", .{ p });
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
            else => {}
        }
    }
}

fn copyTemplate(source: []const u8, dest: []const u8) !void {
    std.fs.cwd().deleteTree(dest) catch {};
    try std.fs.cwd().makePath(dest);

    var base = try std.fs.cwd().openDir(source, .{ .iterate = true });
    defer base.close();
    var current = try std.fs.cwd().openDir(dest, .{});
    defer current.close();

    try copyDirRecursive(base, current);
}
