// This file currently fetches the latest metadata json files from Tired-Fox/winrt-json releases

const std = @import("std");
const generator = @import("generator");

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
            1,
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

    pub fn write(self: *@This(), path: []const u8) !void {
        var file = try std.fs.cwd().createFile(path, .{ .truncate = true });
        defer file.close();
        try std.zon.stringify.serialize(self, .{}, file.writer());
    }

    pub fn deinit(self: @This(), allocator: std.mem.Allocator) void {
        std.zon.parse.free(allocator, self);
    }
};

fn Json(T: type) type {
    return struct {
        arena: *std.heap.ArenaAllocator,
        data: []const u8,
        value: T,

        pub fn init(slice: []const u8, value: std.json.Parsed(T)) @This() {
            return .{
                .arena = value.arena,
                .value = value.value,
                .data = slice,
            };
        }

        pub fn deinit(self: @This()) void {
            const allocator = self.arena.child_allocator;
            self.arena.deinit();
            allocator.free(self.data);
            allocator.destroy(self.arena);
        }
    };
}

fn fetch(allocator: std.mem.Allocator, client: *std.http.Client, uri: []const u8, R: type) !Json(R) {
    var header_buf: [16 * 1024]u8 = undefined;

    const url = try std.Uri.parse(uri);

    var req = try client.open(.GET, url, .{
        .server_header_buffer = &header_buf,
        .headers = .{
            .content_type = .{
                .override = "application/json"
            }
        }
    });
    defer req.deinit();

    try req.send();
    try req.wait();

    const result_body = try req.reader().readAllAlloc(allocator, std.math.maxInt(usize));

    // This is where its failing:
    const result = try std.json.parseFromSlice(R, allocator, result_body, .{ .ignore_unknown_fields = true });
    return Json(R).init(result_body, result);
}

fn download(client: *std.http.Client, uri: []const u8, out: []const u8) !void {
    var header_buf: [8 * 1024]u8 = undefined;

    const url = try std.Uri.parse(uri);
    var req = try client.open(.GET, url, .{ .server_header_buffer = &header_buf });
    defer req.deinit();

    try req.send();
    try req.wait();

    var file = try std.fs.cwd().createFile(out, .{ .truncate = true });
    defer file.close();

    var buf: [2048]u8 = undefined;
    while (true) {
        const n = try req.read(&buf);
        if (n == 0) break;
        try file.writeAll(buf[0..n]);
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

    const zip_stream = zip_file.seekableStream();
    try std.zip.extract(outdir, zip_stream, .{});
}

fn downloadMetadata(allocator: std.mem.Allocator) !void {
    var config = try Config.parse(allocator, "meta.zig.zon");
    defer config.deinit(allocator);

    var client = std.http.Client{ .allocator = allocator };
    defer client.deinit();

    const tags = try fetch(allocator, &client, "https://api.github.com/repos/Tired-Fox/winrt-json/tags", []const Tag);
    defer tags.deinit();

    if (tags.value.len == 0) {
        std.debug.print("\x1b[31m🗙\x1b[39m No winrt-json release found", .{});
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
                std.debug.print("🎉 Metadata is up to date\n", .{});
                return;
            }
            std.debug.print("[Release] {s}\n", .{ release.value.name });

            try download(&client, asset.browser_download_url, "Metadata.zip");
            config.current = latest.name;
            config.digest = asset.digest;
            try config.write("meta.zig.zon");
            std.debug.print("  \x1b[36m⤓\x1b[39m Downloaded winrt-zig {s} to Metadata.zip\n", .{asset.name});

            try unzip("Metadata.zip", .{ .out = "metadata", .clean = true });
            std.debug.print("  \x1b[33m↦\x1b[39m Unziped Metadata.zip to metadata/\n", .{});

            try std.fs.cwd().deleteTree("Metadata.zip");
            std.debug.print("  \x1b[31m⌦\x1b[39m Deleted Metadata.zip\n", .{});

            std.debug.print("🎉 Metadata updated\n", .{});

            break;
        }
    } else {
        std.debug.print("\x1b[31m🗙\x1b[39m No release archive found for {s}\n", .{latest.name});
        return error.NoArchive;
    }
}

pub fn main() !void {
    var gpa = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer gpa.deinit();
    const allocator = gpa.allocator();

    try downloadMetadata(allocator);
    // TODO: Iterate the namespace json files
    //     TODO: Generate file structure that represents namespace
    //     TODO: Iterate typedefs in namespace
    //     TODO: Generate structs based on typedef
    //     TODO: Reference <core> api for reusabel helpers
    //     TODO: Collect needed imports and append to bottom
}
