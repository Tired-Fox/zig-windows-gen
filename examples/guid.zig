const std = @import("std");
const winrt = @import("winrt");

const IID_IInspectable: u128 = 0xaf86e2e0_b12d_4c6a_9c5a_d7aa65101e90;
pub fn main() void {
    const bytes: [16]u8 = @bitCast(IID_IInspectable);

    std.debug.print("{{ ", .{ });
    for (0..bytes.len) |b| {
        std.debug.print("{d}, ", .{ bytes[15-b] });
    }
    std.debug.print("}}\n", .{ });

    std.debug.print("{any}\n", .{ bytes });
    std.debug.print("{any}\n", .{ winrt.IInspectable.IID.Bytes });
    std.debug.print("{any}\n", .{ winrt.IInspectable.IID.Ints });
    std.debug.print("{s}\n", .{ winrt.core.guidToString(&winrt.IInspectable.IID) });
}
