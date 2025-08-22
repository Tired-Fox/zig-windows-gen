const win32 = @import("win32");

pub const S_OK: u32 = 0;
pub const CO_E_NOTINITIALIZED: u32 = 0x800401F0;
pub const CO_E_NOT_SUPPORTED: u32 = 0x80004021;
pub const E_ACCESSDENIED: u32 = 0x80070005;
pub const E_NOINTERFACE: u32 = 0x80004002;
pub const E_OUTOFMEMORY: u32 = 0x8007000E;
pub const REGDB_E_CLASSNOTREG: u32 = 0x80040154;

pub const foundation = @import("winrt/foundation.zig");
pub const ui = @import("winrt/ui.zig");
pub const data = @import("winrt/data.zig");
pub const core = @import("winrt/core.zig");

pub const TrustLevel = @import("win32").system.win_rt.TrustLevel;
pub const HSTRING = win32.system.win_rt.HSTRING;

const Implements = core.Implements;
const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;

pub fn WindowsCreateString(string: [:0]const u16) !?HSTRING {
    var result: ?HSTRING = undefined;
    if (win32.system.win_rt.WindowsCreateString(string.ptr, @intCast(string.len), &result) != S_OK) {
        return error.OutOfMemory;
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

pub fn GetRestrictedErrorInfo() ?*win32.system.win_rt.IRestrictedErrorInfo {
    var result: ?*win32.system.win_rt.IRestrictedErrorInfo = undefined;
    if (win32.system.win_rt.GetRestrictedErrorInfo(&result) == S_OK) {
        return result;
    }
    return null;
}

pub const IUnknown = extern union {
    vtable: *const VTable,

    pub usingnamespace Mixins(@This());

    pub const GUID: []const u8 = "00000000-0000-0000-c000-000000000046";
    pub const IID: Guid = Guid.initString(GUID);

    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: **anyopaque) callconv(.C) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.C) u32,
        Release: *const fn(self: *anyopaque,) callconv(.C) u32,
    };

    pub fn Mixins(M: type) type {
        return struct {
            pub fn queryInterface(self: *M, T: type) !*T {
                var result: *anyopaque = undefined;
                if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                    return error.NoInterface;
                }
                return @ptrCast(@alignCast(result));
            }
            pub fn addRef(self: *M) u32 {
                return self.vtable.AddRef(@ptrCast(self));
            }
            pub fn release(self: *M) u32 {
                return self.vtable.Release(@ptrCast(self));
            }
        };
    }
};

pub const IInspectable = extern union {
    vtable: *const VTable,

    pub usingnamespace Mixins(@This());

    pub const GUID: []const u8 = "af86e2e0-b12d-4c6a-9c5a-d7aa65101e90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = "cinterface(IInspectable)";

    pub const VTable = Implements(.{ IUnknown.VTable }, struct {
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(@import("std").os.windows.WINAPI) HRESULT,
    });

    pub fn Mixins(M: type) type {
        return struct {
            pub usingnamespace IUnknown.Mixins(M);

            pub fn getIids(self: *M) ![]const Guid {
                var count: u32 = 0;
                var iids: [*]Guid = undefined;
                if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                    return error.OutOfMemory;
                }
                return iids[0..@as(usize, @intCast(count))];
            }

            pub fn getRuntimeClassName(self: *M) ![]const u16 {
                var name: HSTRING = undefined;
                const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
                if (code == S_OK) {
                    return WindowsGetString(name).?;
                } else if (code == E_OUTOFMEMORY) {
                    return error.OutOfMemory;
                } else {
                    return error.IllegalMethodCall;
                }
            }

            pub fn getTrustLevel(self: *M) TrustLevel {
                var trust: TrustLevel = undefined;
                _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
                return trust;
            }
        };
    }
};
