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
