const std = @import("std");
const win32 = @import("win32");

pub const IGenericFactory = @import("core/generic_factory.zig").IGenericFactory;
pub const FactoryCache = @import("core/factory_cache.zig").FactoryCache;
pub const FactoryError = @import("core/factory_cache.zig").FactoryError;
pub const Signature = @import("core/signature.zig").Signature;
pub const Generic = @import("core/generic.zig").Generic;

const Guid = @import("win32").zig.Guid;

const HEX = "0123456789abcdef";
/// helper to format a GUID as dashed lowercase hex
///
/// Buffer must be 36+ bytes
pub fn guid_string(g: *const Guid) std.fmt.BufPrintError![36]u8 {
    var buffer: [36]u8 = undefined;
    const bytes = g.Bytes;

    var i = 0;
    for (bytes) |byte| {
        buffer[i] = HEX[(byte >> 4) & 0x0F];
        buffer[i+1] = HEX[byte & 0x0F];

        i += 2;
        if (i % 2 == 0 and i < 11) {
            buffer[i+1] = '-';
            i += 1;
        }
    }

    return buffer;
}

pub fn Implements(I: type, T: type) type {
    const target = @typeInfo(T).@"struct".fields;
    const impl = @typeInfo(I).@"struct".fields;

    var merged_fields: [target.len + impl.len]std.builtin.Type.StructField = undefined;
    var idx: usize = 0;

    inline for (impl) |field| {
        merged_fields[idx] = field;
        idx += 1;
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

pub fn isInterface(T: type) bool {
    return @typeInfo(T) == .@"struct" and @hasField(T, "vtable");
}

pub fn HRESULT_CODE(result: win32.foundation.HRESULT) win32.foundation.WIN32_ERROR {
    return @enumFromInt(result & 0xFFFF);
}
