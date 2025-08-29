pub const DisplayAdapterId = extern struct {
    LowPart: u32,
    HighPart: i32,
};
pub const DisplayId = extern struct {
    Value: u64,
};
pub const IGeometrySource2D = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Graphics.IGeometrySource2D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "caff7902-670c-4181-a624-da977203b845";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const PointInt32 = extern struct {
    X: i32,
    Y: i32,
};
pub const RectInt32 = extern struct {
    X: i32,
    Y: i32,
    Width: i32,
    Height: i32,
};
pub const SizeInt32 = extern struct {
    Width: i32,
    Height: i32,
};
const IInspectable = @import("./Foundation.zig").IInspectable;
const TrustLevel = @import("./root.zig").TrustLevel;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const HSTRING = @import("./root.zig").HSTRING;
pub const Capture = @import("./Graphics/Capture.zig");
pub const DirectX = @import("./Graphics/DirectX.zig");
pub const Display = @import("./Graphics/Display.zig");
pub const Effects = @import("./Graphics/Effects.zig");
pub const Holographic = @import("./Graphics/Holographic.zig");
pub const Imaging = @import("./Graphics/Imaging.zig");
pub const Printing = @import("./Graphics/Printing.zig");
pub const Printing3D = @import("./Graphics/Printing3D.zig");
