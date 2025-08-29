pub const core = @import("core.zig");
pub const win32 = @import("win32");

pub const HSTRING = win32.system.win_rt.HSTRING;
pub const TrustLevel = win32.system.win_rt.TrustLevel;
pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;

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
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
    };
};

pub const IAgileObject = extern struct {
    vtable: *const VTable,

    pub const GUID: []const u8 = "94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90";
    pub const IID: Guid = Guid.initString(GUID);

    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
    };
};

pub fn WindowsCreateString(string: [:0]const u16) !?HSTRING {
    var result: ?HSTRING = undefined;
    if (win32.system.win_rt.WindowsCreateString(string.ptr, @intCast(string.len), &result) != 0) {
        return error.E_OUTOFMEMORY;
    }
    return result;
}

pub fn WindowsDeleteString(string: ?HSTRING) void {
    _ = win32.system.win_rt.WindowsDeleteString(string);
}

pub fn WindowsGetString(string: ?HSTRING) ?[]const u16 {
    var len: u32 = 0;
    const buffer = win32.system.win_rt.WindowsGetStringRawBuffer(string, &len);
    if (buffer) |buf| {
        return buf[0..@as(usize, @intCast(len))];
    }
    return null;
}
pub const ApplicationModel = @import("./ApplicationModel.zig");
pub const Devices = @import("./Devices.zig");
pub const Foundation = @import("./Foundation.zig");
pub const Globalization = @import("./Globalization.zig");
pub const Graphics = @import("./Graphics.zig");
pub const Management = @import("./Management.zig");
pub const Media = @import("./Media.zig");
pub const Networking = @import("./Networking.zig");
pub const Perception = @import("./Perception.zig");
pub const Storage = @import("./Storage.zig");
pub const System = @import("./System.zig");
pub const UI = @import("./UI.zig");
pub const Web = @import("./Web.zig");
