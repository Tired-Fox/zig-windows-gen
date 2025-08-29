const std = @import("std");

pub const metadata = @import("metadata.zig");

pub fn Json(T: type) type {
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

/// Helper that replaces all of a pattern with the replacement allocating
/// and returning the result of the replacement.
///
/// The caller is responsible for freeing returned allocated memory
pub fn replaceAll(allocator: std.mem.Allocator, input_str: []const u8, pattern: []const u8, replacement: []const u8) ![]u8 {
    const output_size = std.mem.replacementSize(u8, input_str, pattern, replacement);
    const output_buffer = try allocator.alloc(u8, output_size);
    _ = std.mem.replace(u8, input_str, pattern, replacement, output_buffer);
    return output_buffer;
}
