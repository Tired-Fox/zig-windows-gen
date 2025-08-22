const std = @import("std");

pub const IGenericFactory = @import("core/generic_factory.zig").IGenericFactory;
pub const FactoryCache = @import("core/factory_cache.zig").FactoryCache;
pub const FactoryError = @import("core/factory_cache.zig").FactoryError;
pub const Signature = @import("core/signature.zig").Signature;

const Guid = @import("win32").zig.Guid;

/// helper to format a GUID as dashed lowercase hex
///
/// Buffer must be 36+ bytes
pub fn guid_string(g: *const Guid, buf: []u8) std.fmt.BufPrintError![]u8 {
    const bytes = g.Bytes;
    return try std.fmt.bufPrint(
        buf,
        "{X:0>2}{X:0>2}{X:0>2}{X:0>2}-{X:0>2}{X:0>2}-{X:0>2}{X:0>2}-{X:0>2}{X:0>2}-{X:0>2}{X:0>2}{X:0>2}{X:0>2}{X:0>2}{X:0>2}",
        .{
            bytes[0],  bytes[1],  bytes[2],  bytes[3],
            bytes[4],  bytes[5],  bytes[6],  bytes[7],
            bytes[8],  bytes[9],  bytes[10], bytes[11],
            bytes[12], bytes[13], bytes[14], bytes[15],
        },
    );
}

pub fn Implements(comptime interfaces: anytype, T: type) type {
    const target = @typeInfo(T).@"struct".fields;
    var count: usize = target.len;
    inline for(interfaces) |interface| {
        count +|= @typeInfo(interface).@"struct".fields.len;
    }

    var merged_fields: [count]std.builtin.Type.StructField = undefined;
    var idx: usize = 0;

    inline for(interfaces) |interface| {
        inline for (@typeInfo(interface).@"struct".fields) |field| {
            merged_fields[idx] = field;
            idx += 1;
        }
    }

    inline for (target) |field| {
        merged_fields[idx] = field;
        idx += 1;
    }

    return @Type(.{
        .@"struct" = .{
            .layout = .@"extern",
            .fields = merged_fields[0..idx],
            .is_tuple = false,
            .decls = &.{},
        }
    });
}
