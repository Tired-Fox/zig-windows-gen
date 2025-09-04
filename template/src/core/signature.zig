// ----- This code is written and maintained by hand -----

const std = @import("std");
const windows = @import("../root.zig");

const Guid = windows.Guid;

pub const Signature = struct {
    pub fn get(T: type) []const u8 {
        if (T == Guid) return "guid";
        if (T == ?windows.HSTRING) return "string";
        if (T == windows.Foundation.IInspectable) return "cinterface(IInspectable)";
        if (T == bool) return "b1";
        if (@hasDecl(T, "SIGNATURE")) return @field(T, "SIGNATURE");

        switch (@typeInfo(T)) {
            .int => |info| {
                const bytes = @min(@ceil(@as(f32, @floatFromInt(info.bits)) / 8.0), 8.0);
                if (info.signedness == .unsigned)
                    return std.fmt.comptimePrint("u{d}", .{@as(u32, @intFromFloat(bytes))})
                else
                    return std.fmt.comptimePrint("i{d}", .{@as(u32, @intFromFloat(bytes))});
            },
            .float => return if (T == f64) "f8" else "f4",
            else => @compileError("unsupported type '" ++ @typeName(T) ++ "' does not have a WinRT signature"),
        }
    }

    pub fn class(comptime runtime_name: []const u8, comptime default_interface_signature: []const u8) []const u8 {
        return std.fmt.comptimePrint("rc({s};{s})", .{ runtime_name, default_interface_signature });
    }

    pub fn interface(comptime iid: []const u8) []const u8 {
        return std.fmt.comptimePrint("{{{s}}}", .{iid});
    }

    pub fn cinterface(T: type) []const u8 {
        if (@hasDecl(T, "SIGNATURE")) {
            return @field(T, "SIGNATURE");
        } else {
            const idx = std.mem.lastIndexOf(u8, @typeName(T), ".");
            return std.fmt.comptimePrint("cinterface({s})", .{if (idx) |i| @typeName(T)[i +| 1..] else @typeName(T)});
        }
    }

    pub fn pinterface(comptime iid: []const u8, comptime signatures: []const []const u8) []const u8 {
        var sigs: []const u8 = signatures[0];
        inline for (signatures[1..]) |sig| {
            sigs = sigs ++ ";" ++ sig;
        }
        return std.fmt.comptimePrint("pinterface({{{s}}};{s})", .{ iid, sigs });
    }

    /// Compute the GUID for a WinRT parameterized type from its canonical signature
    /// using the WinRT "pinterface" namespace and RFC-4122 UUIDv5 (SHA-1).
    ///
    /// # Example
    /// + `pinterface({<PIID-of-open-generic>};<arg1-signature>;<arg2-signature>;...)`
    ///   + `rc(Namespace.Type;{<IID-of-default-interface>})` is the signature for a runtime class type argument
    ///   + `cinterface(IInspectable)` is the signature token for IInspectable
    pub fn guid(comptime signature: []const u8) Guid {
        @setEvalBranchQuota(200_000);
        // WinRT "pinterface" namespace UUID in big-endian (RFC-4122 wire order):
        // 11F47AD5-7B73-42C0-ABAE-878B1E16ADEE
        const ns_be: [16]u8 = .{
            0x11, 0xF4, 0x7A, 0xD5, 0x7B, 0x73, 0x42, 0xC0,
            0xAB, 0xAE, 0x87, 0x8B, 0x1E, 0x16, 0xAD, 0xEE,
        };

        var hasher = std.crypto.hash.Sha1.init(.{});
        hasher.update(&ns_be);
        hasher.update(signature);

        var digest: [20]u8 = undefined;
        hasher.final(&digest);

        var bytes = digest[0..16].*; // first 16 bytes
        // RFC-4122 fixes:
        bytes[6] = (bytes[6] & 0x0F) | 0x50; // version = 5
        bytes[8] = (bytes[8] & 0x3F) | 0x80; // variant = RFC-4122

        return Guid{ .Bytes = bytes };
    }

    pub fn guid_string(comptime iid: Guid) []const u8 {
        return &@import("../core.zig").guidToString(&iid);
    }
};
