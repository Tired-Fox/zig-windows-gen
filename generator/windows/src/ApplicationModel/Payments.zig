pub const IPaymentAddress = extern struct {
    vtable: *const VTable,
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Country(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCountry(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Country(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAddressLines(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AddressLines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAddressLines(self: *@This(), value: *IVectorView(HSTRING)) core.HResult!void {
        const _c = self.vtable.put_AddressLines(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Region(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRegion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Region(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_City(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCity(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_City(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDependentLocality(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DependentLocality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDependentLocality(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DependentLocality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PostalCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPostalCode(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PostalCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSortingCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SortingCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSortingCode(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SortingCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguageCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LanguageCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguageCode(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LanguageCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrganization(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Organization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrganization(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Organization(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecipient(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Recipient(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecipient(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Recipient(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhoneNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PhoneNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f2264e9-6f3a-4166-a018-0a0b06bb32b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Country: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Country: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AddressLines: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        put_AddressLines: *const fn(self: *anyopaque, value: *IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Region: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Region: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_City: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_City: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DependentLocality: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DependentLocality: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PostalCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PostalCode: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SortingCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SortingCode: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LanguageCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LanguageCode: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Organization: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Organization: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Recipient: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Recipient: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PhoneNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentCanMakePaymentResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PaymentCanMakePaymentResultStatus {
        var _r: PaymentCanMakePaymentResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentCanMakePaymentResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7696fe55-d5d3-4d3d-b345-45591759c510";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PaymentCanMakePaymentResultStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentCanMakePaymentResultFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), value: PaymentCanMakePaymentResultStatus) core.HResult!*PaymentCanMakePaymentResult {
        var _r: *PaymentCanMakePaymentResult = undefined;
        const _c = self.vtable.Create(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentCanMakePaymentResultFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbdcaa3e-7d49-4f69-aa53-2a0f8164b7c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, value: PaymentCanMakePaymentResultStatus, _r: **PaymentCanMakePaymentResult) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentCurrencyAmount = extern struct {
    vtable: *const VTable,
    pub fn getCurrency(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Currency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrency(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Currency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrencySystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrencySystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrencySystem(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CurrencySystem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentCurrencyAmount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3a3e9e0-b41f-4987-bdcb-071331f2daa4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Currency: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Currency: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CurrencySystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CurrencySystem: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentCurrencyAmountFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), value: HSTRING, currency: HSTRING) core.HResult!*PaymentCurrencyAmount {
        var _r: *PaymentCurrencyAmount = undefined;
        const _c = self.vtable.Create(@ptrCast(self), value, currency, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithCurrencySystem(self: *@This(), value: HSTRING, currency: HSTRING, currencySystem: HSTRING) core.HResult!*PaymentCurrencyAmount {
        var _r: *PaymentCurrencyAmount = undefined;
        const _c = self.vtable.CreateWithCurrencySystem(@ptrCast(self), value, currency, currencySystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentCurrencyAmountFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3257d338-140c-4575-8535-f773178c09a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, value: HSTRING, currency: HSTRING, _r: **PaymentCurrencyAmount) callconv(.winapi) HRESULT,
        CreateWithCurrencySystem: *const fn(self: *anyopaque, value: HSTRING, currency: HSTRING, currencySystem: HSTRING, _r: **PaymentCurrencyAmount) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentDetails = extern struct {
    vtable: *const VTable,
    pub fn getTotal(self: *@This()) core.HResult!*PaymentItem {
        var _r: *PaymentItem = undefined;
        const _c = self.vtable.get_Total(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTotal(self: *@This(), value: *PaymentItem) core.HResult!void {
        const _c = self.vtable.put_Total(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayItems(self: *@This()) core.HResult!*IVectorView(PaymentItem) {
        var _r: *IVectorView(PaymentItem) = undefined;
        const _c = self.vtable.get_DisplayItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayItems(self: *@This(), value: *IVectorView(PaymentItem)) core.HResult!void {
        const _c = self.vtable.put_DisplayItems(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShippingOptions(self: *@This()) core.HResult!*IVectorView(PaymentShippingOption) {
        var _r: *IVectorView(PaymentShippingOption) = undefined;
        const _c = self.vtable.get_ShippingOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShippingOptions(self: *@This(), value: *IVectorView(PaymentShippingOption)) core.HResult!void {
        const _c = self.vtable.put_ShippingOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getModifiers(self: *@This()) core.HResult!*IVectorView(PaymentDetailsModifier) {
        var _r: *IVectorView(PaymentDetailsModifier) = undefined;
        const _c = self.vtable.get_Modifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putModifiers(self: *@This(), value: *IVectorView(PaymentDetailsModifier)) core.HResult!void {
        const _c = self.vtable.put_Modifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53bb2d7d-e0eb-4053-8eae-ce7c48e02945";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Total: *const fn(self: *anyopaque, _r: **PaymentItem) callconv(.winapi) HRESULT,
        put_Total: *const fn(self: *anyopaque, value: *PaymentItem) callconv(.winapi) HRESULT,
        get_DisplayItems: *const fn(self: *anyopaque, _r: **IVectorView(PaymentItem)) callconv(.winapi) HRESULT,
        put_DisplayItems: *const fn(self: *anyopaque, value: *IVectorView(PaymentItem)) callconv(.winapi) HRESULT,
        get_ShippingOptions: *const fn(self: *anyopaque, _r: **IVectorView(PaymentShippingOption)) callconv(.winapi) HRESULT,
        put_ShippingOptions: *const fn(self: *anyopaque, value: *IVectorView(PaymentShippingOption)) callconv(.winapi) HRESULT,
        get_Modifiers: *const fn(self: *anyopaque, _r: **IVectorView(PaymentDetailsModifier)) callconv(.winapi) HRESULT,
        put_Modifiers: *const fn(self: *anyopaque, value: *IVectorView(PaymentDetailsModifier)) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentDetailsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), total: *PaymentItem) core.HResult!*PaymentDetails {
        var _r: *PaymentDetails = undefined;
        const _c = self.vtable.Create(@ptrCast(self), total, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithDisplayItems(self: *@This(), total: *PaymentItem, displayItems: *IIterable(PaymentItem)) core.HResult!*PaymentDetails {
        var _r: *PaymentDetails = undefined;
        const _c = self.vtable.CreateWithDisplayItems(@ptrCast(self), total, displayItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentDetailsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfe8afee-c0ea-4ca1-8bc7-6de67b1f3763";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, total: *PaymentItem, _r: **PaymentDetails) callconv(.winapi) HRESULT,
        CreateWithDisplayItems: *const fn(self: *anyopaque, total: *PaymentItem, displayItems: *IIterable(PaymentItem), _r: **PaymentDetails) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentDetailsModifier = extern struct {
    vtable: *const VTable,
    pub fn getJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedMethodIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedMethodIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotal(self: *@This()) core.HResult!*PaymentItem {
        var _r: *PaymentItem = undefined;
        const _c = self.vtable.get_Total(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdditionalDisplayItems(self: *@This()) core.HResult!*IVectorView(PaymentItem) {
        var _r: *IVectorView(PaymentItem) = undefined;
        const _c = self.vtable.get_AdditionalDisplayItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentDetailsModifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be1c7d65-4323-41d7-b305-dfcb765f69de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_JsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedMethodIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Total: *const fn(self: *anyopaque, _r: **PaymentItem) callconv(.winapi) HRESULT,
        get_AdditionalDisplayItems: *const fn(self: *anyopaque, _r: **IVectorView(PaymentItem)) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentDetailsModifierFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem) core.HResult!*PaymentDetailsModifier {
        var _r: *PaymentDetailsModifier = undefined;
        const _c = self.vtable.Create(@ptrCast(self), supportedMethodIds, total, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAdditionalDisplayItems(self: *@This(), supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, additionalDisplayItems: *IIterable(PaymentItem)) core.HResult!*PaymentDetailsModifier {
        var _r: *PaymentDetailsModifier = undefined;
        const _c = self.vtable.CreateWithAdditionalDisplayItems(@ptrCast(self), supportedMethodIds, total, additionalDisplayItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAdditionalDisplayItemsAndJsonData(self: *@This(), supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, additionalDisplayItems: *IIterable(PaymentItem), jsonData: HSTRING) core.HResult!*PaymentDetailsModifier {
        var _r: *PaymentDetailsModifier = undefined;
        const _c = self.vtable.CreateWithAdditionalDisplayItemsAndJsonData(@ptrCast(self), supportedMethodIds, total, additionalDisplayItems, jsonData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79005286-54de-429c-9e4f-5dce6e10ebce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, _r: **PaymentDetailsModifier) callconv(.winapi) HRESULT,
        CreateWithAdditionalDisplayItems: *const fn(self: *anyopaque, supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, additionalDisplayItems: *IIterable(PaymentItem), _r: **PaymentDetailsModifier) callconv(.winapi) HRESULT,
        CreateWithAdditionalDisplayItemsAndJsonData: *const fn(self: *anyopaque, supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, additionalDisplayItems: *IIterable(PaymentItem), jsonData: HSTRING, _r: **PaymentDetailsModifier) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentItem = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAmount(self: *@This()) core.HResult!*PaymentCurrencyAmount {
        var _r: *PaymentCurrencyAmount = undefined;
        const _c = self.vtable.get_Amount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAmount(self: *@This(), value: *PaymentCurrencyAmount) core.HResult!void {
        const _c = self.vtable.put_Amount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPending(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Pending(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPending(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Pending(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "685ac88b-79b2-4b76-9e03-a876223dfe72";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Amount: *const fn(self: *anyopaque, _r: **PaymentCurrencyAmount) callconv(.winapi) HRESULT,
        put_Amount: *const fn(self: *anyopaque, value: *PaymentCurrencyAmount) callconv(.winapi) HRESULT,
        get_Pending: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Pending: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentItemFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), label: HSTRING, amount: *PaymentCurrencyAmount) core.HResult!*PaymentItem {
        var _r: *PaymentItem = undefined;
        const _c = self.vtable.Create(@ptrCast(self), label, amount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6ab7ad8-2503-4d1d-a778-02b2e5927b2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, label: HSTRING, amount: *PaymentCurrencyAmount, _r: **PaymentItem) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentMediator = extern struct {
    vtable: *const VTable,
    pub fn GetSupportedMethodIdsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetSupportedMethodIdsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubmitPaymentRequestAsync(self: *@This(), paymentRequest: *PaymentRequest) core.HResult!*IAsyncOperation(PaymentRequestSubmitResult) {
        var _r: *IAsyncOperation(PaymentRequestSubmitResult) = undefined;
        const _c = self.vtable.SubmitPaymentRequestAsync(@ptrCast(self), paymentRequest, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubmitPaymentRequestAsyncWithChangeHandler(self: *@This(), paymentRequest: *PaymentRequest, changeHandler: *PaymentRequestChangedHandler) core.HResult!*IAsyncOperation(PaymentRequestSubmitResult) {
        var _r: *IAsyncOperation(PaymentRequestSubmitResult) = undefined;
        const _c = self.vtable.SubmitPaymentRequestAsyncWithChangeHandler(@ptrCast(self), paymentRequest, changeHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentMediator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb0ee829-ec0c-449a-83da-7ae3073365a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSupportedMethodIdsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        SubmitPaymentRequestAsync: *const fn(self: *anyopaque, paymentRequest: *PaymentRequest, _r: **IAsyncOperation(PaymentRequestSubmitResult)) callconv(.winapi) HRESULT,
        SubmitPaymentRequestAsyncWithChangeHandler: *const fn(self: *anyopaque, paymentRequest: *PaymentRequest, changeHandler: *PaymentRequestChangedHandler, _r: **IAsyncOperation(PaymentRequestSubmitResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentMediator2 = extern struct {
    vtable: *const VTable,
    pub fn CanMakePaymentAsync(self: *@This(), paymentRequest: *PaymentRequest) core.HResult!*IAsyncOperation(PaymentCanMakePaymentResult) {
        var _r: *IAsyncOperation(PaymentCanMakePaymentResult) = undefined;
        const _c = self.vtable.CanMakePaymentAsync(@ptrCast(self), paymentRequest, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentMediator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ceef98f1-e407-4128-8e73-d93d5f822786";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CanMakePaymentAsync: *const fn(self: *anyopaque, paymentRequest: *PaymentRequest, _r: **IAsyncOperation(PaymentCanMakePaymentResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentMerchantInfo = extern struct {
    vtable: *const VTable,
    pub fn getPackageFullName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFullName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentMerchantInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63445050-0e94-4ed6-aacb-e6012bd327a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageFullName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentMerchantInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), uri: *Uri) core.HResult!*PaymentMerchantInfo {
        var _r: *PaymentMerchantInfo = undefined;
        const _c = self.vtable.Create(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentMerchantInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e89ced3-ccb7-4167-a8ec-e10ae96dbcd1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, uri: *Uri, _r: **PaymentMerchantInfo) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentMethodData = extern struct {
    vtable: *const VTable,
    pub fn getSupportedMethodIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedMethodIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentMethodData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1d3caf4-de98-4129-b1b7-c3ad86237bf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedMethodIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_JsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentMethodDataFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), supportedMethodIds: *IIterable(HSTRING)) core.HResult!*PaymentMethodData {
        var _r: *PaymentMethodData = undefined;
        const _c = self.vtable.Create(@ptrCast(self), supportedMethodIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithJsonData(self: *@This(), supportedMethodIds: *IIterable(HSTRING), jsonData: HSTRING) core.HResult!*PaymentMethodData {
        var _r: *PaymentMethodData = undefined;
        const _c = self.vtable.CreateWithJsonData(@ptrCast(self), supportedMethodIds, jsonData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentMethodDataFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8addd27f-9baa-4a82-8342-a8210992a36b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, supportedMethodIds: *IIterable(HSTRING), _r: **PaymentMethodData) callconv(.winapi) HRESULT,
        CreateWithJsonData: *const fn(self: *anyopaque, supportedMethodIds: *IIterable(HSTRING), jsonData: HSTRING, _r: **PaymentMethodData) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentOptions = extern struct {
    vtable: *const VTable,
    pub fn getRequestPayerEmail(self: *@This()) core.HResult!PaymentOptionPresence {
        var _r: PaymentOptionPresence = undefined;
        const _c = self.vtable.get_RequestPayerEmail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestPayerEmail(self: *@This(), value: PaymentOptionPresence) core.HResult!void {
        const _c = self.vtable.put_RequestPayerEmail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequestPayerName(self: *@This()) core.HResult!PaymentOptionPresence {
        var _r: PaymentOptionPresence = undefined;
        const _c = self.vtable.get_RequestPayerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestPayerName(self: *@This(), value: PaymentOptionPresence) core.HResult!void {
        const _c = self.vtable.put_RequestPayerName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequestPayerPhoneNumber(self: *@This()) core.HResult!PaymentOptionPresence {
        var _r: PaymentOptionPresence = undefined;
        const _c = self.vtable.get_RequestPayerPhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestPayerPhoneNumber(self: *@This(), value: PaymentOptionPresence) core.HResult!void {
        const _c = self.vtable.put_RequestPayerPhoneNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequestShipping(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequestShipping(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestShipping(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequestShipping(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShippingType(self: *@This()) core.HResult!PaymentShippingType {
        var _r: PaymentShippingType = undefined;
        const _c = self.vtable.get_ShippingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShippingType(self: *@This(), value: PaymentShippingType) core.HResult!void {
        const _c = self.vtable.put_ShippingType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaa30854-1f2b-4365-8251-01b58915a5bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestPayerEmail: *const fn(self: *anyopaque, _r: *PaymentOptionPresence) callconv(.winapi) HRESULT,
        put_RequestPayerEmail: *const fn(self: *anyopaque, value: PaymentOptionPresence) callconv(.winapi) HRESULT,
        get_RequestPayerName: *const fn(self: *anyopaque, _r: *PaymentOptionPresence) callconv(.winapi) HRESULT,
        put_RequestPayerName: *const fn(self: *anyopaque, value: PaymentOptionPresence) callconv(.winapi) HRESULT,
        get_RequestPayerPhoneNumber: *const fn(self: *anyopaque, _r: *PaymentOptionPresence) callconv(.winapi) HRESULT,
        put_RequestPayerPhoneNumber: *const fn(self: *anyopaque, value: PaymentOptionPresence) callconv(.winapi) HRESULT,
        get_RequestShipping: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequestShipping: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShippingType: *const fn(self: *anyopaque, _r: *PaymentShippingType) callconv(.winapi) HRESULT,
        put_ShippingType: *const fn(self: *anyopaque, value: PaymentShippingType) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequest = extern struct {
    vtable: *const VTable,
    pub fn getMerchantInfo(self: *@This()) core.HResult!*PaymentMerchantInfo {
        var _r: *PaymentMerchantInfo = undefined;
        const _c = self.vtable.get_MerchantInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetails(self: *@This()) core.HResult!*PaymentDetails {
        var _r: *PaymentDetails = undefined;
        const _c = self.vtable.get_Details(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMethodData(self: *@This()) core.HResult!*IVectorView(PaymentMethodData) {
        var _r: *IVectorView(PaymentMethodData) = undefined;
        const _c = self.vtable.get_MethodData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!*PaymentOptions {
        var _r: *PaymentOptions = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b74942e1-ed7b-47eb-bc08-78cc5d6896b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MerchantInfo: *const fn(self: *anyopaque, _r: **PaymentMerchantInfo) callconv(.winapi) HRESULT,
        get_Details: *const fn(self: *anyopaque, _r: **PaymentDetails) callconv(.winapi) HRESULT,
        get_MethodData: *const fn(self: *anyopaque, _r: **IVectorView(PaymentMethodData)) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **PaymentOptions) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequest2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b63ccfb5-5998-493e-a04c-67048a50f141";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequestChangedArgs = extern struct {
    vtable: *const VTable,
    pub fn getChangeKind(self: *@This()) core.HResult!PaymentRequestChangeKind {
        var _r: PaymentRequestChangeKind = undefined;
        const _c = self.vtable.get_ChangeKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShippingAddress(self: *@This()) core.HResult!*PaymentAddress {
        var _r: *PaymentAddress = undefined;
        const _c = self.vtable.get_ShippingAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedShippingOption(self: *@This()) core.HResult!*PaymentShippingOption {
        var _r: *PaymentShippingOption = undefined;
        const _c = self.vtable.get_SelectedShippingOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Acknowledge(self: *@This(), changeResult: *PaymentRequestChangedResult) core.HResult!void {
        const _c = self.vtable.Acknowledge(@ptrCast(self), changeResult);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequestChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6145e44-cd8b-4be4-b555-27c99194c0c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeKind: *const fn(self: *anyopaque, _r: *PaymentRequestChangeKind) callconv(.winapi) HRESULT,
        get_ShippingAddress: *const fn(self: *anyopaque, _r: **PaymentAddress) callconv(.winapi) HRESULT,
        get_SelectedShippingOption: *const fn(self: *anyopaque, _r: **PaymentShippingOption) callconv(.winapi) HRESULT,
        Acknowledge: *const fn(self: *anyopaque, changeResult: *PaymentRequestChangedResult) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequestChangedResult = extern struct {
    vtable: *const VTable,
    pub fn getChangeAcceptedByMerchant(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ChangeAcceptedByMerchant(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChangeAcceptedByMerchant(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ChangeAcceptedByMerchant(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Message(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdatedPaymentDetails(self: *@This()) core.HResult!*PaymentDetails {
        var _r: *PaymentDetails = undefined;
        const _c = self.vtable.get_UpdatedPaymentDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUpdatedPaymentDetails(self: *@This(), value: *PaymentDetails) core.HResult!void {
        const _c = self.vtable.put_UpdatedPaymentDetails(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequestChangedResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df699e5c-16c4-47ad-9401-8440ec0757db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeAcceptedByMerchant: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ChangeAcceptedByMerchant: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Message: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UpdatedPaymentDetails: *const fn(self: *anyopaque, _r: **PaymentDetails) callconv(.winapi) HRESULT,
        put_UpdatedPaymentDetails: *const fn(self: *anyopaque, value: *PaymentDetails) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequestChangedResultFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), changeAcceptedByMerchant: bool) core.HResult!*PaymentRequestChangedResult {
        var _r: *PaymentRequestChangedResult = undefined;
        const _c = self.vtable.Create(@ptrCast(self), changeAcceptedByMerchant, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPaymentDetails(self: *@This(), changeAcceptedByMerchant: bool, updatedPaymentDetails: *PaymentDetails) core.HResult!*PaymentRequestChangedResult {
        var _r: *PaymentRequestChangedResult = undefined;
        const _c = self.vtable.CreateWithPaymentDetails(@ptrCast(self), changeAcceptedByMerchant, updatedPaymentDetails, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequestChangedResultFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08740f56-1d33-4431-814b-67ea24bf21db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, changeAcceptedByMerchant: bool, _r: **PaymentRequestChangedResult) callconv(.winapi) HRESULT,
        CreateWithPaymentDetails: *const fn(self: *anyopaque, changeAcceptedByMerchant: bool, updatedPaymentDetails: *PaymentDetails, _r: **PaymentRequestChangedResult) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), details: *PaymentDetails, methodData: *IIterable(PaymentMethodData)) core.HResult!*PaymentRequest {
        var _r: *PaymentRequest = undefined;
        const _c = self.vtable.Create(@ptrCast(self), details, methodData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithMerchantInfo(self: *@This(), details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo) core.HResult!*PaymentRequest {
        var _r: *PaymentRequest = undefined;
        const _c = self.vtable.CreateWithMerchantInfo(@ptrCast(self), details, methodData, merchantInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithMerchantInfoAndOptions(self: *@This(), details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, options: *PaymentOptions) core.HResult!*PaymentRequest {
        var _r: *PaymentRequest = undefined;
        const _c = self.vtable.CreateWithMerchantInfoAndOptions(@ptrCast(self), details, methodData, merchantInfo, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e8a79dc-6b74-42d3-b103-f0de35fb1848";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), _r: **PaymentRequest) callconv(.winapi) HRESULT,
        CreateWithMerchantInfo: *const fn(self: *anyopaque, details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, _r: **PaymentRequest) callconv(.winapi) HRESULT,
        CreateWithMerchantInfoAndOptions: *const fn(self: *anyopaque, details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, options: *PaymentOptions, _r: **PaymentRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequestFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateWithMerchantInfoOptionsAndId(self: *@This(), details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, options: *PaymentOptions, id: HSTRING) core.HResult!*PaymentRequest {
        var _r: *PaymentRequest = undefined;
        const _c = self.vtable.CreateWithMerchantInfoOptionsAndId(@ptrCast(self), details, methodData, merchantInfo, options, id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequestFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6ce1325-a506-4372-b7ef-1a031d5662d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithMerchantInfoOptionsAndId: *const fn(self: *anyopaque, details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, options: *PaymentOptions, id: HSTRING, _r: **PaymentRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentRequestSubmitResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PaymentRequestStatus {
        var _r: PaymentRequestStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponse(self: *@This()) core.HResult!*PaymentResponse {
        var _r: *PaymentResponse = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentRequestSubmitResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b9c3912-30f2-4e90-b249-8ce7d78ffe56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PaymentRequestStatus) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: **PaymentResponse) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentResponse = extern struct {
    vtable: *const VTable,
    pub fn getPaymentToken(self: *@This()) core.HResult!*PaymentToken {
        var _r: *PaymentToken = undefined;
        const _c = self.vtable.get_PaymentToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShippingOption(self: *@This()) core.HResult!*PaymentShippingOption {
        var _r: *PaymentShippingOption = undefined;
        const _c = self.vtable.get_ShippingOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShippingAddress(self: *@This()) core.HResult!*PaymentAddress {
        var _r: *PaymentAddress = undefined;
        const _c = self.vtable.get_ShippingAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPayerEmail(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayerEmail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPayerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPayerPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayerPhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CompleteAsync(self: *@This(), status: PaymentRequestCompletionStatus) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CompleteAsync(@ptrCast(self), status, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1389457-8bd2-4888-9fa8-97985545108e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PaymentToken: *const fn(self: *anyopaque, _r: **PaymentToken) callconv(.winapi) HRESULT,
        get_ShippingOption: *const fn(self: *anyopaque, _r: **PaymentShippingOption) callconv(.winapi) HRESULT,
        get_ShippingAddress: *const fn(self: *anyopaque, _r: **PaymentAddress) callconv(.winapi) HRESULT,
        get_PayerEmail: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PayerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PayerPhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        CompleteAsync: *const fn(self: *anyopaque, status: PaymentRequestCompletionStatus, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentShippingOption = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAmount(self: *@This()) core.HResult!*PaymentCurrencyAmount {
        var _r: *PaymentCurrencyAmount = undefined;
        const _c = self.vtable.get_Amount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAmount(self: *@This(), value: *PaymentCurrencyAmount) core.HResult!void {
        const _c = self.vtable.put_Amount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSelected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSelected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentShippingOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13372ada-9753-4574-8966-93145a76c7f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Amount: *const fn(self: *anyopaque, _r: **PaymentCurrencyAmount) callconv(.winapi) HRESULT,
        put_Amount: *const fn(self: *anyopaque, value: *PaymentCurrencyAmount) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsSelected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSelected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentShippingOptionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), label: HSTRING, amount: *PaymentCurrencyAmount) core.HResult!*PaymentShippingOption {
        var _r: *PaymentShippingOption = undefined;
        const _c = self.vtable.Create(@ptrCast(self), label, amount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithSelected(self: *@This(), label: HSTRING, amount: *PaymentCurrencyAmount, selected: bool) core.HResult!*PaymentShippingOption {
        var _r: *PaymentShippingOption = undefined;
        const _c = self.vtable.CreateWithSelected(@ptrCast(self), label, amount, selected, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithSelectedAndTag(self: *@This(), label: HSTRING, amount: *PaymentCurrencyAmount, selected: bool, tag: HSTRING) core.HResult!*PaymentShippingOption {
        var _r: *PaymentShippingOption = undefined;
        const _c = self.vtable.CreateWithSelectedAndTag(@ptrCast(self), label, amount, selected, tag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5de5f917-b2d7-446b-9d73-6123fbca3bc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, label: HSTRING, amount: *PaymentCurrencyAmount, _r: **PaymentShippingOption) callconv(.winapi) HRESULT,
        CreateWithSelected: *const fn(self: *anyopaque, label: HSTRING, amount: *PaymentCurrencyAmount, selected: bool, _r: **PaymentShippingOption) callconv(.winapi) HRESULT,
        CreateWithSelectedAndTag: *const fn(self: *anyopaque, label: HSTRING, amount: *PaymentCurrencyAmount, selected: bool, tag: HSTRING, _r: **PaymentShippingOption) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentToken = extern struct {
    vtable: *const VTable,
    pub fn getPaymentMethodId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PaymentMethodId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJsonDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JsonDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentToken";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbcac013-ccd0-41f2-b2a1-0a2e4b5dce25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PaymentMethodId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JsonDetails: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentTokenFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), paymentMethodId: HSTRING) core.HResult!*PaymentToken {
        var _r: *PaymentToken = undefined;
        const _c = self.vtable.Create(@ptrCast(self), paymentMethodId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithJsonDetails(self: *@This(), paymentMethodId: HSTRING, jsonDetails: HSTRING) core.HResult!*PaymentToken {
        var _r: *PaymentToken = undefined;
        const _c = self.vtable.CreateWithJsonDetails(@ptrCast(self), paymentMethodId, jsonDetails, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.IPaymentTokenFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "988cd7aa-4753-4904-8373-dd7b08b995c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, paymentMethodId: HSTRING, _r: **PaymentToken) callconv(.winapi) HRESULT,
        CreateWithJsonDetails: *const fn(self: *anyopaque, paymentMethodId: HSTRING, jsonDetails: HSTRING, _r: **PaymentToken) callconv(.winapi) HRESULT,
    };
};
pub const PaymentAddress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getCountry();
    }
    pub fn putCountry(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putCountry(value);
    }
    pub fn getAddressLines(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getAddressLines();
    }
    pub fn putAddressLines(self: *@This(), value: *IVectorView(HSTRING)) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putAddressLines(value);
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getRegion();
    }
    pub fn putRegion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putRegion(value);
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getCity();
    }
    pub fn putCity(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putCity(value);
    }
    pub fn getDependentLocality(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getDependentLocality();
    }
    pub fn putDependentLocality(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putDependentLocality(value);
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getPostalCode();
    }
    pub fn putPostalCode(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putPostalCode(value);
    }
    pub fn getSortingCode(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getSortingCode();
    }
    pub fn putSortingCode(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putSortingCode(value);
    }
    pub fn getLanguageCode(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getLanguageCode();
    }
    pub fn putLanguageCode(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putLanguageCode(value);
    }
    pub fn getOrganization(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getOrganization();
    }
    pub fn putOrganization(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putOrganization(value);
    }
    pub fn getRecipient(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getRecipient();
    }
    pub fn putRecipient(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putRecipient(value);
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub fn putPhoneNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.putPhoneNumber(value);
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *IPaymentAddress = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaymentAddress.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentAddress.GUID;
    pub const IID: Guid = IPaymentAddress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentAddress.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PaymentCanMakePaymentResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PaymentCanMakePaymentResultStatus {
        const this: *IPaymentCanMakePaymentResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(value: PaymentCanMakePaymentResultStatus) core.HResult!*PaymentCanMakePaymentResult {
        const _f = @This().IPaymentCanMakePaymentResultFactoryCache.get();
        return try _f.Create(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentCanMakePaymentResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentCanMakePaymentResult.GUID;
    pub const IID: Guid = IPaymentCanMakePaymentResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentCanMakePaymentResult.SIGNATURE);
    var _IPaymentCanMakePaymentResultFactoryCache: FactoryCache(IPaymentCanMakePaymentResultFactory, RUNTIME_NAME) = .{};
};
pub const PaymentCanMakePaymentResultStatus = enum(i32) {
    Unknown = 0,
    Yes = 1,
    No = 2,
    NotAllowed = 3,
    UserNotSignedIn = 4,
    SpecifiedPaymentMethodIdsNotSupported = 5,
    NoQualifyingCardOnFile = 6,
};
pub const PaymentCurrencyAmount = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrency(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentCurrencyAmount = @ptrCast(self);
        return try this.getCurrency();
    }
    pub fn putCurrency(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentCurrencyAmount = @ptrCast(self);
        return try this.putCurrency(value);
    }
    pub fn getCurrencySystem(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentCurrencyAmount = @ptrCast(self);
        return try this.getCurrencySystem();
    }
    pub fn putCurrencySystem(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentCurrencyAmount = @ptrCast(self);
        return try this.putCurrencySystem(value);
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentCurrencyAmount = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentCurrencyAmount = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(value: HSTRING, currency: HSTRING) core.HResult!*PaymentCurrencyAmount {
        const _f = @This().IPaymentCurrencyAmountFactoryCache.get();
        return try _f.Create(value, currency);
    }
    pub fn CreateWithCurrencySystem(value: HSTRING, currency: HSTRING, currencySystem: HSTRING) core.HResult!*PaymentCurrencyAmount {
        const _f = @This().IPaymentCurrencyAmountFactoryCache.get();
        return try _f.CreateWithCurrencySystem(value, currency, currencySystem);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentCurrencyAmount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentCurrencyAmount.GUID;
    pub const IID: Guid = IPaymentCurrencyAmount.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentCurrencyAmount.SIGNATURE);
    var _IPaymentCurrencyAmountFactoryCache: FactoryCache(IPaymentCurrencyAmountFactory, RUNTIME_NAME) = .{};
};
pub const PaymentDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTotal(self: *@This()) core.HResult!*PaymentItem {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.getTotal();
    }
    pub fn putTotal(self: *@This(), value: *PaymentItem) core.HResult!void {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.putTotal(value);
    }
    pub fn getDisplayItems(self: *@This()) core.HResult!*IVectorView(PaymentItem) {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.getDisplayItems();
    }
    pub fn putDisplayItems(self: *@This(), value: *IVectorView(PaymentItem)) core.HResult!void {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.putDisplayItems(value);
    }
    pub fn getShippingOptions(self: *@This()) core.HResult!*IVectorView(PaymentShippingOption) {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.getShippingOptions();
    }
    pub fn putShippingOptions(self: *@This(), value: *IVectorView(PaymentShippingOption)) core.HResult!void {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.putShippingOptions(value);
    }
    pub fn getModifiers(self: *@This()) core.HResult!*IVectorView(PaymentDetailsModifier) {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.getModifiers();
    }
    pub fn putModifiers(self: *@This(), value: *IVectorView(PaymentDetailsModifier)) core.HResult!void {
        const this: *IPaymentDetails = @ptrCast(self);
        return try this.putModifiers(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaymentDetails.IID)));
    }
    pub fn Create(total: *PaymentItem) core.HResult!*PaymentDetails {
        const _f = @This().IPaymentDetailsFactoryCache.get();
        return try _f.Create(total);
    }
    pub fn CreateWithDisplayItems(total: *PaymentItem, displayItems: *IIterable(PaymentItem)) core.HResult!*PaymentDetails {
        const _f = @This().IPaymentDetailsFactoryCache.get();
        return try _f.CreateWithDisplayItems(total, displayItems);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentDetails.GUID;
    pub const IID: Guid = IPaymentDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentDetails.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPaymentDetailsFactoryCache: FactoryCache(IPaymentDetailsFactory, RUNTIME_NAME) = .{};
};
pub const PaymentDetailsModifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentDetailsModifier = @ptrCast(self);
        return try this.getJsonData();
    }
    pub fn getSupportedMethodIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPaymentDetailsModifier = @ptrCast(self);
        return try this.getSupportedMethodIds();
    }
    pub fn getTotal(self: *@This()) core.HResult!*PaymentItem {
        const this: *IPaymentDetailsModifier = @ptrCast(self);
        return try this.getTotal();
    }
    pub fn getAdditionalDisplayItems(self: *@This()) core.HResult!*IVectorView(PaymentItem) {
        const this: *IPaymentDetailsModifier = @ptrCast(self);
        return try this.getAdditionalDisplayItems();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem) core.HResult!*PaymentDetailsModifier {
        const _f = @This().IPaymentDetailsModifierFactoryCache.get();
        return try _f.Create(supportedMethodIds, total);
    }
    pub fn CreateWithAdditionalDisplayItems(supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, additionalDisplayItems: *IIterable(PaymentItem)) core.HResult!*PaymentDetailsModifier {
        const _f = @This().IPaymentDetailsModifierFactoryCache.get();
        return try _f.CreateWithAdditionalDisplayItems(supportedMethodIds, total, additionalDisplayItems);
    }
    pub fn CreateWithAdditionalDisplayItemsAndJsonData(supportedMethodIds: *IIterable(HSTRING), total: *PaymentItem, additionalDisplayItems: *IIterable(PaymentItem), jsonData: HSTRING) core.HResult!*PaymentDetailsModifier {
        const _f = @This().IPaymentDetailsModifierFactoryCache.get();
        return try _f.CreateWithAdditionalDisplayItemsAndJsonData(supportedMethodIds, total, additionalDisplayItems, jsonData);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentDetailsModifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentDetailsModifier.GUID;
    pub const IID: Guid = IPaymentDetailsModifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentDetailsModifier.SIGNATURE);
    var _IPaymentDetailsModifierFactoryCache: FactoryCache(IPaymentDetailsModifierFactory, RUNTIME_NAME) = .{};
};
pub const PaymentItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentItem = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentItem = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getAmount(self: *@This()) core.HResult!*PaymentCurrencyAmount {
        const this: *IPaymentItem = @ptrCast(self);
        return try this.getAmount();
    }
    pub fn putAmount(self: *@This(), value: *PaymentCurrencyAmount) core.HResult!void {
        const this: *IPaymentItem = @ptrCast(self);
        return try this.putAmount(value);
    }
    pub fn getPending(self: *@This()) core.HResult!bool {
        const this: *IPaymentItem = @ptrCast(self);
        return try this.getPending();
    }
    pub fn putPending(self: *@This(), value: bool) core.HResult!void {
        const this: *IPaymentItem = @ptrCast(self);
        return try this.putPending(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(label: HSTRING, amount: *PaymentCurrencyAmount) core.HResult!*PaymentItem {
        const _f = @This().IPaymentItemFactoryCache.get();
        return try _f.Create(label, amount);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentItem.GUID;
    pub const IID: Guid = IPaymentItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentItem.SIGNATURE);
    var _IPaymentItemFactoryCache: FactoryCache(IPaymentItemFactory, RUNTIME_NAME) = .{};
};
pub const PaymentMediator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetSupportedMethodIdsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *IPaymentMediator = @ptrCast(self);
        return try this.GetSupportedMethodIdsAsync();
    }
    pub fn SubmitPaymentRequestAsync(self: *@This(), paymentRequest: *PaymentRequest) core.HResult!*IAsyncOperation(PaymentRequestSubmitResult) {
        const this: *IPaymentMediator = @ptrCast(self);
        return try this.SubmitPaymentRequestAsync(paymentRequest);
    }
    pub fn SubmitPaymentRequestAsyncWithChangeHandler(self: *@This(), paymentRequest: *PaymentRequest, changeHandler: *PaymentRequestChangedHandler) core.HResult!*IAsyncOperation(PaymentRequestSubmitResult) {
        const this: *IPaymentMediator = @ptrCast(self);
        return try this.SubmitPaymentRequestAsyncWithChangeHandler(paymentRequest, changeHandler);
    }
    pub fn CanMakePaymentAsync(self: *@This(), paymentRequest: *PaymentRequest) core.HResult!*IAsyncOperation(PaymentCanMakePaymentResult) {
        var this: ?*IPaymentMediator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPaymentMediator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CanMakePaymentAsync(paymentRequest);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaymentMediator.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentMediator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentMediator.GUID;
    pub const IID: Guid = IPaymentMediator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentMediator.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PaymentMerchantInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageFullName(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentMerchantInfo = @ptrCast(self);
        return try this.getPackageFullName();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IPaymentMerchantInfo = @ptrCast(self);
        return try this.getUri();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaymentMerchantInfo.IID)));
    }
    pub fn Create(uri: *Uri) core.HResult!*PaymentMerchantInfo {
        const _f = @This().IPaymentMerchantInfoFactoryCache.get();
        return try _f.Create(uri);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentMerchantInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentMerchantInfo.GUID;
    pub const IID: Guid = IPaymentMerchantInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentMerchantInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPaymentMerchantInfoFactoryCache: FactoryCache(IPaymentMerchantInfoFactory, RUNTIME_NAME) = .{};
};
pub const PaymentMethodData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedMethodIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPaymentMethodData = @ptrCast(self);
        return try this.getSupportedMethodIds();
    }
    pub fn getJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentMethodData = @ptrCast(self);
        return try this.getJsonData();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(supportedMethodIds: *IIterable(HSTRING)) core.HResult!*PaymentMethodData {
        const _f = @This().IPaymentMethodDataFactoryCache.get();
        return try _f.Create(supportedMethodIds);
    }
    pub fn CreateWithJsonData(supportedMethodIds: *IIterable(HSTRING), jsonData: HSTRING) core.HResult!*PaymentMethodData {
        const _f = @This().IPaymentMethodDataFactoryCache.get();
        return try _f.CreateWithJsonData(supportedMethodIds, jsonData);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentMethodData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentMethodData.GUID;
    pub const IID: Guid = IPaymentMethodData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentMethodData.SIGNATURE);
    var _IPaymentMethodDataFactoryCache: FactoryCache(IPaymentMethodDataFactory, RUNTIME_NAME) = .{};
};
pub const PaymentOptionPresence = enum(i32) {
    None = 0,
    Optional = 1,
    Required = 2,
};
pub const PaymentOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestPayerEmail(self: *@This()) core.HResult!PaymentOptionPresence {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.getRequestPayerEmail();
    }
    pub fn putRequestPayerEmail(self: *@This(), value: PaymentOptionPresence) core.HResult!void {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.putRequestPayerEmail(value);
    }
    pub fn getRequestPayerName(self: *@This()) core.HResult!PaymentOptionPresence {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.getRequestPayerName();
    }
    pub fn putRequestPayerName(self: *@This(), value: PaymentOptionPresence) core.HResult!void {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.putRequestPayerName(value);
    }
    pub fn getRequestPayerPhoneNumber(self: *@This()) core.HResult!PaymentOptionPresence {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.getRequestPayerPhoneNumber();
    }
    pub fn putRequestPayerPhoneNumber(self: *@This(), value: PaymentOptionPresence) core.HResult!void {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.putRequestPayerPhoneNumber(value);
    }
    pub fn getRequestShipping(self: *@This()) core.HResult!bool {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.getRequestShipping();
    }
    pub fn putRequestShipping(self: *@This(), value: bool) core.HResult!void {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.putRequestShipping(value);
    }
    pub fn getShippingType(self: *@This()) core.HResult!PaymentShippingType {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.getShippingType();
    }
    pub fn putShippingType(self: *@This(), value: PaymentShippingType) core.HResult!void {
        const this: *IPaymentOptions = @ptrCast(self);
        return try this.putShippingType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaymentOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentOptions.GUID;
    pub const IID: Guid = IPaymentOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PaymentRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMerchantInfo(self: *@This()) core.HResult!*PaymentMerchantInfo {
        const this: *IPaymentRequest = @ptrCast(self);
        return try this.getMerchantInfo();
    }
    pub fn getDetails(self: *@This()) core.HResult!*PaymentDetails {
        const this: *IPaymentRequest = @ptrCast(self);
        return try this.getDetails();
    }
    pub fn getMethodData(self: *@This()) core.HResult!*IVectorView(PaymentMethodData) {
        const this: *IPaymentRequest = @ptrCast(self);
        return try this.getMethodData();
    }
    pub fn getOptions(self: *@This()) core.HResult!*PaymentOptions {
        const this: *IPaymentRequest = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPaymentRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPaymentRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithMerchantInfoOptionsAndId(details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, options: *PaymentOptions, id: HSTRING) core.HResult!*PaymentRequest {
        const _f = @This().IPaymentRequestFactory2Cache.get();
        return try _f.CreateWithMerchantInfoOptionsAndId(details, methodData, merchantInfo, options, id);
    }
    pub fn Create(details: *PaymentDetails, methodData: *IIterable(PaymentMethodData)) core.HResult!*PaymentRequest {
        const _f = @This().IPaymentRequestFactoryCache.get();
        return try _f.Create(details, methodData);
    }
    pub fn CreateWithMerchantInfo(details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo) core.HResult!*PaymentRequest {
        const _f = @This().IPaymentRequestFactoryCache.get();
        return try _f.CreateWithMerchantInfo(details, methodData, merchantInfo);
    }
    pub fn CreateWithMerchantInfoAndOptions(details: *PaymentDetails, methodData: *IIterable(PaymentMethodData), merchantInfo: *PaymentMerchantInfo, options: *PaymentOptions) core.HResult!*PaymentRequest {
        const _f = @This().IPaymentRequestFactoryCache.get();
        return try _f.CreateWithMerchantInfoAndOptions(details, methodData, merchantInfo, options);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentRequest.GUID;
    pub const IID: Guid = IPaymentRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentRequest.SIGNATURE);
    var _IPaymentRequestFactory2Cache: FactoryCache(IPaymentRequestFactory2, RUNTIME_NAME) = .{};
    var _IPaymentRequestFactoryCache: FactoryCache(IPaymentRequestFactory, RUNTIME_NAME) = .{};
};
pub const PaymentRequestChangeKind = enum(i32) {
    ShippingOption = 0,
    ShippingAddress = 1,
};
pub const PaymentRequestChangedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeKind(self: *@This()) core.HResult!PaymentRequestChangeKind {
        const this: *IPaymentRequestChangedArgs = @ptrCast(self);
        return try this.getChangeKind();
    }
    pub fn getShippingAddress(self: *@This()) core.HResult!*PaymentAddress {
        const this: *IPaymentRequestChangedArgs = @ptrCast(self);
        return try this.getShippingAddress();
    }
    pub fn getSelectedShippingOption(self: *@This()) core.HResult!*PaymentShippingOption {
        const this: *IPaymentRequestChangedArgs = @ptrCast(self);
        return try this.getSelectedShippingOption();
    }
    pub fn Acknowledge(self: *@This(), changeResult: *PaymentRequestChangedResult) core.HResult!void {
        const this: *IPaymentRequestChangedArgs = @ptrCast(self);
        return try this.Acknowledge(changeResult);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentRequestChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentRequestChangedArgs.GUID;
    pub const IID: Guid = IPaymentRequestChangedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentRequestChangedArgs.SIGNATURE);
};
pub const PaymentRequestChangedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, paymentRequest: *PaymentRequest, args: *PaymentRequestChangedArgs) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, paymentRequest: *PaymentRequest, args: *PaymentRequestChangedArgs) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, paymentRequest: *PaymentRequest, args: *PaymentRequestChangedArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, paymentRequest, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentRequestChangedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5078b9e1-f398-4f2c-a27e-94d371cf6c7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, paymentRequest: *PaymentRequest, args: *PaymentRequestChangedArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PaymentRequestChangedResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeAcceptedByMerchant(self: *@This()) core.HResult!bool {
        const this: *IPaymentRequestChangedResult = @ptrCast(self);
        return try this.getChangeAcceptedByMerchant();
    }
    pub fn putChangeAcceptedByMerchant(self: *@This(), value: bool) core.HResult!void {
        const this: *IPaymentRequestChangedResult = @ptrCast(self);
        return try this.putChangeAcceptedByMerchant(value);
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentRequestChangedResult = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentRequestChangedResult = @ptrCast(self);
        return try this.putMessage(value);
    }
    pub fn getUpdatedPaymentDetails(self: *@This()) core.HResult!*PaymentDetails {
        const this: *IPaymentRequestChangedResult = @ptrCast(self);
        return try this.getUpdatedPaymentDetails();
    }
    pub fn putUpdatedPaymentDetails(self: *@This(), value: *PaymentDetails) core.HResult!void {
        const this: *IPaymentRequestChangedResult = @ptrCast(self);
        return try this.putUpdatedPaymentDetails(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(changeAcceptedByMerchant: bool) core.HResult!*PaymentRequestChangedResult {
        const _f = @This().IPaymentRequestChangedResultFactoryCache.get();
        return try _f.Create(changeAcceptedByMerchant);
    }
    pub fn CreateWithPaymentDetails(changeAcceptedByMerchant: bool, updatedPaymentDetails: *PaymentDetails) core.HResult!*PaymentRequestChangedResult {
        const _f = @This().IPaymentRequestChangedResultFactoryCache.get();
        return try _f.CreateWithPaymentDetails(changeAcceptedByMerchant, updatedPaymentDetails);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentRequestChangedResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentRequestChangedResult.GUID;
    pub const IID: Guid = IPaymentRequestChangedResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentRequestChangedResult.SIGNATURE);
    var _IPaymentRequestChangedResultFactoryCache: FactoryCache(IPaymentRequestChangedResultFactory, RUNTIME_NAME) = .{};
};
pub const PaymentRequestCompletionStatus = enum(i32) {
    Succeeded = 0,
    Failed = 1,
    Unknown = 2,
};
pub const PaymentRequestStatus = enum(i32) {
    Succeeded = 0,
    Failed = 1,
    Canceled = 2,
};
pub const PaymentRequestSubmitResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PaymentRequestStatus {
        const this: *IPaymentRequestSubmitResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getResponse(self: *@This()) core.HResult!*PaymentResponse {
        const this: *IPaymentRequestSubmitResult = @ptrCast(self);
        return try this.getResponse();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentRequestSubmitResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentRequestSubmitResult.GUID;
    pub const IID: Guid = IPaymentRequestSubmitResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentRequestSubmitResult.SIGNATURE);
};
pub const PaymentResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPaymentToken(self: *@This()) core.HResult!*PaymentToken {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.getPaymentToken();
    }
    pub fn getShippingOption(self: *@This()) core.HResult!*PaymentShippingOption {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.getShippingOption();
    }
    pub fn getShippingAddress(self: *@This()) core.HResult!*PaymentAddress {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.getShippingAddress();
    }
    pub fn getPayerEmail(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.getPayerEmail();
    }
    pub fn getPayerName(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.getPayerName();
    }
    pub fn getPayerPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.getPayerPhoneNumber();
    }
    pub fn CompleteAsync(self: *@This(), status: PaymentRequestCompletionStatus) core.HResult!*IAsyncAction {
        const this: *IPaymentResponse = @ptrCast(self);
        return try this.CompleteAsync(status);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentResponse.GUID;
    pub const IID: Guid = IPaymentResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentResponse.SIGNATURE);
};
pub const PaymentShippingOption = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getAmount(self: *@This()) core.HResult!*PaymentCurrencyAmount {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.getAmount();
    }
    pub fn putAmount(self: *@This(), value: *PaymentCurrencyAmount) core.HResult!void {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.putAmount(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.getTag();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.getIsSelected();
    }
    pub fn putIsSelected(self: *@This(), value: bool) core.HResult!void {
        const this: *IPaymentShippingOption = @ptrCast(self);
        return try this.putIsSelected(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(label: HSTRING, amount: *PaymentCurrencyAmount) core.HResult!*PaymentShippingOption {
        const _f = @This().IPaymentShippingOptionFactoryCache.get();
        return try _f.Create(label, amount);
    }
    pub fn CreateWithSelected(label: HSTRING, amount: *PaymentCurrencyAmount, selected: bool) core.HResult!*PaymentShippingOption {
        const _f = @This().IPaymentShippingOptionFactoryCache.get();
        return try _f.CreateWithSelected(label, amount, selected);
    }
    pub fn CreateWithSelectedAndTag(label: HSTRING, amount: *PaymentCurrencyAmount, selected: bool, tag: HSTRING) core.HResult!*PaymentShippingOption {
        const _f = @This().IPaymentShippingOptionFactoryCache.get();
        return try _f.CreateWithSelectedAndTag(label, amount, selected, tag);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentShippingOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentShippingOption.GUID;
    pub const IID: Guid = IPaymentShippingOption.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentShippingOption.SIGNATURE);
    var _IPaymentShippingOptionFactoryCache: FactoryCache(IPaymentShippingOptionFactory, RUNTIME_NAME) = .{};
};
pub const PaymentShippingType = enum(i32) {
    Shipping = 0,
    Delivery = 1,
    Pickup = 2,
};
pub const PaymentToken = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPaymentMethodId(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentToken = @ptrCast(self);
        return try this.getPaymentMethodId();
    }
    pub fn getJsonDetails(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentToken = @ptrCast(self);
        return try this.getJsonDetails();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(paymentMethodId: HSTRING) core.HResult!*PaymentToken {
        const _f = @This().IPaymentTokenFactoryCache.get();
        return try _f.Create(paymentMethodId);
    }
    pub fn CreateWithJsonDetails(paymentMethodId: HSTRING, jsonDetails: HSTRING) core.HResult!*PaymentToken {
        const _f = @This().IPaymentTokenFactoryCache.get();
        return try _f.CreateWithJsonDetails(paymentMethodId, jsonDetails);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.PaymentToken";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentToken.GUID;
    pub const IID: Guid = IPaymentToken.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentToken.SIGNATURE);
    var _IPaymentTokenFactoryCache: FactoryCache(IPaymentTokenFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAgileObject = @import("../root.zig").IAgileObject;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Provider = @import("./Payments/Provider.zig");
