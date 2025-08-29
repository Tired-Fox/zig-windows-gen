pub const DeviceServicingDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceServicingDetails = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceServicingDetails = @ptrCast(self);
        return try this.getArguments();
    }
    pub fn getExpectedDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IDeviceServicingDetails = @ptrCast(self);
        return try this.getExpectedDuration();
    }
    pub const NAME: []const u8 = "Windows.Devices.Background.DeviceServicingDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceServicingDetails.GUID;
    pub const IID: Guid = IDeviceServicingDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceServicingDetails.SIGNATURE);
};
pub const DeviceUseDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceUseDetails = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceUseDetails = @ptrCast(self);
        return try this.getArguments();
    }
    pub const NAME: []const u8 = "Windows.Devices.Background.DeviceUseDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceUseDetails.GUID;
    pub const IID: Guid = IDeviceUseDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceUseDetails.SIGNATURE);
};
pub const IDeviceServicingDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpectedDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ExpectedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Background.IDeviceServicingDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4aabee29-2344-4ac4-8527-4a8ef6905645";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExpectedDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceUseDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Background.IDeviceUseDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d565141-557e-4154-b994-e4f7a11fb323";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HSTRING = @import("../root.zig").HSTRING;
