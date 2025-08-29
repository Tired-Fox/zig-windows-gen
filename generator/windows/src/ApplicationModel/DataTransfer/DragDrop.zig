pub const DragDropModifiers = enum(i32) {
    None = 0,
    Shift = 1,
    Control = 2,
    Alt = 4,
    LeftButton = 8,
    MiddleButton = 16,
    RightButton = 32,
};
pub const Core = @import("./DragDrop/Core.zig");
