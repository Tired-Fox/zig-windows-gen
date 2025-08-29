pub const IPerceptionTimestamp = extern struct {
    vtable: *const VTable,
    pub fn getTargetTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_TargetTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPredictionAmount(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_PredictionAmount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.IPerceptionTimestamp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87c24804-a22e-4adb-ba26-d78ef639bcf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_PredictionAmount: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionTimestamp2 = extern struct {
    vtable: *const VTable,
    pub fn getSystemRelativeTargetTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeTargetTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.IPerceptionTimestamp2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e354b7ed-2bd1-41b7-9ed0-74a15c354537";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SystemRelativeTargetTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionTimestampHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromHistoricalTargetTime(self: *@This(), targetTime: DateTime) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.FromHistoricalTargetTime(@ptrCast(self), targetTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.IPerceptionTimestampHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47a611d4-a9df-4edc-855d-f4d339d967ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromHistoricalTargetTime: *const fn(self: *anyopaque, targetTime: DateTime, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionTimestampHelperStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromSystemRelativeTargetTime(self: *@This(), targetTime: TimeSpan) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.FromSystemRelativeTargetTime(@ptrCast(self), targetTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.IPerceptionTimestampHelperStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73d1a7fe-3fb9-4571-87d4-3c920a5e86eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromSystemRelativeTargetTime: *const fn(self: *anyopaque, targetTime: TimeSpan, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
    };
};
pub const PerceptionTimestamp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetTime(self: *@This()) core.HResult!DateTime {
        const this: *IPerceptionTimestamp = @ptrCast(self);
        return try this.getTargetTime();
    }
    pub fn getPredictionAmount(self: *@This()) core.HResult!TimeSpan {
        const this: *IPerceptionTimestamp = @ptrCast(self);
        return try this.getPredictionAmount();
    }
    pub fn getSystemRelativeTargetTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IPerceptionTimestamp2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPerceptionTimestamp2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemRelativeTargetTime();
    }
    pub const NAME: []const u8 = "Windows.Perception.PerceptionTimestamp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionTimestamp.GUID;
    pub const IID: Guid = IPerceptionTimestamp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionTimestamp.SIGNATURE);
};
pub const PerceptionTimestampHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromHistoricalTargetTime(targetTime: DateTime) core.HResult!*PerceptionTimestamp {
        const factory = @This().IPerceptionTimestampHelperStaticsCache.get();
        return try factory.FromHistoricalTargetTime(targetTime);
    }
    pub fn FromSystemRelativeTargetTime(targetTime: TimeSpan) core.HResult!*PerceptionTimestamp {
        const factory = @This().IPerceptionTimestampHelperStatics2Cache.get();
        return try factory.FromSystemRelativeTargetTime(targetTime);
    }
    pub const NAME: []const u8 = "Windows.Perception.PerceptionTimestampHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPerceptionTimestampHelperStaticsCache: FactoryCache(IPerceptionTimestampHelperStatics, RUNTIME_NAME) = .{};
    var _IPerceptionTimestampHelperStatics2Cache: FactoryCache(IPerceptionTimestampHelperStatics2, RUNTIME_NAME) = .{};
};
const IUnknown = @import("./root.zig").IUnknown;
const HSTRING = @import("./root.zig").HSTRING;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const FactoryCache = @import("./core.zig").FactoryCache;
const IInspectable = @import("./Foundation.zig").IInspectable;
const TimeSpan = @import("./Foundation.zig").TimeSpan;
const TrustLevel = @import("./root.zig").TrustLevel;
const DateTime = @import("./Foundation.zig").DateTime;
pub const People = @import("./Perception/People.zig");
pub const Spatial = @import("./Perception/Spatial.zig");
