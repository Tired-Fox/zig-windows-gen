const std = @import("std");

const ModuleMap = std.meta.Tuple(&.{ []const u8, *std.Build.Module });

const Example = struct {
    name: []const u8,
    path: []const u8,
};

const examples = [_]Example {
    .{ .name = "uisettings", .path = "examples/uisettings.zig",  },
    .{ .name = "reactive_theme", .path = "examples/reactive_theme.zig",  },
    // .{ .name = "notification", .path = "examples/notification.zig",  },
};

pub const MODULE_NAME = "windows";

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const zigwin32 = b.dependency("zigwin32", .{});

    const module = b.addModule(MODULE_NAME, .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });

    module.addImport("win32", zigwin32.module("win32"));

    inline for (examples) |example| {
        addExample(b, target, optimize, example, &[_]ModuleMap{
            .{ MODULE_NAME, module },
        });
    }
}

pub fn addExample(
    b: *std.Build,
    target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    comptime example: Example,
    modules: []const ModuleMap,
) void {
    const exe = b.addExecutable(.{
        .name = example.name,
        .root_module = b.createModule(.{
            .root_source_file = b.path(example.path),
            .target = target,
            .optimize = optimize,
        })
    });

    for (modules) |module| {
        exe.root_module.addImport(module[0], module[1]);
    }

    const ecra = b.addRunArtifact(exe);
    ecra.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        ecra.addArgs(args);
    }

    const estep = b.step("example-" ++ example.name, "Run example-" ++ example.name);
    estep.dependOn(&ecra.step);
}
