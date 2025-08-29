pub const HingeState = enum(i32) {
    Unknown = 0,
    Closed = 1,
    Concave = 2,
    Flat = 3,
    Convex = 4,
    Full = 5,
};
pub const ITwoPanelHingedDevicePosturePreview = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentPostureAsync(self: *@This()) core.HResult!*IAsyncOperation(TwoPanelHingedDevicePosturePreviewReading) {
        var _r: *IAsyncOperation(TwoPanelHingedDevicePosturePreviewReading) = undefined;
        const _c = self.vtable.GetCurrentPostureAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPostureChanged(self: *@This(), handler: *TypedEventHandler(TwoPanelHingedDevicePosturePreview,TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PostureChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePostureChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PostureChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Preview.ITwoPanelHingedDevicePosturePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72245c31-4b39-42a6-8e73-7235ade16853";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentPostureAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(TwoPanelHingedDevicePosturePreviewReading)) callconv(.winapi) HRESULT,
        add_PostureChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TwoPanelHingedDevicePosturePreview,TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PostureChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITwoPanelHingedDevicePosturePreviewReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHingeState(self: *@This()) core.HResult!HingeState {
        var _r: HingeState = undefined;
        const _c = self.vtable.get_HingeState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanel1Orientation(self: *@This()) core.HResult!SimpleOrientation {
        var _r: SimpleOrientation = undefined;
        const _c = self.vtable.get_Panel1Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanel1Id(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Panel1Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanel2Orientation(self: *@This()) core.HResult!SimpleOrientation {
        var _r: SimpleOrientation = undefined;
        const _c = self.vtable.get_Panel2Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanel2Id(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Panel2Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0251452-4ad6-4b38-8426-c59a15493a7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_HingeState: *const fn(self: *anyopaque, _r: *HingeState) callconv(.winapi) HRESULT,
        get_Panel1Orientation: *const fn(self: *anyopaque, _r: *SimpleOrientation) callconv(.winapi) HRESULT,
        get_Panel1Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Panel2Orientation: *const fn(self: *anyopaque, _r: *SimpleOrientation) callconv(.winapi) HRESULT,
        get_Panel2Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*TwoPanelHingedDevicePosturePreviewReading {
        var _r: *TwoPanelHingedDevicePosturePreviewReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d2d1bc6-02ce-474a-a556-a75b1cf93a03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **TwoPanelHingedDevicePosturePreviewReading) callconv(.winapi) HRESULT,
    };
};
pub const ITwoPanelHingedDevicePosturePreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(TwoPanelHingedDevicePosturePreview) {
        var _r: *IAsyncOperation(TwoPanelHingedDevicePosturePreview) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c4733d2-57e0-4180-bd5e-f31a2138423e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(TwoPanelHingedDevicePosturePreview)) callconv(.winapi) HRESULT,
    };
};
pub const TwoPanelHingedDevicePosturePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentPostureAsync(self: *@This()) core.HResult!*IAsyncOperation(TwoPanelHingedDevicePosturePreviewReading) {
        const this: *ITwoPanelHingedDevicePosturePreview = @ptrCast(self);
        return try this.GetCurrentPostureAsync();
    }
    pub fn addPostureChanged(self: *@This(), handler: *TypedEventHandler(TwoPanelHingedDevicePosturePreview,TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITwoPanelHingedDevicePosturePreview = @ptrCast(self);
        return try this.addPostureChanged(handler);
    }
    pub fn removePostureChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITwoPanelHingedDevicePosturePreview = @ptrCast(self);
        return try this.removePostureChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(TwoPanelHingedDevicePosturePreview) {
        const factory = @This().ITwoPanelHingedDevicePosturePreviewStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.System.Preview.TwoPanelHingedDevicePosturePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITwoPanelHingedDevicePosturePreview.GUID;
    pub const IID: Guid = ITwoPanelHingedDevicePosturePreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITwoPanelHingedDevicePosturePreview.SIGNATURE);
    var _ITwoPanelHingedDevicePosturePreviewStaticsCache: FactoryCache(ITwoPanelHingedDevicePosturePreviewStatics, RUNTIME_NAME) = .{};
};
pub const TwoPanelHingedDevicePosturePreviewReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ITwoPanelHingedDevicePosturePreviewReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getHingeState(self: *@This()) core.HResult!HingeState {
        const this: *ITwoPanelHingedDevicePosturePreviewReading = @ptrCast(self);
        return try this.getHingeState();
    }
    pub fn getPanel1Orientation(self: *@This()) core.HResult!SimpleOrientation {
        const this: *ITwoPanelHingedDevicePosturePreviewReading = @ptrCast(self);
        return try this.getPanel1Orientation();
    }
    pub fn getPanel1Id(self: *@This()) core.HResult!HSTRING {
        const this: *ITwoPanelHingedDevicePosturePreviewReading = @ptrCast(self);
        return try this.getPanel1Id();
    }
    pub fn getPanel2Orientation(self: *@This()) core.HResult!SimpleOrientation {
        const this: *ITwoPanelHingedDevicePosturePreviewReading = @ptrCast(self);
        return try this.getPanel2Orientation();
    }
    pub fn getPanel2Id(self: *@This()) core.HResult!HSTRING {
        const this: *ITwoPanelHingedDevicePosturePreviewReading = @ptrCast(self);
        return try this.getPanel2Id();
    }
    pub const NAME: []const u8 = "Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITwoPanelHingedDevicePosturePreviewReading.GUID;
    pub const IID: Guid = ITwoPanelHingedDevicePosturePreviewReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITwoPanelHingedDevicePosturePreviewReading.SIGNATURE);
};
pub const TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*TwoPanelHingedDevicePosturePreviewReading {
        const this: *ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs.GUID;
    pub const IID: Guid = ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SimpleOrientation = @import("../Devices/Sensors.zig").SimpleOrientation;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const DateTime = @import("../Foundation.zig").DateTime;
const HSTRING = @import("../root.zig").HSTRING;
