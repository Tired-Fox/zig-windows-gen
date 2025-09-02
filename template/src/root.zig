// ----- This code is written and maintained by hand -----
pub const IUnknown = extern struct {
    vtable: *const VTable,

    pub fn QueryInterface(self: *@This(), iid: *const Guid, interface: *?*anyopaque) HRESULT {
        return self.vtable.QueryInterface(@ptrCast(self), iid, interface);
    }

    pub fn AddRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn Release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub const GUID: []const u8 = "00000000-0000-0000-c000-000000000046";
    pub const IID: Guid = Guid.initString(GUID);

    pub const VTable = extern struct {
        QueryInterface: *const fn (self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn (self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn (
            self: *anyopaque,
        ) callconv(.winapi) u32,
    };
};

pub const IAgileObject = extern struct {
    vtable: *const VTable,

    pub const GUID: []const u8 = "94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90";
    pub const IID: Guid = Guid.initString(GUID);

    pub const VTable = extern struct {
        QueryInterface: *const fn (self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn (self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn (
            self: *anyopaque,
        ) callconv(.winapi) u32,
    };
};

pub const HSTRING = win32.system.win_rt.HSTRING;
pub const TrustLevel = win32.system.win_rt.TrustLevel;
pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;

pub const core = @import("core.zig");
pub const win32 = @import("win32");

// ----- This code is automatically generated -----
