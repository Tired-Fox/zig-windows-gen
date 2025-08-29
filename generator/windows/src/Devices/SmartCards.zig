pub const IKnownSmartCardAppletIds = extern struct {
    vtable: *const VTable,
    pub fn getPaymentSystemEnvironment(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_PaymentSystemEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProximityPaymentSystemEnvironment(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ProximityPaymentSystemEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.IKnownSmartCardAppletIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b04d8d8-95b4-4c88-8cea-411e55511efc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PaymentSystemEnvironment: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_ProximityPaymentSystemEnvironment: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAppletIdGroup = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppletIds(self: *@This()) core.HResult!*IVector(IBuffer) {
        var _r: *IVector(IBuffer) = undefined;
        const _c = self.vtable.get_AppletIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmartCardEmulationCategory(self: *@This()) core.HResult!SmartCardEmulationCategory {
        var _r: SmartCardEmulationCategory = undefined;
        const _c = self.vtable.get_SmartCardEmulationCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmartCardEmulationCategory(self: *@This(), value: SmartCardEmulationCategory) core.HResult!void {
        const _c = self.vtable.put_SmartCardEmulationCategory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSmartCardEmulationType(self: *@This()) core.HResult!SmartCardEmulationType {
        var _r: SmartCardEmulationType = undefined;
        const _c = self.vtable.get_SmartCardEmulationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmartCardEmulationType(self: *@This(), value: SmartCardEmulationType) core.HResult!void {
        const _c = self.vtable.put_SmartCardEmulationType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutomaticEnablement(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutomaticEnablement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutomaticEnablement(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutomaticEnablement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAppletIdGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7db165e6-6264-56f4-5e03-c86385395eb1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AppletIds: *const fn(self: *anyopaque, _r: **IVector(IBuffer)) callconv(.winapi) HRESULT,
        get_SmartCardEmulationCategory: *const fn(self: *anyopaque, _r: *SmartCardEmulationCategory) callconv(.winapi) HRESULT,
        put_SmartCardEmulationCategory: *const fn(self: *anyopaque, value: SmartCardEmulationCategory) callconv(.winapi) HRESULT,
        get_SmartCardEmulationType: *const fn(self: *anyopaque, _r: *SmartCardEmulationType) callconv(.winapi) HRESULT,
        put_SmartCardEmulationType: *const fn(self: *anyopaque, value: SmartCardEmulationType) callconv(.winapi) HRESULT,
        get_AutomaticEnablement: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutomaticEnablement: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAppletIdGroup2 = extern struct {
    vtable: *const VTable,
    pub fn getLogo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogo(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecureUserAuthenticationRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SecureUserAuthenticationRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSecureUserAuthenticationRequired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SecureUserAuthenticationRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAppletIdGroup2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b0ef9dc-9956-4a62-8d4e-d37a68ebc3a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Logo: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Logo: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_SecureUserAuthenticationRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SecureUserAuthenticationRequired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAppletIdGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), displayName: HSTRING, appletIds: *IVector(IBuffer), emulationCategory: SmartCardEmulationCategory, emulationType: SmartCardEmulationType) core.HResult!*SmartCardAppletIdGroup {
        var _r: *SmartCardAppletIdGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), displayName, appletIds, emulationCategory, emulationType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAppletIdGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9105eb4d-4a65-4e41-8061-cbe83f3695e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, displayName: HSTRING, appletIds: *IVector(IBuffer), emulationCategory: SmartCardEmulationCategory, emulationType: SmartCardEmulationType, _r: **SmartCardAppletIdGroup) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAppletIdGroupRegistration = extern struct {
    vtable: *const VTable,
    pub fn getActivationPolicy(self: *@This()) core.HResult!SmartCardAppletIdGroupActivationPolicy {
        var _r: SmartCardAppletIdGroupActivationPolicy = undefined;
        const _c = self.vtable.get_ActivationPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppletIdGroup(self: *@This()) core.HResult!*SmartCardAppletIdGroup {
        var _r: *SmartCardAppletIdGroup = undefined;
        const _c = self.vtable.get_AppletIdGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestActivationPolicyChangeAsync(self: *@This(), policy: SmartCardAppletIdGroupActivationPolicy) core.HResult!*IAsyncOperation(SmartCardActivationPolicyChangeResult) {
        var _r: *IAsyncOperation(SmartCardActivationPolicyChangeResult) = undefined;
        const _c = self.vtable.RequestActivationPolicyChangeAsync(@ptrCast(self), policy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAutomaticResponseApdusAsync(self: *@This(), apdus: *IIterable(SmartCardAutomaticResponseApdu)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAutomaticResponseApdusAsync(@ptrCast(self), apdus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAppletIdGroupRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df1208d1-31bb-5596-43b1-6d69a0257b3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivationPolicy: *const fn(self: *anyopaque, _r: *SmartCardAppletIdGroupActivationPolicy) callconv(.winapi) HRESULT,
        get_AppletIdGroup: *const fn(self: *anyopaque, _r: **SmartCardAppletIdGroup) callconv(.winapi) HRESULT,
        RequestActivationPolicyChangeAsync: *const fn(self: *anyopaque, policy: SmartCardAppletIdGroupActivationPolicy, _r: **IAsyncOperation(SmartCardActivationPolicyChangeResult)) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        SetAutomaticResponseApdusAsync: *const fn(self: *anyopaque, apdus: *IIterable(SmartCardAutomaticResponseApdu), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAppletIdGroupRegistration2 = extern struct {
    vtable: *const VTable,
    pub fn getSmartCardReaderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SmartCardReaderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPropertiesAsync(self: *@This(), props: *ValueSet) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPropertiesAsync(@ptrCast(self), props, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAppletIdGroupRegistration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f5508d8-98a7-4f2e-91d9-6cfcceda407f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmartCardReaderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetPropertiesAsync: *const fn(self: *anyopaque, props: *ValueSet, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAppletIdGroupStatics = extern struct {
    vtable: *const VTable,
    pub fn getMaxAppletIds(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MaxAppletIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAppletIdGroupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab2899a9-e76c-45cf-bf1d-90eaa6205927";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxAppletIds: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAutomaticResponseApdu = extern struct {
    vtable: *const VTable,
    pub fn getCommandApdu(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_CommandApdu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommandApdu(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_CommandApdu(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommandApduBitMask(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_CommandApduBitMask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommandApduBitMask(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_CommandApduBitMask(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShouldMatchLength(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldMatchLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldMatchLength(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldMatchLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppletId(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AppletId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppletId(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_AppletId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResponseApdu(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ResponseApdu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResponseApdu(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_ResponseApdu(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAutomaticResponseApdu";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52152bab-c63e-4531-a857-d756d99b986a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommandApdu: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_CommandApdu: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_CommandApduBitMask: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_CommandApduBitMask: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_ShouldMatchLength: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldMatchLength: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AppletId: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_AppletId: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_ResponseApdu: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_ResponseApdu: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAutomaticResponseApdu2 = extern struct {
    vtable: *const VTable,
    pub fn getInputState(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_InputState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputState(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_InputState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutputState(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_OutputState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutputState(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_OutputState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAutomaticResponseApdu2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44aebb14-559d-4531-4e51-89db6fa8a57a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputState: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_InputState: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_OutputState: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_OutputState: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAutomaticResponseApdu3 = extern struct {
    vtable: *const VTable,
    pub fn getAllowWhenCryptogramGeneratorNotPrepared(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWhenCryptogramGeneratorNotPrepared(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWhenCryptogramGeneratorNotPrepared(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWhenCryptogramGeneratorNotPrepared(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAutomaticResponseApdu3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf43da74-6576-4392-9367-fe3bc9e2d496";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowWhenCryptogramGeneratorNotPrepared: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWhenCryptogramGeneratorNotPrepared: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardAutomaticResponseApduFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), commandApdu: *IBuffer, responseApdu: *IBuffer) core.HResult!*SmartCardAutomaticResponseApdu {
        var _r: *SmartCardAutomaticResponseApdu = undefined;
        const _c = self.vtable.Create(@ptrCast(self), commandApdu, responseApdu, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardAutomaticResponseApduFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e97ea2fa-d02c-4c55-b02a-8cff7fa9f05b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, commandApdu: *IBuffer, responseApdu: *IBuffer, _r: **SmartCardAutomaticResponseApdu) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGenerator = extern struct {
    vtable: *const VTable,
    pub fn getSupportedCryptogramMaterialTypes(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialType) {
        var _r: *IVectorView(SmartCardCryptogramMaterialType) = undefined;
        const _c = self.vtable.get_SupportedCryptogramMaterialTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCryptogramAlgorithms(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramAlgorithm) {
        var _r: *IVectorView(SmartCardCryptogramAlgorithm) = undefined;
        const _c = self.vtable.get_SupportedCryptogramAlgorithms(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCryptogramMaterialPackageFormats(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageFormat) {
        var _r: *IVectorView(SmartCardCryptogramMaterialPackageFormat) = undefined;
        const _c = self.vtable.get_SupportedCryptogramMaterialPackageFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCryptogramMaterialPackageConfirmationResponseFormats(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat) {
        var _r: *IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat) = undefined;
        const _c = self.vtable.get_SupportedCryptogramMaterialPackageConfirmationResponseFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedSmartCardCryptogramStorageKeyCapabilities(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramStorageKeyCapabilities) {
        var _r: *IVectorView(SmartCardCryptogramStorageKeyCapabilities) = undefined;
        const _c = self.vtable.get_SupportedSmartCardCryptogramStorageKeyCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteCryptogramMaterialStorageKeyAsync(self: *@This(), storageKeyName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.DeleteCryptogramMaterialStorageKeyAsync(@ptrCast(self), storageKeyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCryptogramMaterialStorageKeyAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, storageKeyName: HSTRING, algorithm: SmartCardCryptogramStorageKeyAlgorithm, capabilities: SmartCardCryptogramStorageKeyCapabilities) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.CreateCryptogramMaterialStorageKeyAsync(@ptrCast(self), promptingBehavior, storageKeyName, algorithm, capabilities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCryptogramMaterialStorageKeyInfoAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, storageKeyName: HSTRING, format: CryptographicPublicKeyBlobType) core.HResult!*IAsyncOperation(SmartCardCryptogramStorageKeyInfo) {
        var _r: *IAsyncOperation(SmartCardCryptogramStorageKeyInfo) = undefined;
        const _c = self.vtable.RequestCryptogramMaterialStorageKeyInfoAsync(@ptrCast(self), promptingBehavior, storageKeyName, format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportCryptogramMaterialPackageAsync(self: *@This(), format: SmartCardCryptogramMaterialPackageFormat, storageKeyName: HSTRING, materialPackageName: HSTRING, cryptogramMaterialPackage: *IBuffer) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.ImportCryptogramMaterialPackageAsync(@ptrCast(self), format, storageKeyName, materialPackageName, cryptogramMaterialPackage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryProvePossessionOfCryptogramMaterialPackageAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, responseFormat: SmartCardCryptogramMaterialPackageConfirmationResponseFormat, materialPackageName: HSTRING, materialName: HSTRING, challenge: *IBuffer) core.HResult!*IAsyncOperation(SmartCardCryptogramMaterialPossessionProof) {
        var _r: *IAsyncOperation(SmartCardCryptogramMaterialPossessionProof) = undefined;
        const _c = self.vtable.TryProvePossessionOfCryptogramMaterialPackageAsync(@ptrCast(self), promptingBehavior, responseFormat, materialPackageName, materialName, challenge, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestUnlockCryptogramMaterialForUseAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.RequestUnlockCryptogramMaterialForUseAsync(@ptrCast(self), promptingBehavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteCryptogramMaterialPackageAsync(self: *@This(), materialPackageName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.DeleteCryptogramMaterialPackageAsync(@ptrCast(self), materialPackageName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e39f587b-edd3-4e49-b594-0ff5e4d0c76f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedCryptogramMaterialTypes: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramMaterialType)) callconv(.winapi) HRESULT,
        get_SupportedCryptogramAlgorithms: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramAlgorithm)) callconv(.winapi) HRESULT,
        get_SupportedCryptogramMaterialPackageFormats: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramMaterialPackageFormat)) callconv(.winapi) HRESULT,
        get_SupportedCryptogramMaterialPackageConfirmationResponseFormats: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat)) callconv(.winapi) HRESULT,
        get_SupportedSmartCardCryptogramStorageKeyCapabilities: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramStorageKeyCapabilities)) callconv(.winapi) HRESULT,
        DeleteCryptogramMaterialStorageKeyAsync: *const fn(self: *anyopaque, storageKeyName: HSTRING, _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
        CreateCryptogramMaterialStorageKeyAsync: *const fn(self: *anyopaque, promptingBehavior: SmartCardUnlockPromptingBehavior, storageKeyName: HSTRING, algorithm: SmartCardCryptogramStorageKeyAlgorithm, capabilities: SmartCardCryptogramStorageKeyCapabilities, _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
        RequestCryptogramMaterialStorageKeyInfoAsync: *const fn(self: *anyopaque, promptingBehavior: SmartCardUnlockPromptingBehavior, storageKeyName: HSTRING, format: CryptographicPublicKeyBlobType, _r: **IAsyncOperation(SmartCardCryptogramStorageKeyInfo)) callconv(.winapi) HRESULT,
        ImportCryptogramMaterialPackageAsync: *const fn(self: *anyopaque, format: SmartCardCryptogramMaterialPackageFormat, storageKeyName: HSTRING, materialPackageName: HSTRING, cryptogramMaterialPackage: *IBuffer, _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
        TryProvePossessionOfCryptogramMaterialPackageAsync: *const fn(self: *anyopaque, promptingBehavior: SmartCardUnlockPromptingBehavior, responseFormat: SmartCardCryptogramMaterialPackageConfirmationResponseFormat, materialPackageName: HSTRING, materialName: HSTRING, challenge: *IBuffer, _r: **IAsyncOperation(SmartCardCryptogramMaterialPossessionProof)) callconv(.winapi) HRESULT,
        RequestUnlockCryptogramMaterialForUseAsync: *const fn(self: *anyopaque, promptingBehavior: SmartCardUnlockPromptingBehavior, _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
        DeleteCryptogramMaterialPackageAsync: *const fn(self: *anyopaque, materialPackageName: HSTRING, _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGenerator2 = extern struct {
    vtable: *const VTable,
    pub fn ValidateRequestApduAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, apduToValidate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep)) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.ValidateRequestApduAsync(@ptrCast(self), promptingBehavior, apduToValidate, cryptogramPlacementSteps, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllCryptogramStorageKeyCharacteristicsAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult) {
        var _r: *IAsyncOperation(SmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult) = undefined;
        const _c = self.vtable.GetAllCryptogramStorageKeyCharacteristicsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllCryptogramMaterialPackageCharacteristicsAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult) {
        var _r: *IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult) = undefined;
        const _c = self.vtable.GetAllCryptogramMaterialPackageCharacteristicsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllCryptogramMaterialPackageCharacteristicsAsync(self: *@This(), storageKeyName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult) {
        var _r: *IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult) = undefined;
        const _c = self.vtable.GetAllCryptogramMaterialPackageCharacteristicsAsync(@ptrCast(self), storageKeyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllCryptogramMaterialCharacteristicsAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, materialPackageName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult) {
        var _r: *IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult) = undefined;
        const _c = self.vtable.GetAllCryptogramMaterialCharacteristicsAsync(@ptrCast(self), promptingBehavior, materialPackageName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGenerator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7116aa34-5d6d-4b4a-96a3-efa47d2a7e25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ValidateRequestApduAsync: *const fn(self: *anyopaque, promptingBehavior: SmartCardUnlockPromptingBehavior, apduToValidate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep), _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
        GetAllCryptogramStorageKeyCharacteristicsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetAllCryptogramMaterialPackageCharacteristicsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetAllCryptogramMaterialPackageCharacteristicsAsync: *const fn(self: *anyopaque, storageKeyName: HSTRING, _r: **IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetAllCryptogramMaterialCharacteristicsAsync: *const fn(self: *anyopaque, promptingBehavior: SmartCardUnlockPromptingBehavior, materialPackageName: HSTRING, _r: **IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGeneratorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetSmartCardCryptogramGeneratorAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardCryptogramGenerator) {
        var _r: *IAsyncOperation(SmartCardCryptogramGenerator) = undefined;
        const _c = self.vtable.GetSmartCardCryptogramGeneratorAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGeneratorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09933910-cb9c-4015-967d-5234f3b02900";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSmartCardCryptogramGeneratorAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardCryptogramGenerator)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGeneratorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGeneratorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09bdf5e5-b4bd-4e23-a588-74469204c128";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult = extern struct {
    vtable: *const VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        var _r: SmartCardCryptogramGeneratorOperationStatus = undefined;
        const _c = self.vtable.get_OperationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialCharacteristics) {
        var _r: *IVectorView(SmartCardCryptogramMaterialCharacteristics) = undefined;
        const _c = self.vtable.get_Characteristics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2798e029-d687-4c92-86c6-399e9a0ecb09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationStatus: *const fn(self: *anyopaque, _r: *SmartCardCryptogramGeneratorOperationStatus) callconv(.winapi) HRESULT,
        get_Characteristics: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramMaterialCharacteristics)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult = extern struct {
    vtable: *const VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        var _r: SmartCardCryptogramGeneratorOperationStatus = undefined;
        const _c = self.vtable.get_OperationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageCharacteristics) {
        var _r: *IVectorView(SmartCardCryptogramMaterialPackageCharacteristics) = undefined;
        const _c = self.vtable.get_Characteristics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e6a8a5c-9773-46c4-a32f-b1e543159e04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationStatus: *const fn(self: *anyopaque, _r: *SmartCardCryptogramGeneratorOperationStatus) callconv(.winapi) HRESULT,
        get_Characteristics: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramMaterialPackageCharacteristics)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult = extern struct {
    vtable: *const VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        var _r: SmartCardCryptogramGeneratorOperationStatus = undefined;
        const _c = self.vtable.get_OperationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramStorageKeyCharacteristics) {
        var _r: *IVectorView(SmartCardCryptogramStorageKeyCharacteristics) = undefined;
        const _c = self.vtable.get_Characteristics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c7ce857-a7e7-489d-b9d6-368061515012";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationStatus: *const fn(self: *anyopaque, _r: *SmartCardCryptogramGeneratorOperationStatus) callconv(.winapi) HRESULT,
        get_Characteristics: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramStorageKeyCharacteristics)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramMaterialCharacteristics = extern struct {
    vtable: *const VTable,
    pub fn getMaterialName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MaterialName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowedAlgorithms(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramAlgorithm) {
        var _r: *IVectorView(SmartCardCryptogramAlgorithm) = undefined;
        const _c = self.vtable.get_AllowedAlgorithms(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowedProofOfPossessionAlgorithms(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat) {
        var _r: *IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat) = undefined;
        const _c = self.vtable.get_AllowedProofOfPossessionAlgorithms(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowedValidations(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramAlgorithm) {
        var _r: *IVectorView(SmartCardCryptogramAlgorithm) = undefined;
        const _c = self.vtable.get_AllowedValidations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialType(self: *@This()) core.HResult!SmartCardCryptogramMaterialType {
        var _r: SmartCardCryptogramMaterialType = undefined;
        const _c = self.vtable.get_MaterialType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionMethod(self: *@This()) core.HResult!SmartCardCryptogramMaterialProtectionMethod {
        var _r: SmartCardCryptogramMaterialProtectionMethod = undefined;
        const _c = self.vtable.get_ProtectionMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionVersion(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ProtectionVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaterialLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaterialLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramMaterialCharacteristics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc9ac5cc-c1d7-4153-923b-a2d43c6c8d49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaterialName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AllowedAlgorithms: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramAlgorithm)) callconv(.winapi) HRESULT,
        get_AllowedProofOfPossessionAlgorithms: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat)) callconv(.winapi) HRESULT,
        get_AllowedValidations: *const fn(self: *anyopaque, _r: **IVectorView(SmartCardCryptogramAlgorithm)) callconv(.winapi) HRESULT,
        get_MaterialType: *const fn(self: *anyopaque, _r: *SmartCardCryptogramMaterialType) callconv(.winapi) HRESULT,
        get_ProtectionMethod: *const fn(self: *anyopaque, _r: *SmartCardCryptogramMaterialProtectionMethod) callconv(.winapi) HRESULT,
        get_ProtectionVersion: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaterialLength: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramMaterialPackageCharacteristics = extern struct {
    vtable: *const VTable,
    pub fn getPackageName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStorageKeyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StorageKeyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateImported(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DateImported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageFormat(self: *@This()) core.HResult!SmartCardCryptogramMaterialPackageFormat {
        var _r: SmartCardCryptogramMaterialPackageFormat = undefined;
        const _c = self.vtable.get_PackageFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramMaterialPackageCharacteristics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffb58e1f-0692-4c47-93cf-34d91f9dcd00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StorageKeyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DateImported: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_PackageFormat: *const fn(self: *anyopaque, _r: *SmartCardCryptogramMaterialPackageFormat) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramMaterialPossessionProof = extern struct {
    vtable: *const VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        var _r: SmartCardCryptogramGeneratorOperationStatus = undefined;
        const _c = self.vtable.get_OperationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProof(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Proof(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramMaterialPossessionProof";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5b9ab8c-a141-4135-9add-b0d2e3aa1fc9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationStatus: *const fn(self: *anyopaque, _r: *SmartCardCryptogramGeneratorOperationStatus) callconv(.winapi) HRESULT,
        get_Proof: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramPlacementStep = extern struct {
    vtable: *const VTable,
    pub fn getAlgorithm(self: *@This()) core.HResult!SmartCardCryptogramAlgorithm {
        var _r: SmartCardCryptogramAlgorithm = undefined;
        const _c = self.vtable.get_Algorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlgorithm(self: *@This(), value: SmartCardCryptogramAlgorithm) core.HResult!void {
        const _c = self.vtable.put_Algorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SourceData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_SourceData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCryptogramMaterialPackageName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CryptogramMaterialPackageName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCryptogramMaterialPackageName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CryptogramMaterialPackageName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCryptogramMaterialName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CryptogramMaterialName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCryptogramMaterialName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CryptogramMaterialName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTemplateOffset(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TemplateOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTemplateOffset(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TemplateOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCryptogramOffset(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CryptogramOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCryptogramOffset(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_CryptogramOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCryptogramLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CryptogramLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCryptogramLength(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_CryptogramLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCryptogramPlacementOptions(self: *@This()) core.HResult!SmartCardCryptogramPlacementOptions {
        var _r: SmartCardCryptogramPlacementOptions = undefined;
        const _c = self.vtable.get_CryptogramPlacementOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCryptogramPlacementOptions(self: *@This(), value: SmartCardCryptogramPlacementOptions) core.HResult!void {
        const _c = self.vtable.put_CryptogramPlacementOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChainedOutputStep(self: *@This()) core.HResult!*SmartCardCryptogramPlacementStep {
        var _r: *SmartCardCryptogramPlacementStep = undefined;
        const _c = self.vtable.get_ChainedOutputStep(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChainedOutputStep(self: *@This(), value: *SmartCardCryptogramPlacementStep) core.HResult!void {
        const _c = self.vtable.put_ChainedOutputStep(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramPlacementStep";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "947b03eb-8342-4792-a2e5-925636378a53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Algorithm: *const fn(self: *anyopaque, _r: *SmartCardCryptogramAlgorithm) callconv(.winapi) HRESULT,
        put_Algorithm: *const fn(self: *anyopaque, value: SmartCardCryptogramAlgorithm) callconv(.winapi) HRESULT,
        get_SourceData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_SourceData: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_CryptogramMaterialPackageName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CryptogramMaterialPackageName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CryptogramMaterialName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CryptogramMaterialName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TemplateOffset: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TemplateOffset: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_CryptogramOffset: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_CryptogramOffset: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_CryptogramLength: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_CryptogramLength: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_CryptogramPlacementOptions: *const fn(self: *anyopaque, _r: *SmartCardCryptogramPlacementOptions) callconv(.winapi) HRESULT,
        put_CryptogramPlacementOptions: *const fn(self: *anyopaque, value: SmartCardCryptogramPlacementOptions) callconv(.winapi) HRESULT,
        get_ChainedOutputStep: *const fn(self: *anyopaque, _r: **SmartCardCryptogramPlacementStep) callconv(.winapi) HRESULT,
        put_ChainedOutputStep: *const fn(self: *anyopaque, value: *SmartCardCryptogramPlacementStep) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramStorageKeyCharacteristics = extern struct {
    vtable: *const VTable,
    pub fn getStorageKeyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StorageKeyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateCreated(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DateCreated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlgorithm(self: *@This()) core.HResult!SmartCardCryptogramStorageKeyAlgorithm {
        var _r: SmartCardCryptogramStorageKeyAlgorithm = undefined;
        const _c = self.vtable.get_Algorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!SmartCardCryptogramStorageKeyCapabilities {
        var _r: SmartCardCryptogramStorageKeyCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramStorageKeyCharacteristics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8552546e-4457-4825-b464-635471a39f5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StorageKeyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DateCreated: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Algorithm: *const fn(self: *anyopaque, _r: *SmartCardCryptogramStorageKeyAlgorithm) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: *SmartCardCryptogramStorageKeyCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramStorageKeyInfo = extern struct {
    vtable: *const VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        var _r: SmartCardCryptogramGeneratorOperationStatus = undefined;
        const _c = self.vtable.get_OperationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicKeyBlobType(self: *@This()) core.HResult!CryptographicPublicKeyBlobType {
        var _r: CryptographicPublicKeyBlobType = undefined;
        const _c = self.vtable.get_PublicKeyBlobType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicKey(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_PublicKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttestationStatus(self: *@This()) core.HResult!SmartCardCryptographicKeyAttestationStatus {
        var _r: SmartCardCryptographicKeyAttestationStatus = undefined;
        const _c = self.vtable.get_AttestationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttestation(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Attestation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttestationCertificateChain(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AttestationCertificateChain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!SmartCardCryptogramStorageKeyCapabilities {
        var _r: SmartCardCryptogramStorageKeyCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramStorageKeyInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77b0f00d-b097-4f61-a26a-9561639c9c3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationStatus: *const fn(self: *anyopaque, _r: *SmartCardCryptogramGeneratorOperationStatus) callconv(.winapi) HRESULT,
        get_PublicKeyBlobType: *const fn(self: *anyopaque, _r: *CryptographicPublicKeyBlobType) callconv(.winapi) HRESULT,
        get_PublicKey: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_AttestationStatus: *const fn(self: *anyopaque, _r: *SmartCardCryptographicKeyAttestationStatus) callconv(.winapi) HRESULT,
        get_Attestation: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_AttestationCertificateChain: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: *SmartCardCryptogramStorageKeyCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardCryptogramStorageKeyInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getOperationalRequirements(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OperationalRequirements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardCryptogramStorageKeyInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "000440f9-f7fd-417d-89e1-fbb0382adc4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationalRequirements: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulator = extern struct {
    vtable: *const VTable,
    pub fn getEnablementPolicy(self: *@This()) core.HResult!SmartCardEmulatorEnablementPolicy {
        var _r: SmartCardEmulatorEnablementPolicy = undefined;
        const _c = self.vtable.get_EnablementPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dfb906b2-875e-47e5-8077-e8bff1b1c6fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnablementPolicy: *const fn(self: *anyopaque, _r: *SmartCardEmulatorEnablementPolicy) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulator2 = extern struct {
    vtable: *const VTable,
    pub fn addApduReceived(self: *@This(), value: *TypedEventHandler(SmartCardEmulator,SmartCardEmulatorApduReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ApduReceived(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeApduReceived(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ApduReceived(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addConnectionDeactivated(self: *@This(), value: *TypedEventHandler(SmartCardEmulator,SmartCardEmulatorConnectionDeactivatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionDeactivated(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionDeactivated(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionDeactivated(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsHostCardEmulationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsHostCardEmulationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe3fc0b8-8529-411a-807b-48edc2a0ab44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ApduReceived: *const fn(self: *anyopaque, value: *TypedEventHandler(SmartCardEmulator,SmartCardEmulatorApduReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ApduReceived: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ConnectionDeactivated: *const fn(self: *anyopaque, value: *TypedEventHandler(SmartCardEmulator,SmartCardEmulatorConnectionDeactivatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionDeactivated: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        IsHostCardEmulationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorApduReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCommandApdu(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_CommandApdu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionProperties(self: *@This()) core.HResult!*SmartCardEmulatorConnectionProperties {
        var _r: *SmartCardEmulatorConnectionProperties = undefined;
        const _c = self.vtable.get_ConnectionProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRespondAsync(self: *@This(), responseApdu: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRespondAsync(@ptrCast(self), responseApdu, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutomaticResponseStatus(self: *@This()) core.HResult!SmartCardAutomaticResponseStatus {
        var _r: SmartCardAutomaticResponseStatus = undefined;
        const _c = self.vtable.get_AutomaticResponseStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorApduReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d55d1576-69d2-5333-5b5f-f8c0d6e9f09f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommandApdu: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_ConnectionProperties: *const fn(self: *anyopaque, _r: **SmartCardEmulatorConnectionProperties) callconv(.winapi) HRESULT,
        TryRespondAsync: *const fn(self: *anyopaque, responseApdu: *IBuffer, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_AutomaticResponseStatus: *const fn(self: *anyopaque, _r: *SmartCardAutomaticResponseStatus) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorApduReceivedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRespondAsync(self: *@This(), responseApdu: *IBuffer, nextState: *IReference(u32)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRespondAsync(@ptrCast(self), responseApdu, nextState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorApduReceivedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bf93df0-22e1-4238-8610-94ce4a965425";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        TryRespondAsync: *const fn(self: *anyopaque, responseApdu: *IBuffer, nextState: *IReference(u32), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorApduReceivedEventArgsWithCryptograms = extern struct {
    vtable: *const VTable,
    pub fn TryRespondWithCryptogramsAsync(self: *@This(), responseTemplate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep)) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.TryRespondWithCryptogramsAsync(@ptrCast(self), responseTemplate, cryptogramPlacementSteps, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRespondWithCryptogramsAsyncWithCryptogramPlacementStepsWithNextState(self: *@This(), responseTemplate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep), nextState: *IReference(u32)) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var _r: *IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) = undefined;
        const _c = self.vtable.TryRespondWithCryptogramsAsyncWithCryptogramPlacementStepsWithNextState(@ptrCast(self), responseTemplate, cryptogramPlacementSteps, nextState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorApduReceivedEventArgsWithCryptograms";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d550bac7-b7bf-4e29-9294-0c4ac3c941bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryRespondWithCryptogramsAsync: *const fn(self: *anyopaque, responseTemplate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep), _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
        TryRespondWithCryptogramsAsyncWithCryptogramPlacementStepsWithNextState: *const fn(self: *anyopaque, responseTemplate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep), nextState: *IReference(u32), _r: **IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorConnectionDeactivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConnectionProperties(self: *@This()) core.HResult!*SmartCardEmulatorConnectionProperties {
        var _r: *SmartCardEmulatorConnectionProperties = undefined;
        const _c = self.vtable.get_ConnectionProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!SmartCardEmulatorConnectionDeactivatedReason {
        var _r: SmartCardEmulatorConnectionDeactivatedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorConnectionDeactivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2186d8d3-c5eb-5262-43df-62a0a1b55557";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionProperties: *const fn(self: *anyopaque, _r: **SmartCardEmulatorConnectionProperties) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *SmartCardEmulatorConnectionDeactivatedReason) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorConnectionProperties = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!SmartCardEmulatorConnectionSource {
        var _r: SmartCardEmulatorConnectionSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorConnectionProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e2ca5ee-f969-507d-6cf9-34e2d18df311";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: *SmartCardEmulatorConnectionSource) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardEmulator) {
        var _r: *IAsyncOperation(SmartCardEmulator) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a9bfc4b-c4d3-494f-b8a2-6215d81e85b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardEmulator)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetAppletIdGroupRegistrationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(SmartCardAppletIdGroupRegistration)) {
        var _r: *IAsyncOperation(IVectorView(SmartCardAppletIdGroupRegistration)) = undefined;
        const _c = self.vtable.GetAppletIdGroupRegistrationsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterAppletIdGroupAsync(self: *@This(), appletIdGroup: *SmartCardAppletIdGroup) core.HResult!*IAsyncOperation(SmartCardAppletIdGroupRegistration) {
        var _r: *IAsyncOperation(SmartCardAppletIdGroupRegistration) = undefined;
        const _c = self.vtable.RegisterAppletIdGroupAsync(@ptrCast(self), appletIdGroup, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterAppletIdGroupAsync(self: *@This(), registration: *SmartCardAppletIdGroupRegistration) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnregisterAppletIdGroupAsync(@ptrCast(self), registration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAppletIdGroupRegistrations(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MaxAppletIdGroupRegistrations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69ae9f8a-b775-488b-8436-6c1e28ed731f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAppletIdGroupRegistrationsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(SmartCardAppletIdGroupRegistration))) callconv(.winapi) HRESULT,
        RegisterAppletIdGroupAsync: *const fn(self: *anyopaque, appletIdGroup: *SmartCardAppletIdGroup, _r: **IAsyncOperation(SmartCardAppletIdGroupRegistration)) callconv(.winapi) HRESULT,
        UnregisterAppletIdGroupAsync: *const fn(self: *anyopaque, registration: *SmartCardAppletIdGroupRegistration, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_MaxAppletIdGroupRegistrations: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardEmulatorStatics3 = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardEmulatorStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59ea142a-9f09-43f5-8565-cfa8148e4cb2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const KnownSmartCardAppletIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getPaymentSystemEnvironment() core.HResult!*IBuffer {
        const factory = @This().IKnownSmartCardAppletIdsCache.get();
        return try factory.getPaymentSystemEnvironment();
    }
    pub fn getProximityPaymentSystemEnvironment() core.HResult!*IBuffer {
        const factory = @This().IKnownSmartCardAppletIdsCache.get();
        return try factory.getProximityPaymentSystemEnvironment();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.KnownSmartCardAppletIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownSmartCardAppletIdsCache: FactoryCache(IKnownSmartCardAppletIds, RUNTIME_NAME) = .{};
};
pub const SmartCardActivationPolicyChangeResult = enum(i32) {
    Denied = 0,
    Allowed = 1,
};
pub const SmartCardAppletIdGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getAppletIds(self: *@This()) core.HResult!*IVector(IBuffer) {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.getAppletIds();
    }
    pub fn getSmartCardEmulationCategory(self: *@This()) core.HResult!SmartCardEmulationCategory {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.getSmartCardEmulationCategory();
    }
    pub fn putSmartCardEmulationCategory(self: *@This(), value: SmartCardEmulationCategory) core.HResult!void {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.putSmartCardEmulationCategory(value);
    }
    pub fn getSmartCardEmulationType(self: *@This()) core.HResult!SmartCardEmulationType {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.getSmartCardEmulationType();
    }
    pub fn putSmartCardEmulationType(self: *@This(), value: SmartCardEmulationType) core.HResult!void {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.putSmartCardEmulationType(value);
    }
    pub fn getAutomaticEnablement(self: *@This()) core.HResult!bool {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.getAutomaticEnablement();
    }
    pub fn putAutomaticEnablement(self: *@This(), value: bool) core.HResult!void {
        const this: *ISmartCardAppletIdGroup = @ptrCast(self);
        return try this.putAutomaticEnablement(value);
    }
    pub fn getLogo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLogo();
    }
    pub fn putLogo(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLogo(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getSecureUserAuthenticationRequired(self: *@This()) core.HResult!bool {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSecureUserAuthenticationRequired();
    }
    pub fn putSecureUserAuthenticationRequired(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISmartCardAppletIdGroup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSecureUserAuthenticationRequired(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardAppletIdGroup.IID)));
    }
    pub fn Create(displayName: HSTRING, appletIds: *IVector(IBuffer), emulationCategory: SmartCardEmulationCategory, emulationType: SmartCardEmulationType) core.HResult!*SmartCardAppletIdGroup {
        const factory = @This().ISmartCardAppletIdGroupFactoryCache.get();
        return try factory.Create(displayName, appletIds, emulationCategory, emulationType);
    }
    pub fn getMaxAppletIds() core.HResult!u16 {
        const factory = @This().ISmartCardAppletIdGroupStaticsCache.get();
        return try factory.getMaxAppletIds();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardAppletIdGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardAppletIdGroup.GUID;
    pub const IID: Guid = ISmartCardAppletIdGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardAppletIdGroup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISmartCardAppletIdGroupFactoryCache: FactoryCache(ISmartCardAppletIdGroupFactory, RUNTIME_NAME) = .{};
    var _ISmartCardAppletIdGroupStaticsCache: FactoryCache(ISmartCardAppletIdGroupStatics, RUNTIME_NAME) = .{};
};
pub const SmartCardAppletIdGroupActivationPolicy = enum(i32) {
    Disabled = 0,
    ForegroundOverride = 1,
    Enabled = 2,
};
pub const SmartCardAppletIdGroupRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivationPolicy(self: *@This()) core.HResult!SmartCardAppletIdGroupActivationPolicy {
        const this: *ISmartCardAppletIdGroupRegistration = @ptrCast(self);
        return try this.getActivationPolicy();
    }
    pub fn getAppletIdGroup(self: *@This()) core.HResult!*SmartCardAppletIdGroup {
        const this: *ISmartCardAppletIdGroupRegistration = @ptrCast(self);
        return try this.getAppletIdGroup();
    }
    pub fn RequestActivationPolicyChangeAsync(self: *@This(), policy: SmartCardAppletIdGroupActivationPolicy) core.HResult!*IAsyncOperation(SmartCardActivationPolicyChangeResult) {
        const this: *ISmartCardAppletIdGroupRegistration = @ptrCast(self);
        return try this.RequestActivationPolicyChangeAsync(policy);
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *ISmartCardAppletIdGroupRegistration = @ptrCast(self);
        return try this.getId();
    }
    pub fn SetAutomaticResponseApdusAsync(self: *@This(), apdus: *IIterable(SmartCardAutomaticResponseApdu)) core.HResult!*IAsyncAction {
        const this: *ISmartCardAppletIdGroupRegistration = @ptrCast(self);
        return try this.SetAutomaticResponseApdusAsync(apdus);
    }
    pub fn getSmartCardReaderId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmartCardAppletIdGroupRegistration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroupRegistration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmartCardReaderId();
    }
    pub fn SetPropertiesAsync(self: *@This(), props: *ValueSet) core.HResult!*IAsyncAction {
        var this: ?*ISmartCardAppletIdGroupRegistration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAppletIdGroupRegistration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPropertiesAsync(props);
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardAppletIdGroupRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardAppletIdGroupRegistration.GUID;
    pub const IID: Guid = ISmartCardAppletIdGroupRegistration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardAppletIdGroupRegistration.SIGNATURE);
};
pub const SmartCardAutomaticResponseApdu = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommandApdu(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.getCommandApdu();
    }
    pub fn putCommandApdu(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.putCommandApdu(value);
    }
    pub fn getCommandApduBitMask(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.getCommandApduBitMask();
    }
    pub fn putCommandApduBitMask(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.putCommandApduBitMask(value);
    }
    pub fn getShouldMatchLength(self: *@This()) core.HResult!bool {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.getShouldMatchLength();
    }
    pub fn putShouldMatchLength(self: *@This(), value: bool) core.HResult!void {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.putShouldMatchLength(value);
    }
    pub fn getAppletId(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.getAppletId();
    }
    pub fn putAppletId(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.putAppletId(value);
    }
    pub fn getResponseApdu(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.getResponseApdu();
    }
    pub fn putResponseApdu(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ISmartCardAutomaticResponseApdu = @ptrCast(self);
        return try this.putResponseApdu(value);
    }
    pub fn getInputState(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*ISmartCardAutomaticResponseApdu2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAutomaticResponseApdu2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInputState();
    }
    pub fn putInputState(self: *@This(), value: *IReference(u32)) core.HResult!void {
        var this: ?*ISmartCardAutomaticResponseApdu2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAutomaticResponseApdu2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInputState(value);
    }
    pub fn getOutputState(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*ISmartCardAutomaticResponseApdu2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAutomaticResponseApdu2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutputState();
    }
    pub fn putOutputState(self: *@This(), value: *IReference(u32)) core.HResult!void {
        var this: ?*ISmartCardAutomaticResponseApdu2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAutomaticResponseApdu2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutputState(value);
    }
    pub fn getAllowWhenCryptogramGeneratorNotPrepared(self: *@This()) core.HResult!bool {
        var this: ?*ISmartCardAutomaticResponseApdu3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAutomaticResponseApdu3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowWhenCryptogramGeneratorNotPrepared();
    }
    pub fn putAllowWhenCryptogramGeneratorNotPrepared(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISmartCardAutomaticResponseApdu3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardAutomaticResponseApdu3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowWhenCryptogramGeneratorNotPrepared(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(commandApdu: *IBuffer, responseApdu: *IBuffer) core.HResult!*SmartCardAutomaticResponseApdu {
        const factory = @This().ISmartCardAutomaticResponseApduFactoryCache.get();
        return try factory.Create(commandApdu, responseApdu);
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardAutomaticResponseApdu";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardAutomaticResponseApdu.GUID;
    pub const IID: Guid = ISmartCardAutomaticResponseApdu.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardAutomaticResponseApdu.SIGNATURE);
    var _ISmartCardAutomaticResponseApduFactoryCache: FactoryCache(ISmartCardAutomaticResponseApduFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardAutomaticResponseStatus = enum(i32) {
    None = 0,
    Success = 1,
    UnknownError = 2,
};
pub const SmartCardCryptogramAlgorithm = enum(i32) {
    None = 0,
    CbcMac = 1,
    Cvc3Umd = 2,
    DecimalizedMsd = 3,
    Cvc3MD = 4,
    Sha1 = 5,
    SignedDynamicApplicationData = 6,
    RsaPkcs1 = 7,
    Sha256Hmac = 8,
};
pub const SmartCardCryptogramGenerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedCryptogramMaterialTypes(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialType) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.getSupportedCryptogramMaterialTypes();
    }
    pub fn getSupportedCryptogramAlgorithms(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramAlgorithm) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.getSupportedCryptogramAlgorithms();
    }
    pub fn getSupportedCryptogramMaterialPackageFormats(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageFormat) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.getSupportedCryptogramMaterialPackageFormats();
    }
    pub fn getSupportedCryptogramMaterialPackageConfirmationResponseFormats(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.getSupportedCryptogramMaterialPackageConfirmationResponseFormats();
    }
    pub fn getSupportedSmartCardCryptogramStorageKeyCapabilities(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramStorageKeyCapabilities) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.getSupportedSmartCardCryptogramStorageKeyCapabilities();
    }
    pub fn DeleteCryptogramMaterialStorageKeyAsync(self: *@This(), storageKeyName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.DeleteCryptogramMaterialStorageKeyAsync(storageKeyName);
    }
    pub fn CreateCryptogramMaterialStorageKeyAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, storageKeyName: HSTRING, algorithm: SmartCardCryptogramStorageKeyAlgorithm, capabilities: SmartCardCryptogramStorageKeyCapabilities) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.CreateCryptogramMaterialStorageKeyAsync(promptingBehavior, storageKeyName, algorithm, capabilities);
    }
    pub fn RequestCryptogramMaterialStorageKeyInfoAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, storageKeyName: HSTRING, format: CryptographicPublicKeyBlobType) core.HResult!*IAsyncOperation(SmartCardCryptogramStorageKeyInfo) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.RequestCryptogramMaterialStorageKeyInfoAsync(promptingBehavior, storageKeyName, format);
    }
    pub fn ImportCryptogramMaterialPackageAsync(self: *@This(), format: SmartCardCryptogramMaterialPackageFormat, storageKeyName: HSTRING, materialPackageName: HSTRING, cryptogramMaterialPackage: *IBuffer) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.ImportCryptogramMaterialPackageAsync(format, storageKeyName, materialPackageName, cryptogramMaterialPackage);
    }
    pub fn TryProvePossessionOfCryptogramMaterialPackageAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, responseFormat: SmartCardCryptogramMaterialPackageConfirmationResponseFormat, materialPackageName: HSTRING, materialName: HSTRING, challenge: *IBuffer) core.HResult!*IAsyncOperation(SmartCardCryptogramMaterialPossessionProof) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.TryProvePossessionOfCryptogramMaterialPackageAsync(promptingBehavior, responseFormat, materialPackageName, materialName, challenge);
    }
    pub fn RequestUnlockCryptogramMaterialForUseAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.RequestUnlockCryptogramMaterialForUseAsync(promptingBehavior);
    }
    pub fn DeleteCryptogramMaterialPackageAsync(self: *@This(), materialPackageName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        const this: *ISmartCardCryptogramGenerator = @ptrCast(self);
        return try this.DeleteCryptogramMaterialPackageAsync(materialPackageName);
    }
    pub fn ValidateRequestApduAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, apduToValidate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep)) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var this: ?*ISmartCardCryptogramGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardCryptogramGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ValidateRequestApduAsync(promptingBehavior, apduToValidate, cryptogramPlacementSteps);
    }
    pub fn GetAllCryptogramStorageKeyCharacteristicsAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult) {
        var this: ?*ISmartCardCryptogramGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardCryptogramGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllCryptogramStorageKeyCharacteristicsAsync();
    }
    pub fn GetAllCryptogramMaterialPackageCharacteristicsAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult) {
        var this: ?*ISmartCardCryptogramGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardCryptogramGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllCryptogramMaterialPackageCharacteristicsAsync();
    }
    pub fn GetAllCryptogramMaterialPackageCharacteristicsAsync(self: *@This(), storageKeyName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult) {
        var this: ?*ISmartCardCryptogramGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardCryptogramGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllCryptogramMaterialPackageCharacteristicsAsync(storageKeyName);
    }
    pub fn GetAllCryptogramMaterialCharacteristicsAsync(self: *@This(), promptingBehavior: SmartCardUnlockPromptingBehavior, materialPackageName: HSTRING) core.HResult!*IAsyncOperation(SmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult) {
        var this: ?*ISmartCardCryptogramGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardCryptogramGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllCryptogramMaterialCharacteristicsAsync(promptingBehavior, materialPackageName);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().ISmartCardCryptogramGeneratorStatics2Cache.get();
        return try factory.IsSupported();
    }
    pub fn GetSmartCardCryptogramGeneratorAsync() core.HResult!*IAsyncOperation(SmartCardCryptogramGenerator) {
        const factory = @This().ISmartCardCryptogramGeneratorStaticsCache.get();
        return try factory.GetSmartCardCryptogramGeneratorAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramGenerator.GUID;
    pub const IID: Guid = ISmartCardCryptogramGenerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramGenerator.SIGNATURE);
    var _ISmartCardCryptogramGeneratorStatics2Cache: FactoryCache(ISmartCardCryptogramGeneratorStatics2, RUNTIME_NAME) = .{};
    var _ISmartCardCryptogramGeneratorStaticsCache: FactoryCache(ISmartCardCryptogramGeneratorStatics, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramGeneratorOperationStatus = enum(i32) {
    Success = 0,
    AuthorizationFailed = 1,
    AuthorizationCanceled = 2,
    AuthorizationRequired = 3,
    CryptogramMaterialPackageStorageKeyExists = 4,
    NoCryptogramMaterialPackageStorageKey = 5,
    NoCryptogramMaterialPackage = 6,
    UnsupportedCryptogramMaterialPackage = 7,
    UnknownCryptogramMaterialName = 8,
    InvalidCryptogramMaterialUsage = 9,
    ApduResponseNotSent = 10,
    OtherError = 11,
    ValidationFailed = 12,
    NotSupported = 13,
};
pub const SmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        const this: *ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult = @ptrCast(self);
        return try this.getOperationStatus();
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialCharacteristics) {
        const this: *ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult = @ptrCast(self);
        return try this.getCharacteristics();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult.GUID;
    pub const IID: Guid = ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramGetAllCryptogramMaterialCharacteristicsResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        const this: *ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult = @ptrCast(self);
        return try this.getOperationStatus();
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageCharacteristics) {
        const this: *ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult = @ptrCast(self);
        return try this.getCharacteristics();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult.GUID;
    pub const IID: Guid = ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramGetAllCryptogramMaterialPackageCharacteristicsResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        const this: *ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult = @ptrCast(self);
        return try this.getOperationStatus();
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramStorageKeyCharacteristics) {
        const this: *ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult = @ptrCast(self);
        return try this.getCharacteristics();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult.GUID;
    pub const IID: Guid = ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramGetAllCryptogramStorageKeyCharacteristicsResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramMaterialCharacteristics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaterialName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getMaterialName();
    }
    pub fn getAllowedAlgorithms(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramAlgorithm) {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getAllowedAlgorithms();
    }
    pub fn getAllowedProofOfPossessionAlgorithms(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramMaterialPackageConfirmationResponseFormat) {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getAllowedProofOfPossessionAlgorithms();
    }
    pub fn getAllowedValidations(self: *@This()) core.HResult!*IVectorView(SmartCardCryptogramAlgorithm) {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getAllowedValidations();
    }
    pub fn getMaterialType(self: *@This()) core.HResult!SmartCardCryptogramMaterialType {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getMaterialType();
    }
    pub fn getProtectionMethod(self: *@This()) core.HResult!SmartCardCryptogramMaterialProtectionMethod {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getProtectionMethod();
    }
    pub fn getProtectionVersion(self: *@This()) core.HResult!i32 {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getProtectionVersion();
    }
    pub fn getMaterialLength(self: *@This()) core.HResult!i32 {
        const this: *ISmartCardCryptogramMaterialCharacteristics = @ptrCast(self);
        return try this.getMaterialLength();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramMaterialCharacteristics.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramMaterialCharacteristics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramMaterialCharacteristics.GUID;
    pub const IID: Guid = ISmartCardCryptogramMaterialCharacteristics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramMaterialCharacteristics.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramMaterialPackageCharacteristics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardCryptogramMaterialPackageCharacteristics = @ptrCast(self);
        return try this.getPackageName();
    }
    pub fn getStorageKeyName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardCryptogramMaterialPackageCharacteristics = @ptrCast(self);
        return try this.getStorageKeyName();
    }
    pub fn getDateImported(self: *@This()) core.HResult!DateTime {
        const this: *ISmartCardCryptogramMaterialPackageCharacteristics = @ptrCast(self);
        return try this.getDateImported();
    }
    pub fn getPackageFormat(self: *@This()) core.HResult!SmartCardCryptogramMaterialPackageFormat {
        const this: *ISmartCardCryptogramMaterialPackageCharacteristics = @ptrCast(self);
        return try this.getPackageFormat();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramMaterialPackageCharacteristics.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramMaterialPackageCharacteristics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramMaterialPackageCharacteristics.GUID;
    pub const IID: Guid = ISmartCardCryptogramMaterialPackageCharacteristics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramMaterialPackageCharacteristics.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramMaterialPackageConfirmationResponseFormat = enum(i32) {
    None = 0,
    VisaHmac = 1,
};
pub const SmartCardCryptogramMaterialPackageFormat = enum(i32) {
    None = 0,
    JweRsaPki = 1,
};
pub const SmartCardCryptogramMaterialPossessionProof = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        const this: *ISmartCardCryptogramMaterialPossessionProof = @ptrCast(self);
        return try this.getOperationStatus();
    }
    pub fn getProof(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardCryptogramMaterialPossessionProof = @ptrCast(self);
        return try this.getProof();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramMaterialPossessionProof";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramMaterialPossessionProof.GUID;
    pub const IID: Guid = ISmartCardCryptogramMaterialPossessionProof.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramMaterialPossessionProof.SIGNATURE);
};
pub const SmartCardCryptogramMaterialProtectionMethod = enum(i32) {
    None = 0,
    WhiteBoxing = 1,
};
pub const SmartCardCryptogramMaterialType = enum(i32) {
    None = 0,
    StaticDataAuthentication = 1,
    TripleDes112 = 2,
    Aes = 3,
    RsaPkcs1 = 4,
};
pub const SmartCardCryptogramPlacementOptions = enum(i32) {
    None = 0,
    UnitsAreInNibbles = 1,
    ChainOutput = 2,
};
pub const SmartCardCryptogramPlacementStep = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlgorithm(self: *@This()) core.HResult!SmartCardCryptogramAlgorithm {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getAlgorithm();
    }
    pub fn putAlgorithm(self: *@This(), value: SmartCardCryptogramAlgorithm) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putAlgorithm(value);
    }
    pub fn getSourceData(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getSourceData();
    }
    pub fn putSourceData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putSourceData(value);
    }
    pub fn getCryptogramMaterialPackageName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getCryptogramMaterialPackageName();
    }
    pub fn putCryptogramMaterialPackageName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putCryptogramMaterialPackageName(value);
    }
    pub fn getCryptogramMaterialName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getCryptogramMaterialName();
    }
    pub fn putCryptogramMaterialName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putCryptogramMaterialName(value);
    }
    pub fn getTemplateOffset(self: *@This()) core.HResult!i32 {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getTemplateOffset();
    }
    pub fn putTemplateOffset(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putTemplateOffset(value);
    }
    pub fn getCryptogramOffset(self: *@This()) core.HResult!i32 {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getCryptogramOffset();
    }
    pub fn putCryptogramOffset(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putCryptogramOffset(value);
    }
    pub fn getCryptogramLength(self: *@This()) core.HResult!i32 {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getCryptogramLength();
    }
    pub fn putCryptogramLength(self: *@This(), value: i32) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putCryptogramLength(value);
    }
    pub fn getCryptogramPlacementOptions(self: *@This()) core.HResult!SmartCardCryptogramPlacementOptions {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getCryptogramPlacementOptions();
    }
    pub fn putCryptogramPlacementOptions(self: *@This(), value: SmartCardCryptogramPlacementOptions) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putCryptogramPlacementOptions(value);
    }
    pub fn getChainedOutputStep(self: *@This()) core.HResult!*SmartCardCryptogramPlacementStep {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.getChainedOutputStep();
    }
    pub fn putChainedOutputStep(self: *@This(), value: *SmartCardCryptogramPlacementStep) core.HResult!void {
        const this: *ISmartCardCryptogramPlacementStep = @ptrCast(self);
        return try this.putChainedOutputStep(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramPlacementStep.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramPlacementStep";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramPlacementStep.GUID;
    pub const IID: Guid = ISmartCardCryptogramPlacementStep.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramPlacementStep.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramStorageKeyAlgorithm = enum(i32) {
    None = 0,
    Rsa2048 = 1,
};
pub const SmartCardCryptogramStorageKeyCapabilities = enum(i32) {
    None = 0,
    HardwareProtection = 1,
    UnlockPrompt = 2,
};
pub const SmartCardCryptogramStorageKeyCharacteristics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStorageKeyName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardCryptogramStorageKeyCharacteristics = @ptrCast(self);
        return try this.getStorageKeyName();
    }
    pub fn getDateCreated(self: *@This()) core.HResult!DateTime {
        const this: *ISmartCardCryptogramStorageKeyCharacteristics = @ptrCast(self);
        return try this.getDateCreated();
    }
    pub fn getAlgorithm(self: *@This()) core.HResult!SmartCardCryptogramStorageKeyAlgorithm {
        const this: *ISmartCardCryptogramStorageKeyCharacteristics = @ptrCast(self);
        return try this.getAlgorithm();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!SmartCardCryptogramStorageKeyCapabilities {
        const this: *ISmartCardCryptogramStorageKeyCharacteristics = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardCryptogramStorageKeyCharacteristics.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramStorageKeyCharacteristics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramStorageKeyCharacteristics.GUID;
    pub const IID: Guid = ISmartCardCryptogramStorageKeyCharacteristics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramStorageKeyCharacteristics.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardCryptogramStorageKeyInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!SmartCardCryptogramGeneratorOperationStatus {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getOperationStatus();
    }
    pub fn getPublicKeyBlobType(self: *@This()) core.HResult!CryptographicPublicKeyBlobType {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getPublicKeyBlobType();
    }
    pub fn getPublicKey(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getPublicKey();
    }
    pub fn getAttestationStatus(self: *@This()) core.HResult!SmartCardCryptographicKeyAttestationStatus {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getAttestationStatus();
    }
    pub fn getAttestation(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getAttestation();
    }
    pub fn getAttestationCertificateChain(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getAttestationCertificateChain();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!SmartCardCryptogramStorageKeyCapabilities {
        const this: *ISmartCardCryptogramStorageKeyInfo = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getOperationalRequirements(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISmartCardCryptogramStorageKeyInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardCryptogramStorageKeyInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOperationalRequirements();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardCryptogramStorageKeyInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardCryptogramStorageKeyInfo.GUID;
    pub const IID: Guid = ISmartCardCryptogramStorageKeyInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardCryptogramStorageKeyInfo.SIGNATURE);
};
pub const SmartCardCryptographicKeyAttestationStatus = enum(i32) {
    NoAttestation = 0,
    SoftwareKeyWithoutTpm = 1,
    SoftwareKeyWithTpm = 2,
    TpmKeyUnknownAttestationStatus = 3,
    TpmKeyWithoutAttestationCapability = 4,
    TpmKeyWithTemporaryAttestationFailure = 5,
    TpmKeyWithLongTermAttestationFailure = 6,
    TpmKeyWithAttestation = 7,
};
pub const SmartCardEmulationCategory = enum(i32) {
    Other = 0,
    Payment = 1,
};
pub const SmartCardEmulationType = enum(i32) {
    Host = 0,
    Uicc = 1,
    EmbeddedSE = 2,
};
pub const SmartCardEmulator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnablementPolicy(self: *@This()) core.HResult!SmartCardEmulatorEnablementPolicy {
        const this: *ISmartCardEmulator = @ptrCast(self);
        return try this.getEnablementPolicy();
    }
    pub fn addApduReceived(self: *@This(), value: *TypedEventHandler(SmartCardEmulator,SmartCardEmulatorApduReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISmartCardEmulator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addApduReceived(value);
    }
    pub fn removeApduReceived(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        var this: ?*ISmartCardEmulator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeApduReceived(value);
    }
    pub fn addConnectionDeactivated(self: *@This(), value: *TypedEventHandler(SmartCardEmulator,SmartCardEmulatorConnectionDeactivatedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISmartCardEmulator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addConnectionDeactivated(value);
    }
    pub fn removeConnectionDeactivated(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        var this: ?*ISmartCardEmulator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeConnectionDeactivated(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        var this: ?*ISmartCardEmulator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Start();
    }
    pub fn IsHostCardEmulationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISmartCardEmulator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsHostCardEmulationSupported();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().ISmartCardEmulatorStatics3Cache.get();
        return try factory.IsSupported();
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(SmartCardEmulator) {
        const factory = @This().ISmartCardEmulatorStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetAppletIdGroupRegistrationsAsync() core.HResult!*IAsyncOperation(IVectorView(SmartCardAppletIdGroupRegistration)) {
        const factory = @This().ISmartCardEmulatorStatics2Cache.get();
        return try factory.GetAppletIdGroupRegistrationsAsync();
    }
    pub fn RegisterAppletIdGroupAsync(appletIdGroup: *SmartCardAppletIdGroup) core.HResult!*IAsyncOperation(SmartCardAppletIdGroupRegistration) {
        const factory = @This().ISmartCardEmulatorStatics2Cache.get();
        return try factory.RegisterAppletIdGroupAsync(appletIdGroup);
    }
    pub fn UnregisterAppletIdGroupAsync(registration: *SmartCardAppletIdGroupRegistration) core.HResult!*IAsyncAction {
        const factory = @This().ISmartCardEmulatorStatics2Cache.get();
        return try factory.UnregisterAppletIdGroupAsync(registration);
    }
    pub fn getMaxAppletIdGroupRegistrations() core.HResult!u16 {
        const factory = @This().ISmartCardEmulatorStatics2Cache.get();
        return try factory.getMaxAppletIdGroupRegistrations();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardEmulator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardEmulator.GUID;
    pub const IID: Guid = ISmartCardEmulator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardEmulator.SIGNATURE);
    var _ISmartCardEmulatorStatics3Cache: FactoryCache(ISmartCardEmulatorStatics3, RUNTIME_NAME) = .{};
    var _ISmartCardEmulatorStaticsCache: FactoryCache(ISmartCardEmulatorStatics, RUNTIME_NAME) = .{};
    var _ISmartCardEmulatorStatics2Cache: FactoryCache(ISmartCardEmulatorStatics2, RUNTIME_NAME) = .{};
};
pub const SmartCardEmulatorApduReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommandApdu(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardEmulatorApduReceivedEventArgs = @ptrCast(self);
        return try this.getCommandApdu();
    }
    pub fn getConnectionProperties(self: *@This()) core.HResult!*SmartCardEmulatorConnectionProperties {
        const this: *ISmartCardEmulatorApduReceivedEventArgs = @ptrCast(self);
        return try this.getConnectionProperties();
    }
    pub fn TryRespondAsync(self: *@This(), responseApdu: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ISmartCardEmulatorApduReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulatorApduReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRespondAsync(responseApdu);
    }
    pub fn getAutomaticResponseStatus(self: *@This()) core.HResult!SmartCardAutomaticResponseStatus {
        const this: *ISmartCardEmulatorApduReceivedEventArgs = @ptrCast(self);
        return try this.getAutomaticResponseStatus();
    }
    pub fn TryRespondWithCryptogramsAsync(self: *@This(), responseTemplate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep)) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var this: ?*ISmartCardEmulatorApduReceivedEventArgsWithCryptograms = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulatorApduReceivedEventArgsWithCryptograms.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRespondWithCryptogramsAsync(responseTemplate, cryptogramPlacementSteps);
    }
    pub fn TryRespondWithCryptogramsAsyncWithCryptogramPlacementStepsWithNextState(self: *@This(), responseTemplate: *IBuffer, cryptogramPlacementSteps: *IIterable(SmartCardCryptogramPlacementStep), nextState: *IReference(u32)) core.HResult!*IAsyncOperation(SmartCardCryptogramGeneratorOperationStatus) {
        var this: ?*ISmartCardEmulatorApduReceivedEventArgsWithCryptograms = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulatorApduReceivedEventArgsWithCryptograms.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRespondWithCryptogramsAsyncWithCryptogramPlacementStepsWithNextState(responseTemplate, cryptogramPlacementSteps, nextState);
    }
    pub fn getState(self: *@This()) core.HResult!u32 {
        var this: ?*ISmartCardEmulatorApduReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulatorApduReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getState();
    }
    pub fn TryRespondAsyncWithNextState(self: *@This(), responseApdu: *IBuffer, nextState: *IReference(u32)) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ISmartCardEmulatorApduReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardEmulatorApduReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRespondAsyncWithNextState(responseApdu, nextState);
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardEmulatorApduReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardEmulatorApduReceivedEventArgs.GUID;
    pub const IID: Guid = ISmartCardEmulatorApduReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardEmulatorApduReceivedEventArgs.SIGNATURE);
};
pub const SmartCardEmulatorConnectionDeactivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionProperties(self: *@This()) core.HResult!*SmartCardEmulatorConnectionProperties {
        const this: *ISmartCardEmulatorConnectionDeactivatedEventArgs = @ptrCast(self);
        return try this.getConnectionProperties();
    }
    pub fn getReason(self: *@This()) core.HResult!SmartCardEmulatorConnectionDeactivatedReason {
        const this: *ISmartCardEmulatorConnectionDeactivatedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardEmulatorConnectionDeactivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardEmulatorConnectionDeactivatedEventArgs.GUID;
    pub const IID: Guid = ISmartCardEmulatorConnectionDeactivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardEmulatorConnectionDeactivatedEventArgs.SIGNATURE);
};
pub const SmartCardEmulatorConnectionDeactivatedReason = enum(i32) {
    ConnectionLost = 0,
    ConnectionRedirected = 1,
};
pub const SmartCardEmulatorConnectionProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *ISmartCardEmulatorConnectionProperties = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSource(self: *@This()) core.HResult!SmartCardEmulatorConnectionSource {
        const this: *ISmartCardEmulatorConnectionProperties = @ptrCast(self);
        return try this.getSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardEmulatorConnectionProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardEmulatorConnectionProperties.GUID;
    pub const IID: Guid = ISmartCardEmulatorConnectionProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardEmulatorConnectionProperties.SIGNATURE);
};
pub const SmartCardEmulatorConnectionSource = enum(i32) {
    Unknown = 0,
    NfcReader = 1,
};
pub const SmartCardEmulatorEnablementPolicy = enum(i32) {
    Never = 0,
    Always = 1,
    ScreenOn = 2,
    ScreenUnlocked = 3,
};
pub const SmartCardUnlockPromptingBehavior = enum(i32) {
    AllowUnlockPrompt = 0,
    RequireUnlockPrompt = 1,
    PreventUnlockPrompt = 2,
};
pub const ISmartCardTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getTriggerType(self: *@This()) core.HResult!SmartCardTriggerType {
        var _r: SmartCardTriggerType = undefined;
        const _c = self.vtable.get_TriggerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceAppletId(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SourceAppletId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTriggerData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_TriggerData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f9bf11e-39ef-4f2b-b44f-0a9155b177bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerType: *const fn(self: *anyopaque, _r: *SmartCardTriggerType) callconv(.winapi) HRESULT,
        get_SourceAppletId: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_TriggerData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardTriggerDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getEmulator(self: *@This()) core.HResult!*SmartCardEmulator {
        var _r: *SmartCardEmulator = undefined;
        const _c = self.vtable.get_Emulator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryLaunchCurrentAppAsync(self: *@This(), arguments: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryLaunchCurrentAppAsync(@ptrCast(self), arguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryLaunchCurrentAppAsyncWithBehavior(self: *@This(), arguments: HSTRING, behavior: SmartCardLaunchBehavior) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryLaunchCurrentAppAsyncWithBehavior(@ptrCast(self), arguments, behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardTriggerDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2945c569-8975-4a51-9e1a-5f8a76ee51af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Emulator: *const fn(self: *anyopaque, _r: **SmartCardEmulator) callconv(.winapi) HRESULT,
        TryLaunchCurrentAppAsync: *const fn(self: *anyopaque, arguments: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryLaunchCurrentAppAsyncWithBehavior: *const fn(self: *anyopaque, arguments: HSTRING, behavior: SmartCardLaunchBehavior, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardTriggerDetails3 = extern struct {
    vtable: *const VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        var _r: *SmartCard = undefined;
        const _c = self.vtable.get_SmartCard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardTriggerDetails3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3e2c27d-18c6-4ba8-8376-ef03d4912666";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmartCard: *const fn(self: *anyopaque, _r: **SmartCard) callconv(.winapi) HRESULT,
    };
};
pub const SmartCardLaunchBehavior = enum(i32) {
    Default = 0,
    AboveLock = 1,
};
pub const SmartCardTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerType(self: *@This()) core.HResult!SmartCardTriggerType {
        const this: *ISmartCardTriggerDetails = @ptrCast(self);
        return try this.getTriggerType();
    }
    pub fn getSourceAppletId(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardTriggerDetails = @ptrCast(self);
        return try this.getSourceAppletId();
    }
    pub fn getTriggerData(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardTriggerDetails = @ptrCast(self);
        return try this.getTriggerData();
    }
    pub fn getEmulator(self: *@This()) core.HResult!*SmartCardEmulator {
        var this: ?*ISmartCardTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmulator();
    }
    pub fn TryLaunchCurrentAppAsync(self: *@This(), arguments: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ISmartCardTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryLaunchCurrentAppAsync(arguments);
    }
    pub fn TryLaunchCurrentAppAsyncWithBehavior(self: *@This(), arguments: HSTRING, behavior: SmartCardLaunchBehavior) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ISmartCardTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryLaunchCurrentAppAsyncWithBehavior(arguments, behavior);
    }
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        var this: ?*ISmartCardTriggerDetails3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardTriggerDetails3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmartCard();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardTriggerDetails.GUID;
    pub const IID: Guid = ISmartCardTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardTriggerDetails.SIGNATURE);
};
pub const SmartCardTriggerType = enum(i32) {
    EmulatorTransaction = 0,
    EmulatorNearFieldEntry = 1,
    EmulatorNearFieldExit = 2,
    EmulatorHostApplicationActivated = 3,
    EmulatorAppletIdGroupRegistrationChanged = 4,
    ReaderCardAdded = 5,
};
pub const CardAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        const this: *ICardAddedEventArgs = @ptrCast(self);
        return try this.getSmartCard();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.CardAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICardAddedEventArgs.GUID;
    pub const IID: Guid = ICardAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICardAddedEventArgs.SIGNATURE);
};
pub const CardRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        const this: *ICardRemovedEventArgs = @ptrCast(self);
        return try this.getSmartCard();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.CardRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICardRemovedEventArgs.GUID;
    pub const IID: Guid = ICardRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICardRemovedEventArgs.SIGNATURE);
};
pub const ICardAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        var _r: *SmartCard = undefined;
        const _c = self.vtable.get_SmartCard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ICardAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18bbef98-f18b-4dd3-b118-dfb2c8e23cc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmartCard: *const fn(self: *anyopaque, _r: **SmartCard) callconv(.winapi) HRESULT,
    };
};
pub const ICardRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        var _r: *SmartCard = undefined;
        const _c = self.vtable.get_SmartCard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ICardRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15331aaf-22d7-4945-afc9-03b46f42a6cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmartCard: *const fn(self: *anyopaque, _r: **SmartCard) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCard = extern struct {
    vtable: *const VTable,
    pub fn getReader(self: *@This()) core.HResult!*SmartCardReader {
        var _r: *SmartCardReader = undefined;
        const _c = self.vtable.get_Reader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardStatus) {
        var _r: *IAsyncOperation(SmartCardStatus) = undefined;
        const _c = self.vtable.GetStatusAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnswerToResetAsync(self: *@This()) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.GetAnswerToResetAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b718871-6434-43f4-b55a-6a29623870aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reader: *const fn(self: *anyopaque, _r: **SmartCardReader) callconv(.winapi) HRESULT,
        GetStatusAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardStatus)) callconv(.winapi) HRESULT,
        GetAnswerToResetAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardChallengeContext = extern struct {
    vtable: *const VTable,
    pub fn getChallenge(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Challenge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifyResponseAsync(self: *@This(), response: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.VerifyResponseAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProvisionAsync(self: *@This(), response: *IBuffer, formatCard: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ProvisionAsync(@ptrCast(self), response, formatCard, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProvisionAsyncWithFormatCardWithNewCardId(self: *@This(), response: *IBuffer, formatCard: bool, newCardId: *Guid) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ProvisionAsyncWithFormatCardWithNewCardId(@ptrCast(self), response, formatCard, newCardId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeAdministrativeKeyAsync(self: *@This(), response: *IBuffer, newAdministrativeKey: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ChangeAdministrativeKeyAsync(@ptrCast(self), response, newAdministrativeKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardChallengeContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "192a5319-c9c4-4947-81cc-44794a61ef91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Challenge: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        VerifyResponseAsync: *const fn(self: *anyopaque, response: *IBuffer, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ProvisionAsync: *const fn(self: *anyopaque, response: *IBuffer, formatCard: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ProvisionAsyncWithFormatCardWithNewCardId: *const fn(self: *anyopaque, response: *IBuffer, formatCard: bool, newCardId: *Guid, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ChangeAdministrativeKeyAsync: *const fn(self: *anyopaque, response: *IBuffer, newAdministrativeKey: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardConnect = extern struct {
    vtable: *const VTable,
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardConnection) {
        var _r: *IAsyncOperation(SmartCardConnection) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardConnect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2fdf87e5-028d-491e-a058-3382c3986f40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardConnection)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardConnection = extern struct {
    vtable: *const VTable,
    pub fn TransmitAsync(self: *@This(), command: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.TransmitAsync(@ptrCast(self), command, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7edb991a-a81a-47bc-a649-156be6b7f231";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TransmitAsync: *const fn(self: *anyopaque, command: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardPinPolicy = extern struct {
    vtable: *const VTable,
    pub fn getMinLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MinLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUppercaseLetters(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        var _r: SmartCardPinCharacterPolicyOption = undefined;
        const _c = self.vtable.get_UppercaseLetters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUppercaseLetters(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const _c = self.vtable.put_UppercaseLetters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLowercaseLetters(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        var _r: SmartCardPinCharacterPolicyOption = undefined;
        const _c = self.vtable.get_LowercaseLetters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLowercaseLetters(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const _c = self.vtable.put_LowercaseLetters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDigits(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        var _r: SmartCardPinCharacterPolicyOption = undefined;
        const _c = self.vtable.get_Digits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDigits(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const _c = self.vtable.put_Digits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpecialCharacters(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        var _r: SmartCardPinCharacterPolicyOption = undefined;
        const _c = self.vtable.get_SpecialCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpecialCharacters(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const _c = self.vtable.put_SpecialCharacters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardPinPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "183ce184-4db6-4841-ac9e-2ac1f39b7304";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MinLength: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxLength: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_UppercaseLetters: *const fn(self: *anyopaque, _r: *SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        put_UppercaseLetters: *const fn(self: *anyopaque, value: SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        get_LowercaseLetters: *const fn(self: *anyopaque, _r: *SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        put_LowercaseLetters: *const fn(self: *anyopaque, value: SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        get_Digits: *const fn(self: *anyopaque, _r: *SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        put_Digits: *const fn(self: *anyopaque, value: SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        get_SpecialCharacters: *const fn(self: *anyopaque, _r: *SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
        put_SpecialCharacters: *const fn(self: *anyopaque, value: SmartCardPinCharacterPolicyOption) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardPinResetDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardPinResetDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18c94aac-7805-4004-85e4-bbefac8f6884";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardPinResetRequest = extern struct {
    vtable: *const VTable,
    pub fn getChallenge(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Challenge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SmartCardPinResetDeferral {
        var _r: *SmartCardPinResetDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetResponse(self: *@This(), response: *IBuffer) core.HResult!void {
        const _c = self.vtable.SetResponse(@ptrCast(self), response);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardPinResetRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12fe3c4d-5fb9-4e8e-9ff6-61f475124fef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Challenge: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **SmartCardPinResetDeferral) callconv(.winapi) HRESULT,
        SetResponse: *const fn(self: *anyopaque, response: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardProvisioning = extern struct {
    vtable: *const VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        var _r: *SmartCard = undefined;
        const _c = self.vtable.get_SmartCard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIdAsync(self: *@This()) core.HResult!*IAsyncOperation(Guid) {
        var _r: *IAsyncOperation(Guid) = undefined;
        const _c = self.vtable.GetIdAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChallengeContextAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardChallengeContext) {
        var _r: *IAsyncOperation(SmartCardChallengeContext) = undefined;
        const _c = self.vtable.GetChallengeContextAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinChangeAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinChangeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinResetAsync(self: *@This(), handler: *SmartCardPinResetHandler) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinResetAsync(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardProvisioning";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19eeedbd-1fab-477c-b712-1a2c5af1fd6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmartCard: *const fn(self: *anyopaque, _r: **SmartCard) callconv(.winapi) HRESULT,
        GetIdAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Guid)) callconv(.winapi) HRESULT,
        GetNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetChallengeContextAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardChallengeContext)) callconv(.winapi) HRESULT,
        RequestPinChangeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPinResetAsync: *const fn(self: *anyopaque, handler: *SmartCardPinResetHandler, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardProvisioning2 = extern struct {
    vtable: *const VTable,
    pub fn GetAuthorityKeyContainerNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAuthorityKeyContainerNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardProvisioning2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10fd28eb-3f79-4b66-9b7c-11c149b7d0bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAuthorityKeyContainerNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardProvisioningStatics = extern struct {
    vtable: *const VTable,
    pub fn FromSmartCardAsync(self: *@This(), card: *SmartCard) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        var _r: *IAsyncOperation(SmartCardProvisioning) = undefined;
        const _c = self.vtable.FromSmartCardAsync(@ptrCast(self), card, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestVirtualSmartCardCreationAsync(self: *@This(), friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        var _r: *IAsyncOperation(SmartCardProvisioning) = undefined;
        const _c = self.vtable.RequestVirtualSmartCardCreationAsync(@ptrCast(self), friendlyName, administrativeKey, pinPolicy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(self: *@This(), friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, cardId: *Guid) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        var _r: *IAsyncOperation(SmartCardProvisioning) = undefined;
        const _c = self.vtable.RequestVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(@ptrCast(self), friendlyName, administrativeKey, pinPolicy, cardId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestVirtualSmartCardDeletionAsync(self: *@This(), card: *SmartCard) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestVirtualSmartCardDeletionAsync(@ptrCast(self), card, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardProvisioningStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13882848-0d13-4e70-9735-51daeca5254f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromSmartCardAsync: *const fn(self: *anyopaque, card: *SmartCard, _r: **IAsyncOperation(SmartCardProvisioning)) callconv(.winapi) HRESULT,
        RequestVirtualSmartCardCreationAsync: *const fn(self: *anyopaque, friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, _r: **IAsyncOperation(SmartCardProvisioning)) callconv(.winapi) HRESULT,
        RequestVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId: *const fn(self: *anyopaque, friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, cardId: *Guid, _r: **IAsyncOperation(SmartCardProvisioning)) callconv(.winapi) HRESULT,
        RequestVirtualSmartCardDeletionAsync: *const fn(self: *anyopaque, card: *SmartCard, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardProvisioningStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RequestAttestedVirtualSmartCardCreationAsync(self: *@This(), friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        var _r: *IAsyncOperation(SmartCardProvisioning) = undefined;
        const _c = self.vtable.RequestAttestedVirtualSmartCardCreationAsync(@ptrCast(self), friendlyName, administrativeKey, pinPolicy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAttestedVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(self: *@This(), friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, cardId: *Guid) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        var _r: *IAsyncOperation(SmartCardProvisioning) = undefined;
        const _c = self.vtable.RequestAttestedVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(@ptrCast(self), friendlyName, administrativeKey, pinPolicy, cardId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardProvisioningStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3447c6a8-c9a0-4bd6-b50d-251f4e8d3a62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAttestedVirtualSmartCardCreationAsync: *const fn(self: *anyopaque, friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, _r: **IAsyncOperation(SmartCardProvisioning)) callconv(.winapi) HRESULT,
        RequestAttestedVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId: *const fn(self: *anyopaque, friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, cardId: *Guid, _r: **IAsyncOperation(SmartCardProvisioning)) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardReader = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!SmartCardReaderKind {
        var _r: SmartCardReaderKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardReaderStatus) {
        var _r: *IAsyncOperation(SmartCardReaderStatus) = undefined;
        const _c = self.vtable.GetStatusAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllCardsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(SmartCard)) {
        var _r: *IAsyncOperation(IVectorView(SmartCard)) = undefined;
        const _c = self.vtable.FindAllCardsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCardAdded(self: *@This(), handler: *TypedEventHandler(SmartCardReader,CardAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CardAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCardAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CardAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCardRemoved(self: *@This(), handler: *TypedEventHandler(SmartCardReader,CardRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CardRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCardRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CardRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1074b4e0-54c2-4df0-817a-14c14378f06c";
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
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *SmartCardReaderKind) callconv(.winapi) HRESULT,
        GetStatusAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SmartCardReaderStatus)) callconv(.winapi) HRESULT,
        FindAllCardsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(SmartCard))) callconv(.winapi) HRESULT,
        add_CardAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(SmartCardReader,CardAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CardAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CardRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(SmartCardReader,CardRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CardRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardReaderStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), kind: SmartCardReaderKind) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(SmartCardReader) {
        var _r: *IAsyncOperation(SmartCardReader) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.ISmartCardReaderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "103c04e1-a1ca-48f2-a281-5b6f669af107";
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
        GetDeviceSelector: *const fn(self: *anyopaque, kind: SmartCardReaderKind, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(SmartCardReader)) callconv(.winapi) HRESULT,
    };
};
pub const SmartCard = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReader(self: *@This()) core.HResult!*SmartCardReader {
        const this: *ISmartCard = @ptrCast(self);
        return try this.getReader();
    }
    pub fn GetStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardStatus) {
        const this: *ISmartCard = @ptrCast(self);
        return try this.GetStatusAsync();
    }
    pub fn GetAnswerToResetAsync(self: *@This()) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *ISmartCard = @ptrCast(self);
        return try this.GetAnswerToResetAsync();
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardConnection) {
        var this: ?*ISmartCardConnect = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardConnect.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCard.GUID;
    pub const IID: Guid = ISmartCard.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCard.SIGNATURE);
};
pub const SmartCardChallengeContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChallenge(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardChallengeContext = @ptrCast(self);
        return try this.getChallenge();
    }
    pub fn VerifyResponseAsync(self: *@This(), response: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        const this: *ISmartCardChallengeContext = @ptrCast(self);
        return try this.VerifyResponseAsync(response);
    }
    pub fn ProvisionAsync(self: *@This(), response: *IBuffer, formatCard: bool) core.HResult!*IAsyncAction {
        const this: *ISmartCardChallengeContext = @ptrCast(self);
        return try this.ProvisionAsync(response, formatCard);
    }
    pub fn ProvisionAsyncWithFormatCardWithNewCardId(self: *@This(), response: *IBuffer, formatCard: bool, newCardId: *Guid) core.HResult!*IAsyncAction {
        const this: *ISmartCardChallengeContext = @ptrCast(self);
        return try this.ProvisionAsyncWithFormatCardWithNewCardId(response, formatCard, newCardId);
    }
    pub fn ChangeAdministrativeKeyAsync(self: *@This(), response: *IBuffer, newAdministrativeKey: *IBuffer) core.HResult!*IAsyncAction {
        const this: *ISmartCardChallengeContext = @ptrCast(self);
        return try this.ChangeAdministrativeKeyAsync(response, newAdministrativeKey);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardChallengeContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardChallengeContext.GUID;
    pub const IID: Guid = ISmartCardChallengeContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardChallengeContext.SIGNATURE);
};
pub const SmartCardConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TransmitAsync(self: *@This(), command: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *ISmartCardConnection = @ptrCast(self);
        return try this.TransmitAsync(command);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardConnection.GUID;
    pub const IID: Guid = ISmartCardConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardConnection.SIGNATURE);
};
pub const SmartCardPinCharacterPolicyOption = enum(i32) {
    Allow = 0,
    RequireAtLeastOne = 1,
    Disallow = 2,
};
pub const SmartCardPinPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMinLength(self: *@This()) core.HResult!u32 {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.getMinLength();
    }
    pub fn putMinLength(self: *@This(), value: u32) core.HResult!void {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.putMinLength(value);
    }
    pub fn getMaxLength(self: *@This()) core.HResult!u32 {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.getMaxLength();
    }
    pub fn putMaxLength(self: *@This(), value: u32) core.HResult!void {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.putMaxLength(value);
    }
    pub fn getUppercaseLetters(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.getUppercaseLetters();
    }
    pub fn putUppercaseLetters(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.putUppercaseLetters(value);
    }
    pub fn getLowercaseLetters(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.getLowercaseLetters();
    }
    pub fn putLowercaseLetters(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.putLowercaseLetters(value);
    }
    pub fn getDigits(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.getDigits();
    }
    pub fn putDigits(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.putDigits(value);
    }
    pub fn getSpecialCharacters(self: *@This()) core.HResult!SmartCardPinCharacterPolicyOption {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.getSpecialCharacters();
    }
    pub fn putSpecialCharacters(self: *@This(), value: SmartCardPinCharacterPolicyOption) core.HResult!void {
        const this: *ISmartCardPinPolicy = @ptrCast(self);
        return try this.putSpecialCharacters(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISmartCardPinPolicy.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardPinPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardPinPolicy.GUID;
    pub const IID: Guid = ISmartCardPinPolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardPinPolicy.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SmartCardPinResetDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ISmartCardPinResetDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardPinResetDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardPinResetDeferral.GUID;
    pub const IID: Guid = ISmartCardPinResetDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardPinResetDeferral.SIGNATURE);
};
pub const SmartCardPinResetHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *SmartCardProvisioning, request: *SmartCardPinResetRequest) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *SmartCardProvisioning, request: *SmartCardPinResetRequest) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *SmartCardProvisioning, request: *SmartCardPinResetRequest) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, request);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardPinResetHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "138d5e40-f3bc-4a5c-b41d-4b4ef684e237";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *SmartCardProvisioning, request: *SmartCardPinResetRequest) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SmartCardPinResetRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChallenge(self: *@This()) core.HResult!*IBuffer {
        const this: *ISmartCardPinResetRequest = @ptrCast(self);
        return try this.getChallenge();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *ISmartCardPinResetRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SmartCardPinResetDeferral {
        const this: *ISmartCardPinResetRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn SetResponse(self: *@This(), response: *IBuffer) core.HResult!void {
        const this: *ISmartCardPinResetRequest = @ptrCast(self);
        return try this.SetResponse(response);
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardPinResetRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardPinResetRequest.GUID;
    pub const IID: Guid = ISmartCardPinResetRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardPinResetRequest.SIGNATURE);
};
pub const SmartCardProvisioning = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSmartCard(self: *@This()) core.HResult!*SmartCard {
        const this: *ISmartCardProvisioning = @ptrCast(self);
        return try this.getSmartCard();
    }
    pub fn GetIdAsync(self: *@This()) core.HResult!*IAsyncOperation(Guid) {
        const this: *ISmartCardProvisioning = @ptrCast(self);
        return try this.GetIdAsync();
    }
    pub fn GetNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *ISmartCardProvisioning = @ptrCast(self);
        return try this.GetNameAsync();
    }
    pub fn GetChallengeContextAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardChallengeContext) {
        const this: *ISmartCardProvisioning = @ptrCast(self);
        return try this.GetChallengeContextAsync();
    }
    pub fn RequestPinChangeAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ISmartCardProvisioning = @ptrCast(self);
        return try this.RequestPinChangeAsync();
    }
    pub fn RequestPinResetAsync(self: *@This(), handler: *SmartCardPinResetHandler) core.HResult!*IAsyncOperation(bool) {
        const this: *ISmartCardProvisioning = @ptrCast(self);
        return try this.RequestPinResetAsync(handler);
    }
    pub fn GetAuthorityKeyContainerNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var this: ?*ISmartCardProvisioning2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISmartCardProvisioning2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAuthorityKeyContainerNameAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAttestedVirtualSmartCardCreationAsync(friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        const factory = @This().ISmartCardProvisioningStatics2Cache.get();
        return try factory.RequestAttestedVirtualSmartCardCreationAsync(friendlyName, administrativeKey, pinPolicy);
    }
    pub fn RequestAttestedVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, cardId: *Guid) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        const factory = @This().ISmartCardProvisioningStatics2Cache.get();
        return try factory.RequestAttestedVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(friendlyName, administrativeKey, pinPolicy, cardId);
    }
    pub fn FromSmartCardAsync(card: *SmartCard) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        const factory = @This().ISmartCardProvisioningStaticsCache.get();
        return try factory.FromSmartCardAsync(card);
    }
    pub fn RequestVirtualSmartCardCreationAsync(friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        const factory = @This().ISmartCardProvisioningStaticsCache.get();
        return try factory.RequestVirtualSmartCardCreationAsync(friendlyName, administrativeKey, pinPolicy);
    }
    pub fn RequestVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(friendlyName: HSTRING, administrativeKey: *IBuffer, pinPolicy: *SmartCardPinPolicy, cardId: *Guid) core.HResult!*IAsyncOperation(SmartCardProvisioning) {
        const factory = @This().ISmartCardProvisioningStaticsCache.get();
        return try factory.RequestVirtualSmartCardCreationAsyncWithAdministrativeKeyWithPinPolicyWithCardId(friendlyName, administrativeKey, pinPolicy, cardId);
    }
    pub fn RequestVirtualSmartCardDeletionAsync(card: *SmartCard) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ISmartCardProvisioningStaticsCache.get();
        return try factory.RequestVirtualSmartCardDeletionAsync(card);
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardProvisioning";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardProvisioning.GUID;
    pub const IID: Guid = ISmartCardProvisioning.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardProvisioning.SIGNATURE);
    var _ISmartCardProvisioningStatics2Cache: FactoryCache(ISmartCardProvisioningStatics2, RUNTIME_NAME) = .{};
    var _ISmartCardProvisioningStaticsCache: FactoryCache(ISmartCardProvisioningStatics, RUNTIME_NAME) = .{};
};
pub const SmartCardReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.getName();
    }
    pub fn getKind(self: *@This()) core.HResult!SmartCardReaderKind {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.getKind();
    }
    pub fn GetStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(SmartCardReaderStatus) {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.GetStatusAsync();
    }
    pub fn FindAllCardsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(SmartCard)) {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.FindAllCardsAsync();
    }
    pub fn addCardAdded(self: *@This(), handler: *TypedEventHandler(SmartCardReader,CardAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.addCardAdded(handler);
    }
    pub fn removeCardAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.removeCardAdded(token);
    }
    pub fn addCardRemoved(self: *@This(), handler: *TypedEventHandler(SmartCardReader,CardRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.addCardRemoved(handler);
    }
    pub fn removeCardRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISmartCardReader = @ptrCast(self);
        return try this.removeCardRemoved(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ISmartCardReaderStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelector(kind: SmartCardReaderKind) core.HResult!HSTRING {
        const factory = @This().ISmartCardReaderStaticsCache.get();
        return try factory.GetDeviceSelector(kind);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(SmartCardReader) {
        const factory = @This().ISmartCardReaderStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.SmartCards.SmartCardReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardReader.GUID;
    pub const IID: Guid = ISmartCardReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardReader.SIGNATURE);
    var _ISmartCardReaderStaticsCache: FactoryCache(ISmartCardReaderStatics, RUNTIME_NAME) = .{};
};
pub const SmartCardReaderKind = enum(i32) {
    Any = 0,
    Generic = 1,
    Tpm = 2,
    Nfc = 3,
    Uicc = 4,
    EmbeddedSE = 5,
};
pub const SmartCardReaderStatus = enum(i32) {
    Disconnected = 0,
    Ready = 1,
    Exclusive = 2,
};
pub const SmartCardStatus = enum(i32) {
    Disconnected = 0,
    Ready = 1,
    Shared = 2,
    Exclusive = 3,
    Unresponsive = 4,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const IClosable = @import("../Foundation.zig").IClosable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const CryptographicPublicKeyBlobType = @import("../Security/Cryptography/Core.zig").CryptographicPublicKeyBlobType;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IAgileObject = @import("../root.zig").IAgileObject;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
