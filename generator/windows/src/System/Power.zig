pub const BackgroundEnergyManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getLowUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getLowUsageLevel();
    }
    pub fn getNearMaxAcceptableUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getNearMaxAcceptableUsageLevel();
    }
    pub fn getMaxAcceptableUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getMaxAcceptableUsageLevel();
    }
    pub fn getExcessiveUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getExcessiveUsageLevel();
    }
    pub fn getNearTerminationUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getNearTerminationUsageLevel();
    }
    pub fn getTerminationUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getTerminationUsageLevel();
    }
    pub fn getRecentEnergyUsage() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getRecentEnergyUsage();
    }
    pub fn getRecentEnergyUsageLevel() core.HResult!u32 {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.getRecentEnergyUsageLevel();
    }
    pub fn addRecentEnergyUsageIncreased(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.addRecentEnergyUsageIncreased(handler);
    }
    pub fn removeRecentEnergyUsageIncreased(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.removeRecentEnergyUsageIncreased(token);
    }
    pub fn addRecentEnergyUsageReturnedToLow(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.addRecentEnergyUsageReturnedToLow(handler);
    }
    pub fn removeRecentEnergyUsageReturnedToLow(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IBackgroundEnergyManagerStaticsCache.get();
        return try factory.removeRecentEnergyUsageReturnedToLow(token);
    }
    pub const NAME: []const u8 = "Windows.System.Power.BackgroundEnergyManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBackgroundEnergyManagerStaticsCache: FactoryCache(IBackgroundEnergyManagerStatics, RUNTIME_NAME) = .{};
};
pub const BatteryStatus = enum(i32) {
    NotPresent = 0,
    Discharging = 1,
    Idle = 2,
    Charging = 3,
};
pub const EnergySaverStatus = enum(i32) {
    Disabled = 0,
    Off = 1,
    On = 2,
};
pub const ForegroundEnergyManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getLowUsageLevel() core.HResult!u32 {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.getLowUsageLevel();
    }
    pub fn getNearMaxAcceptableUsageLevel() core.HResult!u32 {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.getNearMaxAcceptableUsageLevel();
    }
    pub fn getMaxAcceptableUsageLevel() core.HResult!u32 {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.getMaxAcceptableUsageLevel();
    }
    pub fn getExcessiveUsageLevel() core.HResult!u32 {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.getExcessiveUsageLevel();
    }
    pub fn getRecentEnergyUsage() core.HResult!u32 {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.getRecentEnergyUsage();
    }
    pub fn getRecentEnergyUsageLevel() core.HResult!u32 {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.getRecentEnergyUsageLevel();
    }
    pub fn addRecentEnergyUsageIncreased(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.addRecentEnergyUsageIncreased(handler);
    }
    pub fn removeRecentEnergyUsageIncreased(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.removeRecentEnergyUsageIncreased(token);
    }
    pub fn addRecentEnergyUsageReturnedToLow(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.addRecentEnergyUsageReturnedToLow(handler);
    }
    pub fn removeRecentEnergyUsageReturnedToLow(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IForegroundEnergyManagerStaticsCache.get();
        return try factory.removeRecentEnergyUsageReturnedToLow(token);
    }
    pub const NAME: []const u8 = "Windows.System.Power.ForegroundEnergyManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IForegroundEnergyManagerStaticsCache: FactoryCache(IForegroundEnergyManagerStatics, RUNTIME_NAME) = .{};
};
pub const IBackgroundEnergyManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getLowUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LowUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNearMaxAcceptableUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NearMaxAcceptableUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAcceptableUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxAcceptableUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExcessiveUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExcessiveUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNearTerminationUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NearTerminationUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTerminationUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TerminationUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecentEnergyUsage(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RecentEnergyUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecentEnergyUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RecentEnergyUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRecentEnergyUsageIncreased(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecentEnergyUsageIncreased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecentEnergyUsageIncreased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecentEnergyUsageIncreased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRecentEnergyUsageReturnedToLow(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecentEnergyUsageReturnedToLow(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecentEnergyUsageReturnedToLow(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecentEnergyUsageReturnedToLow(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Power.IBackgroundEnergyManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3161d95-1180-4376-96e1-4095568147ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LowUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NearMaxAcceptableUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxAcceptableUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExcessiveUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NearTerminationUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TerminationUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_RecentEnergyUsage: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_RecentEnergyUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_RecentEnergyUsageIncreased: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecentEnergyUsageIncreased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RecentEnergyUsageReturnedToLow: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecentEnergyUsageReturnedToLow: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IForegroundEnergyManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getLowUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LowUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNearMaxAcceptableUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NearMaxAcceptableUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAcceptableUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxAcceptableUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExcessiveUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExcessiveUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecentEnergyUsage(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RecentEnergyUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecentEnergyUsageLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RecentEnergyUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRecentEnergyUsageIncreased(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecentEnergyUsageIncreased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecentEnergyUsageIncreased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecentEnergyUsageIncreased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRecentEnergyUsageReturnedToLow(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecentEnergyUsageReturnedToLow(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecentEnergyUsageReturnedToLow(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecentEnergyUsageReturnedToLow(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Power.IForegroundEnergyManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ff86872-e677-4814-9a20-5337ca732b98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LowUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NearMaxAcceptableUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxAcceptableUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExcessiveUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_RecentEnergyUsage: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_RecentEnergyUsageLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_RecentEnergyUsageIncreased: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecentEnergyUsageIncreased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RecentEnergyUsageReturnedToLow: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecentEnergyUsageReturnedToLow: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPowerManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnergySaverStatus(self: *@This()) core.HResult!EnergySaverStatus {
        var _r: EnergySaverStatus = undefined;
        const _c = self.vtable.get_EnergySaverStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addEnergySaverStatusChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnergySaverStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnergySaverStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnergySaverStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBatteryStatus(self: *@This()) core.HResult!BatteryStatus {
        var _r: BatteryStatus = undefined;
        const _c = self.vtable.get_BatteryStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addBatteryStatusChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BatteryStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBatteryStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BatteryStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPowerSupplyStatus(self: *@This()) core.HResult!PowerSupplyStatus {
        var _r: PowerSupplyStatus = undefined;
        const _c = self.vtable.get_PowerSupplyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPowerSupplyStatusChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PowerSupplyStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePowerSupplyStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PowerSupplyStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemainingChargePercent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RemainingChargePercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRemainingChargePercentChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemainingChargePercentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemainingChargePercentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemainingChargePercentChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemainingDischargeTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RemainingDischargeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRemainingDischargeTimeChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemainingDischargeTimeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemainingDischargeTimeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemainingDischargeTimeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Power.IPowerManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1394825d-62ce-4364-98d5-aa28c7fbd15b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnergySaverStatus: *const fn(self: *anyopaque, _r: *EnergySaverStatus) callconv(.winapi) HRESULT,
        add_EnergySaverStatusChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnergySaverStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_BatteryStatus: *const fn(self: *anyopaque, _r: *BatteryStatus) callconv(.winapi) HRESULT,
        add_BatteryStatusChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BatteryStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_PowerSupplyStatus: *const fn(self: *anyopaque, _r: *PowerSupplyStatus) callconv(.winapi) HRESULT,
        add_PowerSupplyStatusChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PowerSupplyStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_RemainingChargePercent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        add_RemainingChargePercentChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemainingChargePercentChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_RemainingDischargeTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        add_RemainingDischargeTimeChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemainingDischargeTimeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const PowerManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEnergySaverStatus() core.HResult!EnergySaverStatus {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.getEnergySaverStatus();
    }
    pub fn addEnergySaverStatusChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.addEnergySaverStatusChanged(handler);
    }
    pub fn removeEnergySaverStatusChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.removeEnergySaverStatusChanged(token);
    }
    pub fn getBatteryStatus() core.HResult!BatteryStatus {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.getBatteryStatus();
    }
    pub fn addBatteryStatusChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.addBatteryStatusChanged(handler);
    }
    pub fn removeBatteryStatusChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.removeBatteryStatusChanged(token);
    }
    pub fn getPowerSupplyStatus() core.HResult!PowerSupplyStatus {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.getPowerSupplyStatus();
    }
    pub fn addPowerSupplyStatusChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.addPowerSupplyStatusChanged(handler);
    }
    pub fn removePowerSupplyStatusChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.removePowerSupplyStatusChanged(token);
    }
    pub fn getRemainingChargePercent() core.HResult!i32 {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.getRemainingChargePercent();
    }
    pub fn addRemainingChargePercentChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.addRemainingChargePercentChanged(handler);
    }
    pub fn removeRemainingChargePercentChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.removeRemainingChargePercentChanged(token);
    }
    pub fn getRemainingDischargeTime() core.HResult!TimeSpan {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.getRemainingDischargeTime();
    }
    pub fn addRemainingDischargeTimeChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.addRemainingDischargeTimeChanged(handler);
    }
    pub fn removeRemainingDischargeTimeChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPowerManagerStaticsCache.get();
        return try factory.removeRemainingDischargeTimeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.System.Power.PowerManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPowerManagerStaticsCache: FactoryCache(IPowerManagerStatics, RUNTIME_NAME) = .{};
};
pub const PowerSupplyStatus = enum(i32) {
    NotPresent = 0,
    Inadequate = 1,
    Adequate = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HSTRING = @import("../root.zig").HSTRING;
pub const Diagnostics = @import("./Power/Diagnostics.zig");
