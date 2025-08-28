const std = @import("std");
const generator = @import("generator");
const Json = generator.Json;
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
    print("Generating HRESULT enum type", .{});
    if (true) {
        const data = try std.fs.cwd().readFileAlloc(allocator, "hresult.json", std.math.maxInt(usize));
        defer allocator.free(data);

        const result = try std.json.parseFromSlice([]const std.meta.Tuple(&.{ []const u8, []const u8 }), allocator, data, .{});
        defer result.deinit();

        var file = try std.fs.cwd().createFile("hresult.zig", .{ .truncate = true });
        defer file.close();

        var buffer: [4 * 1024]u8 = undefined;
        var writer = file.writer(&buffer);

        try writer.interface.writeAll("pub error Hresult {\n");
        for (result.value) |hresult| {
            try writer.interface.print("    {s},\n", .{ hresult[0] });
        }
        try writer.interface.writeAll("};\n");

        try writer.interface.writeAll("pub fn hresultToError(hresult: i32) struct { err: HResult } {\n");
        try writer.interface.writeAll("    return .{ .err = switch(hresult) {\n");
        for (result.value) |hresult| {
            try writer.interface.print("        {s} => Hresult.{s},\n", .{ hresult[1], hresult[0] });
        }
        try writer.interface.writeAll("        else => error.Unknown\n");
        try writer.interface.writeAll("    }};\n");
        try writer.interface.writeAll("};");

        try writer.interface.flush();
    }
}

pub fn main() !void {
    var gpa = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer gpa.deinit();
    const allocator = gpa.allocator();

    try downloadMetadata(allocator);
    try generateHresultEnum(allocator);

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

    const namespace = try metadata.parse(allocator, &metaDir, "Windows.UI.ViewManagement.json");
    defer namespace.deinit();

    std.debug.print("{s}:\n", .{ namespace.namespace });

    var ctx = metadata.Context {
        .requirements = metadata.Requirements.init(allocator),
        .definitions = &definitions,
    };
    defer ctx.requirements.deinit();

    for (namespace.types) |*ty| {
        if (std.mem.eql(u8, ty.Name, "UISettings")) {
            var buffer: [1024]u8 = undefined;
            var stdout = std.fs.File.stdout();
            var stdout_writer = stdout.writer(&buffer);
            switch (ty.Kind) {
                .Interface => try metadata.interface.serialize(allocator, &ctx, ty, &stdout_writer.interface),
                .Class => try metadata.class.serialize(allocator, &ctx, ty, &stdout_writer.interface),
                else => try stdout_writer.interface.print("{f}\n", .{ ty })
            }
            stdout_writer.interface.flush() catch unreachable;
            break;
        }
    }
    std.debug.print("  Types: {d}\n", .{ namespace.types.len });

    var it = ctx.requirements.items.iterator();
    while (it.next()) |requirement| {
        if (std.mem.eql(u8, requirement.value_ptr.*, namespace.namespace)) {
            continue;
        }

        const relative = try relativeNamespace(allocator, namespace.namespace, requirement.value_ptr.*);
        defer allocator.free(relative);
        std.debug.print("const {s} = @import(\"{s}\").{s}\n", .{ requirement.key_ptr.*, relative, requirement.key_ptr.* });
    }

    // TODO: Iterate the namespace json files
    //     TODO: Generate file structure that represents namespace
    //     TODO: Iterate typedefs in namespace
    //     TODO: Generate structs based on typedef
    //     TODO: Reference <core> api for reusabel helpers
    //     TODO: Collect needed imports and append to bottom
}

// Windows.UI.ViewManagement
// Windows
fn relativeNamespace(allocator: std.mem.Allocator, from: []const u8, to: []const u8) ![]const u8 {
    var back: usize = 0;

    var f_it = std.mem.splitSequence(u8, from, ".");
    var t_it = std.mem.splitSequence(u8, to, ".");

    var previous: []const u8 = "root";

    while (true) {
        if (f_it.peek() == null) break;
        if (t_it.peek() == null) {
            while (f_it.next()) |_| back += 1;
            back -|= 1;
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
