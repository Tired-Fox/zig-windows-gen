pub const IPrint3DDevice = extern struct {
    vtable: *const VTable,
    pub fn getPrintSchema(self: *@This()) core.HResult!*PrintSchema {
        var _r: *PrintSchema = undefined;
        const _c = self.vtable.get_PrintSchema(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IPrint3DDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "041c3d19-9713-42a2-9813-7dc3337428d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintSchema: *const fn(self: *anyopaque, _r: **PrintSchema) callconv(.winapi) HRESULT,
    };
};
pub const IPrint3DDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Print3DDevice) {
        var _r: *IAsyncOperation(Print3DDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IPrint3DDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fde3620a-67cd-41b7-a344-5150a1fd75b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Print3DDevice)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintSchema = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var _r: *IAsyncOperation(IRandomAccessStreamWithContentType) = undefined;
        const _c = self.vtable.GetDefaultPrintTicketAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapabilitiesAsync(self: *@This(), constrainTicket: *IRandomAccessStreamWithContentType) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var _r: *IAsyncOperation(IRandomAccessStreamWithContentType) = undefined;
        const _c = self.vtable.GetCapabilitiesAsync(@ptrCast(self), constrainTicket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MergeAndValidateWithDefaultPrintTicketAsync(self: *@This(), deltaTicket: *IRandomAccessStreamWithContentType) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var _r: *IAsyncOperation(IRandomAccessStreamWithContentType) = undefined;
        const _c = self.vtable.MergeAndValidateWithDefaultPrintTicketAsync(@ptrCast(self), deltaTicket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IPrintSchema";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2b98316-26b8-4bfb-8138-9f962c22a35b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultPrintTicketAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStreamWithContentType)) callconv(.winapi) HRESULT,
        GetCapabilitiesAsync: *const fn(self: *anyopaque, constrainTicket: *IRandomAccessStreamWithContentType, _r: **IAsyncOperation(IRandomAccessStreamWithContentType)) callconv(.winapi) HRESULT,
        MergeAndValidateWithDefaultPrintTicketAsync: *const fn(self: *anyopaque, deltaTicket: *IRandomAccessStreamWithContentType, _r: **IAsyncOperation(IRandomAccessStreamWithContentType)) callconv(.winapi) HRESULT,
    };
};
pub const Print3DDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintSchema(self: *@This()) core.HResult!*PrintSchema {
        const this: *IPrint3DDevice = @ptrCast(self);
        return try this.getPrintSchema();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Print3DDevice) {
        const _f = @This().IPrint3DDeviceStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IPrint3DDeviceStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.Print3DDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrint3DDevice.GUID;
    pub const IID: Guid = IPrint3DDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrint3DDevice.SIGNATURE);
    var _IPrint3DDeviceStaticsCache: FactoryCache(IPrint3DDeviceStatics, RUNTIME_NAME) = .{};
};
pub const PrintSchema = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDefaultPrintTicketAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        const this: *IPrintSchema = @ptrCast(self);
        return try this.GetDefaultPrintTicketAsync();
    }
    pub fn GetCapabilitiesAsync(self: *@This(), constrainTicket: *IRandomAccessStreamWithContentType) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        const this: *IPrintSchema = @ptrCast(self);
        return try this.GetCapabilitiesAsync(constrainTicket);
    }
    pub fn MergeAndValidateWithDefaultPrintTicketAsync(self: *@This(), deltaTicket: *IRandomAccessStreamWithContentType) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        const this: *IPrintSchema = @ptrCast(self);
        return try this.MergeAndValidateWithDefaultPrintTicketAsync(deltaTicket);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.PrintSchema";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintSchema.GUID;
    pub const IID: Guid = IPrintSchema.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintSchema.SIGNATURE);
};
pub const IIppAttributeError = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!IppAttributeErrorReason {
        var _r: IppAttributeErrorReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUnsupportedValues(self: *@This()) core.HResult!*IVectorView(IppAttributeValue) {
        var _r: *IVectorView(IppAttributeValue) = undefined;
        const _c = self.vtable.GetUnsupportedValues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppAttributeError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "750feda1-9eef-5c39-93e4-46149bbcef27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *IppAttributeErrorReason) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        GetUnsupportedValues: *const fn(self: *anyopaque, _r: **IVectorView(IppAttributeValue)) callconv(.winapi) HRESULT,
    };
};
pub const IIppAttributeValue = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!IppAttributeValueKind {
        var _r: IppAttributeValueKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIntegerArray(self: *@This()) core.HResult!*IVector(i32) {
        var _r: *IVector(i32) = undefined;
        const _c = self.vtable.GetIntegerArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanArray(self: *@This()) core.HResult!*IVector(bool) {
        var _r: *IVector(bool) = undefined;
        const _c = self.vtable.GetBooleanArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEnumArray(self: *@This()) core.HResult!*IVector(i32) {
        var _r: *IVector(i32) = undefined;
        const _c = self.vtable.GetEnumArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOctetStringArray(self: *@This()) core.HResult!*IVector(IBuffer) {
        var _r: *IVector(IBuffer) = undefined;
        const _c = self.vtable.GetOctetStringArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDateTimeArray(self: *@This()) core.HResult!*IVector(DateTime) {
        var _r: *IVector(DateTime) = undefined;
        const _c = self.vtable.GetDateTimeArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetResolutionArray(self: *@This()) core.HResult!*IVector(IppResolution) {
        var _r: *IVector(IppResolution) = undefined;
        const _c = self.vtable.GetResolutionArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRangeOfIntegerArray(self: *@This()) core.HResult!*IVector(IppIntegerRange) {
        var _r: *IVector(IppIntegerRange) = undefined;
        const _c = self.vtable.GetRangeOfIntegerArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCollectionArray(self: *@This()) core.HResult!*IVector(IMapView(HSTRING,IppAttributeValue)) {
        var _r: *IVector(IMapView(HSTRING,IppAttributeValue)) = undefined;
        const _c = self.vtable.GetCollectionArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextWithLanguageArray(self: *@This()) core.HResult!*IVector(IppTextWithLanguage) {
        var _r: *IVector(IppTextWithLanguage) = undefined;
        const _c = self.vtable.GetTextWithLanguageArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNameWithLanguageArray(self: *@This()) core.HResult!*IVector(IppTextWithLanguage) {
        var _r: *IVector(IppTextWithLanguage) = undefined;
        const _c = self.vtable.GetNameWithLanguageArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextWithoutLanguageArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetTextWithoutLanguageArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNameWithoutLanguageArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetNameWithoutLanguageArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetKeywordArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetKeywordArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUriArray(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.GetUriArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUriSchemaArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetUriSchemaArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharsetArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetCharsetArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNaturalLanguageArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetNaturalLanguageArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMimeMediaTypeArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetMimeMediaTypeArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppAttributeValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99407fed-e2bb-59a3-988b-28a974052a26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *IppAttributeValueKind) callconv(.winapi) HRESULT,
        GetIntegerArray: *const fn(self: *anyopaque, _r: **IVector(i32)) callconv(.winapi) HRESULT,
        GetBooleanArray: *const fn(self: *anyopaque, _r: **IVector(bool)) callconv(.winapi) HRESULT,
        GetEnumArray: *const fn(self: *anyopaque, _r: **IVector(i32)) callconv(.winapi) HRESULT,
        GetOctetStringArray: *const fn(self: *anyopaque, _r: **IVector(IBuffer)) callconv(.winapi) HRESULT,
        GetDateTimeArray: *const fn(self: *anyopaque, _r: **IVector(DateTime)) callconv(.winapi) HRESULT,
        GetResolutionArray: *const fn(self: *anyopaque, _r: **IVector(IppResolution)) callconv(.winapi) HRESULT,
        GetRangeOfIntegerArray: *const fn(self: *anyopaque, _r: **IVector(IppIntegerRange)) callconv(.winapi) HRESULT,
        GetCollectionArray: *const fn(self: *anyopaque, _r: **IVector(IMapView(HSTRING,IppAttributeValue))) callconv(.winapi) HRESULT,
        GetTextWithLanguageArray: *const fn(self: *anyopaque, _r: **IVector(IppTextWithLanguage)) callconv(.winapi) HRESULT,
        GetNameWithLanguageArray: *const fn(self: *anyopaque, _r: **IVector(IppTextWithLanguage)) callconv(.winapi) HRESULT,
        GetTextWithoutLanguageArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        GetNameWithoutLanguageArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        GetKeywordArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        GetUriArray: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        GetUriSchemaArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        GetCharsetArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        GetNaturalLanguageArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        GetMimeMediaTypeArray: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IIppAttributeValueStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateUnsupported(self: *@This()) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateUnsupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUnknown(self: *@This()) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateUnknown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNoValue(self: *@This()) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNoValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInteger(self: *@This(), value: i32) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateInteger(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateIntegerArray(self: *@This(), values: *IIterable(i32)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateIntegerArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBoolean(self: *@This(), value: bool) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateBoolean(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBooleanArray(self: *@This(), values: *IIterable(bool)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateBooleanArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEnum(self: *@This(), value: i32) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateEnum(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEnumArray(self: *@This(), values: *IIterable(i32)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateEnumArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateOctetString(self: *@This(), value: *IBuffer) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateOctetString(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateOctetStringArray(self: *@This(), values: *IIterable(IBuffer)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateOctetStringArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTime(self: *@This(), value: DateTime) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateDateTime(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeArray(self: *@This(), values: *IIterable(DateTime)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateDateTimeArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResolution(self: *@This(), value: *IppResolution) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateResolution(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResolutionArray(self: *@This(), values: *IIterable(IppResolution)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateResolutionArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRangeOfInteger(self: *@This(), value: *IppIntegerRange) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateRangeOfInteger(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRangeOfIntegerArray(self: *@This(), values: *IIterable(IppIntegerRange)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateRangeOfIntegerArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCollection(self: *@This(), memberAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue))) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateCollection(@ptrCast(self), memberAttributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCollectionArray(self: *@This(), memberAttributesArray: *IIterable(IIterable(IKeyValuePair(HSTRING,IppAttributeValue)))) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateCollectionArray(@ptrCast(self), memberAttributesArray, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextWithLanguage(self: *@This(), value: *IppTextWithLanguage) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateTextWithLanguage(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextWithLanguageArray(self: *@This(), values: *IIterable(IppTextWithLanguage)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateTextWithLanguageArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNameWithLanguage(self: *@This(), value: *IppTextWithLanguage) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNameWithLanguage(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNameWithLanguageArray(self: *@This(), values: *IIterable(IppTextWithLanguage)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNameWithLanguageArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextWithoutLanguage(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateTextWithoutLanguage(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextWithoutLanguageArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateTextWithoutLanguageArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNameWithoutLanguage(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNameWithoutLanguage(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNameWithoutLanguageArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNameWithoutLanguageArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateKeyword(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateKeyword(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateKeywordArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateKeywordArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUri(self: *@This(), value: *Uri) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateUri(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUriArray(self: *@This(), values: *IIterable(Uri)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateUriArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUriSchema(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateUriSchema(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUriSchemaArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateUriSchemaArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCharset(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateCharset(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCharsetArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateCharsetArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNaturalLanguage(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNaturalLanguage(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNaturalLanguageArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateNaturalLanguageArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMimeMedia(self: *@This(), value: HSTRING) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateMimeMedia(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMimeMediaArray(self: *@This(), values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        var _r: *IppAttributeValue = undefined;
        const _c = self.vtable.CreateMimeMediaArray(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppAttributeValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10d43942-dd94-5998-b235-afafb6fa7935";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateUnsupported: *const fn(self: *anyopaque, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateUnknown: *const fn(self: *anyopaque, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNoValue: *const fn(self: *anyopaque, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateInteger: *const fn(self: *anyopaque, value: i32, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateIntegerArray: *const fn(self: *anyopaque, values: *IIterable(i32), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateBoolean: *const fn(self: *anyopaque, value: bool, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateBooleanArray: *const fn(self: *anyopaque, values: *IIterable(bool), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateEnum: *const fn(self: *anyopaque, value: i32, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateEnumArray: *const fn(self: *anyopaque, values: *IIterable(i32), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateOctetString: *const fn(self: *anyopaque, value: *IBuffer, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateOctetStringArray: *const fn(self: *anyopaque, values: *IIterable(IBuffer), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateDateTime: *const fn(self: *anyopaque, value: DateTime, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateDateTimeArray: *const fn(self: *anyopaque, values: *IIterable(DateTime), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateResolution: *const fn(self: *anyopaque, value: *IppResolution, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateResolutionArray: *const fn(self: *anyopaque, values: *IIterable(IppResolution), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateRangeOfInteger: *const fn(self: *anyopaque, value: *IppIntegerRange, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateRangeOfIntegerArray: *const fn(self: *anyopaque, values: *IIterable(IppIntegerRange), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateCollection: *const fn(self: *anyopaque, memberAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateCollectionArray: *const fn(self: *anyopaque, memberAttributesArray: *IIterable(IIterable(IKeyValuePair(HSTRING,IppAttributeValue))), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateTextWithLanguage: *const fn(self: *anyopaque, value: *IppTextWithLanguage, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateTextWithLanguageArray: *const fn(self: *anyopaque, values: *IIterable(IppTextWithLanguage), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNameWithLanguage: *const fn(self: *anyopaque, value: *IppTextWithLanguage, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNameWithLanguageArray: *const fn(self: *anyopaque, values: *IIterable(IppTextWithLanguage), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateTextWithoutLanguage: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateTextWithoutLanguageArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNameWithoutLanguage: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNameWithoutLanguageArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateKeyword: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateKeywordArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateUri: *const fn(self: *anyopaque, value: *Uri, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateUriArray: *const fn(self: *anyopaque, values: *IIterable(Uri), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateUriSchema: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateUriSchemaArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateCharset: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateCharsetArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNaturalLanguage: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateNaturalLanguageArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateMimeMedia: *const fn(self: *anyopaque, value: HSTRING, _r: **IppAttributeValue) callconv(.winapi) HRESULT,
        CreateMimeMediaArray: *const fn(self: *anyopaque, values: *IIterable(HSTRING), _r: **IppAttributeValue) callconv(.winapi) HRESULT,
    };
};
pub const IIppIntegerRange = extern struct {
    vtable: *const VTable,
    pub fn getStart(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Start(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnd(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_End(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppIntegerRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92907346-c3ea-5ed6-bdb1-3752c62c6f7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Start: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_End: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IIppIntegerRangeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), start: i32, end: i32) core.HResult!*IppIntegerRange {
        var _r: *IppIntegerRange = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), start, end, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppIntegerRangeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75d4ecae-f87e-54ad-b5d0-465204db7553";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, start: i32, end: i32, _r: **IppIntegerRange) callconv(.winapi) HRESULT,
    };
};
pub const IIppPrintDevice = extern struct {
    vtable: *const VTable,
    pub fn getPrinterName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrinterName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrinterUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_PrinterUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrinterAttributesAsBuffer(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetPrinterAttributesAsBuffer(@ptrCast(self), attributeNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrinterAttributes(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IMap(HSTRING,IppAttributeValue) {
        var _r: *IMap(HSTRING,IppAttributeValue) = undefined;
        const _c = self.vtable.GetPrinterAttributes(@ptrCast(self), attributeNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPrinterAttributesFromBuffer(self: *@This(), printerAttributesBuffer: *IBuffer) core.HResult!*IppSetAttributesResult {
        var _r: *IppSetAttributesResult = undefined;
        const _c = self.vtable.SetPrinterAttributesFromBuffer(@ptrCast(self), printerAttributesBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPrinterAttributes(self: *@This(), printerAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue))) core.HResult!*IppSetAttributesResult {
        var _r: *IppSetAttributesResult = undefined;
        const _c = self.vtable.SetPrinterAttributes(@ptrCast(self), printerAttributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppPrintDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d748ac56-76f3-5dc6-afd4-c2a8686b9359";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrinterName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PrinterUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        GetPrinterAttributesAsBuffer: *const fn(self: *anyopaque, attributeNames: *IIterable(HSTRING), _r: **IBuffer) callconv(.winapi) HRESULT,
        GetPrinterAttributes: *const fn(self: *anyopaque, attributeNames: *IIterable(HSTRING), _r: **IMap(HSTRING,IppAttributeValue)) callconv(.winapi) HRESULT,
        SetPrinterAttributesFromBuffer: *const fn(self: *anyopaque, printerAttributesBuffer: *IBuffer, _r: **IppSetAttributesResult) callconv(.winapi) HRESULT,
        SetPrinterAttributes: *const fn(self: *anyopaque, printerAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue)), _r: **IppSetAttributesResult) callconv(.winapi) HRESULT,
    };
};
pub const IIppPrintDevice2 = extern struct {
    vtable: *const VTable,
    pub fn GetMaxSupportedPdfSize(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.GetMaxSupportedPdfSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMaxSupportedPdfVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetMaxSupportedPdfVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPdlPassthroughSupported(self: *@This(), pdlContentType: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPdlPassthroughSupported(@ptrCast(self), pdlContentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPdlPassthroughProvider(self: *@This()) core.HResult!*PdlPassthroughProvider {
        var _r: *PdlPassthroughProvider = undefined;
        const _c = self.vtable.GetPdlPassthroughProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppPrintDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7c844c9-9d21-5c63-ac20-3676915be2d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMaxSupportedPdfSize: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        GetMaxSupportedPdfVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        IsPdlPassthroughSupported: *const fn(self: *anyopaque, pdlContentType: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        GetPdlPassthroughProvider: *const fn(self: *anyopaque, _r: **PdlPassthroughProvider) callconv(.winapi) HRESULT,
    };
};
pub const IIppPrintDevice3 = extern struct {
    vtable: *const VTable,
    pub fn getIsIppFaxOutPrinter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIppFaxOutPrinter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppPrintDevice3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6258f6d-a46d-5e37-80ce-5f69d5544712";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsIppFaxOutPrinter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IIppPrintDevice4 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceKind(self: *@This()) core.HResult!IppPrintDeviceKind {
        var _r: IppPrintDeviceKind = undefined;
        const _c = self.vtable.get_DeviceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanModifyUserDefaultPrintTicket(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanModifyUserDefaultPrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDefaultPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.get_UserDefaultPrintTicket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserDefaultPrintTicket(self: *@This(), value: *WorkflowPrintTicket) core.HResult!void {
        const _c = self.vtable.put_UserDefaultPrintTicket(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RefreshPrintDeviceCapabilities(self: *@This()) core.HResult!void {
        const _c = self.vtable.RefreshPrintDeviceCapabilities(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetMaxSupportedPdlVersion(self: *@This(), pdlContentType: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetMaxSupportedPdlVersion(@ptrCast(self), pdlContentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppPrintDevice4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c48247e-e869-59fb-bc6d-daea0614f93e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceKind: *const fn(self: *anyopaque, _r: *IppPrintDeviceKind) callconv(.winapi) HRESULT,
        get_CanModifyUserDefaultPrintTicket: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UserDefaultPrintTicket: *const fn(self: *anyopaque, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
        put_UserDefaultPrintTicket: *const fn(self: *anyopaque, value: *WorkflowPrintTicket) callconv(.winapi) HRESULT,
        RefreshPrintDeviceCapabilities: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetMaxSupportedPdlVersion: *const fn(self: *anyopaque, pdlContentType: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IIppPrintDevice5 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.GetDeviceProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReplaceDeviceProperties(self: *@This(), deviceProperties: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*ReplaceDevicePropertiesResult {
        var _r: *ReplaceDevicePropertiesResult = undefined;
        const _c = self.vtable.ReplaceDeviceProperties(@ptrCast(self), deviceProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppPrintDevice5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea927fca-e073-5db4-9aee-13df714e853a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceProperties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        ReplaceDeviceProperties: *const fn(self: *anyopaque, deviceProperties: *IIterable(IKeyValuePair(HSTRING,IInspectable)), _r: **ReplaceDevicePropertiesResult) callconv(.winapi) HRESULT,
    };
};
pub const IIppPrintDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromPrinterName(self: *@This(), printerName: HSTRING) core.HResult!*IppPrintDevice {
        var _r: *IppPrintDevice = undefined;
        const _c = self.vtable.FromPrinterName(@ptrCast(self), printerName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsIppPrinter(self: *@This(), printerName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsIppPrinter(@ptrCast(self), printerName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppPrintDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7dc19f08-7f20-52ab-94a7-894b83b2a17e";
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
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        FromPrinterName: *const fn(self: *anyopaque, printerName: HSTRING, _r: **IppPrintDevice) callconv(.winapi) HRESULT,
        IsIppPrinter: *const fn(self: *anyopaque, printerName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IIppResolution = extern struct {
    vtable: *const VTable,
    pub fn getWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnit(self: *@This()) core.HResult!IppResolutionUnit {
        var _r: IppResolutionUnit = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppResolution";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb493f86-6bf3-56f5-86ce-263d08aead63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *IppResolutionUnit) callconv(.winapi) HRESULT,
    };
};
pub const IIppResolutionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), width: i32, height: i32, unit: IppResolutionUnit) core.HResult!*IppResolution {
        var _r: *IppResolution = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), width, height, unit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppResolutionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e481c2ae-251a-5326-b173-95543ed99a35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, width: i32, height: i32, unit: IppResolutionUnit, _r: **IppResolution) callconv(.winapi) HRESULT,
    };
};
pub const IIppSetAttributesResult = extern struct {
    vtable: *const VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributeErrors(self: *@This()) core.HResult!*IMapView(HSTRING,IppAttributeError) {
        var _r: *IMapView(HSTRING,IppAttributeError) = undefined;
        const _c = self.vtable.get_AttributeErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppSetAttributesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d1c7f55-aa9d-58a3-90e9-17bdc5281f07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AttributeErrors: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IppAttributeError)) callconv(.winapi) HRESULT,
    };
};
pub const IIppTextWithLanguage = extern struct {
    vtable: *const VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppTextWithLanguage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "326447a6-5149-5936-90e8-0c736036bf77";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IIppTextWithLanguageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), language: HSTRING, text: HSTRING) core.HResult!*IppTextWithLanguage {
        var _r: *IppTextWithLanguage = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), language, text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IIppTextWithLanguageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca4a1e8d-2968-5775-997c-8a46f1a574ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, language: HSTRING, text: HSTRING, _r: **IppTextWithLanguage) callconv(.winapi) HRESULT,
    };
};
pub const IPageConfigurationSettings = extern struct {
    vtable: *const VTable,
    pub fn getOrientationSource(self: *@This()) core.HResult!PageConfigurationSource {
        var _r: PageConfigurationSource = undefined;
        const _c = self.vtable.get_OrientationSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientationSource(self: *@This(), value: PageConfigurationSource) core.HResult!void {
        const _c = self.vtable.put_OrientationSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSizeSource(self: *@This()) core.HResult!PageConfigurationSource {
        var _r: PageConfigurationSource = undefined;
        const _c = self.vtable.get_SizeSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSizeSource(self: *@This(), value: PageConfigurationSource) core.HResult!void {
        const _c = self.vtable.put_SizeSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IPageConfigurationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6fc1e02-5331-54ff-95a0-1fcb76bb97a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OrientationSource: *const fn(self: *anyopaque, _r: *PageConfigurationSource) callconv(.winapi) HRESULT,
        put_OrientationSource: *const fn(self: *anyopaque, value: PageConfigurationSource) callconv(.winapi) HRESULT,
        get_SizeSource: *const fn(self: *anyopaque, _r: *PageConfigurationSource) callconv(.winapi) HRESULT,
        put_SizeSource: *const fn(self: *anyopaque, value: PageConfigurationSource) callconv(.winapi) HRESULT,
    };
};
pub const IPdlPassthroughProvider = extern struct {
    vtable: *const VTable,
    pub fn getSupportedPdlContentTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedPdlContentTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartPrintJobWithTaskOptions(self: *@This(), jobName: HSTRING, pdlContentType: HSTRING, taskOptions: *PrintTaskOptions, pageConfigurationSettings: *PageConfigurationSettings) core.HResult!*PdlPassthroughTarget {
        var _r: *PdlPassthroughTarget = undefined;
        const _c = self.vtable.StartPrintJobWithTaskOptions(@ptrCast(self), jobName, pdlContentType, taskOptions, pageConfigurationSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartPrintJobWithPrintTicket(self: *@This(), jobName: HSTRING, pdlContentType: HSTRING, printTicket: *IInputStream, pageConfigurationSettings: *PageConfigurationSettings) core.HResult!*PdlPassthroughTarget {
        var _r: *PdlPassthroughTarget = undefined;
        const _c = self.vtable.StartPrintJobWithPrintTicket(@ptrCast(self), jobName, pdlContentType, printTicket, pageConfigurationSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IPdlPassthroughProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23c71dd2-6117-553f-9378-180af5849a49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedPdlContentTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        StartPrintJobWithTaskOptions: *const fn(self: *anyopaque, jobName: HSTRING, pdlContentType: HSTRING, taskOptions: *PrintTaskOptions, pageConfigurationSettings: *PageConfigurationSettings, _r: **PdlPassthroughTarget) callconv(.winapi) HRESULT,
        StartPrintJobWithPrintTicket: *const fn(self: *anyopaque, jobName: HSTRING, pdlContentType: HSTRING, printTicket: *IInputStream, pageConfigurationSettings: *PageConfigurationSettings, _r: **PdlPassthroughTarget) callconv(.winapi) HRESULT,
    };
};
pub const IPdlPassthroughTarget = extern struct {
    vtable: *const VTable,
    pub fn getPrintJobId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PrintJobId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.GetOutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Submit(self: *@This()) core.HResult!void {
        const _c = self.vtable.Submit(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IPdlPassthroughTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9840be79-67f8-5385-a5b9-e8c96e0fca76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrintJobId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetOutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        Submit: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IReplaceDevicePropertiesResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ReplaceDevicePropertiesStatus {
        var _r: ReplaceDevicePropertiesStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IReplaceDevicePropertiesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12feca4b-d973-57e1-826b-f75b9518a9f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ReplaceDevicePropertiesStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualPrinterInstallationParameters = extern struct {
    vtable: *const VTable,
    pub fn getPrinterName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrinterName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrinterName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PrinterName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutputFileExtensions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_OutputFileExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedInputFormats(self: *@This()) core.HResult!*IVector(VirtualPrinterSupportedFormat) {
        var _r: *IVector(VirtualPrinterSupportedFormat) = undefined;
        const _c = self.vtable.get_SupportedInputFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintDeviceCapabilitiesPackageRelativeFilePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrintDeviceCapabilitiesPackageRelativeFilePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrintDeviceCapabilitiesPackageRelativeFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PrintDeviceCapabilitiesPackageRelativeFilePath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrintDeviceResourcesPackageRelativeFilePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrintDeviceResourcesPackageRelativeFilePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrintDeviceResourcesPackageRelativeFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PrintDeviceResourcesPackageRelativeFilePath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferredInputFormat(self: *@This()) core.HResult!VirtualPrinterPreferredInputFormat {
        var _r: VirtualPrinterPreferredInputFormat = undefined;
        const _c = self.vtable.get_PreferredInputFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredInputFormat(self: *@This(), value: VirtualPrinterPreferredInputFormat) core.HResult!void {
        const _c = self.vtable.put_PreferredInputFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrinterUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_PrinterUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrinterUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_PrinterUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEntryPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EntryPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEntryPoint(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EntryPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IVirtualPrinterInstallationParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbc159b3-12f3-584c-8d26-b22c0dc83241";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrinterName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PrinterName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OutputFileExtensions: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_SupportedInputFormats: *const fn(self: *anyopaque, _r: **IVector(VirtualPrinterSupportedFormat)) callconv(.winapi) HRESULT,
        get_PrintDeviceCapabilitiesPackageRelativeFilePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PrintDeviceCapabilitiesPackageRelativeFilePath: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PrintDeviceResourcesPackageRelativeFilePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PrintDeviceResourcesPackageRelativeFilePath: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PreferredInputFormat: *const fn(self: *anyopaque, _r: *VirtualPrinterPreferredInputFormat) callconv(.winapi) HRESULT,
        put_PreferredInputFormat: *const fn(self: *anyopaque, value: VirtualPrinterPreferredInputFormat) callconv(.winapi) HRESULT,
        get_PrinterUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_PrinterUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_EntryPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EntryPoint: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualPrinterInstallationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!VirtualPrinterInstallationStatus {
        var _r: VirtualPrinterInstallationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IVirtualPrinterInstallationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82defd78-1601-5657-85df-75eb691604bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *VirtualPrinterInstallationStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualPrinterManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn InstallVirtualPrinterAsync(self: *@This(), parameters: *VirtualPrinterInstallationParameters) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        var _r: *IAsyncOperation(VirtualPrinterInstallationResult) = undefined;
        const _c = self.vtable.InstallVirtualPrinterAsync(@ptrCast(self), parameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InstallVirtualPrinterAsyncWithAppPackageFamilyName(self: *@This(), parameters: *VirtualPrinterInstallationParameters, appPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        var _r: *IAsyncOperation(VirtualPrinterInstallationResult) = undefined;
        const _c = self.vtable.InstallVirtualPrinterAsyncWithAppPackageFamilyName(@ptrCast(self), parameters, appPackageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InstallVirtualPrinterForAllUsersAsync(self: *@This(), parameters: *VirtualPrinterInstallationParameters) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        var _r: *IAsyncOperation(VirtualPrinterInstallationResult) = undefined;
        const _c = self.vtable.InstallVirtualPrinterForAllUsersAsync(@ptrCast(self), parameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InstallVirtualPrinterForAllUsersAsyncWithAppPackageFamilyName(self: *@This(), parameters: *VirtualPrinterInstallationParameters, appPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        var _r: *IAsyncOperation(VirtualPrinterInstallationResult) = undefined;
        const _c = self.vtable.InstallVirtualPrinterForAllUsersAsyncWithAppPackageFamilyName(@ptrCast(self), parameters, appPackageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllVirtualPrinters(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.FindAllVirtualPrinters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllVirtualPrintersWithAppPackageFamilyName(self: *@This(), appPackageFamilyName: HSTRING) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.FindAllVirtualPrintersWithAppPackageFamilyName(@ptrCast(self), appPackageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveVirtualPrinterAsync(self: *@This(), printerName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RemoveVirtualPrinterAsync(@ptrCast(self), printerName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveVirtualPrinterForAllUsersAsync(self: *@This(), printerName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RemoveVirtualPrinterForAllUsersAsync(@ptrCast(self), printerName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IVirtualPrinterManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "141084b6-6702-5b5f-83da-c75891657554";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InstallVirtualPrinterAsync: *const fn(self: *anyopaque, parameters: *VirtualPrinterInstallationParameters, _r: **IAsyncOperation(VirtualPrinterInstallationResult)) callconv(.winapi) HRESULT,
        InstallVirtualPrinterAsyncWithAppPackageFamilyName: *const fn(self: *anyopaque, parameters: *VirtualPrinterInstallationParameters, appPackageFamilyName: HSTRING, _r: **IAsyncOperation(VirtualPrinterInstallationResult)) callconv(.winapi) HRESULT,
        InstallVirtualPrinterForAllUsersAsync: *const fn(self: *anyopaque, parameters: *VirtualPrinterInstallationParameters, _r: **IAsyncOperation(VirtualPrinterInstallationResult)) callconv(.winapi) HRESULT,
        InstallVirtualPrinterForAllUsersAsyncWithAppPackageFamilyName: *const fn(self: *anyopaque, parameters: *VirtualPrinterInstallationParameters, appPackageFamilyName: HSTRING, _r: **IAsyncOperation(VirtualPrinterInstallationResult)) callconv(.winapi) HRESULT,
        FindAllVirtualPrinters: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        FindAllVirtualPrintersWithAppPackageFamilyName: *const fn(self: *anyopaque, appPackageFamilyName: HSTRING, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        RemoveVirtualPrinterAsync: *const fn(self: *anyopaque, printerName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RemoveVirtualPrinterForAllUsersAsync: *const fn(self: *anyopaque, printerName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualPrinterSupportedFormat = extern struct {
    vtable: *const VTable,
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSupportedVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MaxSupportedVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSupportedVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MaxSupportedVersion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IVirtualPrinterSupportedFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3801fa17-22b5-5dab-ad38-39e47d6071af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MaxSupportedVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MaxSupportedVersion: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualPrinterSupportedFormatFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), contentType: HSTRING, maxSupportedVersion: HSTRING) core.HResult!*VirtualPrinterSupportedFormat {
        var _r: *VirtualPrinterSupportedFormat = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), contentType, maxSupportedVersion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IVirtualPrinterSupportedFormatFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6daaed44-97a6-57f4-be8b-9dbabc587f2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, contentType: HSTRING, maxSupportedVersion: HSTRING, _r: **VirtualPrinterSupportedFormat) callconv(.winapi) HRESULT,
    };
};
pub const IppAttributeError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!IppAttributeErrorReason {
        const this: *IIppAttributeError = @ptrCast(self);
        return try this.getReason();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IIppAttributeError = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn GetUnsupportedValues(self: *@This()) core.HResult!*IVectorView(IppAttributeValue) {
        const this: *IIppAttributeError = @ptrCast(self);
        return try this.GetUnsupportedValues();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppAttributeError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppAttributeError.GUID;
    pub const IID: Guid = IIppAttributeError.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppAttributeError.SIGNATURE);
};
pub const IppAttributeErrorReason = enum(i32) {
    RequestEntityTooLarge = 0,
    AttributeNotSupported = 1,
    AttributeValuesNotSupported = 2,
    AttributeNotSettable = 3,
    ConflictingAttributes = 4,
};
pub const IppAttributeValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!IppAttributeValueKind {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.getKind();
    }
    pub fn GetIntegerArray(self: *@This()) core.HResult!*IVector(i32) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetIntegerArray();
    }
    pub fn GetBooleanArray(self: *@This()) core.HResult!*IVector(bool) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetBooleanArray();
    }
    pub fn GetEnumArray(self: *@This()) core.HResult!*IVector(i32) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetEnumArray();
    }
    pub fn GetOctetStringArray(self: *@This()) core.HResult!*IVector(IBuffer) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetOctetStringArray();
    }
    pub fn GetDateTimeArray(self: *@This()) core.HResult!*IVector(DateTime) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetDateTimeArray();
    }
    pub fn GetResolutionArray(self: *@This()) core.HResult!*IVector(IppResolution) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetResolutionArray();
    }
    pub fn GetRangeOfIntegerArray(self: *@This()) core.HResult!*IVector(IppIntegerRange) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetRangeOfIntegerArray();
    }
    pub fn GetCollectionArray(self: *@This()) core.HResult!*IVector(IMapView(HSTRING,IppAttributeValue)) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetCollectionArray();
    }
    pub fn GetTextWithLanguageArray(self: *@This()) core.HResult!*IVector(IppTextWithLanguage) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetTextWithLanguageArray();
    }
    pub fn GetNameWithLanguageArray(self: *@This()) core.HResult!*IVector(IppTextWithLanguage) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetNameWithLanguageArray();
    }
    pub fn GetTextWithoutLanguageArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetTextWithoutLanguageArray();
    }
    pub fn GetNameWithoutLanguageArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetNameWithoutLanguageArray();
    }
    pub fn GetKeywordArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetKeywordArray();
    }
    pub fn GetUriArray(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetUriArray();
    }
    pub fn GetUriSchemaArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetUriSchemaArray();
    }
    pub fn GetCharsetArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetCharsetArray();
    }
    pub fn GetNaturalLanguageArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetNaturalLanguageArray();
    }
    pub fn GetMimeMediaTypeArray(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIppAttributeValue = @ptrCast(self);
        return try this.GetMimeMediaTypeArray();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateUnsupported() core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateUnsupported();
    }
    pub fn CreateUnknown() core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateUnknown();
    }
    pub fn CreateNoValue() core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNoValue();
    }
    pub fn CreateInteger(value: i32) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateInteger(value);
    }
    pub fn CreateIntegerArray(values: *IIterable(i32)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateIntegerArray(values);
    }
    pub fn CreateBoolean(value: bool) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateBoolean(value);
    }
    pub fn CreateBooleanArray(values: *IIterable(bool)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateBooleanArray(values);
    }
    pub fn CreateEnum(value: i32) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateEnum(value);
    }
    pub fn CreateEnumArray(values: *IIterable(i32)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateEnumArray(values);
    }
    pub fn CreateOctetString(value: *IBuffer) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateOctetString(value);
    }
    pub fn CreateOctetStringArray(values: *IIterable(IBuffer)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateOctetStringArray(values);
    }
    pub fn CreateDateTime(value: DateTime) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateDateTime(value);
    }
    pub fn CreateDateTimeArray(values: *IIterable(DateTime)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateDateTimeArray(values);
    }
    pub fn CreateResolution(value: *IppResolution) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateResolution(value);
    }
    pub fn CreateResolutionArray(values: *IIterable(IppResolution)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateResolutionArray(values);
    }
    pub fn CreateRangeOfInteger(value: *IppIntegerRange) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateRangeOfInteger(value);
    }
    pub fn CreateRangeOfIntegerArray(values: *IIterable(IppIntegerRange)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateRangeOfIntegerArray(values);
    }
    pub fn CreateCollection(memberAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue))) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateCollection(memberAttributes);
    }
    pub fn CreateCollectionArray(memberAttributesArray: *IIterable(IIterable(IKeyValuePair(HSTRING,IppAttributeValue)))) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateCollectionArray(memberAttributesArray);
    }
    pub fn CreateTextWithLanguage(value: *IppTextWithLanguage) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateTextWithLanguage(value);
    }
    pub fn CreateTextWithLanguageArray(values: *IIterable(IppTextWithLanguage)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateTextWithLanguageArray(values);
    }
    pub fn CreateNameWithLanguage(value: *IppTextWithLanguage) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNameWithLanguage(value);
    }
    pub fn CreateNameWithLanguageArray(values: *IIterable(IppTextWithLanguage)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNameWithLanguageArray(values);
    }
    pub fn CreateTextWithoutLanguage(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateTextWithoutLanguage(value);
    }
    pub fn CreateTextWithoutLanguageArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateTextWithoutLanguageArray(values);
    }
    pub fn CreateNameWithoutLanguage(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNameWithoutLanguage(value);
    }
    pub fn CreateNameWithoutLanguageArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNameWithoutLanguageArray(values);
    }
    pub fn CreateKeyword(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateKeyword(value);
    }
    pub fn CreateKeywordArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateKeywordArray(values);
    }
    pub fn CreateUri(value: *Uri) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateUri(value);
    }
    pub fn CreateUriArray(values: *IIterable(Uri)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateUriArray(values);
    }
    pub fn CreateUriSchema(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateUriSchema(value);
    }
    pub fn CreateUriSchemaArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateUriSchemaArray(values);
    }
    pub fn CreateCharset(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateCharset(value);
    }
    pub fn CreateCharsetArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateCharsetArray(values);
    }
    pub fn CreateNaturalLanguage(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNaturalLanguage(value);
    }
    pub fn CreateNaturalLanguageArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateNaturalLanguageArray(values);
    }
    pub fn CreateMimeMedia(value: HSTRING) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateMimeMedia(value);
    }
    pub fn CreateMimeMediaArray(values: *IIterable(HSTRING)) core.HResult!*IppAttributeValue {
        const _f = @This().IIppAttributeValueStaticsCache.get();
        return try _f.CreateMimeMediaArray(values);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppAttributeValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppAttributeValue.GUID;
    pub const IID: Guid = IIppAttributeValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppAttributeValue.SIGNATURE);
    var _IIppAttributeValueStaticsCache: FactoryCache(IIppAttributeValueStatics, RUNTIME_NAME) = .{};
};
pub const IppAttributeValueKind = enum(i32) {
    Unsupported = 0,
    Unknown = 1,
    NoValue = 2,
    Integer = 3,
    Boolean = 4,
    Enum = 5,
    OctetString = 6,
    DateTime = 7,
    Resolution = 8,
    RangeOfInteger = 9,
    Collection = 10,
    TextWithLanguage = 11,
    NameWithLanguage = 12,
    TextWithoutLanguage = 13,
    NameWithoutLanguage = 14,
    Keyword = 15,
    Uri = 16,
    UriSchema = 17,
    Charset = 18,
    NaturalLanguage = 19,
    MimeMediaType = 20,
};
pub const IppIntegerRange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStart(self: *@This()) core.HResult!i32 {
        const this: *IIppIntegerRange = @ptrCast(self);
        return try this.getStart();
    }
    pub fn getEnd(self: *@This()) core.HResult!i32 {
        const this: *IIppIntegerRange = @ptrCast(self);
        return try this.getEnd();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(start: i32, end: i32) core.HResult!*IppIntegerRange {
        const _f = @This().IIppIntegerRangeFactoryCache.get();
        return try _f.CreateInstance(start, end);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppIntegerRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppIntegerRange.GUID;
    pub const IID: Guid = IIppIntegerRange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppIntegerRange.SIGNATURE);
    var _IIppIntegerRangeFactoryCache: FactoryCache(IIppIntegerRangeFactory, RUNTIME_NAME) = .{};
};
pub const IppPrintDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrinterName(self: *@This()) core.HResult!HSTRING {
        const this: *IIppPrintDevice = @ptrCast(self);
        return try this.getPrinterName();
    }
    pub fn getPrinterUri(self: *@This()) core.HResult!*Uri {
        const this: *IIppPrintDevice = @ptrCast(self);
        return try this.getPrinterUri();
    }
    pub fn GetPrinterAttributesAsBuffer(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IBuffer {
        const this: *IIppPrintDevice = @ptrCast(self);
        return try this.GetPrinterAttributesAsBuffer(attributeNames);
    }
    pub fn GetPrinterAttributes(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IMap(HSTRING,IppAttributeValue) {
        const this: *IIppPrintDevice = @ptrCast(self);
        return try this.GetPrinterAttributes(attributeNames);
    }
    pub fn SetPrinterAttributesFromBuffer(self: *@This(), printerAttributesBuffer: *IBuffer) core.HResult!*IppSetAttributesResult {
        const this: *IIppPrintDevice = @ptrCast(self);
        return try this.SetPrinterAttributesFromBuffer(printerAttributesBuffer);
    }
    pub fn SetPrinterAttributes(self: *@This(), printerAttributes: *IIterable(IKeyValuePair(HSTRING,IppAttributeValue))) core.HResult!*IppSetAttributesResult {
        const this: *IIppPrintDevice = @ptrCast(self);
        return try this.SetPrinterAttributes(printerAttributes);
    }
    pub fn GetMaxSupportedPdfSize(self: *@This()) core.HResult!u64 {
        var this: ?*IIppPrintDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMaxSupportedPdfSize();
    }
    pub fn GetMaxSupportedPdfVersion(self: *@This()) core.HResult!HSTRING {
        var this: ?*IIppPrintDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMaxSupportedPdfVersion();
    }
    pub fn IsPdlPassthroughSupported(self: *@This(), pdlContentType: HSTRING) core.HResult!bool {
        var this: ?*IIppPrintDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPdlPassthroughSupported(pdlContentType);
    }
    pub fn GetPdlPassthroughProvider(self: *@This()) core.HResult!*PdlPassthroughProvider {
        var this: ?*IIppPrintDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPdlPassthroughProvider();
    }
    pub fn getIsIppFaxOutPrinter(self: *@This()) core.HResult!bool {
        var this: ?*IIppPrintDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsIppFaxOutPrinter();
    }
    pub fn getDeviceKind(self: *@This()) core.HResult!IppPrintDeviceKind {
        var this: ?*IIppPrintDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceKind();
    }
    pub fn getCanModifyUserDefaultPrintTicket(self: *@This()) core.HResult!bool {
        var this: ?*IIppPrintDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanModifyUserDefaultPrintTicket();
    }
    pub fn getUserDefaultPrintTicket(self: *@This()) core.HResult!*WorkflowPrintTicket {
        var this: ?*IIppPrintDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserDefaultPrintTicket();
    }
    pub fn putUserDefaultPrintTicket(self: *@This(), value: *WorkflowPrintTicket) core.HResult!void {
        var this: ?*IIppPrintDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUserDefaultPrintTicket(value);
    }
    pub fn RefreshPrintDeviceCapabilities(self: *@This()) core.HResult!void {
        var this: ?*IIppPrintDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RefreshPrintDeviceCapabilities();
    }
    pub fn GetMaxSupportedPdlVersion(self: *@This(), pdlContentType: HSTRING) core.HResult!HSTRING {
        var this: ?*IIppPrintDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMaxSupportedPdlVersion(pdlContentType);
    }
    pub fn GetDeviceProperties(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IIppPrintDevice5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeviceProperties();
    }
    pub fn ReplaceDeviceProperties(self: *@This(), deviceProperties: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*ReplaceDevicePropertiesResult {
        var this: ?*IIppPrintDevice5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIppPrintDevice5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceDeviceProperties(deviceProperties);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IIppPrintDeviceStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*IppPrintDevice {
        const _f = @This().IIppPrintDeviceStaticsCache.get();
        return try _f.FromId(deviceId);
    }
    pub fn FromPrinterName(printerName: HSTRING) core.HResult!*IppPrintDevice {
        const _f = @This().IIppPrintDeviceStaticsCache.get();
        return try _f.FromPrinterName(printerName);
    }
    pub fn IsIppPrinter(printerName: HSTRING) core.HResult!bool {
        const _f = @This().IIppPrintDeviceStaticsCache.get();
        return try _f.IsIppPrinter(printerName);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppPrintDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppPrintDevice.GUID;
    pub const IID: Guid = IIppPrintDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppPrintDevice.SIGNATURE);
    var _IIppPrintDeviceStaticsCache: FactoryCache(IIppPrintDeviceStatics, RUNTIME_NAME) = .{};
};
pub const IppPrintDeviceKind = enum(i32) {
    Printer = 0,
    FaxOut = 1,
    VirtualPrinter = 2,
};
pub const IppResolution = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWidth(self: *@This()) core.HResult!i32 {
        const this: *IIppResolution = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!i32 {
        const this: *IIppResolution = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getUnit(self: *@This()) core.HResult!IppResolutionUnit {
        const this: *IIppResolution = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(width: i32, height: i32, unit: IppResolutionUnit) core.HResult!*IppResolution {
        const _f = @This().IIppResolutionFactoryCache.get();
        return try _f.CreateInstance(width, height, unit);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppResolution";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppResolution.GUID;
    pub const IID: Guid = IIppResolution.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppResolution.SIGNATURE);
    var _IIppResolutionFactoryCache: FactoryCache(IIppResolutionFactory, RUNTIME_NAME) = .{};
};
pub const IppResolutionUnit = enum(i32) {
    DotsPerInch = 0,
    DotsPerCentimeter = 1,
};
pub const IppSetAttributesResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IIppSetAttributesResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getAttributeErrors(self: *@This()) core.HResult!*IMapView(HSTRING,IppAttributeError) {
        const this: *IIppSetAttributesResult = @ptrCast(self);
        return try this.getAttributeErrors();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppSetAttributesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppSetAttributesResult.GUID;
    pub const IID: Guid = IIppSetAttributesResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppSetAttributesResult.SIGNATURE);
};
pub const IppTextWithLanguage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IIppTextWithLanguage = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IIppTextWithLanguage = @ptrCast(self);
        return try this.getValue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(language: HSTRING, text: HSTRING) core.HResult!*IppTextWithLanguage {
        const _f = @This().IIppTextWithLanguageFactoryCache.get();
        return try _f.CreateInstance(language, text);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.IppTextWithLanguage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIppTextWithLanguage.GUID;
    pub const IID: Guid = IIppTextWithLanguage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIppTextWithLanguage.SIGNATURE);
    var _IIppTextWithLanguageFactoryCache: FactoryCache(IIppTextWithLanguageFactory, RUNTIME_NAME) = .{};
};
pub const PageConfigurationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOrientationSource(self: *@This()) core.HResult!PageConfigurationSource {
        const this: *IPageConfigurationSettings = @ptrCast(self);
        return try this.getOrientationSource();
    }
    pub fn putOrientationSource(self: *@This(), value: PageConfigurationSource) core.HResult!void {
        const this: *IPageConfigurationSettings = @ptrCast(self);
        return try this.putOrientationSource(value);
    }
    pub fn getSizeSource(self: *@This()) core.HResult!PageConfigurationSource {
        const this: *IPageConfigurationSettings = @ptrCast(self);
        return try this.getSizeSource();
    }
    pub fn putSizeSource(self: *@This(), value: PageConfigurationSource) core.HResult!void {
        const this: *IPageConfigurationSettings = @ptrCast(self);
        return try this.putSizeSource(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPageConfigurationSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.PageConfigurationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPageConfigurationSettings.GUID;
    pub const IID: Guid = IPageConfigurationSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPageConfigurationSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PageConfigurationSource = enum(i32) {
    PrintJobConfiguration = 0,
    PdlContent = 1,
};
pub const PdlPassthroughProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedPdlContentTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPdlPassthroughProvider = @ptrCast(self);
        return try this.getSupportedPdlContentTypes();
    }
    pub fn StartPrintJobWithTaskOptions(self: *@This(), jobName: HSTRING, pdlContentType: HSTRING, taskOptions: *PrintTaskOptions, pageConfigurationSettings: *PageConfigurationSettings) core.HResult!*PdlPassthroughTarget {
        const this: *IPdlPassthroughProvider = @ptrCast(self);
        return try this.StartPrintJobWithTaskOptions(jobName, pdlContentType, taskOptions, pageConfigurationSettings);
    }
    pub fn StartPrintJobWithPrintTicket(self: *@This(), jobName: HSTRING, pdlContentType: HSTRING, printTicket: *IInputStream, pageConfigurationSettings: *PageConfigurationSettings) core.HResult!*PdlPassthroughTarget {
        const this: *IPdlPassthroughProvider = @ptrCast(self);
        return try this.StartPrintJobWithPrintTicket(jobName, pdlContentType, printTicket, pageConfigurationSettings);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.PdlPassthroughProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPdlPassthroughProvider.GUID;
    pub const IID: Guid = IPdlPassthroughProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPdlPassthroughProvider.SIGNATURE);
};
pub const PdlPassthroughTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrintJobId(self: *@This()) core.HResult!i32 {
        const this: *IPdlPassthroughTarget = @ptrCast(self);
        return try this.getPrintJobId();
    }
    pub fn GetOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IPdlPassthroughTarget = @ptrCast(self);
        return try this.GetOutputStream();
    }
    pub fn Submit(self: *@This()) core.HResult!void {
        const this: *IPdlPassthroughTarget = @ptrCast(self);
        return try this.Submit();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.PdlPassthroughTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPdlPassthroughTarget.GUID;
    pub const IID: Guid = IPdlPassthroughTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPdlPassthroughTarget.SIGNATURE);
};
pub const ReplaceDevicePropertiesResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ReplaceDevicePropertiesStatus {
        const this: *IReplaceDevicePropertiesResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IReplaceDevicePropertiesResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.ReplaceDevicePropertiesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReplaceDevicePropertiesResult.GUID;
    pub const IID: Guid = IReplaceDevicePropertiesResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReplaceDevicePropertiesResult.SIGNATURE);
};
pub const ReplaceDevicePropertiesStatus = enum(i32) {
    Succeeded = 0,
    AccessDenied = 1,
    OtherFailure = 2,
};
pub const VirtualPrinterInstallationParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrinterName(self: *@This()) core.HResult!HSTRING {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getPrinterName();
    }
    pub fn putPrinterName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.putPrinterName(value);
    }
    pub fn getOutputFileExtensions(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getOutputFileExtensions();
    }
    pub fn getSupportedInputFormats(self: *@This()) core.HResult!*IVector(VirtualPrinterSupportedFormat) {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getSupportedInputFormats();
    }
    pub fn getPrintDeviceCapabilitiesPackageRelativeFilePath(self: *@This()) core.HResult!HSTRING {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getPrintDeviceCapabilitiesPackageRelativeFilePath();
    }
    pub fn putPrintDeviceCapabilitiesPackageRelativeFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.putPrintDeviceCapabilitiesPackageRelativeFilePath(value);
    }
    pub fn getPrintDeviceResourcesPackageRelativeFilePath(self: *@This()) core.HResult!HSTRING {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getPrintDeviceResourcesPackageRelativeFilePath();
    }
    pub fn putPrintDeviceResourcesPackageRelativeFilePath(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.putPrintDeviceResourcesPackageRelativeFilePath(value);
    }
    pub fn getPreferredInputFormat(self: *@This()) core.HResult!VirtualPrinterPreferredInputFormat {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getPreferredInputFormat();
    }
    pub fn putPreferredInputFormat(self: *@This(), value: VirtualPrinterPreferredInputFormat) core.HResult!void {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.putPreferredInputFormat(value);
    }
    pub fn getPrinterUri(self: *@This()) core.HResult!*Uri {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getPrinterUri();
    }
    pub fn putPrinterUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.putPrinterUri(value);
    }
    pub fn getEntryPoint(self: *@This()) core.HResult!HSTRING {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.getEntryPoint();
    }
    pub fn putEntryPoint(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVirtualPrinterInstallationParameters = @ptrCast(self);
        return try this.putEntryPoint(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVirtualPrinterInstallationParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.VirtualPrinterInstallationParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVirtualPrinterInstallationParameters.GUID;
    pub const IID: Guid = IVirtualPrinterInstallationParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVirtualPrinterInstallationParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VirtualPrinterInstallationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!VirtualPrinterInstallationStatus {
        const this: *IVirtualPrinterInstallationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IVirtualPrinterInstallationResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.VirtualPrinterInstallationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVirtualPrinterInstallationResult.GUID;
    pub const IID: Guid = IVirtualPrinterInstallationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVirtualPrinterInstallationResult.SIGNATURE);
};
pub const VirtualPrinterInstallationStatus = enum(i32) {
    InstallationSucceeded = 0,
    PrinterAlreadyInstalled = 1,
    PrinterInstallationAccessDenied = 2,
    PrinterInstallationFailed = 3,
};
pub const VirtualPrinterManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn InstallVirtualPrinterAsync(parameters: *VirtualPrinterInstallationParameters) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.InstallVirtualPrinterAsync(parameters);
    }
    pub fn InstallVirtualPrinterAsyncWithAppPackageFamilyName(parameters: *VirtualPrinterInstallationParameters, appPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.InstallVirtualPrinterAsyncWithAppPackageFamilyName(parameters, appPackageFamilyName);
    }
    pub fn InstallVirtualPrinterForAllUsersAsync(parameters: *VirtualPrinterInstallationParameters) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.InstallVirtualPrinterForAllUsersAsync(parameters);
    }
    pub fn InstallVirtualPrinterForAllUsersAsyncWithAppPackageFamilyName(parameters: *VirtualPrinterInstallationParameters, appPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(VirtualPrinterInstallationResult) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.InstallVirtualPrinterForAllUsersAsyncWithAppPackageFamilyName(parameters, appPackageFamilyName);
    }
    pub fn FindAllVirtualPrinters() core.HResult!*IVectorView(HSTRING) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.FindAllVirtualPrinters();
    }
    pub fn FindAllVirtualPrintersWithAppPackageFamilyName(appPackageFamilyName: HSTRING) core.HResult!*IVectorView(HSTRING) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.FindAllVirtualPrintersWithAppPackageFamilyName(appPackageFamilyName);
    }
    pub fn RemoveVirtualPrinterAsync(printerName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.RemoveVirtualPrinterAsync(printerName);
    }
    pub fn RemoveVirtualPrinterForAllUsersAsync(printerName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IVirtualPrinterManagerStaticsCache.get();
        return try _f.RemoveVirtualPrinterForAllUsersAsync(printerName);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.VirtualPrinterManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IVirtualPrinterManagerStaticsCache: FactoryCache(IVirtualPrinterManagerStatics, RUNTIME_NAME) = .{};
};
pub const VirtualPrinterPreferredInputFormat = enum(i32) {
    OpenXps = 0,
    PostScript = 1,
};
pub const VirtualPrinterSupportedFormat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IVirtualPrinterSupportedFormat = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVirtualPrinterSupportedFormat = @ptrCast(self);
        return try this.putContentType(value);
    }
    pub fn getMaxSupportedVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IVirtualPrinterSupportedFormat = @ptrCast(self);
        return try this.getMaxSupportedVersion();
    }
    pub fn putMaxSupportedVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVirtualPrinterSupportedFormat = @ptrCast(self);
        return try this.putMaxSupportedVersion(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(contentType: HSTRING, maxSupportedVersion: HSTRING) core.HResult!*VirtualPrinterSupportedFormat {
        const _f = @This().IVirtualPrinterSupportedFormatFactoryCache.get();
        return try _f.CreateInstance(contentType, maxSupportedVersion);
    }
    pub const NAME: []const u8 = "Windows.Devices.Printers.VirtualPrinterSupportedFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVirtualPrinterSupportedFormat.GUID;
    pub const IID: Guid = IVirtualPrinterSupportedFormat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVirtualPrinterSupportedFormat.SIGNATURE);
    var _IVirtualPrinterSupportedFormatFactoryCache: FactoryCache(IVirtualPrinterSupportedFormatFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const DateTime = @import("../Foundation.zig").DateTime;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const WorkflowPrintTicket = @import("../Graphics/Printing/PrintTicket.zig").WorkflowPrintTicket;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const Uri = @import("../Foundation.zig").Uri;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const PrintTaskOptions = @import("../Graphics/Printing.zig").PrintTaskOptions;
pub const Extensions = @import("./Printers/Extensions.zig");
