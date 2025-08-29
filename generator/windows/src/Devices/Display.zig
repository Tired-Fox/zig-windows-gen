pub const DisplayMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getConnectionKind(self: *@This()) core.HResult!DisplayMonitorConnectionKind {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getConnectionKind();
    }
    pub fn getPhysicalConnector(self: *@This()) core.HResult!DisplayMonitorPhysicalConnectorKind {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getPhysicalConnector();
    }
    pub fn getDisplayAdapterDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getDisplayAdapterDeviceId();
    }
    pub fn getDisplayAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getDisplayAdapterId();
    }
    pub fn getDisplayAdapterTargetId(self: *@This()) core.HResult!u32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getDisplayAdapterTargetId();
    }
    pub fn getUsageKind(self: *@This()) core.HResult!DisplayMonitorUsageKind {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getUsageKind();
    }
    pub fn getNativeResolutionInRawPixels(self: *@This()) core.HResult!SizeInt32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getNativeResolutionInRawPixels();
    }
    pub fn getPhysicalSizeInInches(self: *@This()) core.HResult!*IReference(Size) {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getPhysicalSizeInInches();
    }
    pub fn getRawDpiX(self: *@This()) core.HResult!f32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getRawDpiX();
    }
    pub fn getRawDpiY(self: *@This()) core.HResult!f32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getRawDpiY();
    }
    pub fn getRedPrimary(self: *@This()) core.HResult!Point {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getRedPrimary();
    }
    pub fn getGreenPrimary(self: *@This()) core.HResult!Point {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getGreenPrimary();
    }
    pub fn getBluePrimary(self: *@This()) core.HResult!Point {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getBluePrimary();
    }
    pub fn getWhitePoint(self: *@This()) core.HResult!Point {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getWhitePoint();
    }
    pub fn getMaxLuminanceInNits(self: *@This()) core.HResult!f32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getMaxLuminanceInNits();
    }
    pub fn getMinLuminanceInNits(self: *@This()) core.HResult!f32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getMinLuminanceInNits();
    }
    pub fn getMaxAverageFullFrameLuminanceInNits(self: *@This()) core.HResult!f32 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.getMaxAverageFullFrameLuminanceInNits();
    }
    pub fn GetDescriptor(self: *@This(), descriptorKind: DisplayMonitorDescriptorKind) core.HResult![*]u8 {
        const this: *IDisplayMonitor = @ptrCast(self);
        return try this.GetDescriptor(descriptorKind);
    }
    pub fn getIsDolbyVisionSupportedInHdrMode(self: *@This()) core.HResult!bool {
        var this: ?*IDisplayMonitor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayMonitor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDolbyVisionSupportedInHdrMode();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IDisplayMonitorStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(DisplayMonitor) {
        const factory = @This().IDisplayMonitorStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn FromInterfaceIdAsync(deviceInterfaceId: HSTRING) core.HResult!*IAsyncOperation(DisplayMonitor) {
        const factory = @This().IDisplayMonitorStaticsCache.get();
        return try factory.FromInterfaceIdAsync(deviceInterfaceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.DisplayMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayMonitor.GUID;
    pub const IID: Guid = IDisplayMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayMonitor.SIGNATURE);
    var _IDisplayMonitorStaticsCache: FactoryCache(IDisplayMonitorStatics, RUNTIME_NAME) = .{};
};
pub const DisplayMonitorConnectionKind = enum(i32) {
    Internal = 0,
    Wired = 1,
    Wireless = 2,
    Virtual = 3,
};
pub const DisplayMonitorDescriptorKind = enum(i32) {
    Edid = 0,
    DisplayId = 1,
};
pub const DisplayMonitorPhysicalConnectorKind = enum(i32) {
    Unknown = 0,
    HD15 = 1,
    AnalogTV = 2,
    Dvi = 3,
    Hdmi = 4,
    Lvds = 5,
    Sdi = 6,
    DisplayPort = 7,
};
pub const DisplayMonitorUsageKind = enum(i32) {
    Standard = 0,
    HeadMounted = 1,
    SpecialPurpose = 2,
};
pub const IDisplayMonitor = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionKind(self: *@This()) core.HResult!DisplayMonitorConnectionKind {
        var _r: DisplayMonitorConnectionKind = undefined;
        const _c = self.vtable.get_ConnectionKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalConnector(self: *@This()) core.HResult!DisplayMonitorPhysicalConnectorKind {
        var _r: DisplayMonitorPhysicalConnectorKind = undefined;
        const _c = self.vtable.get_PhysicalConnector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayAdapterDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayAdapterDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        var _r: DisplayAdapterId = undefined;
        const _c = self.vtable.get_DisplayAdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayAdapterTargetId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DisplayAdapterTargetId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageKind(self: *@This()) core.HResult!DisplayMonitorUsageKind {
        var _r: DisplayMonitorUsageKind = undefined;
        const _c = self.vtable.get_UsageKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNativeResolutionInRawPixels(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_NativeResolutionInRawPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalSizeInInches(self: *@This()) core.HResult!*IReference(Size) {
        var _r: *IReference(Size) = undefined;
        const _c = self.vtable.get_PhysicalSizeInInches(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawDpiX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RawDpiX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawDpiY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RawDpiY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedPrimary(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_RedPrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGreenPrimary(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_GreenPrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluePrimary(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_BluePrimary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhitePoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_WhitePoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxLuminanceInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxLuminanceInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinLuminanceInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinLuminanceInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAverageFullFrameLuminanceInNits(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxAverageFullFrameLuminanceInNits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDescriptor(self: *@This(), descriptorKind: DisplayMonitorDescriptorKind) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetDescriptor(@ptrCast(self), descriptorKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.IDisplayMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f6b15d4-1d01-4c51-87e2-6f954a772b59";
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
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ConnectionKind: *const fn(self: *anyopaque, _r: *DisplayMonitorConnectionKind) callconv(.winapi) HRESULT,
        get_PhysicalConnector: *const fn(self: *anyopaque, _r: *DisplayMonitorPhysicalConnectorKind) callconv(.winapi) HRESULT,
        get_DisplayAdapterDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayAdapterId: *const fn(self: *anyopaque, _r: *DisplayAdapterId) callconv(.winapi) HRESULT,
        get_DisplayAdapterTargetId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsageKind: *const fn(self: *anyopaque, _r: *DisplayMonitorUsageKind) callconv(.winapi) HRESULT,
        get_NativeResolutionInRawPixels: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        get_PhysicalSizeInInches: *const fn(self: *anyopaque, _r: **IReference(Size)) callconv(.winapi) HRESULT,
        get_RawDpiX: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_RawDpiY: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_RedPrimary: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_GreenPrimary: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_BluePrimary: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_WhitePoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_MaxLuminanceInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MinLuminanceInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MaxAverageFullFrameLuminanceInNits: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        GetDescriptor: *const fn(self: *anyopaque, descriptorKind: DisplayMonitorDescriptorKind, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayMonitor2 = extern struct {
    vtable: *const VTable,
    pub fn getIsDolbyVisionSupportedInHdrMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDolbyVisionSupportedInHdrMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.IDisplayMonitor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "023018e6-cb23-5830-96df-a7bf6e602577";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDolbyVisionSupportedInHdrMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayMonitorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(DisplayMonitor) {
        var _r: *IAsyncOperation(DisplayMonitor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromInterfaceIdAsync(self: *@This(), deviceInterfaceId: HSTRING) core.HResult!*IAsyncOperation(DisplayMonitor) {
        var _r: *IAsyncOperation(DisplayMonitor) = undefined;
        const _c = self.vtable.FromInterfaceIdAsync(@ptrCast(self), deviceInterfaceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.IDisplayMonitorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6eae698f-a228-4c05-821d-b695d667de8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(DisplayMonitor)) callconv(.winapi) HRESULT,
        FromInterfaceIdAsync: *const fn(self: *anyopaque, deviceInterfaceId: HSTRING, _r: **IAsyncOperation(DisplayMonitor)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SizeInt32 = @import("../Graphics.zig").SizeInt32;
const FactoryCache = @import("../core.zig").FactoryCache;
const DisplayAdapterId = @import("../Graphics.zig").DisplayAdapterId;
const Size = @import("../Foundation.zig").Size;
const IReference = @import("../Foundation.zig").IReference;
const Point = @import("../Foundation.zig").Point;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
pub const Core = @import("./Display/Core.zig");
