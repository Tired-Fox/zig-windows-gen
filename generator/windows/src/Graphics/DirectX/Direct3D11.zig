pub const Direct3DBindings = enum(i32) {
    VertexBuffer = 1,
    IndexBuffer = 2,
    ConstantBuffer = 4,
    ShaderResource = 8,
    StreamOutput = 16,
    RenderTarget = 32,
    DepthStencil = 64,
    UnorderedAccess = 128,
    Decoder = 512,
    VideoEncoder = 1024,
};
pub const Direct3DMultisampleDescription = extern struct {
    Count: i32,
    Quality: i32,
};
pub const Direct3DSurfaceDescription = extern struct {
    Width: i32,
    Height: i32,
    Format: DirectXPixelFormat,
    MultisampleDescription: Direct3DMultisampleDescription,
};
pub const Direct3DUsage = enum(i32) {
    Default = 0,
    Immutable = 1,
    Dynamic = 2,
    Staging = 3,
};
pub const IDirect3DDevice = extern struct {
    vtable: *const VTable,
    pub fn Trim(self: *@This()) core.HResult!void {
        const _c = self.vtable.Trim(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.DirectX.Direct3D11.IDirect3DDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a37624ab-8d5f-4650-9d3e-9eae3d9bc670";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Trim: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDirect3DSurface = extern struct {
    vtable: *const VTable,
    pub fn getDescription(self: *@This()) core.HResult!Direct3DSurfaceDescription {
        var _r: Direct3DSurfaceDescription = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bf4a146-13c1-4694-bee3-7abf15eaf586";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *Direct3DSurfaceDescription) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../root.zig").Guid;
const core = @import("../../root.zig").core;
const HRESULT = @import("../../root.zig").HRESULT;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const DirectXPixelFormat = @import("../DirectX.zig").DirectXPixelFormat;
const HSTRING = @import("../../root.zig").HSTRING;
