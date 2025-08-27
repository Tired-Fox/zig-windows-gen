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
};

pub fn main() !void {
    var gpa = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer gpa.deinit();
    const allocator = gpa.allocator();

    var config = blk: {
        const config_slice = std.fs.cwd().readFileAllocOptions(
            allocator,
            "config.zon",
            std.math.maxInt(usize),
            null,
            1,
            0
        ) catch |err| switch (err) {
            error.FileNotFound => break :blk Config { },
            else => return err,
        };
        defer allocator.free(config_slice);

        if (config_slice.len == 0) {
            break :blk Config { };
        }

        break :blk try std.zon.parse.fromSlice(Config, allocator, config_slice[0..], null, .{
            .ignore_unknown_fields = true,
            .free_on_error = true,
        });
    };

    var client = std.http.Client{ .allocator = allocator };
    defer client.deinit();

    var header_buf: [16 * 1024]u8 = undefined;

    var url = try std.Uri.parse("https://api.github.com/repos/Tired-Fox/winrt-json/tags");

    var req = try client.open(.GET, url, .{ .server_header_buffer = &header_buf });
    defer req.deinit();

    try req.send();
    try req.wait();

    const tag_rb = try req.reader().readAllAlloc(allocator, std.math.maxInt(usize));
    defer allocator.free(tag_rb);

    // This is where its failing:
    const tags = try std.json.parseFromSlice([]const Tag, allocator, tag_rb, .{ .ignore_unknown_fields = true });
    defer tags.deinit();

    if (tags.value.len == 0) {
        std.debug.print("\x1b[31m🗙\x1b[39m No winrt-json release found", .{});
        std.process.exit(1);
    }

    const latest = tags.value[0];

    const uri = try std.fmt.allocPrint(
        allocator,
        "https://api.github.com/repos/Tired-Fox/winrt-json/releases/tags/{s}",
        .{latest.name},
    );
    defer allocator.free(uri);

    url = try std.Uri.parse(uri);
    req.deinit();
    req = try client.open(.GET, url, .{ .server_header_buffer = &header_buf });

    try req.send();
    try req.wait();

    const release_rb = try req.reader().readAllAlloc(allocator, std.math.maxInt(usize));
    defer allocator.free(release_rb);

    const release = try std.json.parseFromSlice(Release, allocator, release_rb, .{ .ignore_unknown_fields = true });
    defer release.deinit();

    for (release.value.assets) |asset| {
        const name = asset.name;
        if (name.len >= 8 and std.mem.eql(u8, name[0..8], "Metadata")) {
            if (std.mem.eql(u8, latest.name, config.current) and std.mem.eql(u8, asset.digest, config.digest)) {
                std.debug.print("🎉 Metadata is up to date\n", .{});
                return;
            }
            std.debug.print("[Release] {s}\n", .{ release.value.name });

            {
                url = try std.Uri.parse(asset.browser_download_url);
                req.deinit();
                req = try client.open(.GET, url, .{ .server_header_buffer = &header_buf });

                try req.send();
                try req.wait();

                {
                    var file = try std.fs.cwd().createFile("Metadata.zip", .{ .truncate = true });
                    defer file.close();

                    var buf: [4096]u8 = undefined;
                    while (true) {
                        const n = try req.read(&buf);
                        if (n == 0) break;
                        try file.writeAll(buf[0..n]);
                    }
                }

                {
                    config.current = latest.name;
                    config.digest = asset.digest;
                    var file = try std.fs.cwd().createFile("config.zon", .{ .truncate = true });
                    defer file.close();
                    try std.zon.stringify.serialize(config, .{}, file.writer());
                }

                std.debug.print("  \x1b[36m⤓\x1b[39m Downloaded winrt-zig {s} to Metadata.zip\n", .{asset.name});
            }

            {
                std.fs.cwd().deleteTree("metadata") catch {};
                try std.fs.cwd().makePath("metadata");

                const dir = try std.fs.cwd().openDir("metadata", .{ .iterate = true });

                const zip_path: []const u8 = "Metadata.zip"; // Replace with your ZIP file path
                const zip_file = try std.fs.cwd().openFile(zip_path, .{});
                defer zip_file.close();

                const zip_stream = zip_file.seekableStream();
                try std.zip.extract(dir, zip_stream, .{});
                std.debug.print("  \x1b[33m↦\x1b[39m Unziped Metadata.zip to metadata/\n", .{});
            }

            {
                try std.fs.cwd().deleteTree("Metadata.zip");
                std.debug.print("  \x1b[31m⌦\x1b[39m Deleted Metadata.zip\n", .{});
            }

            std.debug.print("🎉 Metadata updated\n", .{});

            break;
        }
    } else {
        std.debug.print("\x1b[31m🗙\x1b[39m No release archive found for {s}\n", .{latest.name});
        std.process.exit(1);
    }
}
