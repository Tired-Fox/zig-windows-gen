const std = @import("std");
const builtin = @import("builtin");

pub const IActivationFactory = @import("core/generic_factory.zig").IActivationFactory;
pub const FactoryCache = @import("core/factory_cache.zig").FactoryCache;
pub const FactoryError = @import("core/factory_cache.zig").FactoryError;
pub const Signature = @import("core/signature.zig").Signature;
pub const generic = @import("core/generic.zig").generic;

const Guid = @import("win32").zig.Guid;

const HEX = "0123456789abcdef";

/// Get the string representation of the guid
pub fn guidToString(g: *const Guid) [36]u8 {
    var buffer: [36]u8 = undefined;
    const bytes = g.Bytes;

    if (builtin.target.cpu.arch.endian() == .big) {
        buffer[0] = HEX[(bytes[3] >> 4) & 0x0F];
        buffer[1] = HEX[bytes[3] & 0x0F];
        buffer[2] = HEX[(bytes[2] >> 4) & 0x0F];
        buffer[3] = HEX[bytes[2] & 0x0F];
        buffer[4] = HEX[(bytes[1] >> 4) & 0x0F];
        buffer[5] = HEX[bytes[1] & 0x0F];
        buffer[6] = HEX[(bytes[0] >> 4) & 0x0F];
        buffer[7] = HEX[bytes[0] & 0x0F];

        buffer[8] = '-';

        buffer[9] = HEX[(bytes[5] >> 4) & 0x0F];
        buffer[10] = HEX[bytes[5] & 0x0F];
        buffer[11] = HEX[(bytes[4] >> 4) & 0x0F];
        buffer[12] = HEX[bytes[4] & 0x0F];

        buffer[13] = '-';

        buffer[14] = HEX[(bytes[7] >> 4) & 0x0F];
        buffer[15] = HEX[bytes[7] & 0x0F];
        buffer[16] = HEX[(bytes[6] >> 4) & 0x0F];
        buffer[17] = HEX[bytes[6] & 0x0F];
    } else {
        buffer[0] = HEX[(bytes[0] >> 4) & 0x0F];
        buffer[1] = HEX[bytes[0] & 0x0F];
        buffer[2] = HEX[(bytes[1] >> 4) & 0x0F];
        buffer[3] = HEX[bytes[1] & 0x0F];
        buffer[4] = HEX[(bytes[2] >> 4) & 0x0F];
        buffer[5] = HEX[bytes[2] & 0x0F];
        buffer[6] = HEX[(bytes[3] >> 4) & 0x0F];
        buffer[7] = HEX[bytes[3] & 0x0F];

        buffer[8] = '-';

        buffer[9] = HEX[(bytes[4] >> 4) & 0x0F];
        buffer[10] = HEX[bytes[4] & 0x0F];
        buffer[11] = HEX[(bytes[5] >> 4) & 0x0F];
        buffer[12] = HEX[bytes[5] & 0x0F];

        buffer[13] = '-';

        buffer[14] = HEX[(bytes[6] >> 4) & 0x0F];
        buffer[15] = HEX[bytes[6] & 0x0F];
        buffer[16] = HEX[(bytes[7] >> 4) & 0x0F];
        buffer[17] = HEX[bytes[7] & 0x0F];
    }

    buffer[18] = '-';

    buffer[19] = HEX[(bytes[8] >> 4) & 0x0F];
    buffer[20] = HEX[bytes[8] & 0x0F];
    buffer[21] = HEX[(bytes[9] >> 4) & 0x0F];
    buffer[22] = HEX[bytes[9] & 0x0F];

    buffer[23] = '-';

    buffer[24] = HEX[(bytes[10] >> 4) & 0x0F];
    buffer[25] = HEX[bytes[10] & 0x0F];
    buffer[26] = HEX[(bytes[11] >> 4) & 0x0F];
    buffer[27] = HEX[bytes[11] & 0x0F];
    buffer[28] = HEX[(bytes[12] >> 4) & 0x0F];
    buffer[29] = HEX[bytes[12] & 0x0F];
    buffer[30] = HEX[(bytes[13] >> 4) & 0x0F];
    buffer[31] = HEX[bytes[13] & 0x0F];
    buffer[32] = HEX[(bytes[14] >> 4) & 0x0F];
    buffer[33] = HEX[bytes[14] & 0x0F];
    buffer[34] = HEX[(bytes[15] >> 4) & 0x0F];
    buffer[35] = HEX[bytes[15] & 0x0F];

    return buffer;
}

/// Compare a WinRT provided wired GUID with an internal non wired
/// GUID.
pub fn wiredGuidEql(external: *const Guid, internal: *const Guid) bool {
    // Windows puts the u32, u16, and u16 as big endian on little endian systems
    const eb = external.Bytes;
    const ib = internal.Bytes;
    return (eb[0] == ib[3] and eb[1] == ib[2] and eb[2] == ib[1] and eb[3] == ib[0])
        and (eb[4] == ib[5] and eb[5] == ib[4])
        and (eb[6] == ib[7] and eb[7] == ib[6])
        and std.mem.eql(u8, eb[8..], ib[8..]);
}

/// Prepends the base interfaces vtable to the
/// vtable defined as the second argument.
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

/// Determine if a type should be pass by ref
pub fn passByRef(T: type) bool {
    return @typeInfo(T) == .@"struct" and @hasField(T, "vtable");
}
