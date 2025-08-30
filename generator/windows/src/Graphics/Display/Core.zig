pub const HdmiDisplayColorSpace = enum(i32) {
    RgbLimited = 0,
    RgbFull = 1,
    BT2020 = 2,
    BT709 = 3,
};
pub const HdmiDisplayHdr2086Metadata = extern struct {
    RedPrimaryX: u16,
    RedPrimaryY: u16,
    GreenPrimaryX: u16,
    GreenPrimaryY: u16,
    BluePrimaryX: u16,
    BluePrimaryY: u16,
    WhitePointX: u16,
    WhitePointY: u16,
    MaxMasteringLuminance: u16,
    MinMasteringLuminance: u16,
    MaxContentLightLevel: u16,
    MaxFrameAverageLightLevel: u16,
};
pub const HdmiDisplayHdrOption = enum(i32) {
    None = 0,
    EotfSdr = 1,
    Eotf2084 = 2,
    DolbyVisionLowLatency = 3,
};
pub const HdmiDisplayInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetSupportedDisplayModes(self: *@This()) core.HResult!*IVectorView(HdmiDisplayMode) {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.GetSupportedDisplayModes();
    }
    pub fn GetCurrentDisplayMode(self: *@This()) core.HResult!*HdmiDisplayMode {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.GetCurrentDisplayMode();
    }
    pub fn SetDefaultDisplayModeAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.SetDefaultDisplayModeAsync();
    }
    pub fn RequestSetCurrentDisplayModeAsync(self: *@This(), mode: *HdmiDisplayMode) core.HResult!*IAsyncOperation(bool) {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.RequestSetCurrentDisplayModeAsync(mode);
    }
    pub fn RequestSetCurrentDisplayModeAsyncWithHdrOption(self: *@This(), mode: *HdmiDisplayMode, hdrOption: HdmiDisplayHdrOption) core.HResult!*IAsyncOperation(bool) {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.RequestSetCurrentDisplayModeAsyncWithHdrOption(mode, hdrOption);
    }
    pub fn RequestSetCurrentDisplayModeAsyncWithHdrOptionWithHdrMetadata(self: *@This(), mode: *HdmiDisplayMode, hdrOption: HdmiDisplayHdrOption, hdrMetadata: HdmiDisplayHdr2086Metadata) core.HResult!*IAsyncOperation(bool) {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.RequestSetCurrentDisplayModeAsyncWithHdrOptionWithHdrMetadata(mode, hdrOption, hdrMetadata);
    }
    pub fn addDisplayModesChanged(self: *@This(), value: *TypedEventHandler(HdmiDisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.addDisplayModesChanged(value);
    }
    pub fn removeDisplayModesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHdmiDisplayInformation = @ptrCast(self);
        return try this.removeDisplayModesChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*HdmiDisplayInformation {
        const factory = @This().IHdmiDisplayInformationStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.Core.HdmiDisplayInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHdmiDisplayInformation.GUID;
    pub const IID: Guid = IHdmiDisplayInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHdmiDisplayInformation.SIGNATURE);
    var _IHdmiDisplayInformationStaticsCache: FactoryCache(IHdmiDisplayInformationStatics, RUNTIME_NAME) = .{};
};
pub const HdmiDisplayMode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResolutionWidthInRawPixels(self: *@This()) core.HResult!u32 {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getResolutionWidthInRawPixels();
    }
    pub fn getResolutionHeightInRawPixels(self: *@This()) core.HResult!u32 {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getResolutionHeightInRawPixels();
    }
    pub fn getRefreshRate(self: *@This()) core.HResult!f64 {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getRefreshRate();
    }
    pub fn getStereoEnabled(self: *@This()) core.HResult!bool {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getStereoEnabled();
    }
    pub fn getBitsPerPixel(self: *@This()) core.HResult!u16 {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getBitsPerPixel();
    }
    pub fn IsEqual(self: *@This(), mode: *HdmiDisplayMode) core.HResult!bool {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.IsEqual(mode);
    }
    pub fn getColorSpace(self: *@This()) core.HResult!HdmiDisplayColorSpace {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getColorSpace();
    }
    pub fn getPixelEncoding(self: *@This()) core.HResult!HdmiDisplayPixelEncoding {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getPixelEncoding();
    }
    pub fn getIsSdrLuminanceSupported(self: *@This()) core.HResult!bool {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getIsSdrLuminanceSupported();
    }
    pub fn getIsSmpte2084Supported(self: *@This()) core.HResult!bool {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getIsSmpte2084Supported();
    }
    pub fn getIs2086MetadataSupported(self: *@This()) core.HResult!bool {
        const this: *IHdmiDisplayMode = @ptrCast(self);
        return try this.getIs2086MetadataSupported();
    }
    pub fn getIsDolbyVisionLowLatencySupported(self: *@This()) core.HResult!bool {
        var this: ?*IHdmiDisplayMode2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHdmiDisplayMode2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDolbyVisionLowLatencySupported();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.Core.HdmiDisplayMode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHdmiDisplayMode.GUID;
    pub const IID: Guid = IHdmiDisplayMode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHdmiDisplayMode.SIGNATURE);
};
pub const HdmiDisplayPixelEncoding = enum(i32) {
    Rgb444 = 0,
    Ycc444 = 1,
    Ycc422 = 2,
    Ycc420 = 3,
};
pub const IHdmiDisplayInformation = extern struct {
    vtable: *const VTable,
    pub fn GetSupportedDisplayModes(self: *@This()) core.HResult!*IVectorView(HdmiDisplayMode) {
        var _r: *IVectorView(HdmiDisplayMode) = undefined;
        const _c = self.vtable.GetSupportedDisplayModes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentDisplayMode(self: *@This()) core.HResult!*HdmiDisplayMode {
        var _r: *HdmiDisplayMode = undefined;
        const _c = self.vtable.GetCurrentDisplayMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDefaultDisplayModeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetDefaultDisplayModeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestSetCurrentDisplayModeAsync(self: *@This(), mode: *HdmiDisplayMode) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestSetCurrentDisplayModeAsync(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestSetCurrentDisplayModeAsyncWithHdrOption(self: *@This(), mode: *HdmiDisplayMode, hdrOption: HdmiDisplayHdrOption) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestSetCurrentDisplayModeAsyncWithHdrOption(@ptrCast(self), mode, hdrOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestSetCurrentDisplayModeAsyncWithHdrMetadata(self: *@This(), mode: *HdmiDisplayMode, hdrOption: HdmiDisplayHdrOption, hdrMetadata: HdmiDisplayHdr2086Metadata) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestSetCurrentDisplayModeAsyncWithHdrMetadata(@ptrCast(self), mode, hdrOption, hdrMetadata, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDisplayModesChanged(self: *@This(), value: *TypedEventHandler(HdmiDisplayInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisplayModesChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisplayModesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisplayModesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.Core.IHdmiDisplayInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "130b3c0a-f565-476e-abd5-ea05aee74c69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSupportedDisplayModes: *const fn(self: *anyopaque, _r: **IVectorView(HdmiDisplayMode)) callconv(.winapi) HRESULT,
        GetCurrentDisplayMode: *const fn(self: *anyopaque, _r: **HdmiDisplayMode) callconv(.winapi) HRESULT,
        SetDefaultDisplayModeAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestSetCurrentDisplayModeAsync: *const fn(self: *anyopaque, mode: *HdmiDisplayMode, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestSetCurrentDisplayModeAsyncWithHdrOption: *const fn(self: *anyopaque, mode: *HdmiDisplayMode, hdrOption: HdmiDisplayHdrOption, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestSetCurrentDisplayModeAsyncWithHdrMetadata: *const fn(self: *anyopaque, mode: *HdmiDisplayMode, hdrOption: HdmiDisplayHdrOption, hdrMetadata: HdmiDisplayHdr2086Metadata, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_DisplayModesChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(HdmiDisplayInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisplayModesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHdmiDisplayInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*HdmiDisplayInformation {
        var _r: *HdmiDisplayInformation = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.Core.IHdmiDisplayInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ce6b260-f42a-4a15-914c-7b8e2a5a65df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **HdmiDisplayInformation) callconv(.winapi) HRESULT,
    };
};
pub const IHdmiDisplayMode = extern struct {
    vtable: *const VTable,
    pub fn getResolutionWidthInRawPixels(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ResolutionWidthInRawPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResolutionHeightInRawPixels(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ResolutionHeightInRawPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRefreshRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RefreshRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStereoEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StereoEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitsPerPixel(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BitsPerPixel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), mode: *HdmiDisplayMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorSpace(self: *@This()) core.HResult!HdmiDisplayColorSpace {
        var _r: HdmiDisplayColorSpace = undefined;
        const _c = self.vtable.get_ColorSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelEncoding(self: *@This()) core.HResult!HdmiDisplayPixelEncoding {
        var _r: HdmiDisplayPixelEncoding = undefined;
        const _c = self.vtable.get_PixelEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSdrLuminanceSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSdrLuminanceSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSmpte2084Supported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSmpte2084Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIs2086MetadataSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Is2086MetadataSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.Core.IHdmiDisplayMode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResolutionWidthInRawPixels: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ResolutionHeightInRawPixels: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_RefreshRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_StereoEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_BitsPerPixel: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, mode: *HdmiDisplayMode, _r: *bool) callconv(.winapi) HRESULT,
        get_ColorSpace: *const fn(self: *anyopaque, _r: *HdmiDisplayColorSpace) callconv(.winapi) HRESULT,
        get_PixelEncoding: *const fn(self: *anyopaque, _r: *HdmiDisplayPixelEncoding) callconv(.winapi) HRESULT,
        get_IsSdrLuminanceSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSmpte2084Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Is2086MetadataSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHdmiDisplayMode2 = extern struct {
    vtable: *const VTable,
    pub fn getIsDolbyVisionLowLatencySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDolbyVisionLowLatencySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Display.Core.IHdmiDisplayMode2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07cd4e9f-4b3c-42b8-84e7-895368718af2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDolbyVisionLowLatencySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
