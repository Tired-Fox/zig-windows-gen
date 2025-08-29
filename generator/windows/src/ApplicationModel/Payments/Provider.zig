pub const IPaymentAppCanMakePaymentTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*PaymentRequest {
        var _r: *PaymentRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCanMakePaymentResult(self: *@This(), value: *PaymentCanMakePaymentResult) core.HResult!void {
        const _c = self.vtable.ReportCanMakePaymentResult(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.IPaymentAppCanMakePaymentTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ce201f0-8b93-4eb6-8c46-2e4a6c6a26f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **PaymentRequest) callconv(.winapi) HRESULT,
        ReportCanMakePaymentResult: *const fn(self: *anyopaque, value: *PaymentCanMakePaymentResult) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentAppManager = extern struct {
    vtable: *const VTable,
    pub fn RegisterAsync(self: *@This(), supportedPaymentMethodIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RegisterAsync(@ptrCast(self), supportedPaymentMethodIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnregisterAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.IPaymentAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e47aa53-8521-4969-a957-df2538a3a98f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterAsync: *const fn(self: *anyopaque, supportedPaymentMethodIds: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UnregisterAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentAppManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*PaymentAppManager {
        var _r: *PaymentAppManager = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.IPaymentAppManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a341ac28-fc89-4406-b4d9-34e7fe79dfb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **PaymentAppManager) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentTransaction = extern struct {
    vtable: *const VTable,
    pub fn getPaymentRequest(self: *@This()) core.HResult!*PaymentRequest {
        var _r: *PaymentRequest = undefined;
        const _c = self.vtable.get_PaymentRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPayerEmail(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayerEmail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPayerEmail(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PayerEmail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPayerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPayerName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PayerName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPayerPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayerPhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPayerPhoneNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PayerPhoneNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateShippingAddressAsync(self: *@This(), shippingAddress: *PaymentAddress) core.HResult!*IAsyncOperation(PaymentRequestChangedResult) {
        var _r: *IAsyncOperation(PaymentRequestChangedResult) = undefined;
        const _c = self.vtable.UpdateShippingAddressAsync(@ptrCast(self), shippingAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateSelectedShippingOptionAsync(self: *@This(), selectedShippingOption: *PaymentShippingOption) core.HResult!*IAsyncOperation(PaymentRequestChangedResult) {
        var _r: *IAsyncOperation(PaymentRequestChangedResult) = undefined;
        const _c = self.vtable.UpdateSelectedShippingOptionAsync(@ptrCast(self), selectedShippingOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcceptAsync(self: *@This(), paymentToken: *PaymentToken) core.HResult!*IAsyncOperation(PaymentTransactionAcceptResult) {
        var _r: *IAsyncOperation(PaymentTransactionAcceptResult) = undefined;
        const _c = self.vtable.AcceptAsync(@ptrCast(self), paymentToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reject(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reject(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.IPaymentTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62581da0-26a5-4e9b-a6eb-66606cf001d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PaymentRequest: *const fn(self: *anyopaque, _r: **PaymentRequest) callconv(.winapi) HRESULT,
        get_PayerEmail: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PayerEmail: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PayerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PayerName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PayerPhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PayerPhoneNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        UpdateShippingAddressAsync: *const fn(self: *anyopaque, shippingAddress: *PaymentAddress, _r: **IAsyncOperation(PaymentRequestChangedResult)) callconv(.winapi) HRESULT,
        UpdateSelectedShippingOptionAsync: *const fn(self: *anyopaque, selectedShippingOption: *PaymentShippingOption, _r: **IAsyncOperation(PaymentRequestChangedResult)) callconv(.winapi) HRESULT,
        AcceptAsync: *const fn(self: *anyopaque, paymentToken: *PaymentToken, _r: **IAsyncOperation(PaymentTransactionAcceptResult)) callconv(.winapi) HRESULT,
        Reject: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentTransactionAcceptResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PaymentRequestCompletionStatus {
        var _r: PaymentRequestCompletionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.IPaymentTransactionAcceptResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "060e3276-d30c-4817-95a2-df7ae9273b56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PaymentRequestCompletionStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPaymentTransactionStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(PaymentTransaction) {
        var _r: *IAsyncOperation(PaymentTransaction) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.IPaymentTransactionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d639750-ee0a-4df5-9b1e-1c0f9ec59881";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(PaymentTransaction)) callconv(.winapi) HRESULT,
    };
};
pub const PaymentAppCanMakePaymentTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*PaymentRequest {
        const this: *IPaymentAppCanMakePaymentTriggerDetails = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn ReportCanMakePaymentResult(self: *@This(), value: *PaymentCanMakePaymentResult) core.HResult!void {
        const this: *IPaymentAppCanMakePaymentTriggerDetails = @ptrCast(self);
        return try this.ReportCanMakePaymentResult(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.PaymentAppCanMakePaymentTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentAppCanMakePaymentTriggerDetails.GUID;
    pub const IID: Guid = IPaymentAppCanMakePaymentTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentAppCanMakePaymentTriggerDetails.SIGNATURE);
};
pub const PaymentAppManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RegisterAsync(self: *@This(), supportedPaymentMethodIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const this: *IPaymentAppManager = @ptrCast(self);
        return try this.RegisterAsync(supportedPaymentMethodIds);
    }
    pub fn UnregisterAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPaymentAppManager = @ptrCast(self);
        return try this.UnregisterAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Current() core.HResult!*PaymentAppManager {
        const factory = @This().IPaymentAppManagerStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.PaymentAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentAppManager.GUID;
    pub const IID: Guid = IPaymentAppManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentAppManager.SIGNATURE);
    var _IPaymentAppManagerStaticsCache: FactoryCache(IPaymentAppManagerStatics, RUNTIME_NAME) = .{};
};
pub const PaymentTransaction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPaymentRequest(self: *@This()) core.HResult!*PaymentRequest {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.getPaymentRequest();
    }
    pub fn getPayerEmail(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.getPayerEmail();
    }
    pub fn putPayerEmail(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.putPayerEmail(value);
    }
    pub fn getPayerName(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.getPayerName();
    }
    pub fn putPayerName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.putPayerName(value);
    }
    pub fn getPayerPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.getPayerPhoneNumber();
    }
    pub fn putPayerPhoneNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.putPayerPhoneNumber(value);
    }
    pub fn UpdateShippingAddressAsync(self: *@This(), shippingAddress: *PaymentAddress) core.HResult!*IAsyncOperation(PaymentRequestChangedResult) {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.UpdateShippingAddressAsync(shippingAddress);
    }
    pub fn UpdateSelectedShippingOptionAsync(self: *@This(), selectedShippingOption: *PaymentShippingOption) core.HResult!*IAsyncOperation(PaymentRequestChangedResult) {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.UpdateSelectedShippingOptionAsync(selectedShippingOption);
    }
    pub fn AcceptAsync(self: *@This(), paymentToken: *PaymentToken) core.HResult!*IAsyncOperation(PaymentTransactionAcceptResult) {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.AcceptAsync(paymentToken);
    }
    pub fn Reject(self: *@This()) core.HResult!void {
        const this: *IPaymentTransaction = @ptrCast(self);
        return try this.Reject();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(id: HSTRING) core.HResult!*IAsyncOperation(PaymentTransaction) {
        const factory = @This().IPaymentTransactionStaticsCache.get();
        return try factory.FromIdAsync(id);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.PaymentTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentTransaction.GUID;
    pub const IID: Guid = IPaymentTransaction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentTransaction.SIGNATURE);
    var _IPaymentTransactionStaticsCache: FactoryCache(IPaymentTransactionStatics, RUNTIME_NAME) = .{};
};
pub const PaymentTransactionAcceptResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PaymentRequestCompletionStatus {
        const this: *IPaymentTransactionAcceptResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaymentTransactionAcceptResult.GUID;
    pub const IID: Guid = IPaymentTransactionAcceptResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaymentTransactionAcceptResult.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const PaymentToken = @import("../Payments.zig").PaymentToken;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const PaymentRequest = @import("../Payments.zig").PaymentRequest;
const PaymentRequestChangedResult = @import("../Payments.zig").PaymentRequestChangedResult;
const HRESULT = @import("../../root.zig").HRESULT;
const PaymentCanMakePaymentResult = @import("../Payments.zig").PaymentCanMakePaymentResult;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const PaymentShippingOption = @import("../Payments.zig").PaymentShippingOption;
const FactoryCache = @import("../../core.zig").FactoryCache;
const PaymentAddress = @import("../Payments.zig").PaymentAddress;
const PaymentRequestCompletionStatus = @import("../Payments.zig").PaymentRequestCompletionStatus;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
