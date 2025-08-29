pub const IPrintTicketCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XmlNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_XmlNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentBindingFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentBindingFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentCollateFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentCollateFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentDuplexFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentDuplexFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentHolePunchFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentHolePunchFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentInputBinFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentInputBinFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentNUpFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentNUpFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentStapleFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentStapleFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJobPasscodeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_JobPasscodeFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageBorderlessFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageBorderlessFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageMediaSizeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageMediaSizeFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageMediaTypeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageMediaTypeFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageOrientationFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageOrientationFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageOutputColorFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageOutputColorFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageOutputQualityFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageOutputQualityFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageResolutionFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageResolutionFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFeature(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.GetFeature(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetParameterDefinition(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketParameterDefinition {
        var _r: *PrintTicketParameterDefinition = undefined;
        const _c = self.vtable.GetParameterDefinition(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IPrintTicketCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c45508b-bbdc-4256-a142-2fd615ecb416";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_DocumentBindingFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentCollateFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentDuplexFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentHolePunchFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentInputBinFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentNUpFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentStapleFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_JobPasscodeFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageBorderlessFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageMediaSizeFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageMediaTypeFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageOrientationFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageOutputColorFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageOutputQualityFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageResolutionFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        GetFeature: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        GetParameterDefinition: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketParameterDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTicketFeature = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XmlNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_XmlNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOption(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketOption {
        var _r: *PrintTicketOption = undefined;
        const _c = self.vtable.GetOption(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!*IVectorView(PrintTicketOption) {
        var _r: *IVectorView(PrintTicketOption) = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSelectedOption(self: *@This()) core.HResult!*PrintTicketOption {
        var _r: *PrintTicketOption = undefined;
        const _c = self.vtable.GetSelectedOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSelectedOption(self: *@This(), value: *PrintTicketOption) core.HResult!void {
        const _c = self.vtable.SetSelectedOption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionType(self: *@This()) core.HResult!PrintTicketFeatureSelectionType {
        var _r: PrintTicketFeatureSelectionType = undefined;
        const _c = self.vtable.get_SelectionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IPrintTicketFeature";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7607d6a-59f5-4103-8858-b97710963d39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetOption: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketOption) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **IVectorView(PrintTicketOption)) callconv(.winapi) HRESULT,
        GetSelectedOption: *const fn(self: *anyopaque, _r: **PrintTicketOption) callconv(.winapi) HRESULT,
        SetSelectedOption: *const fn(self: *anyopaque, value: *PrintTicketOption) callconv(.winapi) HRESULT,
        get_SelectionType: *const fn(self: *anyopaque, _r: *PrintTicketFeatureSelectionType) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTicketOption = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XmlNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_XmlNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertyNode(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.GetPropertyNode(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetScoredPropertyNode(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.GetScoredPropertyNode(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertyValue(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketValue {
        var _r: *PrintTicketValue = undefined;
        const _c = self.vtable.GetPropertyValue(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetScoredPropertyValue(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketValue {
        var _r: *PrintTicketValue = undefined;
        const _c = self.vtable.GetScoredPropertyValue(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IPrintTicketOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b086cf90-b367-4e4b-bd48-9c78a0bb31ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetPropertyNode: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        GetScoredPropertyNode: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        GetPropertyValue: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketValue) callconv(.winapi) HRESULT,
        GetScoredPropertyValue: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketValue) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTicketParameterDefinition = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XmlNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_XmlNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataType(self: *@This()) core.HResult!PrintTicketParameterDataType {
        var _r: PrintTicketParameterDataType = undefined;
        const _c = self.vtable.get_DataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnitType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnitType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRangeMin(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RangeMin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRangeMax(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RangeMax(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IPrintTicketParameterDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6bab4e4-2962-4c01-b7f3-9a9294eb8335";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_DataType: *const fn(self: *anyopaque, _r: *PrintTicketParameterDataType) callconv(.winapi) HRESULT,
        get_UnitType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RangeMin: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_RangeMax: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTicketParameterInitializer = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XmlNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_XmlNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *PrintTicketValue) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*PrintTicketValue {
        var _r: *PrintTicketValue = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IPrintTicketParameterInitializer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e3335bb-a0a5-48b1-9d5c-07116ddc597a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *PrintTicketValue) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **PrintTicketValue) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTicketValue = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!PrintTicketValueType {
        var _r: PrintTicketValueType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValueAsInteger(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetValueAsInteger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValueAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetValueAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IPrintTicketValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66b30a32-244d-4e22-a98b-bb3cf1f2dd91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PrintTicketValueType) callconv(.winapi) HRESULT,
        GetValueAsInteger: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetValueAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWorkflowPrintTicket = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XmlNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_XmlNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapabilities(self: *@This()) core.HResult!*PrintTicketCapabilities {
        var _r: *PrintTicketCapabilities = undefined;
        const _c = self.vtable.GetCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentBindingFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentBindingFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentCollateFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentCollateFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentDuplexFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentDuplexFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentHolePunchFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentHolePunchFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentInputBinFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentInputBinFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentNUpFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentNUpFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentStapleFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_DocumentStapleFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJobPasscodeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_JobPasscodeFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageBorderlessFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageBorderlessFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageMediaSizeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageMediaSizeFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageMediaTypeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageMediaTypeFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageOrientationFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageOrientationFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageOutputColorFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageOutputColorFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageOutputQualityFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageOutputQualityFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageResolutionFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.get_PageResolutionFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFeature(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketFeature {
        var _r: *PrintTicketFeature = undefined;
        const _c = self.vtable.GetFeature(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NotifyXmlChangedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.NotifyXmlChangedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ValidateAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicketValidationResult) {
        var _r: *IAsyncOperation(WorkflowPrintTicketValidationResult) = undefined;
        const _c = self.vtable.ValidateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetParameterInitializer(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketParameterInitializer {
        var _r: *PrintTicketParameterInitializer = undefined;
        const _c = self.vtable.GetParameterInitializer(@ptrCast(self), name, xmlNamespace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetParameterInitializerAsInteger(self: *@This(), name: HSTRING, xmlNamespace: HSTRING, integerValue: i32) core.HResult!*PrintTicketParameterInitializer {
        var _r: *PrintTicketParameterInitializer = undefined;
        const _c = self.vtable.SetParameterInitializerAsInteger(@ptrCast(self), name, xmlNamespace, integerValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetParameterInitializerAsString(self: *@This(), name: HSTRING, xmlNamespace: HSTRING, stringValue: HSTRING) core.HResult!*PrintTicketParameterInitializer {
        var _r: *PrintTicketParameterInitializer = undefined;
        const _c = self.vtable.SetParameterInitializerAsString(@ptrCast(self), name, xmlNamespace, stringValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MergeAndValidateTicket(self: *@This(), deltaShemaTicket: *WorkflowPrintTicket) core.HResult!*WorkflowPrintTicket {
        var _r: *WorkflowPrintTicket = undefined;
        const _c = self.vtable.MergeAndValidateTicket(@ptrCast(self), deltaShemaTicket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IWorkflowPrintTicket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41d52285-35e8-448e-a8c5-e4b6a2cf826c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XmlNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        GetCapabilities: *const fn(self: *anyopaque, _r: **PrintTicketCapabilities) callconv(.winapi) HRESULT,
        get_DocumentBindingFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentCollateFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentDuplexFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentHolePunchFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentInputBinFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentNUpFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_DocumentStapleFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_JobPasscodeFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageBorderlessFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageMediaSizeFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageMediaTypeFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageOrientationFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageOutputColorFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageOutputQualityFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        get_PageResolutionFeature: *const fn(self: *anyopaque, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        GetFeature: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketFeature) callconv(.winapi) HRESULT,
        NotifyXmlChangedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ValidateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WorkflowPrintTicketValidationResult)) callconv(.winapi) HRESULT,
        GetParameterInitializer: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, _r: **PrintTicketParameterInitializer) callconv(.winapi) HRESULT,
        SetParameterInitializerAsInteger: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, integerValue: i32, _r: **PrintTicketParameterInitializer) callconv(.winapi) HRESULT,
        SetParameterInitializerAsString: *const fn(self: *anyopaque, name: HSTRING, xmlNamespace: HSTRING, stringValue: HSTRING, _r: **PrintTicketParameterInitializer) callconv(.winapi) HRESULT,
        MergeAndValidateTicket: *const fn(self: *anyopaque, deltaShemaTicket: *WorkflowPrintTicket, _r: **WorkflowPrintTicket) callconv(.winapi) HRESULT,
    };
};
pub const IWorkflowPrintTicketValidationResult = extern struct {
    vtable: *const VTable,
    pub fn getValidated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Validated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.IWorkflowPrintTicketValidationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ad1f392-da7b-4a36-bf36-6a99a62e2059";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Validated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const PrintTicketCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getName();
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getXmlNamespace();
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getXmlNode();
    }
    pub fn getDocumentBindingFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentBindingFeature();
    }
    pub fn getDocumentCollateFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentCollateFeature();
    }
    pub fn getDocumentDuplexFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentDuplexFeature();
    }
    pub fn getDocumentHolePunchFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentHolePunchFeature();
    }
    pub fn getDocumentInputBinFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentInputBinFeature();
    }
    pub fn getDocumentNUpFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentNUpFeature();
    }
    pub fn getDocumentStapleFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getDocumentStapleFeature();
    }
    pub fn getJobPasscodeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getJobPasscodeFeature();
    }
    pub fn getPageBorderlessFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageBorderlessFeature();
    }
    pub fn getPageMediaSizeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageMediaSizeFeature();
    }
    pub fn getPageMediaTypeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageMediaTypeFeature();
    }
    pub fn getPageOrientationFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageOrientationFeature();
    }
    pub fn getPageOutputColorFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageOutputColorFeature();
    }
    pub fn getPageOutputQualityFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageOutputQualityFeature();
    }
    pub fn getPageResolutionFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.getPageResolutionFeature();
    }
    pub fn GetFeature(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketFeature {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.GetFeature(name, xmlNamespace);
    }
    pub fn GetParameterDefinition(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketParameterDefinition {
        const this: *IPrintTicketCapabilities = @ptrCast(self);
        return try this.GetParameterDefinition(name, xmlNamespace);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.PrintTicketCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTicketCapabilities.GUID;
    pub const IID: Guid = IPrintTicketCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTicketCapabilities.SIGNATURE);
};
pub const PrintTicketFeature = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.getName();
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.getXmlNamespace();
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.getXmlNode();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn GetOption(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketOption {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.GetOption(name, xmlNamespace);
    }
    pub fn getOptions(self: *@This()) core.HResult!*IVectorView(PrintTicketOption) {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn GetSelectedOption(self: *@This()) core.HResult!*PrintTicketOption {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.GetSelectedOption();
    }
    pub fn SetSelectedOption(self: *@This(), value: *PrintTicketOption) core.HResult!void {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.SetSelectedOption(value);
    }
    pub fn getSelectionType(self: *@This()) core.HResult!PrintTicketFeatureSelectionType {
        const this: *IPrintTicketFeature = @ptrCast(self);
        return try this.getSelectionType();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.PrintTicketFeature";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTicketFeature.GUID;
    pub const IID: Guid = IPrintTicketFeature.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTicketFeature.SIGNATURE);
};
pub const PrintTicketFeatureSelectionType = enum(i32) {
    PickOne = 0,
    PickMany = 1,
};
pub const PrintTicketOption = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.getName();
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.getXmlNamespace();
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.getXmlNode();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn GetPropertyNode(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*IXmlNode {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.GetPropertyNode(name, xmlNamespace);
    }
    pub fn GetScoredPropertyNode(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*IXmlNode {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.GetScoredPropertyNode(name, xmlNamespace);
    }
    pub fn GetPropertyValue(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketValue {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.GetPropertyValue(name, xmlNamespace);
    }
    pub fn GetScoredPropertyValue(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketValue {
        const this: *IPrintTicketOption = @ptrCast(self);
        return try this.GetScoredPropertyValue(name, xmlNamespace);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.PrintTicketOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTicketOption.GUID;
    pub const IID: Guid = IPrintTicketOption.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTicketOption.SIGNATURE);
};
pub const PrintTicketParameterDataType = enum(i32) {
    Integer = 0,
    NumericString = 1,
    String = 2,
};
pub const PrintTicketParameterDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getName();
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getXmlNamespace();
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getXmlNode();
    }
    pub fn getDataType(self: *@This()) core.HResult!PrintTicketParameterDataType {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getDataType();
    }
    pub fn getUnitType(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getUnitType();
    }
    pub fn getRangeMin(self: *@This()) core.HResult!i32 {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getRangeMin();
    }
    pub fn getRangeMax(self: *@This()) core.HResult!i32 {
        const this: *IPrintTicketParameterDefinition = @ptrCast(self);
        return try this.getRangeMax();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.PrintTicketParameterDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTicketParameterDefinition.GUID;
    pub const IID: Guid = IPrintTicketParameterDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTicketParameterDefinition.SIGNATURE);
};
pub const PrintTicketParameterInitializer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketParameterInitializer = @ptrCast(self);
        return try this.getName();
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketParameterInitializer = @ptrCast(self);
        return try this.getXmlNamespace();
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        const this: *IPrintTicketParameterInitializer = @ptrCast(self);
        return try this.getXmlNode();
    }
    pub fn putValue(self: *@This(), value: *PrintTicketValue) core.HResult!void {
        const this: *IPrintTicketParameterInitializer = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*PrintTicketValue {
        const this: *IPrintTicketParameterInitializer = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.PrintTicketParameterInitializer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTicketParameterInitializer.GUID;
    pub const IID: Guid = IPrintTicketParameterInitializer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTicketParameterInitializer.SIGNATURE);
};
pub const PrintTicketValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!PrintTicketValueType {
        const this: *IPrintTicketValue = @ptrCast(self);
        return try this.getType();
    }
    pub fn GetValueAsInteger(self: *@This()) core.HResult!i32 {
        const this: *IPrintTicketValue = @ptrCast(self);
        return try this.GetValueAsInteger();
    }
    pub fn GetValueAsString(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintTicketValue = @ptrCast(self);
        return try this.GetValueAsString();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.PrintTicketValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTicketValue.GUID;
    pub const IID: Guid = IPrintTicketValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTicketValue.SIGNATURE);
};
pub const PrintTicketValueType = enum(i32) {
    Integer = 0,
    String = 1,
    Unknown = 2,
};
pub const WorkflowPrintTicket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getName();
    }
    pub fn getXmlNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getXmlNamespace();
    }
    pub fn getXmlNode(self: *@This()) core.HResult!*IXmlNode {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getXmlNode();
    }
    pub fn GetCapabilities(self: *@This()) core.HResult!*PrintTicketCapabilities {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.GetCapabilities();
    }
    pub fn getDocumentBindingFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentBindingFeature();
    }
    pub fn getDocumentCollateFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentCollateFeature();
    }
    pub fn getDocumentDuplexFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentDuplexFeature();
    }
    pub fn getDocumentHolePunchFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentHolePunchFeature();
    }
    pub fn getDocumentInputBinFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentInputBinFeature();
    }
    pub fn getDocumentNUpFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentNUpFeature();
    }
    pub fn getDocumentStapleFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getDocumentStapleFeature();
    }
    pub fn getJobPasscodeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getJobPasscodeFeature();
    }
    pub fn getPageBorderlessFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageBorderlessFeature();
    }
    pub fn getPageMediaSizeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageMediaSizeFeature();
    }
    pub fn getPageMediaTypeFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageMediaTypeFeature();
    }
    pub fn getPageOrientationFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageOrientationFeature();
    }
    pub fn getPageOutputColorFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageOutputColorFeature();
    }
    pub fn getPageOutputQualityFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageOutputQualityFeature();
    }
    pub fn getPageResolutionFeature(self: *@This()) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.getPageResolutionFeature();
    }
    pub fn GetFeature(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketFeature {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.GetFeature(name, xmlNamespace);
    }
    pub fn NotifyXmlChangedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.NotifyXmlChangedAsync();
    }
    pub fn ValidateAsync(self: *@This()) core.HResult!*IAsyncOperation(WorkflowPrintTicketValidationResult) {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.ValidateAsync();
    }
    pub fn GetParameterInitializer(self: *@This(), name: HSTRING, xmlNamespace: HSTRING) core.HResult!*PrintTicketParameterInitializer {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.GetParameterInitializer(name, xmlNamespace);
    }
    pub fn SetParameterInitializerAsInteger(self: *@This(), name: HSTRING, xmlNamespace: HSTRING, integerValue: i32) core.HResult!*PrintTicketParameterInitializer {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.SetParameterInitializerAsInteger(name, xmlNamespace, integerValue);
    }
    pub fn SetParameterInitializerAsString(self: *@This(), name: HSTRING, xmlNamespace: HSTRING, stringValue: HSTRING) core.HResult!*PrintTicketParameterInitializer {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.SetParameterInitializerAsString(name, xmlNamespace, stringValue);
    }
    pub fn MergeAndValidateTicket(self: *@This(), deltaShemaTicket: *WorkflowPrintTicket) core.HResult!*WorkflowPrintTicket {
        const this: *IWorkflowPrintTicket = @ptrCast(self);
        return try this.MergeAndValidateTicket(deltaShemaTicket);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.WorkflowPrintTicket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWorkflowPrintTicket.GUID;
    pub const IID: Guid = IWorkflowPrintTicket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWorkflowPrintTicket.SIGNATURE);
};
pub const WorkflowPrintTicketValidationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValidated(self: *@This()) core.HResult!bool {
        const this: *IWorkflowPrintTicketValidationResult = @ptrCast(self);
        return try this.getValidated();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IWorkflowPrintTicketValidationResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.PrintTicket.WorkflowPrintTicketValidationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWorkflowPrintTicketValidationResult.GUID;
    pub const IID: Guid = IWorkflowPrintTicketValidationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWorkflowPrintTicketValidationResult.SIGNATURE);
};
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HResult = @import("../../Foundation.zig").HResult;
const HRESULT = @import("../../root.zig").HRESULT;
const IXmlNode = @import("../../Data/Xml/Dom.zig").IXmlNode;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
